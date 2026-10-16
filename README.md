<div align="center">

# Sockycraft

**A cozy, heavily modded Minecraft pack I made for my friends and family.**

![Minecraft](https://img.shields.io/badge/Minecraft-1.21.1-62B47A?style=for-the-badge)
![NeoForge](https://img.shields.io/badge/NeoForge-21.1.262-E68A00?style=for-the-badge)
![Mods](https://img.shields.io/badge/Mods-101-5865F2?style=for-the-badge)
![Version](https://img.shields.io/badge/Pack-v2-EC4899?style=for-the-badge)

Create machines · Farmer's Delight cooking · furniture & decor · dogs, critters & chicken nests<br>
horse carts & backpacks · the Twilight Forest · YUNG's structure overhauls · maps, pings & proximity voice chat

[**⤓ Download**](../../releases) · [**≡ Changelog**](CHANGELOG.md) · [**✱ Report a problem**](../../issues)

</div>

---

> [!TIP]
> Lines with a small arrow next to them are collapsed. Click one to expand it.

## ⤓ Install (New Players)

You need the free **CurseForge launcher**: [curseforge.com/download/app](https://www.curseforge.com/download/app)

1. Download the latest `.zip` from [**Releases**](../../releases). **Don't unzip it.**
2. In CurseForge, pick **Minecraft** → **Create Custom Profile** → **Import**, and choose the zip.
3. Wait while it downloads every mod. It takes a few minutes.
4. **Set memory** (see *Before Your First Join*), then hit **Play**.

The launcher installs the right Java version and everything else for you.

## ↻ Update (Existing Players)

Each new version is imported as a **new profile** called **Sockycraft v2** (or v3, and so on). A migration script copies your stuff over so you don't lose anything.

1. Import the new zip the same way as above. **Keep the profile's name as-is** and don't play it yet.
2. Close Minecraft.
3. In CurseForge, open your **old** profile's folder (three dots → **Open Folder**), then go into its `mods` folder.
4. Download `Sockycraft-v2-migration.zip` from the release and drop **one** script into that `mods` folder:

   | OS | File |
   |---|---|
   | Windows | `Sockycraft-Migrate-to-v2-Windows.bat` |
   | Mac | `Sockycraft-Migrate-to-v2-Mac.command` |
   | Linux | `Sockycraft-Migrate-to-v2-Linux.sh` |

5. Double-click it. When it says **Done!**, open the new profile and play.
6. Once everything looks right, delete the old profile.

<details>
<summary><b>Migration Details & Troubleshooting</b></summary>

<br>

**Copied into the new profile:** single-player worlds, settings & keybinds, your server list, Xaero map + waypoints, screenshots, Create schematics, extra resource and shader packs, and per-player voice chat volumes. Your old profile isn't touched.

**If something blocks it:**

- **Windows**: "Windows protected your PC" → **More info** → **Run anyway**.
- **Mac**: "Apple cannot check it" → **System Settings → Privacy & Security** → scroll down → **Open Anyway**, then double-click it again. If Terminal asks to access Documents, click **Allow**.
- **Linux**: if it opens in a text editor, right-click → Properties → allow **Executable as program**, then right-click → **Run as Program**.

</details>

## ✓ Before Your First Join

**Give it enough memory.** Three dots on the profile → **Profile Options** → uncheck **Use System Memory Settings** → set it to:

| Setting | Memory |
|---|---|
| ★ Recommended | **8192 MB** (8 GB) |
| Minimum | 6144 MB (6 GB) |

Too little memory is the #1 cause of crashes and stutter.

**The first launch is slow.** 2–5 minutes is normal. It gets faster after that.

**Fix the clashing keybinds.** Several mods share the same default keys. See *Keybind Setup* below. It takes about two minutes.

**Ask zepphen for the server address.** The server is private and invite-only, so the address isn't listed here. Add it under **Multiplayer → Add Server**. It shows up as "Sockycraft".

**Turn on the dog breeds.** Go to **Options → Resource Packs** and enable **Better Dogs x Doggy Talents Next**.

<details>
<summary><b>MCA Character Screen</b></summary>

<br>

The pack has **MCA Reborn**, so you'll be asked to customize your character when you first join. If you'd rather skip it and spawn at the normal world spawn, leave and rejoin when that screen pops up. You can always change things later with `/mca`.

</details>

## ⌨ Keybind Setup

Out of the box, some mods fight over the same key. The game then does only one of the actions, or both at once. Fix them once in **Options → Controls → Key Binds**: click a binding, then press the new key.

- **Esc** while a binding is selected unbinds it.
- **Hold Alt** while pressing a key to bind an **Alt + key** combo.
- Bindings that clash show up **in red**.

### Required Changes

| Key | Conflicting Mods | Keybind to Change | New Key |
|:---:|---|---|:---:|
| **B** | Xaero *New Waypoint*<br>Sophisticated Backpacks *Open Backpack*<br>Traveler's Backpack *Open Backpack* | Sophisticated Backpacks → Open Backpack<br>Traveler's Backpack → Open Backpack | **J**<br>**I** |
| **M** | Xaero *Open World Map*<br>Voice Chat *Mute Microphone* | Voice Chat → Mute Microphone | **O** |
| **N** | Voice Chat *Disable Voice Chat*<br>TreeChop *Settings Overlay* | TreeChop → Settings Overlay | **Alt + N** |
| **G** | Voice Chat *Groups*<br>Couples Mod *Menu* | Couples Mod → Menu | **Alt + G** |
| **U** | Xaero *Waypoints*<br>Corpse *Death History*<br>MCA *Skin Library* | Corpse → Death History<br>MCA → Skin Library | **Alt + U**<br>*unbind* |
| **R** | Quark *Variant Selector*<br>AstikorCarts *Cart Action* | Quark → Variant Selector | **Alt + R** |
| **Z** | Xaero *Enlarge Minimap*<br>Quark *Change Hotbar* | Quark → Change Hotbar | **Alt + Z** |
| **K** | Quark *Lock Rotation*<br>SmartSort *Categories* | Quark → Lock Rotation | **Alt + K** |

### Recommended: Carry On Keybind

**Carry On** picks things up with **Shift + right-click** on an empty hand by default. That's also how you open a dog's menu, and other mods use sneak + right-click too, so you keep picking up your dog instead of opening its menu.

| Keybind to Change | New Key | Reason |
|---|:---:|---|
| Carry On → Carry | **Mouse 4** | **Mouse 5** is already Ping Wheel's *Ping*. Quark uses Mouse 4 only as *Back* inside menus, so the two never collide in-world. |

After that, **hold Mouse 4 and right-click with empty hands** to pick something up, and right-click again to put it down.

<sub>Mouse 4 is the rear thumb button on most mice ("Back"), Mouse 5 is the front one ("Forward"). No side buttons? Pick any free key, such as **Alt + C**.</sub>

<details>
<summary><b>Ignorable Conflicts</b></summary>

<br>

- **V** is also the Supplementaries *Quiver* key (only used when you have a quiver) and a Twilight Forest *Traveller's Gear* key. If quiver arrow selection gets in the way of the voice chat menu, move it to **Alt + V**.
- **R / U** are also JEI's *Show Recipe* / *Show Uses* and SmartSort's *Sort*, but those only work inside menus.
- **Z** is also AstikorCarts *Slow Down* (only while pulling a cart), Traveler's Backpack *Cycle Tool* (only with the backpack on) and Twilight Forest *Zoom* (only with its Traveller's Gear).
- **C** is shared by vanilla's creative *Save Toolbar*, Sophisticated Backpacks' *Inventory Interaction* and a Twilight Forest *Traveller's Gear* key.
- **Middle mouse** is also Sophisticated Backpacks' *Sort*, but only inside its menus.
- **Shift / Ctrl / Alt** are used as modifiers by Create, Jade, JEI and SmartSort. That's intentional.
- **W** is also Create's *Ponder* key, but only while hovering an item in a menu.

These are the pack's default bindings, checked against each mod's own defaults. If you migrated from an older profile, your own changes carry over, so double-check anything you rebound before.

</details>

## ◈ Gameplay Guide

<details>
<summary><b>Voice Chat</b></summary>

<br>

Proximity voice chat: people sound closer when they're closer.

- Press **V** to open the voice menu and pick your microphone the first time you join.
- Windows may ask for mic permission. Say yes.
- If you're in a voice group, everyone in it shows up on screen.
- With Voice Physics, walls and distance affect how voices sound.

</details>

<details>
<summary><b>Maps, Waypoints & Pings</b></summary>

<br>

- **Minimap** is always on in the corner. Press **M** for the full world map.
- **Waypoints**: press **B** to drop one where you're standing, and **U** to see them all.
- **Player icons**: hold **Tab** to see other players on the minimap.
- **Ping Wheel**: press **mouse button 5** (the front side button) to ping a spot for everyone. Pings also show up on the map.

</details>

<details>
<summary><b>Dogs</b></summary>

<br>

- Tame a wolf, then feed it a **Training Treat** to turn it into a Doggy Talents dog.
- **Sneak + right-click** your dog with an empty hand, or right-click it with a **Stick**, to open its menu. From there you can name it, train talents, and pick a breed under **Style → Skins**.
- Wild wolves come in lots of new colors, depending on the biome.

</details>

<details>
<summary><b>Farming, Food & Animals</b></summary>

<br>

- **Chicken nests**: craft a Hay Nest from 5 wheat. Chickens lay their eggs in it, and you can put a hopper underneath to collect them.
- **Hatching chicks**: feed a chicken a **Spider Eye** and it'll sit on the nest and hatch the eggs.
- **Butchering**: **right-click** an animal with the Butcher Knife to get a carcass, then hang it on a Meat Hook and work through it with the other knives. Wear the apron, gloves, mask and boots to avoid the messy debuffs.
- **Trees**: hit a log and it gets thinner with each chop until the whole tree comes down. **Sneak** to break logs normally.
- **Sleeping**: only one person has to sleep to skip the night.

</details>

<details>
<summary><b>Miscellaneous</b></summary>

<br>

- **JEI**: the item list beside your inventory. Hover an item and press **R** for its recipe or **U** for what it's used in. Essential for Create.
- **Sawmill**: a stonecutter for wood. Works with every wood type in the pack.
- **Backpacks**: Sophisticated Backpacks and Traveler's Backpack are both available.
- **Carts**: AstikorCarts Redux lets you hitch supply carts, plows and passenger carts to horses.
- **Saddles, horse armor and an early-game elytra** are craftable. Check JEI for the recipes.
- **SmartSort** sorts chests and your inventory for you.

</details>

## ✱ Troubleshooting

| Problem | Solution |
|---|---|
| **"Failed to connect" / mod mismatch** | You're probably on an older version. Grab the newest zip from [Releases](../../releases). |
| **Crashes on startup** | Almost always memory. See *Before Your First Join*. |
| **A key does the wrong thing, or two things** | See *Keybind Setup*. |
| **Voice chat says "not connected"** | Check that your mic is selected in the **V** menu. |
| **Anything else** | Send zepphen a screenshot and a short description of what you were doing. |

**Contact:** Discord [@zepphen](https://discordapp.com/users/388759933128278016) · Email [zepphen@proton.me](mailto:zepphen@proton.me)

## ▤ Mod List

**101 mods**, grouped by what they do. For exact versions and links, see [`modlist.html`](modlist.html) or [`manifest.json`](manifest.json).

<details>
<summary><b>⛭ Tech & Automation</b> · 3</summary>

<br>

- Create
- Copper Age Backport
- Copper Age Backport Smart Sorter

</details>

<details>
<summary><b>❦ Farming, Food & Cooking</b> · 13</summary>

<br>

- Farmer's Delight
- Extra Delight
- Croptopia
- Farmer's (Delight) Croptopia
- [Let's Do] Farm & Charm
- [Let's Do] Bakery – Farm & Charm Compat
- Kaleidoscope Cookery
- Display Delight
- Aquaculture 2
- Aquaculture Delight
- Butchercraft
- Incubation
- Nest Egg <sup>†</sup>

<sub>† Bundled with the pack because it isn't on CurseForge (MIT license).</sub>

</details>

<details>
<summary><b>✿ Animals & Pets</b> · 8</summary>

<br>

- Naturalist
- Critters and Companions
- Cosy Critters & Creepy Crawlies
- Unusual Fish
- Doggy Talents Next
- DTN Community Skin Expansion
- DTN Palette of Paws
- Better Dogs x Doggy Talents Next <sup>‡</sup>

<sub>‡ Resource pack. Turn it on in Options → Resource Packs.</sub>

</details>

<details>
<summary><b>⚇ Villagers & Players</b> · 4</summary>

<br>

- MCA Reborn
- Couples Mod
- Ears
- Corpse

</details>

<details>
<summary><b>⌂ Building & Decoration</b> · 8</summary>

<br>

- Handcrafted
- Cluttered
- MrCrayfish's Furniture Mod: Refurbished
- Supplementaries
- Quark
- Ferdinand's Flowers
- Sawmill
- Comforts

</details>

<details>
<summary><b>✧ Exploration & World Generation</b> · 20</summary>

<br>

- The Twilight Forest
- Waystones
- Traveler's Titles
- TerraBlender
- Lithostitched
- Loot Integrations
- Yung Structures Addon for Loot Integrations
- YUNG's Better Caves
- YUNG's Better Desert Temples
- YUNG's Better Dungeons
- YUNG's Better End Island
- YUNG's Better Jungle Temples
- YUNG's Better Mineshafts
- YUNG's Better Nether Fortresses
- YUNG's Better Ocean Monuments
- YUNG's Better Strongholds
- YUNG's Better Witch Huts
- YUNG's Bridges
- YUNG's Cave Biomes
- YUNG's Extras

</details>

<details>
<summary><b>⧉ Storage, Transport & Survival</b> · 8</summary>

<br>

- Sophisticated Backpacks
- Traveler's Backpack
- Iron Chests
- AstikorCarts Redux
- Carry On
- Handcrafted Elytra
- Craftable Horse Armour & Saddle
- HT's TreeChop

</details>

<details>
<summary><b>◎ Maps, Voice & Communication</b> · 9</summary>

<br>

- Xaero's Minimap
- Xaero's World Map
- XaeroPlus
- Ping Wheel
- Ping to Map
- Simple Voice Chat
- Simple Voice Chat Group Player Names
- Simple Voice Chat: Voice Physics
- Chat Heads

</details>

<details>
<summary><b>☰ Interface & Quality of Life</b> · 7</summary>

<br>

- Just Enough Items (JEI)
- Jade
- AppleSkin
- SmartSort
- Polymorph
- YUNG's Menu Tweaks
- Clumps

</details>

<details>
<summary><b>» Performance & Server Tools</b> · 7</summary>

<br>

- ModernFix
- FerriteCore
- Lithium
- ImmediatelyFast
- Connectivity
- spark
- Chunky

</details>

<details>
<summary><b>¶ Libraries</b> · 15</summary>

<br>

Other mods need these to run. You won't notice them in-game.

- Architectury API
- Balm
- Blueprint
- Cloth Config API
- Cupboard
- EpheroLib
- Forge Config API Port
- Framework
- GeckoLib
- Moonlight Lib
- Resourceful Lib
- Sophisticated Core
- YetAnotherConfigLib
- YUNG's API
- Zeta

</details>

---

## ∴ Technical Details

<details>
<summary><b>Repository Contents</b></summary>

<br>

This repo holds the pack's config files so changes can be tracked over time. You don't need any of it to play. Just grab the zip from Releases.

| Path | Description |
|---|---|
| `manifest.json` | The mod list with exact versions |
| `modlist.html` | A readable list of every mod, with links |
| `overrides/config/` | The pack's config files |
| `overrides/mods/` | Mods that aren't on CurseForge (currently just Nest Egg, MIT-licensed) |
| `tools/migration/` | Source for the migration scripts attached to each release |

</details>

<details>
<summary><b>Branches & Release Process</b></summary>

<br>

All test builds, including server test builds, run on my machine. I'm not made of money, so there's only one real server.

| Branch | Purpose |
|---|---|
| `main` | Stable, working client config |
| `dev-client` | Testing changes to the client config |
| `dev-server` | Testing changes to the server config |
| `prod-server` | Stable, working server config |

Every stable version is bundled in [Releases](../../releases).

**How a release is built:** the repo is the source of truth, not the raw CurseForge export. After exporting from CurseForge, I copy `manifest.json`, `modlist.html` and `overrides/` in. `.gitignore` keeps personal settings (voice chat devices, JEI world data, the loading-window size, backups) out of the repo, and `.gitattributes` keeps line endings consistent. Then the release zip is built from committed files only:

```bash
git archive --format=zip -o Sockycraft-vX.zip HEAD manifest.json modlist.html overrides
```

That way nothing personal or session-specific ends up in what players download.

**NeoForge only, on purpose.** There are no Fabric mods and no Sinytra Connector. Connector caused hard-to-trace crashes in testing, so Fabric-only mods are skipped unless there's no NeoForge alternative.

</details>

<details>
<summary><b>FAQ</b></summary>

<br>

Honestly, nobody's asked me anything yet, but if you stumbled onto this repo, you might be wondering:

**Can I use these configs for my own game or server?**
Yes, absolutely! I don't own any of these mods. They're all free and public, and I'd be glad if these configs help someone.

**Can I join your server?**
It's invite-only for a specific group of friends. It's their space, and keeping the group small keeps costs down. If it ever goes public, I'll post the IP here.

**Can I help run the server?**
It's on a regular Minecraft host, because I'm busy with a lot of school projects and don't want to put my friends through the hiccups of a bare-metal VPS. You wouldn't learn much helping with it. But if you're into running servers (Minecraft or otherwise), DM me on [Discord](https://discordapp.com/users/388759933128278016) or [email me](mailto:zepphen@proton.me). I'm happy to tell you about projects I'm in or planning, and I'm open to project ideas too. I'll take any chance to learn :)

</details>
