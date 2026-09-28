# Sockycraft

A Minecraft modpack for friends and family.

**Minecraft 1.21.1** · **NeoForge** · 69 mods

Create, Farmer's Delight, furniture, cozy critters, proximity voice chat, and a full set of YUNG's structure overhauls.

---

## How to install

You need the **CurseForge launcher**. If you don't have it, get it from [curseforge.com/download/app](https://www.curseforge.com/download/app) — it's free.

1. Download the latest `.zip` from the [**Releases**](../../releases) page. Don't unzip it.
2. Open the CurseForge launcher and pick **Minecraft**.
3. Click **Create Custom Profile**.
4. Click **Import** and choose the zip you just downloaded.
5. Wait. It downloads every mod, which takes a few minutes.
6. Hit **Play**.

That's it. The launcher installs the right Java version and everything else on its own.

## Before your first join

**Give it enough memory.** Click the three dots on your profile → Profile Options → uncheck "Use System Memory Settings" → set it to **6144 MB**. The default is too low for this many mods and the game will crash or stutter without it.

**First launch is slow.** Two to five minutes is normal. It gets faster after that.

**Ask Zepphen for the server address.** The server is private and invite-only for a specific group of friends, so the address isn't listed here. Once you have it, add it under Multiplayer → Add Server. The server will come up as "Sockycraft".

## Voice chat

This pack has proximity voice chat — people sound closer when they're closer.

- Press **V** to open the voice menu
- Set your microphone the first time you join
- Windows may ask for mic permission; say yes

## If something goes wrong

**"Failed to connect" or a mod mismatch error** — you're probably on an older version of the pack. Check Releases for a newer zip and re-import it.

**Crashes on startup** — almost always memory. See the 6144 MB step above.

**Voice chat says "not connected"** — check your mic is picked in the V menu.

**Anything else** — take a screenshot and send it to Zepphen, along with a short description of what you were doing when it happened:

- Discord: [@zepphen](https://discordapp.com/users/388759933128278016)
- Email: [zepphen@proton.me](mailto:zepphen@proton.me)

## Updating

When a new version is posted in [**Releases**](../..releases), download the new zip and import it as a fresh profile the same way. Your world is on the server, so nothing gets lost.

## What's in here

This repo holds the pack's configuration files so changes can be tracked over time. You don't need any of it to play — just the zip from Releases.

- `manifest.json` — the mod list with exact versions
- `modlist.html` — a readable list of every mod, with links
- `overrides/config/` — the pack's config files

## Technical Stuff & GitHub Organization

Currently all test builds are run on my machine. This includes test builds for the server. I'm not made of money, so I only have one actual server running.

The main branch is the stable, working client-side config. dev-client and dev-server branches are for testing changes to the respective configurations we have. server branch is for the stable, working server-side config. All stable versions will be bundled in releases.

## FAQ

To be honest, no one has asked me questions about this server, but if you stumble on my repo, you may be wondering:
- **Can I use these configs for my own game/server?**

Yes! Absolutely. I don't own or have the rights to any of these mods. It's all public stuff and they're all public because they're free to use. I'd be glad if these configs were useful to other people.
- **Can I join your server?**

Currently, it's invite only for a specific group of my friends. I have no intention of opening this server to anyone else because it's their space and keeping our group small keeps the costs of running our server minimal. If I ever make this server public, I'll post the IP on here.
- **Can I participate in running this server with you?**

I'm currently using a generic Minecraft hosting service. Mostly because I'm busy with a lot of other projects I'm part of at school and I'm not interested in subjecting my friends to the hiccups of running a bare-metal VPS or something for this Minecraft server. You wouldn't learn much with me running things this way. What you *can* do is DM me on [Discord](https://discordapp.com/users/388759933128278016) or [email me](mailto:zepphen@proton.me) if you're interested in running a server or a Minecraft server or whatever else, and I'll gladly let you know if you can be part of any projects I'm in or intend to start. I'm also not against people proposing projects we may do together! I'll take any opportunity I can to learn :)
