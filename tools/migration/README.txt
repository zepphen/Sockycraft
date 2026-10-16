SOCKYCRAFT v2 - KEEP YOUR WORLDS, SETTINGS AND MAPS
====================================================

This moves your stuff from your old Sockycraft profile into the new
"Sockycraft v2" profile. Your old profile is not changed or deleted.

What gets copied:
  - Single-player worlds (saves)
  - Settings and keybinds (options.txt)
  - Your server list (servers.dat)
  - Xaero minimap / world map data and waypoints
  - Screenshots, Create schematics, extra resource packs and shaders
  - Voice chat volumes you set for other players

STEPS
-----
1. In CurseForge, import the new Sockycraft v2 profile.
   Keep its name as "Sockycraft v2" (don't rename it).
   Don't play it yet.

2. Close Minecraft.

3. In CurseForge, right-click your OLD Sockycraft profile -> Open Folder.
   Open the "mods" folder inside it.

4. Drop ONE file into that mods folder, the one for your computer:
     Windows: Sockycraft-Migrate-to-v2-Windows.bat
     Mac:     Sockycraft-Migrate-to-v2-Mac.command
     Linux:   Sockycraft-Migrate-to-v2-Linux.sh

5. Double-click it and follow the window. When it says "Done!",
   open Sockycraft v2 in CurseForge and play.

6. Once everything looks right, you can delete the old profile.

IF SOMETHING GETS IN THE WAY
----------------------------
Windows: "Windows protected your PC" -> click "More info" -> "Run anyway".

Mac: "cannot be opened because Apple cannot check it" ->
  open System Settings -> Privacy & Security, scroll down, click
  "Open Anyway" next to Sockycraft-Migrate-to-v2-Mac, then double-click it again.
  If Terminal asks to access your Documents folder, click Allow
  (CurseForge keeps profiles there).

Linux: if double-clicking opens it in a text editor, right-click it ->
  Properties -> allow "Executable as program", then right-click ->
  "Run as Program".

Notes:
  - If a world with the same name already exists in v2, it's skipped
    (nothing is overwritten).
  - If v2 already had settings, they're saved as "options.txt.before-migration".
  - New keybinds added in v2 (like Traveler's Backpack) keep their defaults.
    Check Controls in case two things share a key.
  - The Mac/Linux script writes a log next to itself:
    sockycraft-migration-log.txt
