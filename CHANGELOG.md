# Changelog

Every notable change to **Sockycraft**, newest first.

> **Legend:** ✚ Added · ↻ Changed · ↑ Updated · ✓ Fixed · ✕ Removed · ※ Notes · △ Known Issues

---

## v2 · 2026-10-16

> **The big one.** 79 → 101 mods. Dogs, chicken nests, butchering, the Twilight Forest, Quark, copper golems, a sawmill, one-hit tree felling, a lot more cooking, and fixes for the Croptopia / Farmer's Delight overlap. Updating no longer costs you your settings or map, either.

> [!IMPORTANT]
> **Updating from v1.x?** Import this as a **new profile** (keep the name **Sockycraft v2**), then run the migration script from the release to bring over your worlds, keybinds, server list and map. The README's *Update (Existing Players)* section walks you through it. After that, follow *Keybind Setup* to fix the clashing keys.

<details open>
<summary><b>Resolved Issues</b></summary>

<br>

| Issue | Request | Resolution |
|:---:|---|---|
| [#2](../../issues/2) | Butcher's Delight | **Butchercraft** (Butcher's Delight has no 1.21.1 version) |
| [#3](../../issues/3) | Replace Timber Strike with a supported tree mod | **HT's TreeChop** |
| [#8](../../issues/8) | One player can sleep to skip the night | Server game rule `playersSleepingPercentage` set to `1` |
| [#9](../../issues/9) | Craftable saddles | **Craftable Horse Armour & Saddle** |
| [#11](../../issues/11) | More dog breeds | **Doggy Talents Next** + **Better Dogs x DTN** |
| [#12](../../issues/12) | A stonecutter for wood | **Sawmill** |
| [#13](../../issues/13) | Chicken nests | **Incubation** + **Nest Egg** |
| [#14](../../issues/14) | Update the server build | Server and pack moved to NeoForge **21.1.262** |
| [#15](../../issues/15) | Optional mods: Twilight Forest, Quark | **The Twilight Forest**<br>**Quark** |
| [#16](../../issues/16) | Update voice chat | **Simple Voice Chat** 2.6.22<br>**Voice Physics** 2.11.1 |
| [#17](../../issues/17) | Cluttered, Handcrafted, Kaleidoscope, Let's Do Bakery, All Bark No Bite | All added. All Bark, All Bite is Forge-only, so **Doggy Talents Next** fills that role |
| [#18](../../issues/18) | Croptopia and Farmer's Delight conflict | **Farmer's (Delight) Croptopia** |
| [#20](../../issues/20) | Copper golems | **Copper Age Backport** + **Smart Sorter** |

<sub>[#5](../../issues/5) (player icons on the minimap) was closed with no change needed: hold **Tab**.</sub>

</details>

### ✚ Added

<details open>
<summary><b>❦ Farming, Food & Cooking</b> · 8</summary>

<br>

| Mod | Description |
|---|---|
| **Butchercraft** | Carcasses, meat hooks, butcher blocks, a meat grinder and lots of new cuts of meat |
| **Extra Delight** | More Farmer's Delight cooking, plus recipes for Butchercraft's meats |
| **Farmer's (Delight) Croptopia** | Makes Croptopia and Farmer's Delight crops work together instead of clashing |
| **Incubation** | Hay and twig nests that chickens lay eggs in, village chicken coops, egg crates and egg dishes |
| **Nest Egg** | Chickens sit on nests and hatch the eggs. Naturalist ducks use nests too. Bundled with the pack because it isn't on CurseForge (MIT license) |
| **[Let's Do] Farm & Charm** | Farming and kitchen content |
| **[Let's Do] Bakery – Farm & Charm Compat** | Bakery content wired into Farm & Charm |
| **Kaleidoscope Cookery** | More cooking stations and recipes |

</details>

<details open>
<summary><b>✿ Animals & Pets</b> · 4</summary>

<br>

| Mod | Description |
|---|---|
| **Doggy Talents Next** | Tamed wolves become dogs with levels, talents, accessories and about 140 skins |
| **DTN Community Skin Expansion** | 16 more dog skins |
| **DTN Palette of Paws** | About 30 new wild wolf variants that spawn by biome, including the Nether and the End |
| **Better Dogs x Doggy Talents Next** *(resource pack)* | 120 real dog breeds as selectable skins: corgis, dalmatians, German shepherds and more |

</details>

<details open>
<summary><b>⌂ Building & Decoration</b> · 4</summary>

<br>

| Mod | Description |
|---|---|
| **Sawmill** | A stonecutter for wood that works with every wood type in the pack, plus a Carpenter villager |
| **Handcrafted** | Furniture and decor |
| **Cluttered** | Decorative clutter blocks |
| **Quark** | Vanilla-style building blocks and quality-of-life tweaks |

</details>

<details open>
<summary><b>✧ Exploration, Tech & Survival</b> · 7</summary>

<br>

| Mod | Description |
|---|---|
| **The Twilight Forest** | A whole new dimension of bosses, dungeons and enchanted forests |
| **Copper Age Backport** | Copper golems and copper content from newer Minecraft |
| **Copper Age Backport Smart Sorter** | Golem-powered item sorting |
| **Traveler's Backpack** | Wearable backpacks with fluid tanks, tool slots and a sleeping bag |
| **HT's TreeChop** | Chop one log repeatedly and the whole tree comes down. Sneak to break logs normally |
| **Handcrafted Elytra** | A craftable, balanced early-game elytra |
| **Craftable Horse Armour & Saddle** | Crafting recipes for saddles and every tier of horse armor |

</details>

<details>
<summary><b>¶ New Libraries</b> · 3</summary>

<br>

- Blueprint
- Resourceful Lib
- Zeta

</details>

### ↑ Updated

<details>
<summary><b>Updated Mods</b> · 17</summary>

<br>

| Group | Mods |
|---|---|
| ◎ Maps & voice | Simple Voice Chat **2.6.22**<br>Voice Physics **2.11.1**<br>Xaero's Minimap **26.6.0**<br>Xaero's World Map **1.47.0**<br>XaeroPlus **2.37.0**<br>Ping to Map **1.1.2** |
| ⧉ Storage | Sophisticated Backpacks **3.26.12**<br>Sophisticated Core **1.5.13**<br>SmartSort **1.1.2** |
| ⌂ Building | Supplementaries **4.0.1** |
| ✿ Animals | Naturalist **2.0.5** |
| ⚇ Players | Corpse **1.1.21** |
| ✧ Worldgen | Lithostitched **1.8.1** |
| » Performance | ModernFix **5.27.26**<br>ImmediatelyFast **1.6.15**<br>Connectivity **7.7** |
| ¶ Libraries | Moonlight Lib **3.7.2** |

</details>

### ↻ Changed

- **NeoForge** 21.1.250 → **21.1.262**, on the server and in the pack
- **Profile name** is now **Sockycraft v2**, and the pack lists **zepphen** as its author
- **Recommended memory** raised to **8 GB** (6 GB minimum)
- **Updating keeps your stuff.** Each release comes with a double-click migration script for Windows, Mac and Linux that copies your worlds, keybinds, server list, Xaero map, screenshots and schematics into the new profile
- **One sleeper skips the night** on the server (`playersSleepingPercentage` = 1)
- **The loading window** now opens at the default size instead of 4K. `fml.toml` no longer ships with the pack, so everyone gets NeoForge's defaults
- **Sophisticated Backpacks** gained a **Sawmill upgrade**, through its Sawmill integration

<details>
<summary><b>Config Changes from Mod Updates</b></summary>

<br>

None of these are hand-tuned. They're new options that updated mods added, at their default values.

- **Supplementaries:** naval raids changed. Now only some pillagers arrive by boat (1 boat on the first wave, up to 2 on the last), and villages surrounded by water get boat raids instead of no raid. Also adds leads tied to ropes, connected blackboard drawing, Groupers and Piñatas.
- **Voice Physics:** new settings (doorways, sculk, eavesdropping with a spyglass, radios), all off by default.
- **Jade:** tooltips for TreeChop, Kaleidoscope Cookery, Quark and Twilight Forest blocks.
- **NeoForge:** new network limits at their defaults.

</details>

<details>
<summary><b>Repository Maintenance</b></summary>

<br>

- Added `.gitattributes` so Windows and Mac/Linux line endings stop showing up as fake changes.
- `.gitignore` now ignores `fml.toml` and lets the bundled Nest Egg jar into the repo.

</details>

### ✓ Fixed

- **Startup crash from Copper Age Backport.** 0.1.4 registered copper armor once per armor piece and crashed with a *duplicate key* error. That also broke Create, Supplementaries and Unusual Fish loading. Fixed by moving to **0.1.5.1-pre**, where the author fixed it upstream.
- **Croptopia vs Farmer's Delight crops.** The two mods had overlapping items: for example, Farmer's Delight tomatoes turned into Croptopia seeds, which broke Farmer's Delight cooking. **Farmer's (Delight) Croptopia** reconciles them ([#18](../../issues/18)).

### ✕ Removed

- **Xaero's Maps: Multiplayer+**: shared maps weren't worth how heavy it was.
- **Kotlin for Forge**: only Xaero's Maps: Multiplayer+ needed it.
- **Xaero's Minimap & World Map – Waystones Compatibility**: Xaero's maps now support Waystones natively.
- **Copper Age Backport Durability Fix**: it only supports Copper Age Backport 0.1.4 and older, and its mixin plugin failed to load anyway

### ※ Notes

- **All Bark, All Bite** and **Butcher's Delight** were requested but have no NeoForge 1.21.1 versions. Doggy Talents Next and Butchercraft fill those roles.
- **Copper Age Backport** is on a pre-release (0.1.5.1-pre). Switch to the stable release once it's out.
- Still open: debloating the server pack of client-only mods ([#10](../../issues/10)) and a 15-minute server autosave ([#19](../../issues/19)).

### △ Known Issues

- **Several mods share default keys** (B, M, N, G, U, R, Z, K), and Carry On's default Shift + right-click gets in the way of opening dog menus. The README's *Keybind Setup* section lists exactly what to change.
- **The Better Dogs resource pack** has to be turned on in **Options → Resource Packs**.

---

## v1.1.1 · 2026-09-28

<details>
<summary><b>Resolved Issues</b></summary>

<br>

| Issue | Request | Resolution |
|:---:|---|---|
| [#1](../../issues/1) | Inventory / chest sorting | **SmartSort** |
| [#4](../../issues/4) | Remove nonfunctioning mods | Removed Forgified Fabric API and Timber |
| [#6](../../issues/6) | New minecarts | **AstikorCarts Redux** (Nifty Carts couldn't run, see Notes) |
| [#7](../../issues/7) | Remove personal voice chat config | Personal client settings no longer ship |

</details>

### ✚ Added

| Group | Mods |
|---|---|
| ◎ Maps | Xaero's World Map<br>XaeroPlus<br>Xaero's Maps: Multiplayer+ (shared maps)<br>Xaero's Waystones compatibility |
| ◎ Pings | Ping Wheel<br>Ping to Map |
| ☰ Quality of life | JEI<br>SmartSort<br>Chat Heads<br>Simple Voice Chat Group Player Names |
| ⧉ Transport | AstikorCarts Redux |
| ¶ Libraries | Kotlin for Forge (needed by Xaero's Maps: Multiplayer+) |

### ↻ Changed

- The pack is now called **Sockycraft** in the CurseForge launcher.
- Personal client settings no longer ship with the pack (voice chat mic and speaker selection, JEI world bookmarks). Voice chat asks you to pick your mic on first launch.

### ✕ Removed

- **Forgified Fabric API**: nothing in the pack needs it anymore.
- **Timber**: its license doesn't allow redistributing the jar.

### ※ Notes

- Tried and dropped **Nifty Carts** through Sinytra Connector. Connector broke Cosy Critters, and Nifty Carts needs Fabric-only config code that Connector can't provide on 1.21.1. **AstikorCarts Redux** is the NeoForge-native replacement.

---

## v1.1

- Initial release
