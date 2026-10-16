@echo off
rem ======================================================================
rem  Sockycraft -> "Sockycraft v2" data migration (Windows)
rem
rem  HOW TO USE: put this file in your OLD Sockycraft profile's "mods"
rem  folder, make sure Minecraft is closed, then double-click it.
rem
rem  It copies your worlds, settings/keybinds, server list, Xaero map data,
rem  screenshots, Create schematics and voice chat volumes into the new
rem  "Sockycraft v2" profile that sits next to your old one.
rem  Nothing in your old profile is changed or deleted.
rem ======================================================================
setlocal EnableExtensions DisableDelayedExpansion
chcp 65001 >nul
title Sockycraft v2 migration

set "NEWNAME=Sockycraft v2"
set "FAIL=0"
set "RC=/R:1 /W:1 /NFL /NDL /NJH /NJS /NP"

rem --- Work out where everything is ------------------------------------
for %%I in ("%~dp0..") do set "SRC=%%~fI"
for %%I in ("%SRC%") do set "SRCNAME=%%~nxI"
for %%I in ("%SRC%\..") do set "INST=%%~fI"
set "DST=%INST%\%NEWNAME%"

echo === Sockycraft v2 migration ===
echo From: "%SRC%"
echo To:   "%DST%"
echo.

if /i "%SRCNAME%"=="%NEWNAME%" (
  echo ERROR: This script is inside the NEW profile.
  echo Move it into your OLD Sockycraft profile's mods folder and run it again.
  goto :end
)
if not exist "%DST%\minecraftinstance.json" (
  echo ERROR: Couldn't find a CurseForge profile named "%NEWNAME%" next to this one.
  echo Import the new Sockycraft v2 profile in CurseForge first ^(keep its name^),
  echo then run this again.
  goto :end
)

echo Make sure Minecraft is CLOSED ^(both profiles^).
echo Press any key to start copying...
pause >nul
echo.

rem --- Worlds: copy each world unless one with the same name exists ----
echo Worlds:
if exist "%SRC%\saves\" (
  if not exist "%DST%\saves\" mkdir "%DST%\saves"
  for /d %%W in ("%SRC%\saves\*") do (
    if exist "%DST%\saves\%%~nxW\" (
      echo   - skipped "%%~nxW" ^(already in v2^)
    ) else (
      echo   + %%~nxW
      robocopy "%%~fW" "%DST%\saves\%%~nxW" /E %RC% >nul
      if errorlevel 8 set "FAIL=1"
    )
  )
) else (
  echo   ^(none^)
)

rem --- Single files: old profile wins, new profile's copy is backed up --
echo Settings, keybinds and server list:
call :replace "options.txt"
call :replace "servers.dat"
call :replace "config\voicechat\player-volumes.properties"

rem --- Folders ----------------------------------------------------------
echo Maps, screenshots, schematics, extra packs:
rem Xaero: old profile's map and waypoints win
if exist "%SRC%\xaero\" (
  robocopy "%SRC%\xaero" "%DST%\xaero" /E %RC% >nul
  if errorlevel 8 (set "FAIL=1") else (echo   + xaero ^(map + waypoints^))
)
rem Others: only add files the new profile doesn't already have
for %%D in (screenshots schematics resourcepacks shaderpacks) do (
  if exist "%SRC%\%%D\" (
    robocopy "%SRC%\%%D" "%DST%\%%D" /E /XC /XN /XO %RC% >nul
    if errorlevel 8 (set "FAIL=1") else (echo   + %%D)
  )
)

echo.
if "%FAIL%"=="1" (
  echo Finished, but some items could not be copied.
  echo Make sure Minecraft and CurseForge aren't using the files, then run this again.
) else (
  echo Done! Open "%NEWNAME%" in CurseForge and play.
  echo Your old profile was not changed. Delete it once everything looks right.
)
goto :end

:replace
if not exist "%SRC%\%~1" goto :eof
for %%P in ("%DST%\%~1") do if not exist "%%~dpP" mkdir "%%~dpP"
if exist "%DST%\%~1" copy /y "%DST%\%~1" "%DST%\%~1.before-migration" >nul
copy /y "%SRC%\%~1" "%DST%\%~1" >nul && (echo   + %~1) || (set "FAIL=1")
goto :eof

:end
echo.
echo Press any key to close this window...
pause >nul
endlocal
