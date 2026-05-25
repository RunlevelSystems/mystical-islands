[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Building & Claims System

---

# Mystical Isles — Building & Claims System
Player construction is one of the defining systems of Mystical Isles. Players are not only adventurers — they are builders, settlers, faction leaders, and world-shapers. Every island can be transformed by the players who claim it.

---

## Table of Contents

1. [Core Design Goal](#core-design-goal)
2. [Atavism Claim System Overview](#atavism-claim-system-overview)
3. [Claim Creation Methods](#claim-creation-methods)
4. [Claim Types](#claim-types)
5. [Building Skills](#building-skills)
6. [Tool Requirements](#tool-requirements)
7. [Building Stages](#building-stages)
8. [Progress Prefabs](#progress-prefabs)
9. [Damage and Repair](#damage-and-repair)
10. [Claim Upgrades](#claim-upgrades)
11. [Building from Items](#building-from-items)
12. [Technical Prefab Checklist](#technical-prefab-checklist)
13. [Server and Editor Notes](#server-and-editor-notes)
14. [Design Philosophy](#design-philosophy)
15. [Related Documents](#related-documents)

---

## Core Design Goal

Players can:

- Build homes, workshops, shops, and farms
- Build docks, fortresses, and faction outposts
- Build mystical shrines and ancient sites
- Build pirate hideouts and smuggler coves
- Build tribal canyon villages
- Build dwarven underground halls
- Build elven forest groves
- Build gnome engineering workshops
- Build guild towns and civic structures
- Help expand and rebuild player-influenced cities
- Claim land, defend land, and politically control territory

The world should feel like it is being built by the players over time. Ruins become outposts. Empty shores become harbors. Cliffs become tribal villages. The Isles change because players choose to build them.

---

## Atavism Claim System Overview

Claims are defined areas of land where players may place build objects.

### How Claims Work

- Claims define the region in which players may construct buildings and objects.
- Claims have a **claim type** that determines which build objects are permitted inside them.
- Claims have **object limit profiles** that control how many of each category of object can exist inside them.
- Claims can be assigned **taxes** that must be paid to maintain them.
- Claims may define an **upgrade path** allowing expansion to larger sizes over time.
- Players who **own** a claim or have been granted **build permission** may place objects inside it.
- All placed objects **persist on the server** between sessions.
- Placed objects may be interacted with: they can store items, spawn NPCs, provide resources, apply effects, or act as instance portals.
- Claims can be attacked in faction conflict scenarios (Fortress and Outpost claims).

### Claim Object Behavior

- Placed objects have health and can be damaged.
- Attackable objects can be repaired by players with appropriate tools and skill.
- Destroyed objects may drop loot based on the loot min/max percentage settings.
- Objects can be toggled visible/invisible per permission.

---

## Claim Creation Methods

### Method 1 — Admin-Created Claim Regions

Administrators create claim regions directly in the game world using the **Atavism Claim Region** component in the Unity scene editor.

- The admin defines the claim's position, size, type, profile, and upgrade path.
- These are typically used for:
  - Empty city plots for players to purchase
  - Predefined settlement locations
  - Ruin restoration sites
  - Designated fortress zones
  - Official faction outpost locations
- Admin claims appear in the world ready for players to acquire through quests, purchase, or reputation unlock.

**Setup steps:**
1. Place a GameObject in the Unity scene.
2. Attach the `AtavisClaimRegion` component.
3. Configure: Claim Name, Claim Type, Size, Object Limit Profile, Tax, Upgrade Path.
4. Register the claim in the Atavism Editor database.
5. Rebuild and restart the server.

### Method 2 — Player-Created Claims via CreateClaim Item Effect

Players can create their own claims by using a **Claim Deed** item that carries the `CreateClaim` item effect.

- The player acquires a Claim Deed from a shop, quest reward, or crafting.
- The player uses the item in the world — this opens a placement preview.
- The player selects a valid placement location (must be on legal terrain, no overlap with other claims or reserved zones).
- On confirmation, the claim is placed and the item is consumed.
- The claim is automatically owned by the placing player.

**Claim Deed item configuration:**
- Effect: `CreateClaim`
- Claim Type: (e.g., Residential Claim)
- Claim Profile: (e.g., Small Homestead)
- Claim Size: defined by the profile
- Duration: permanent until abandoned or lost

**Player-created claims are used for:**
- Personal homesteads
- Private workshops
- Small guild outposts
- Frontier settlements
- Pirate coves

---

## Claim Types

Each claim type restricts which build objects can be placed inside it and which profiles apply.

| Claim Type | Description |
|---|---|
| **Residential Claim** | Personal player homes, small gardens, basic storage, private space. |
| **City Plot** | Predefined empty lots within cities. May be residential, shop, guild, or civic. Subject to city taxes and reputation requirements. |
| **Guild Claim** | Owned by a guild. Supports guild halls, storage, crafting, defense structures, and guild banners. Requires guild leadership. |
| **Fortress Claim** | Large, politically significant claims. Support walls, towers, gates, barracks, siege weapons. Can be contested in faction conflict. |
| **Farm Claim** | Agricultural and resource-producing claims. Support crop plots, animal pens, herb gardens, wells. |
| **Workshop Claim** | Crafting and production claims. Support forge rooms, engineering benches, relic labs, alchemy stations. |
| **Dock Claim** | Coastal claims for naval infrastructure. Support docks, ship repair slips, cargo cranes, shipyards. |
| **Pirate Hideout Claim** | Hidden or outlaw claims. Support pirate shacks, smuggler storage, black market stalls, taverns. Requires pirate reputation. |
| **Tribal Camp Claim** | Desert/canyon tribal settlements. Support cliff homes, ritual fires, oasis gardens, bone totems. |
| **Dwarven Hall Claim** | Underground or mountainside claims for dwarven construction. Support stone halls, forge rooms, mine entrances. |
| **Elven Grove Claim** | Forest or elevated claims for elven construction. Support tree platforms, nature shrines, moon wells, ward groves. |
| **Gnome Workshop Claim** | Compact engineering claims. Support machines, relic labs, clockwork devices, power nodes. |
| **Mystical Site Claim** | Magical and dimensional claims. Support shrines, portals, ritual circles, Ward anchors, ancient power nodes. |
| **Outpost Claim** | Frontier military or faction outposts. Compact defense and logistics structures. May be attacked. |
| **Ruin Restoration Claim** | Placed at ruined structures. Players restore or rebuild destroyed settlements for rewards, reputation, and unlock of new NPC populations. |

---

## Building Skills

Building awards skill experience and unlocks higher-tier structures at higher skill levels.

| Skill | Used For |
|---|---|
| **Carpentry** | Wooden structures, furniture, basic buildings, ships |
| **Masonry** | Stone walls, towers, roads, bridges |
| **Blacksmithing** | Forges, metal gates, iron reinforcements, cannons |
| **Engineering** | Machines, clockwork devices, siege weapons, power nodes |
| **Shipbuilding** | Docks, ship repair slips, shipyard frames, cargo cranes |
| **Farming** | Crop plots, animal pens, herb gardens, oasis pumps |
| **Alchemy** | Alchemy tables, potion cauldrons, corrupted gardens |
| **Enchanting** | Enchanting circles, mystical wards, rune stones |
| **Relic Restoration** | Relic storage, portal anchors, ancient power nodes, relic labs |
| **Ward Construction** | Ward shrines, Veil containment stones, Ward barriers, cleansing altars |
| **Siegecraft** | Ballista platforms, cannon emplacements, spike barricades, siege towers |
| **Decoration** | Banners, lighting, furniture, fountains, statues, decorative elements |
| **Architecture** | Guild halls, town halls, council tables, large civic buildings |
| **Tribal Construction** | Cliff homes, ritual fires, bone totems, canyon watch posts |
| **Dwarven Stonework** | Underground halls, defensive gates, smelters, dwarven strongboxes |
| **Elven Grovecraft** | Tree platforms, living bridges, moon wells, Ward groves |
| **Pirate Construction** | Pirate shacks, smuggler docks, hidden storage, black market stalls |
| **Gnomish Machinery** | Clockwork devices, automation stations, portal stabilizers, experimental towers |

### Skill and Identity Notes

- Building can award skill XP for both the builder and assisting players.
- Higher skill levels unlock advanced structures with better stats, more stages, or unique interactions.
- Race and class identity influences which skills develop faster (see [Race & Class Building Identity](./race_class_building_identity.md)).
- Guilds benefit greatly from having specialized builders with advanced skills in multiple categories.
- Solo players can build basic structures without specialization; advanced structures require dedicated skill investment.

---

## Tool Requirements

Most structures require appropriate tools equipped or in the player's inventory to initiate construction.

| Tool | Used For |
|---|---|
| **Hammer** | Wooden and basic construction, carpentry, repair |
| **Saw** | Lumber preparation, wooden wall framing |
| **Pickaxe** | Stone foundations, mine entrances, underground work |
| **Shovel** | Farm plots, foundations, oasis pumps, earthworks |
| **Chisel** | Masonry detail work, rune carving, stone finishing |
| **Wrench** | Engineering components, machine assembly, ship fittings |
| **Rune Tool** | Ward structures, mystical anchors, enchanting circles |
| **Alchemy Kit** | Alchemy tables, potion cauldrons, corrupted elements |
| **Enchanting Focus** | Enchanting circles, mystical wards, shrine activation |
| **Shipwright Hammer** | Ship repair slips, dock construction, shipyard frames |
| **Mason's Hammer** | Heavy stonework, defensive walls, dwarven halls |
| **Tribal Carving Knife** | Tribal structures, bone totems, ritual carvings |
| **Dwarven Forge Hammer** | Forge rooms, smelters, metal gates, volcanic forges |
| **Gnomish Spanner** | Machines, clockwork devices, automation stations, relic labs |

---

## Building Stages

Most significant structures are built in multiple stages. Each stage has its own:

- Health
- Required materials
- Time to build
- Time to repair
- Progress prefab (visual state)
- Damage prefab (damaged visual state)
- Destruction loot table

### Standard Three-Stage Construction

**Stage 1 — Foundation**
- Low health (e.g., 20% of final)
- Basic material cost (wood, stone, or initial resources)
- Minimal visual footprint
- Not yet interactive
- Time to build: short (e.g., 120–300 seconds)

**Stage 2 — Frame**
- Medium health (e.g., 60% of final)
- Additional materials required (planks, nails, stone blocks, etc.)
- Visible structural frame
- Still not fully interactive
- Time to build: moderate (e.g., 300–600 seconds)

**Stage 3 — Complete**
- Full health
- Final materials required (roof, finishing, interior elements)
- Fully interactive
- Interaction type active
- Time to build: varies by structure size

### Extended Stages for Large Structures

Guild halls, fortresses, and large civic buildings may use 4–6 stages, breaking construction into:
1. Foundation
2. Outer walls
3. Roof and framing
4. Interior fitting
5. Decoration and detailing
6. Final completion

---

## Progress Prefabs

Every build object must have visual prefabs that represent its construction and damage states.

| Prefab Type | Required | Description |
|---|---|---|
| **0% prefab** | Required | Foundation, ground markers, or just a stake in the ground |
| **50% prefab** | Recommended | Frame or half-built state |
| **100% prefab** | Required | Fully completed structure |
| **25% prefab** | Optional | Early stage for large builds |
| **75% prefab** | Optional | Near-complete stage |
| **Damaged prefab** | Required for attackable objects | Shows damage, broken walls, fire, destruction |

### Prefab Rules

- Large buildings should visually change at each construction stage.
- Damaged prefabs should reflect proportional damage — minor damage shows cracks, heavy damage shows partial collapse.
- Each prefab must have correct colliders, pivot points, and scale.
- Prefabs must be registered in the Build Object Template in the Atavism Editor.

---

## Damage and Repair

### Attackable Structures

- Any structure marked `Attackable: true` can receive damage from players or NPCs.
- Defense structures (walls, towers, gates) have high health values.
- Decorations have low health.
- Mystical objects may have moderate health but require special repair materials.

### Repairable Structures

- Structures marked `Repairable: true` can be repaired by players with appropriate tools and skill.
- Repair requires materials proportional to the damage taken.
- Large defense structures may require coordination from multiple players to repair efficiently.

### Destruction and Loot

- When a structure reaches 0 health, it is destroyed.
- Destroyed structures may drop a portion of their construction materials as loot.
- The amount returned is controlled by:
  - **Loot Min Percentage**: minimum materials returned (e.g., 25%)
  - **Loot Max Percentage**: maximum materials returned (e.g., 75%)
- High-tier structures with rare materials should return a meaningful portion to reward defensive investment.

### Repair Materials by Category

| Category | Repair Material |
|---|---|
| Wooden structures | Timber, Planks, Nails |
| Stone structures | Stone Blocks, Mortar |
| Metal structures | Iron Ingots, Forge Coal |
| Mystical objects | Aether Crystals, Rune Fragments |
| Ancient machines | Relic Components, Gnomish Parts |
| Ward structures | Aether Shard, Ward Essence |

---

## Claim Upgrades

Claims can be upgraded to larger sizes over time, increasing the available building area and object limits.

| Tier | Size | Requirements |
|---|---|---|
| **Small** | 10×10 | Initial claim deed or admin placement |
| **Medium** | 20×20 | Currency + building materials + time investment |
| **Large** | 30×30 | Currency + materials + faction reputation |
| **Guild** | 50×50+ | Guild level requirement + significant materials + political approval |
| **Fortress** | 60×60+ | Guild level + faction standing + large material investment + political permission |

### Upgrade Requirements by Claim Type

**Residential → City Plot Upgrade**
- Kingdom reputation threshold
- Plot purchase payment
- City council approval (if applicable)

**Guild Claim Upgrade**
- Guild level minimum
- Currency and materials
- Guild leader approval

**Fortress Claim Upgrade**
- Significant material investment
- Multiple guild officers approval
- Faction standing
- May require political permission in controlled territories

**Ruin Restoration Upgrade**
- Requires completion of restoration quest chain
- Unlocks additional building area as restoration progresses

---

## Building from Items

Some build objects are placed directly from inventory items rather than through the standard build menu.

### Available as Item Only

When a build object has `Available as Item Only: true`, it does not appear in the World Builder build menu. It can only be placed by using the corresponding item from the player's inventory.

**Uses for item-only placement:**
- Furniture and decorative pieces
- Rare shrine objects from quest rewards
- Claim deed items (triggers `CreateClaim` effect)
- Shop licenses that create merchant stalls
- Unique or event quest buildings
- Special relic objects found in ruins

### Item Placement Flow

1. Player acquires the item (loot, crafting, purchase, quest).
2. Player opens inventory and activates the item.
3. Placement preview appears — player positions the object.
4. Player confirms placement.
5. Item is consumed on successful placement.
6. If placement fails (invalid location, outside claim, etc.), the item is NOT consumed.

### ClaimObject Item Effect

Items that place build objects use the `ClaimObject` effect:
- Links the item to a specific Build Object Template entry.
- Optionally bypasses the material cost (since the item itself represents the object).
- Item is only consumed after confirmed successful placement.

---

## Technical Prefab Checklist

Every build object prefab must satisfy the following before being registered in the Atavism Editor:

- [ ] Has `ClaimObject` component attached
- [ ] Has appropriate collider(s)
- [ ] Supports mouseover and click detection
- [ ] Correct world scale (not oversized or undersized)
- [ ] Correct pivot point (bottom-center for most objects)
- [ ] Has 0% progress prefab (pre-build state)
- [ ] Has 100% progress prefab (completed state)
- [ ] Has intermediate progress prefabs for staged builds (25%, 50%, 75% as needed)
- [ ] Has damage prefab(s) if `Attackable: true`
- [ ] Clear, consistent naming (e.g., `BuildObject_SmallWoodenHouse_Stage3`)
- [ ] Tested placement inside a claim in the development build
- [ ] Registered in Build Object Template in Atavism Editor
- [ ] Server restarted after registration

---

## Server and Editor Notes

### Build Object Template Setup

- Build Object Templates are created and managed in the **Atavism Editor** (Unity plugin).
- Each template defines all fields: name, skill, categories, stages, interaction types, loot, prefabs, etc.
- After creating or editing templates, a **server restart is required** before the changes are available in-game.

### World Builder UI

- Players access building through the **World Builder UI** in-game.
- The radial menu can be integrated with **EBS Easy Build System** for improved UX.
- The build menu filters available objects based on:
  - Claim type of the current claim
  - Player skill levels
  - Whether the object is item-only
  - Object limit profiles for the claim

### Claim Management

- Claim permissions can be set by the claim owner: owner only, guild, public.
- Admins can manage claims through the Atavism admin panel.
- Abandoned claims (no taxes paid, no activity) may decay over time.
- The `CreateClaim` item effect handles all player-created claim placement logic.

---

## Design Philosophy

### Building Should

- Let players physically shape the world over time
- Support race and class identity through unique building styles
- Support the player economy through crafting stations, shops, and workshops
- Support guilds with dedicated structures and political buildings
- Support political systems through city plots and faction control
- Support exploration by rewarding players who restore ruins or build frontier outposts
- Support war and defense through fortress and outpost systems
- Support peaceful professions for players who prefer building over combat
- Create long-term goals that require investment of time, materials, and social coordination

### Building Should NOT

- Be only cosmetic decoration with no gameplay effect
- Be limited to housing and ignore production, trade, or politics
- Be disconnected from the faction, quest, and economy systems
- Become impossible for solo players — basic construction must be accessible without a large guild
- Allow players to block or destroy critical quest areas or NPC spawns

The goal is a living world where players physically build the future of the Isles.

---

## Related Documents


## Suggested Reading
- Previous: [📈 Economy System](economy_system.md)
- Next: [Mystical Isles — Building Categories](building_categories.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
