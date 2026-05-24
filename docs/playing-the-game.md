# Playing Your Game

Once the server is up and running and Unity is behaving itself, it's time to step into the world of **Mystical Islands**. This guide explains the basics of movement, interaction, combat, inventory management, and useful commands while exploring the world.

---

# Movement & Camera Control

There are several ways to move your character through the world:

- **WASD** keys
- **Arrow Keys**
- Hold **Left + Right Mouse Buttons** together

## Camera Controls

- Hold **Left Mouse Button** to rotate the camera
- Hold **Right Mouse Button** to rotate your character with the camera
- Use the **Mouse Wheel** to zoom the camera in and out

## Useful Movement Keys

| Key | Action |
|---|---|
| `\` | Toggle Walk / Run |
| `Numlock` | Toggle Autorun |

---

# Chat System

The chat window appears in the lower-left corner of the screen.

## Start Typing

You can begin chatting by:

- Pressing the `Enter` key
- Clicking inside the chat input field

Press `Enter` again to send your message.

Messages are visible to nearby players unless using a special chat command.

## Chat Linking

You can link items, abilities, and other objects in chat using:

- `SHIFT + Mouse Button`

---

# Interacting with the World

Many objects in the world can be interacted with:

- Resource Nodes
- Crafting Stations
- Mailboxes
- Merchants
- Doors
- Build Objects
- Quest NPCs

Interactive objects usually:

- Highlight when hovered
- Change cursor appearance
- Glow or change color

> You must usually stand close enough to interact.

## Merchant Shortcuts

While trading with merchants:

- `ALT + Mouse Button` allows purchasing a specific quantity

---

# Using Items

Items can either be:

- Activated
- Moved

## Activating Items

Left-click an item to use it.

Examples:

- Weapons and armor become equipped
- Potions activate effects
- Quest items may trigger events
- Scrolls may teach abilities

Some items cannot be activated directly.

---

## Moving Items

Right-click an item to pick it up and move it.

You can then:

- Place it in another inventory slot
- Drop it into another bag
- Drop it into the world

Dropping items into the world may ask for confirmation.

---

## Splitting Item Stacks

| Action | Result |
|---|---|
| `ALT + Left Mouse Button` | Split stack in half |
| `ALT + Right Mouse Button` | Remove one item from stack |

---

# Combat

Combat in Mystical Islands combines action combat, abilities, and progression skills.

## Auto Attack

- Right-click an enemy to begin auto attacking
- Your cursor changes into a sword over hostile targets

## Abilities

Abilities are displayed on the action bar.

To activate:

- Left-click the ability icon
- Or use assigned hotkeys

Abilities may include:

- Melee attacks
- Magic spells
- Healing
- Buffs
- Dodging
- Sprinting
- Special class abilities

---

# Death & Respawning

When defeated:

- Your character enters a death state
- Equipment durability may decrease
- Certain items may be dropped depending on settings

Use:

```text
/release
```

to respawn at a safe location.

---

# World Exploration Tips

- Hidden dungeons often exist beneath major cities
- Different islands contain unique monsters and resources
- Merchant prices vary dramatically by region
- Some monsters travel in groups and alert nearby allies
- Dangerous weather may reveal hidden areas
- Mimics disguise themselves as treasure chests

---

# General Commands

These commands are case-sensitive.

| Command | Description |
|---|---|
| `/goto spawn` | Teleport to spawn point |
| `/loc` | Show your current location |
| `/w name message` | Whisper player |
| `/whisper name message` | Whisper player |
| `/release` | Release from death |
| `/orient` | Show facing direction |
| `/1 message` | Local instance chat |
| `/2 message` | Global chat |
| `/g message` | Guild chat |
| `/group message` | Group chat |
| `/stuck` | Return to spawn if stuck |

---

# Social Commands

| Command | Action |
|---|---|
| `/wave` | Wave emote |
| `/sitting` | Sit down |
| `/talking` | Talking emote |
| `/pushups` | Push-up animation |

---

# Admin Commands

These commands are available only to administrators and game masters.

| Command | Description |
|---|---|
| `/who` | Show online players |
| `/props` | Show target properties |
| `/prop str` | Search properties |
| `/admin` | Open admin UI |
| `/gm 1` | Enable GM invulnerability |
| `/gm 0` | Disable GM mode |
| `/changeInstance name` | Change instance |
| `/gi # #` | Generate item |
| `/spawner` | Open world builder |
| `/fly` | Enable flying |
| `/fly stop` | Disable flying |
| `/getExp #` | Add experience |
| `/getCurrency # #` | Add currency |
| `/getSkillCurrent # #` | Increase skill |
| `/gotoplayer playerName` | Teleport to player |
| `/admininfo message` | Global announcement |
| `/kick playerName` | Kick player |
| `/banUserName playerName` | Ban player |
| `/ban` | Ban selected player |

---

# Debug Commands

## Movement Debug

| Command | Description |
|---|---|
| `/moveDebugOn` | Show mob movement paths |
| `/moveDebugOff` | Disable movement debug |

### Movement Debug Colors

| Color | Meaning |
|---|---|
| White | Actual server position |
| Blue | Interpolated destination |
| Green | Destination point |

---

## Navigation & Ability Debug

| Command | Description |
|---|---|
| `/navmeshDebug` | Show ability raycasts |
| `/navmeshDebugOff` | Disable navmesh debug |
| `/abilityDebug` | Show ability angles |
| `/abilityDebugOff` | Disable ability debug |

---

# Final Notes

Mystical Islands is designed around:

- Exploration
- Discovery
- Progression
- Reputation
- Guilds
- Crafting
- World Building
- Dynamic player stories

The world changes based on player actions, faction influence, and exploration.

Every island contains secrets.

Every dungeon contains danger.

And every choice shapes your story.

---

[← Back to Main README](../README.md)
