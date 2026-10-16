#!/bin/sh
# Sockycraft -> "Sockycraft v2" data migration (macOS / Linux)
#
# HOW TO USE: put this file in your OLD Sockycraft profile's "mods" folder,
# make sure Minecraft is closed, then double-click it.
#
# It copies your worlds, settings/keybinds, server list, Xaero map data,
# screenshots, Create schematics and voice chat volumes into the new
# "Sockycraft v2" profile that sits next to your old one.
# Nothing in your old profile is changed or deleted.

NEWNAME="Sockycraft v2"

# --- Linux: if double-clicked with no terminal window, reopen in one -------
if [ ! -t 1 ] && [ -z "$SOCKY_IN_TERM" ]; then
  SOCKY_IN_TERM=1; export SOCKY_IN_TERM
  if command -v gnome-terminal >/dev/null 2>&1; then exec gnome-terminal -- sh "$0"
  elif command -v konsole >/dev/null 2>&1; then exec konsole -e sh "$0"
  elif command -v xfce4-terminal >/dev/null 2>&1; then exec xfce4-terminal -x sh "$0"
  elif command -v x-terminal-emulator >/dev/null 2>&1; then exec x-terminal-emulator -e sh "$0"
  elif command -v xterm >/dev/null 2>&1; then exec xterm -e sh "$0"
  fi
  # No terminal found: keep going; results are written to the log file below.
fi

finish() {
  echo ""
  printf "Press Enter to close this window..."
  read -r _ 2>/dev/null
  exit "$1"
}

# --- Work out where everything is -------------------------------------------
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)       # .../<old profile>/mods
SRC=$(cd "$SCRIPT_DIR/.." && pwd)               # .../<old profile>
INST=$(dirname "$SRC")                          # .../Instances
DST="$INST/$NEWNAME"                            # .../Instances/Sockycraft v2
LOG="$SCRIPT_DIR/sockycraft-migration-log.txt"

exec 3>&1
log() { echo "$*" >&3; echo "$*" >> "$LOG"; }
: > "$LOG"

log "=== Sockycraft v2 migration ==="
log "From: $SRC"
log "To:   $DST"
log ""

if [ "$(basename "$SRC")" = "$NEWNAME" ]; then
  log "ERROR: This script is inside the NEW profile."
  log "Move it into your OLD Sockycraft profile's mods folder and run it again."
  finish 1
fi
if [ ! -f "$DST/minecraftinstance.json" ]; then
  log "ERROR: Couldn't find a CurseForge profile named \"$NEWNAME\" next to this one."
  log "Import the new Sockycraft v2 profile in CurseForge first (keep its name),"
  log "then run this again."
  finish 1
fi

log "Make sure Minecraft is CLOSED (both profiles)."
printf "Press Enter to start copying... " >&3
read -r _ 2>/dev/null
log ""

FAILS=$(mktemp 2>/dev/null || echo "$SCRIPT_DIR/.socky-fails")
: > "$FAILS"

# Copy a folder's contents into the target.
# merge_copy SRC DST          -> never overwrites files already in the target
# merge_copy SRC DST replace  -> old profile's files win (used for Xaero maps)
merge_copy() {
  [ -d "$1" ] || return 0
  mkdir -p "$2" || { echo "$2" >> "$FAILS"; return 0; }
  ( cd "$1" && find . -type d ) | while IFS= read -r d; do
    mkdir -p "$2/$d" 2>/dev/null || echo "$2/$d" >> "$FAILS"
  done
  ( cd "$1" && find . -type f ) | while IFS= read -r f; do
    if [ "$3" = "replace" ] || [ ! -e "$2/$f" ]; then
      cp -p "$1/$f" "$2/$f" 2>/dev/null || echo "$f" >> "$FAILS"
    fi
  done
}

# Replace a single file, keeping a backup of whatever the new profile had.
replace_file() {
  [ -f "$SRC/$1" ] || return 0
  mkdir -p "$(dirname "$DST/$1")"
  [ -f "$DST/$1" ] && cp -p "$DST/$1" "$DST/$1.before-migration"
  if cp -p "$SRC/$1" "$DST/$1"; then log "  + $1"; else echo "$1" >> "$FAILS"; fi
}

# --- Worlds: copy each world unless one with the same name already exists --
log "Worlds:"
if [ -d "$SRC/saves" ]; then
  mkdir -p "$DST/saves"
  for w in "$SRC/saves"/*/; do
    [ -d "$w" ] || continue
    w=${w%/}; name=$(basename "$w")
    if [ -e "$DST/saves/$name" ]; then
      log "  - skipped \"$name\" (already in v2)"
    elif cp -Rp "$w" "$DST/saves/$name"; then
      log "  + $name"
    else
      echo "saves/$name" >> "$FAILS"
    fi
  done
else
  log "  (none)"
fi

log "Settings, keybinds and server list:"
replace_file "options.txt"
replace_file "servers.dat"
replace_file "config/voicechat/player-volumes.properties"

log "Maps, screenshots, schematics, extra packs:"
if [ -d "$SRC/xaero" ]; then merge_copy "$SRC/xaero" "$DST/xaero" replace; log "  + xaero (map + waypoints)"; fi
for d in screenshots schematics resourcepacks shaderpacks; do
  if [ -d "$SRC/$d" ]; then merge_copy "$SRC/$d" "$DST/$d"; log "  + $d"; fi
done

log ""
if [ -s "$FAILS" ]; then
  log "Finished, but some items could not be copied:"
  while IFS= read -r f; do log "  ! $f"; done < "$FAILS"
  rm -f "$FAILS"
  finish 1
fi
rm -f "$FAILS"
log "Done! Open \"$NEWNAME\" in CurseForge and play."
log "Your old profile was not changed. Delete it once everything looks right."
finish 0
