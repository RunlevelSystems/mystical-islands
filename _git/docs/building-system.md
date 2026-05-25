# Building System

Consolidated player construction reference for claims, structures, settlements, guild halls, villages, crafting stations, fortifications, and stage-based progression.

Preserves claim structures, object fields, stage systems, and requirement relationships.

---

## Consolidated Sourcebook

This page consolidates and preserves existing Mystical Islands documentation in one centralized reference.

### Source: `docs/systems/building_and_claims_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Building & Claims System

---

# Mystical Isles — Building & Claims System
Player construction is one of the defining systems of Mystical Isles. Players are not only adventurers — they are builders, settlers, faction leaders, and world-shapers. Every island can be transformed by the players who claim it.

---

## Table of Contents

1. [Core Design Goal] (#core-design-goal)
2. [Atavism Claim System Overview] (#atavism-claim-system-overview)
3. [Claim Creation Methods] (#claim-creation-methods)
4. [Claim Types] (#claim-types)
5. [Building Skills] (#building-skills)
6. [Tool Requirements] (#tool-requirements)
7. [Building Stages] (#building-stages)
8. [Progress Prefabs] (#progress-prefabs)
9. [Damage and Repair] (#damage-and-repair)
10. [Claim Upgrades] (#claim-upgrades)
11. [Building from Items] (#building-from-items)
12. [Technical Prefab Checklist] (#technical-prefab-checklist)
13. [Server and Editor Notes] (#server-and-editor-notes)
14. [Design Philosophy] (#design-philosophy)
15. [Related Documents] (#related-documents)

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
- Race and class identity influences which skills develop faster (see [Race & Class Building Identity] (./race_class_building_identity.md)).
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
- Previous: [📈 Economy System] (economy_system.md)
- Next: [Mystical Isles — Building Categories] (building_categories.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/claim_profiles.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Claim Profiles

---

# Mystical Isles — Claim Profiles
Claim profiles define the size, upgrade path, and object limits for each claim. Every claim placed in the world — whether by an admin or a player using a Claim Deed — references a profile that determines what can be built inside it and how many objects of each category are allowed.

---

## Table of Contents

1. [How Claim Profiles Work] (#how-claim-profiles-work)
2. [Claim Object Category Limits] (#claim-object-category-limits)
3. [Claim Profile Reference Table] (#claim-profile-reference-table)
4. [Profile Descriptions] (#profile-descriptions)
5. [Upgrade Paths] (#upgrade-paths)
6. [Tax and Maintenance] (#tax-and-maintenance)
7. [Related Documents] (#related-documents)

---

## How Claim Profiles Work

A claim profile is assigned to a claim when it is created. It controls:

- **Claim Type**: which build object categories and valid types are permitted
- **Size**: the footprint of the claim area
- **Upgrade Path**: which profile this claim can be upgraded to, and at what cost
- **Object Limits**: how many objects of each category may exist inside the claim simultaneously
- **Intended Use**: the design purpose of this claim configuration

Profiles are created and managed in the **Atavism Editor** and are referenced by name when configuring claim regions or Claim Deed items.

---

## Claim Object Category Limits

The following categories are tracked per-claim. Each profile defines a maximum count for each applicable category.

| Category | Notes |
|---|---|
| Housing | Sleeping areas, livable structures |
| Storage | Chests, vaults, caches |
| Crafting Station | Forges, benches, tables |
| Defense | Walls, towers, gates, barricades |
| Farm | Crop plots, animal pens, resource nodes |
| NPC Service | Merchants, guards, trainers, bankers |
| Decoration | Banners, furniture, lighting, statues |
| Shrine | Mystical, Ward, and ritual objects |
| Portal | Instance entrances and anchors |
| Dock | Naval infrastructure |
| Guild Structure | Guild halls, council tables, civic objects |
| Political Structure | Thrones, governor desks, voting stones |

---

## Claim Profile Reference Table

| Claim Profile | Claim Type | Size | Upgrade Path | Object Limits (Key) | Intended Use |
|---|---|---|---|---|---|
| **Small Homestead** | Residential Claim | 10×10 | → Medium Homestead | Housing: 1, Storage: 2, Crafting: 1, Decoration: 10, Farm: 2 | Basic solo player home and small garden |
| **Medium Homestead** | Residential Claim | 20×20 | → Large Homestead | Housing: 2, Storage: 4, Crafting: 2, Decoration: 20, Farm: 4 | Comfortable player home with workshop space |
| **Large Homestead** | Residential Claim | 30×30 | → City Plot | Housing: 3, Storage: 6, Crafting: 3, Decoration: 30, Farm: 6 | Full homestead with crafting and storage |
| **City Plot — Residential** | City Plot | 10×10 | → City Plot — Extended | Housing: 1, Storage: 2, Crafting: 1, Decoration: 15 | Empty city lot for player home |
| **City Plot — Shop** | City Plot | 10×10 | → City Plot — Extended | NPC Service: 2, Storage: 3, Decoration: 10 | Shop or stall in a player city |
| **City Plot — Guild Office** | City Plot | 15×15 | → City Plot — Extended | Guild Structure: 1, Storage: 2, NPC Service: 1, Decoration: 10 | Small guild presence in a city |
| **City Plot — Extended** | City Plot | 20×20 | — | All categories increased | Larger city lot for established players |
| **Guild Settlement** | Guild Claim | 30×30 | → Guild Town | Housing: 4, Storage: 6, Crafting: 4, Defense: 6, Guild Structure: 2, Decoration: 20 | Core guild base with hall, storage, and defenses |
| **Guild Town** | Guild Claim | 50×50 | → Guild Fortress | Housing: 10, Storage: 10, Crafting: 8, Defense: 12, NPC Service: 4, Guild Structure: 4, Political Structure: 2 | Established guild town with full infrastructure |
| **Frontier Fortress** | Fortress Claim | 60×60 | → Grand Fortress | Defense: 30, Housing: 8, Storage: 8, Crafting: 4, NPC Service: 4, Political Structure: 2 | Major defensive installation for faction control |
| **Grand Fortress** | Fortress Claim | 80×80 | — | Defense: 50, Housing: 16, Storage: 12, Crafting: 6, NPC Service: 6, Political Structure: 4 | Regional capital-tier fortress |
| **Frontier Farm** | Farm Claim | 20×20 | → Established Farm | Farm: 8, Storage: 4, Housing: 1, Decoration: 6 | Agricultural production and resource gathering |
| **Established Farm** | Farm Claim | 30×30 | — | Farm: 14, Storage: 6, Housing: 2, NPC Service: 1, Decoration: 8 | Full farming settlement with NPC workers |
| **Workshop** | Workshop Claim | 20×20 | → Master Workshop | Crafting: 6, Storage: 4, Housing: 1, Decoration: 6 | Dedicated crafting facility |
| **Master Workshop** | Workshop Claim | 30×30 | — | Crafting: 10, Storage: 8, Housing: 2, NPC Service: 2, Decoration: 10 | Advanced production facility |
| **Small Dock** | Dock Claim | 20×20 | → Harbor | Dock: 4, Storage: 4, NPC Service: 1, Decoration: 6 | Coastal dock and ship services |
| **Harbor** | Dock Claim | 40×40 | — | Dock: 10, Storage: 8, NPC Service: 4, Crafting: 2, Decoration: 12 | Full naval port with commerce and repair |
| **Pirate Cove** | Pirate Hideout Claim | 30×30 | → Pirate Port | Housing: 4, Dock: 4, Storage: 6, NPC Service: 3, Decoration: 12 | Hidden outlaw base with black market |
| **Pirate Port** | Pirate Hideout Claim | 50×50 | — | Housing: 8, Dock: 8, Storage: 10, NPC Service: 6, Decoration: 20 | Major pirate harbor with full outlaw economy |
| **Canyon Tribal Camp** | Tribal Camp Claim | 30×30 | → Canyon Village | Housing: 4, Shrine: 2, Farm: 4, Decoration: 14 | Desert tribal settlement |
| **Canyon Village** | Tribal Camp Claim | 50×50 | — | Housing: 10, Shrine: 4, Farm: 8, NPC Service: 3, Decoration: 24 | Full tribal canyon village |
| **Dwarven Hall** | Dwarven Hall Claim | 40×40 | → Dwarven Fortress | Housing: 6, Crafting: 8, Defense: 8, Storage: 8, Decoration: 12 | Underground hall with forge and defenses |
| **Dwarven Fortress** | Dwarven Hall Claim | 60×60 | — | Housing: 12, Crafting: 12, Defense: 16, Storage: 12, NPC Service: 4, Decoration: 20 | Major dwarven stronghold |
| **Elven Grove** | Elven Grove Claim | 40×40 | → Elder Grove | Housing: 6, Shrine: 4, Farm: 4, Decoration: 16 | Forest grove with nature structures |
| **Elder Grove** | Elven Grove Claim | 60×60 | — | Housing: 12, Shrine: 8, Farm: 8, Portal: 2, NPC Service: 3, Decoration: 24 | Major elven sanctuary |
| **Gnome Workshop** | Gnome Workshop Claim | 30×30 | → Gnome Complex | Crafting: 8, Storage: 6, Housing: 2, Decoration: 10 | Engineering and relic workshop |
| **Gnome Complex** | Gnome Workshop Claim | 50×50 | — | Crafting: 14, Storage: 10, Housing: 4, Portal: 2, NPC Service: 3, Decoration: 16 | Advanced engineering complex |
| **Mystical Site** | Mystical Site Claim | 20×20 | → Major Mystical Site | Shrine: 4, Portal: 1, Decoration: 8 | Arcane ritual site or Ward anchor |
| **Major Mystical Site** | Mystical Site Claim | 40×40 | — | Shrine: 8, Portal: 3, NPC Service: 2, Decoration: 14 | Major dimensional site or Ward network node |
| **Frontier Outpost** | Outpost Claim | 20×20 | → Established Outpost | Defense: 8, Housing: 2, Storage: 2, NPC Service: 1 | Small forward military or faction post |
| **Established Outpost** | Outpost Claim | 30×30 | — | Defense: 14, Housing: 6, Storage: 4, NPC Service: 3, Crafting: 2 | Reinforced outpost with garrison |
| **Ruin Restoration — Stage 1** | Ruin Restoration Claim | 30×30 | → Stage 2 | Housing: 4, Crafting: 2, Storage: 2, Decoration: 8 | First stage of ruin rebuilding |
| **Ruin Restoration — Stage 2** | Ruin Restoration Claim | 40×40 | → Stage 3 | Housing: 8, Crafting: 4, Storage: 4, NPC Service: 2, Decoration: 14 | Partial restoration with NPC inhabitants |
| **Ruin Restoration — Complete** | Ruin Restoration Claim | 50×50 | — | All categories at settlement levels | Fully restored settlement |

---

## Profile Descriptions

### Small Homestead

A basic personal claim suitable for a single player's home. Supports:
- A simple dwelling (Housing: 1)
- Basic storage containers (Storage: 2)
- One crafting station (Crafting: 1)
- A small garden or farm plot (Farm: 2)
- Decorative items for personalization (Decoration: 10)

**Upgrade path:** Small Homestead → Medium Homestead → Large Homestead → City Plot (purchase required)

---

### City Plot

City plots are predefined empty lots within established cities. They come in several sub-types:

- **Residential**: player home within the city
- **Shop**: storefront for player merchants
- **Guild Office**: small guild presence
- **Extended**: larger version for established city inhabitants

City plots require city reputation and may involve purchase costs, taxes, and NPC council approval depending on the city's political configuration.

---

### Guild Settlement

The core claim for a guild's home base. Supports a full range of guild infrastructure:
- Guild hall and civic structures
- Storage and crafting
- Defensive walls and towers
- NPC service providers
- Decorative and political objects

**Upgrade path:** Guild Settlement → Guild Town → Guild Fortress

---

### Frontier Fortress

A large, politically significant claim designed for faction conflict scenarios. Requires substantial guild investment. Supports:
- High wall and tower count
- Barracks and garrison housing
- Siege weapon emplacements
- Political structures (throne, war room)
- Merchant and service NPCs for a self-sustaining garrison

**Upgrade path:** Frontier Fortress → Grand Fortress

---

### Pirate Cove

A hidden outlaw base supporting the black market and naval economy. Requires pirate reputation. Supports:
- Rough pirate housing
- Docks and ship repair slips
- Smuggler storage
- Black market merchants and tavern NPCs

**Upgrade path:** Pirate Cove → Pirate Port

---

### Canyon Tribal Camp

A desert and canyon tribal settlement supporting the Canyon Tribes. Supports:
- Cliff homes and tribal tents
- Ritual fires and bone totems
- Oasis gardens and animal pens
- Storm-reading towers and desert watch posts

**Upgrade path:** Canyon Tribal Camp → Canyon Village

---

### Dwarven Hall

An underground or mountainside dwarven claim. Supports:
- Stone halls and forge rooms
- Mine entrances and smelters
- Heavy defensive gates and reinforced walls
- Underground storage and dwarven strongboxes

**Upgrade path:** Dwarven Hall → Dwarven Fortress

---

### Elven Grove

A forest or elevated elven settlement. Supports:
- Tree platforms and elevated homes
- Nature shrines and moon wells
- Hidden gardens and Ward groves
- Living bridges and archery platforms

**Upgrade path:** Elven Grove → Elder Grove

---

### Gnome Workshop

A compact engineering and relic workshop. Supports:
- Workbenches, machines, and relic labs
- Clockwork devices and automation stations
- Power nodes and portal stabilizers
- Engineering-focused storage and housing

**Upgrade path:** Gnome Workshop → Gnome Complex

---

### Mystical Site

A claim dedicated to dimensional and Ward magic. Supports:
- Ward shrines and ritual circles
- Portal anchors and Veil containment stones
- Ancient power nodes and aether stabilizers
- Mystical NPC guardians and attendants

**Upgrade path:** Mystical Site → Major Mystical Site

---

## Upgrade Paths

Upgrading a claim increases its area and object limits. Upgrades require:

| Upgrade Type | Requirements |
|---|---|
| Residential → Medium | Currency + Building Materials |
| Residential → Large | Currency + Materials + Time |
| Guild Settlement → Town | Guild Level 5+ + Materials + Currency |
| Guild Town → Fortress | Guild Level 10+ + Political approval + Large material cost |
| Frontier Fortress → Grand | Multi-guild coordination + Regional political approval |
| Pirate Cove → Port | Pirate Reputation Tier 3+ + Materials |
| Tribal Camp → Village | Tribal Reputation Tier 3+ + Materials |
| Dwarven Hall → Fortress | Dwarven Stonework Skill 40+ + Materials |
| Elven Grove → Elder | Elven Grovecraft Skill 40+ + Materials |
| Gnome Workshop → Complex | Gnomish Machinery Skill 40+ + Materials |
| Ruin Stage 1 → 2 | Quest completion + Materials + Time |
| Ruin Stage 2 → Complete | Quest completion + Materials + Faction unlock |

---

## Tax and Maintenance

Many claim types involve ongoing tax obligations:

- **City Plots**: subject to city tax paid to the city NPC treasury
- **Fortress Claims**: require ongoing supply costs (materials, currency)
- **Guild Claims**: optional internal guild tax system
- **Pirate Claims**: may involve protection fees to pirate faction

Claims that fall behind on taxes may:
- Lose building permissions
- Become claimable by other players
- Have NPC services disabled
- Eventually enter decay and be returned to unclaimed status

Tax rates and intervals are configured per claim in the Atavism Editor.

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Build Object Templates] (build_object_templates.md)
- Next: [Mystical Isles — Player Settlements] (player_settlements.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/building_categories.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Building Categories

---

# Mystical Isles — Building Categories
This document defines all build object categories, interaction types, and the master list of build objects for Mystical Isles.

---

## Table of Contents

1. [Claim Object Categories] (#claim-object-categories)
2. [Interaction Types] (#interaction-types)
3. [Build Object Field Reference] (#build-object-field-reference)
4. [Build Object Master List] (#build-object-master-list)
5. [Related Documents] (#related-documents)

---

## Claim Object Categories

Every build object belongs to a category. Categories are used in claim object limit profiles to control how many of each type may exist in a claim.

| Category | Description |
|---|---|
| **Housing** | Sleeping and living structures. Player homes, dormitories, huts, and private quarters. |
| **Storage** | Containers for items. Chests, vaults, caches, and lockers with Chest interaction. |
| **Crafting Station** | Workbenches, forges, tables, and production stations used to craft items. |
| **Defense** | Walls, towers, gates, barricades, and any structure primarily intended for protection. |
| **Wall** | Specifically wall segments, both wooden and stone. Sub-type of Defense. |
| **Gate** | Passable defensive openings in wall lines. Sub-type of Defense. |
| **Tower** | Elevated watchtower and defensive platform structures. Sub-type of Defense. |
| **Decoration** | Cosmetic items including furniture, lighting, statues, rugs, and banners. |
| **Farm** | Agricultural and natural resource production plots. Crop fields, herb gardens, animal pens. |
| **Resource Node** | Active resource extraction objects with Resource interaction. Wells, mines, coral harvesters. |
| **NPC Service** | Structures that spawn service NPCs: merchants, guards, trainers, bankers, quest givers. |
| **Merchant** | Specifically trade NPC structures including market stalls and black market stalls. |
| **Shrine** | Mystical, Ward, or ritual objects with Effect interaction. Includes healing and curse structures. |
| **Portal** | Dimensional gateway objects with Instance interaction. Includes anchors and stabilizers. |
| **Dock** | Naval infrastructure. Piers, ship repair slips, and cargo cranes. |
| **Shipyard** | Ship construction and large naval facilities. |
| **Guild Structure** | Guild-specific civic buildings: halls, council tables, and meeting rooms. |
| **Political Structure** | Government and faction leadership objects: thrones, war rooms, governor desks. |
| **Trap** | Defensive automated damage objects placed as strategic hazards. |
| **Lighting** | Light sources: torches, lanterns, mystical lights, and harbor beacons. |
| **Road** | Paved or graveled path segments improving movement. |
| **Bridge** | Crossing structures for water or elevation gaps. |
| **Mystic Object** | Dimensional, aetheric, or magical structures not fitting shrine or portal. Ancient power nodes, Ward anchors. |
| **Ancient Machine** | Pre-Fracturing technological objects including automation stations and power devices. |

---

## Interaction Types

Each build object may have one interaction type that determines what happens when a player activates it.

### Chest

Used for any object that stores items.

| Sub-use | Examples |
|---|---|
| Personal storage | Wooden Chest, Iron Chest |
| Player bank | Banker Counter |
| Guild storage | Guild Vault |
| Warehouse / cargo | Ship Cargo Locker, Relic Storage Crate |
| Smuggler cache | Hidden Floor Stash, Smuggler Cache |

**Behavior**: Opens inventory interface connected to the object's item container. Access permissions set by claim owner.

---

### Resource

Used for objects that produce or yield resources over time.

| Sub-use | Examples |
|---|---|
| Farming | Small Farm Plot, Herb Garden, Mushroom Bed |
| Water / liquid | Water Well, Oasis Pump |
| Mineral | Mine Entrance |
| Aquatic | Fishing Net, Coral Harvester |
| Timber | Lumber Yard |
| Livestock | Animal Pen |

**Behavior**: Opens a harvest interface or yields resources on a timer. Players interact to collect resources. May require skill check for full yield.

---

### NPC

Used for objects that spawn and manage persistent NPC actors.

| Sub-use | Examples |
|---|---|
| Merchant | Merchant Stall, Black Market Stall |
| Banking | Banker Counter |
| Guard / Defense | Guard Barracks, Guard Post |
| Training | Trainer Post |
| Quest / Faction | Quest Board, Faction Banner Post |
| Dockmaster | Dockmaster Desk |

**Behavior**: Spawns a linked NPC at the object location. NPC uses the standard Atavism NPC system (behaviors, inventory, dialogue). NPC despawns if structure is destroyed.

---

### Effect

Used for objects that apply ongoing or triggered effects to nearby players.

| Sub-use | Examples |
|---|---|
| Ward protection | Ward Shrine, Veil Containment Stone |
| Healing | Healing Shrine |
| Combat buffs | Shrine of Strength |
| Corruption cleansing | Ward Shrine (cleanse variant) |
| Crafting bonus | Enchanting Circle |
| Debuff / curse | Curse Circle, Bone Altar |

**Behavior**: Applies a buff or debuff effect to players within range. Effect may be continuous, triggered on interaction, or pulsed periodically. Effect strength may scale with skill level of the builder.

---

### Instance

Used for objects that transport players into a private or instanced interior.

| Sub-use | Examples |
|---|---|
| Guild hall interior | Guild Hall |
| Underground hall | Dwarven Hall |
| Dungeon entrance | Ancient Dungeon Portal |
| Ship interior | Cabin entrance |
| Mystical portal | Portal Anchor |
| Workshop interior | Gnome Workshop (large variant) |

**Behavior**: Sends the player (and optionally a group) into a separate instance. The instance may be fully private (guild only), semi-public (group only), or accessible to all claim members.

---

### Leave Instance

Used for exits from instanced interiors or dungeon spaces.

| Sub-use | Examples |
|---|---|
| Guild hall exit | Interior exit portal |
| Dungeon exit | Dungeon end portal |
| Underground exit | Dwarven Hall exit door |

**Behavior**: Returns the player to the main world at the location of the original Instance object.

---

## Build Object Field Reference

| Field | Purpose | Mystical Isles Usage |
|---|---|---|
| **Name** | Unique identifier for the build object template | Descriptive, category-prefixed name (e.g., `Housing_SmallWoodenHouse`) |
| **Icon** | UI icon shown in the build menu | Matches the completed structure's appearance |
| **Skill** | Which skill is checked to build this object | One of the 18 building skills (see Building & Claims System) |
| **Skill Level Req** | Minimum skill level required to place this object | Ranges from 0 (basic objects) to 50 (legendary structures) |
| **Category** | Claim Object Category for object limit tracking | One of the 24 defined categories |
| **Weapon Req** | Tool required to be equipped or in inventory | One of the 14 defined tools |
| **Max Distance** | Maximum distance from the player to place the object | Typically 8–15 for most objects |
| **Build Task Requires Player** | Whether the player must remain near the object during construction | `true` for most structures; `false` for automated/instant placement |
| **Valid Claim Type** | Which claim type(s) this object may be placed in | Comma-separated list of valid claim types |
| **Available as Item Only** | Hides from build menu; must be placed via inventory item | `true` for furniture, rare decorations, claim deeds |
| **Build Solo** | Whether one player can build this alone | `false` for large structures requiring cooperation |
| **Fixed Time** | Whether build time is fixed regardless of player actions | `true` for structures with non-skippable timers |
| **Attackable** | Whether the object can receive damage | `true` for all defense, housing, and service structures |
| **Repairable** | Whether the object can be repaired | `true` for all attackable objects |
| **Claim Object Category** | Category as stored in the Atavism database | Must match the Category field exactly |
| **Stage Number** | Total number of construction stages | 1 for simple objects, 3 for standard buildings, 4–6 for large structures |
| **Time to Build** | Seconds required to complete each stage | Ranges from 30 seconds (minor objects) to 3600+ seconds (fortress walls) |
| **Time to Repair** | Seconds required to repair damage | Typically 50–75% of build time for equivalent repair |
| **Interaction Type** | None, Chest, Resource, NPC, Effect, Instance, Leave Instance | As defined above |
| **Health** | Maximum hit points of the completed structure | Decorations: 100–500; Defense: 5000–20000+ |
| **Loot Table** | Reference to a loot table for destruction drops | Usually a "Construction Salvage" loot table per material type |
| **Loot Min Percentage** | Minimum percentage of materials returned on destruction | Typically 25–40% |
| **Loot Max Percentage** | Maximum percentage of materials returned on destruction | Typically 50–75% |
| **Items Required** | List of items and quantities needed to build each stage | Wood, Stone, Iron Ingots, special materials |
| **Progress Prefabs** | Unity prefabs for each construction stage (0%, 50%, 100% minimum) | Named `BuildObject_[Name]_Stage[N]` |
| **Damage Prefabs** | Unity prefabs for damaged states | Named `BuildObject_[Name]_Damaged[Percent]` |

---

## Build Object Master List

### Housing

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Simple Bedroll | Housing | Any | Decoration | 0 | None | None | No | No | Yes | Basic rest point, portable |
| Small Wooden House | Housing | Residential / City Plot | Carpentry | 5 | Hammer | None | Yes | Yes | No | Basic solo player home |
| Stone Cottage | Housing | Residential / City Plot | Masonry | 15 | Mason's Hammer | None | Yes | Yes | No | Durable mid-tier player home |
| City Townhouse | Housing | City Plot | Architecture | 20 | Hammer | None | Yes | Yes | No | Urban home in player city |
| Guild Dormitory | Housing | Guild Claim | Carpentry | 10 | Hammer | None | Yes | Yes | No | Multi-bunk housing for guild members |
| Pirate Shack | Housing | Pirate Hideout | Pirate Construction | 5 | Hammer | None | Yes | Yes | No | Rough outlaw housing |
| Canyon Cliff Hut | Housing | Tribal Camp | Tribal Construction | 10 | Tribal Carving Knife | None | Yes | Yes | No | Desert cliff-face dwelling |
| Dwarven Stone Room | Housing | Dwarven Hall | Dwarven Stonework | 15 | Mason's Hammer | None | Yes | Yes | No | Underground living quarters |
| Elven Tree Home | Housing | Elven Grove | Elven Grovecraft | 15 | None | None | Yes | Yes | No | Elevated forest dwelling |
| Gnome Workshop Home | Housing | Gnome Workshop | Gnomish Machinery | 10 | Gnomish Spanner | None | Yes | Yes | No | Compact home-workshop combo |
| Witch Hut | Housing | Any | Alchemy | 10 | Alchemy Kit | None | Yes | Yes | No | Dark forest dwelling for mystics |
| Orc War Hut | Housing | Any | Carpentry | 5 | Hammer | None | Yes | Yes | No | Crude warband housing |

---

### Storage

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Wooden Chest | Storage | Any | Carpentry | 1 | Hammer | Chest | Yes | Yes | No | Basic personal storage |
| Iron Chest | Storage | Any | Blacksmithing | 10 | Dwarven Forge Hammer | Chest | Yes | Yes | No | Secure mid-tier storage |
| Guild Vault | Storage | Guild Claim | Architecture | 25 | Mason's Hammer | Chest | Yes | Yes | No | Shared guild item repository |
| Smuggler Cache | Storage | Pirate Hideout | Pirate Construction | 10 | Hammer | Chest | No | No | Yes | Hidden underground stash |
| Relic Storage Crate | Storage | Workshop / Mystical Site | Relic Restoration | 20 | Wrench | Chest | Yes | Yes | No | Protected storage for relic components |
| Ship Cargo Locker | Storage | Dock / Pirate Hideout | Carpentry | 5 | Hammer | Chest | Yes | Yes | No | Waterproof shipboard storage |
| Hidden Floor Stash | Storage | Any | Pirate Construction | 8 | Hammer | Chest | No | No | Yes | Concealed floor-level cache |
| Dwarven Strongbox | Storage | Dwarven Hall | Dwarven Stonework | 20 | Mason's Hammer | Chest | Yes | Yes | No | Heavy reinforced stone vault |

---

### Crafting Stations

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Blacksmith Forge | Crafting Station | Any | Blacksmithing | 10 | Dwarven Forge Hammer | None | Yes | Yes | No | Metal crafting and weapon smithing |
| Alchemy Table | Crafting Station | Any | Alchemy | 10 | Alchemy Kit | None | Yes | Yes | No | Potion and reagent crafting |
| Enchanting Circle | Crafting Station | Any | Enchanting | 15 | Enchanting Focus | Effect | Yes | Yes | No | Weapon and armor enchanting |
| Carpentry Bench | Crafting Station | Any | Carpentry | 5 | Saw | None | Yes | Yes | No | Wood crafting and furniture production |
| Cooking Fire | Crafting Station | Any | Farming | 1 | None | None | No | No | No | Food preparation |
| Tailoring Frame | Crafting Station | Any | Decoration | 5 | None | None | Yes | Yes | No | Cloth and armor crafting |
| Engineering Workbench | Crafting Station | Workshop / Gnome | Engineering | 15 | Wrench | None | Yes | Yes | No | Machine and device assembly |
| Shipbuilding Station | Crafting Station | Dock | Shipbuilding | 20 | Shipwright Hammer | None | Yes | Yes | No | Ship component fabrication |
| Relic Restoration Table | Crafting Station | Workshop / Mystical | Relic Restoration | 25 | Rune Tool | None | Yes | Yes | No | Ancient artifact repair and study |
| Rune Carving Stone | Crafting Station | Any | Enchanting | 20 | Chisel | None | Yes | Yes | No | Rune inscription and ward preparation |

---

### Defense

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Wooden Wall | Wall | Any | Carpentry | 5 | Hammer | None | Yes | Yes | No | Basic perimeter wall |
| Stone Wall | Wall | Any | Masonry | 15 | Mason's Hammer | None | Yes | Yes | No | Durable defensive wall |
| Reinforced Gate | Gate | Any | Blacksmithing | 20 | Dwarven Forge Hammer | None | Yes | Yes | No | Heavy defensive gate |
| Watchtower | Tower | Any | Masonry | 20 | Mason's Hammer | None | Yes | Yes | No | Elevated lookout and defense platform |
| Guard Post | NPC Service | Any | Carpentry | 5 | Hammer | NPC | Yes | Yes | No | Spawns guard NPC for defense |
| Spike Barricade | Defense | Any | Carpentry | 8 | Saw | None | Yes | No | No | Damage-dealing obstacle |
| Ballista Platform | Defense | Fortress | Siegecraft | 30 | Mason's Hammer | None | Yes | Yes | No | Ranged siege weapon platform |
| Cannon Platform | Defense | Fortress / Dock | Blacksmithing | 30 | Dwarven Forge Hammer | None | Yes | Yes | No | Heavy artillery emplacement |
| Ward Barrier Post | Defense | Any | Ward Construction | 25 | Rune Tool | Effect | Yes | Yes | No | Ward protection field post |
| Trap Floor | Trap | Any | Engineering | 20 | Wrench | None | No | No | Yes | Hidden damage trigger |

---

### Farms and Resources

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Herb Garden | Farm | Farm / Residential | Farming | 5 | Shovel | Resource | No | No | No | Grows alchemical and cooking herbs |
| Small Farm Plot | Farm | Farm / Residential | Farming | 1 | Shovel | Resource | No | No | No | Basic food crop production |
| Mushroom Bed | Farm | Dwarven Hall / Cave | Farming | 8 | Shovel | Resource | No | No | No | Underground fungal farming |
| Fishing Net | Farm | Dock / Pirate Hideout | Farming | 5 | None | Resource | No | No | No | Aquatic resource harvesting |
| Coral Harvester | Resource Node | Dock / Coastal | Farming | 10 | None | Resource | No | No | No | Reef resource extraction |
| Mine Entrance | Resource Node | Dwarven Hall / Workshop | Dwarven Stonework | 25 | Pickaxe | Resource | Yes | Yes | No | Mineral and ore production |
| Lumber Yard | Resource Node | Farm / Workshop | Carpentry | 10 | Saw | Resource | Yes | Yes | No | Timber resource production |
| Water Well | Resource Node | Any | Masonry | 5 | Shovel | Resource | Yes | Yes | No | Fresh water source |
| Oasis Pump | Resource Node | Tribal Camp | Tribal Construction | 15 | Shovel | Resource | Yes | Yes | No | Desert water extraction |
| Animal Pen | Farm | Farm / Tribal | Farming | 10 | Hammer | Resource | Yes | Yes | No | Livestock management and products |

---

### NPC Service Objects

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Merchant Stall | Merchant | Any | Carpentry | 10 | Hammer | NPC | Yes | Yes | No | Spawns player merchant NPC |
| Black Market Stall | Merchant | Pirate Hideout | Pirate Construction | 15 | Hammer | NPC | Yes | Yes | No | Illegal goods vendor |
| Banker Counter | NPC Service | Any | Architecture | 20 | Hammer | NPC | Yes | Yes | No | Spawns banker NPC for deposits |
| Guard Barracks | NPC Service | Any | Masonry | 15 | Mason's Hammer | NPC | Yes | Yes | No | Spawns multiple guard NPCs |
| Trainer Post | NPC Service | Any | Architecture | 10 | Hammer | NPC | Yes | Yes | No | Spawns skill trainer NPC |
| Quest Board | NPC Service | Any | Carpentry | 5 | Hammer | NPC | No | No | No | Faction and guild quests interface |
| Dockmaster Desk | NPC Service | Dock | Shipbuilding | 15 | Shipwright Hammer | NPC | Yes | Yes | No | Naval logistics and ship registration |
| Faction Banner Post | Political Structure | Any | Decoration | 5 | None | NPC | Yes | Yes | No | Faction marker with optional faction NPC |

---

### Mystical Objects

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Ward Shrine | Shrine | Mystical Site / City Plot | Ward Construction | 20 | Rune Tool | Effect | Yes | Yes | No | Ward protection buff and corruption defense |
| Healing Shrine | Shrine | Any | Ward Construction | 15 | Rune Tool | Effect | Yes | Yes | No | Healing effect for claim members |
| Curse Circle | Shrine | Any | Alchemy | 20 | Alchemy Kit | Effect | Yes | Yes | No | Debuff effect field |
| Ritual Fire | Shrine | Tribal Camp / Any | Tribal Construction | 10 | Tribal Carving Knife | Effect | No | No | No | Tribal buff and ritual site |
| Moon Well | Shrine | Elven Grove | Elven Grovecraft | 25 | None | Effect | Yes | Yes | No | Elven healing and magical power source |
| Veil Containment Stone | Mystic Object | Mystical Site | Ward Construction | 35 | Rune Tool | Effect | Yes | Yes | Yes | Suppresses Veil corruption in area |
| Portal Anchor | Portal | Mystical Site | Relic Restoration | 40 | Rune Tool | Instance | Yes | Yes | Yes | Dimensional portal entrance |
| Ancient Power Node | Ancient Machine | Mystical Site / Workshop | Relic Restoration | 45 | Wrench | Effect | Yes | Yes | Yes | Buffs nearby crafting and mystical objects |
| Aether Stabilizer | Mystic Object | Mystical Site | Relic Restoration | 35 | Rune Tool | Effect | Yes | Yes | Yes | Stabilizes portal and Ward network |

---

### Naval Objects

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Small Dock | Dock | Dock / Pirate Hideout | Shipbuilding | 10 | Shipwright Hammer | None | Yes | Yes | No | Basic ship mooring |
| Ship Repair Dock | Dock | Dock | Shipbuilding | 20 | Shipwright Hammer | Resource | Yes | Yes | No | Ship hull and equipment repair |
| Cargo Crane | Dock | Dock | Engineering | 20 | Wrench | None | Yes | Yes | No | Cargo loading and unloading |
| Harbor Lantern | Lighting | Dock | Decoration | 5 | None | None | No | No | No | Navigation lighting |
| Smuggler Dock | Dock | Pirate Hideout | Pirate Construction | 15 | Shipwright Hammer | None | Yes | Yes | No | Concealed mooring for outlaw ships |
| Cannon Emplacement | Defense | Dock / Fortress | Blacksmithing | 25 | Dwarven Forge Hammer | None | Yes | Yes | No | Coastal/harbor artillery defense |
| Harpoon Rack | Decoration | Dock / Pirate Hideout | Decoration | 5 | None | None | No | No | Yes | Naval equipment storage decoration |
| Shipyard Frame | Shipyard | Dock | Shipbuilding | 30 | Shipwright Hammer | None | Yes | Yes | No | Major ship construction facility |

---

### Political and Guild Objects

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Guild Hall | Guild Structure | Guild Claim | Architecture | 30 | Hammer | Instance | Yes | Yes | No | Central guild meeting and governance hall |
| Council Table | Guild Structure | Guild Claim / City Plot | Architecture | 25 | Hammer | None | Yes | Yes | No | Guild officer meeting table |
| Throne Seat | Political Structure | Fortress / City Plot | Architecture | 35 | Hammer | None | Yes | Yes | Yes | Faction or city ruler seat |
| War Room Map | Political Structure | Fortress / Guild | Architecture | 30 | Hammer | None | Yes | Yes | No | Strategic planning interface |
| Faction Banner | Decoration | Any | Decoration | 1 | None | None | Yes | No | No | Faction identity marker |
| Tax Ledger Desk | Political Structure | City Plot / Guild | Architecture | 20 | Hammer | NPC | Yes | Yes | No | City taxation management NPC |
| Voting Stone | Political Structure | City Plot / Guild | Masonry | 20 | Mason's Hammer | None | Yes | Yes | No | Player vote interface |
| Governor's Desk | Political Structure | City Plot | Architecture | 30 | Hammer | NPC | Yes | Yes | Yes | City governor NPC and management |

---

### Decoration

| Object Name | Category | Claim Type | Skill | Skill Level | Tool Req | Interaction | Attackable | Repairable | Item Only | Purpose |
|---|---|---|---|---|---|---|---|---|---|---|
| Banner | Decoration | Any | Decoration | 1 | None | None | No | No | Yes | Customizable faction or personal banner |
| Rug | Decoration | Any | Decoration | 1 | None | None | No | No | Yes | Interior floor decoration |
| Chair | Decoration | Any | Carpentry | 1 | None | None | No | No | Yes | Seating furniture |
| Table | Decoration | Any | Carpentry | 1 | Hammer | None | No | No | Yes | Surface furniture |
| Torch | Lighting | Any | Decoration | 1 | None | None | No | No | Yes | Basic light source |
| Lantern | Lighting | Any | Decoration | 1 | None | None | No | No | Yes | Hanging or standing light source |
| Statue | Decoration | Any | Masonry | 15 | Chisel | None | Yes | No | Yes | Carved stone decorative figure |
| Fountain | Decoration | Any | Masonry | 10 | Mason's Hammer | None | Yes | Yes | No | Decorative water feature |
| Barrel Stack | Decoration | Any | Decoration | 1 | None | None | No | No | Yes | Storage prop decoration |
| Crate Stack | Decoration | Any | Decoration | 1 | None | None | No | No | Yes | Cargo prop decoration |
| Training Dummy | Decoration | Any | Carpentry | 5 | Hammer | None | Yes | Yes | No | Combat practice target |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Building & Claims System] (building_and_claims_system.md)
- Next: [Mystical Isles — Build Object Templates] (build_object_templates.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/build_object_templates.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Build Object Templates

---

# Mystical Isles — Build Object Templates
This document provides detailed Atavism-ready build object template configurations for key structures in Mystical Isles. Each template can be entered directly into the Atavism Editor Build Object section.

---

## Table of Contents

1. [How to Read These Templates] (#how-to-read-these-templates)
2. [Housing Templates] (#housing-templates)
3. [Storage Templates] (#storage-templates)
4. [Defense Templates] (#defense-templates)
5. [Crafting Templates] (#crafting-templates)
6. [Resource Templates] (#resource-templates)
7. [NPC Service Templates] (#npc-service-templates)
8. [Mystical Object Templates] (#mystical-object-templates)
9. [Naval Templates] (#naval-templates)
10. [Political and Guild Templates] (#political-and-guild-templates)
11. [Related Documents] (#related-documents)

---

## How to Read These Templates

Each template entry uses Atavism Build Object field names. Fields are presented in the order they appear in the Atavism Editor.

**Stage entries** are listed separately with their construction details. Build objects with multiple stages will have one entry per stage.

**Prefab names** follow the convention:
- `BO_[ObjectName]_Stage[N]` — progress prefabs
- `BO_[ObjectName]_Damaged[Percent]` — damage state prefabs

---

## Housing Templates

### Small Wooden House

```
Name:                     Small Wooden House
Icon:                     icon_building_wooden_house
Skill:                    Carpentry
Skill Level Req:          5
Category:                 Housing
Weapon Req:               Hammer
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Residential Claim, City Plot
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Housing
Stage Number:             3
Interaction Type:         None
Health:                   2500
Loot Table:               LT_ConstructionWood_Salvage
Loot Min Percentage:      30
Loot Max Percentage:      60

Stage 1 — Foundation
  Time to Build:          180 seconds
  Time to Repair:         90 seconds
  Health:                 500
  Items Required:         Timber x10, Nails x5
  Progress Prefab:        BO_SmallWoodenHouse_Stage1
  Damage Prefab:          BO_SmallWoodenHouse_Stage1_Damaged

Stage 2 — Frame
  Time to Build:          360 seconds
  Time to Repair:         180 seconds
  Health:                 1200
  Items Required:         Timber x20, Planks x15, Nails x20
  Progress Prefab:        BO_SmallWoodenHouse_Stage2
  Damage Prefab:          BO_SmallWoodenHouse_Stage2_Damaged

Stage 3 — Finished House
  Time to Build:          600 seconds
  Time to Repair:         300 seconds
  Health:                 2500
  Items Required:         Planks x25, Timber x10, Rope x5, Thatch x15
  Progress Prefab:        BO_SmallWoodenHouse_Stage3
  Damage Prefab:          BO_SmallWoodenHouse_Stage3_Damaged
```

**Purpose:** Basic solo or couple player home for Residential Claims or City Plots. Requires minimal skill. Foundation building block for new players establishing a home.

---

### Stone Cottage

```
Name:                     Stone Cottage
Icon:                     icon_building_stone_cottage
Skill:                    Masonry
Skill Level Req:          15
Category:                 Housing
Weapon Req:               Mason's Hammer
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Residential Claim, City Plot, Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Housing
Stage Number:             3
Interaction Type:         None
Health:                   4000

Stage 1 — Foundation
  Time to Build:          240 seconds
  Items Required:         Stone Block x15, Mortar x10

Stage 2 — Walls
  Time to Build:          600 seconds
  Items Required:         Stone Block x30, Mortar x20, Timber x10

Stage 3 — Complete
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Mortar x10, Timber x15, Thatch x20
```

---

### Guild Dormitory

```
Name:                     Guild Dormitory
Icon:                     icon_building_guild_dormitory
Skill:                    Carpentry
Skill Level Req:          10
Category:                 Housing
Weapon Req:               Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Housing
Stage Number:             3
Interaction Type:         None
Health:                   3000

Stage 1 — Foundation
  Time to Build:          300 seconds
  Items Required:         Timber x20, Stone Block x10

Stage 2 — Frame
  Time to Build:          600 seconds
  Items Required:         Timber x30, Planks x25, Nails x30

Stage 3 — Complete
  Time to Build:          900 seconds
  Items Required:         Planks x30, Timber x15, Thatch x20, Rope x10
```

---

## Storage Templates

### Wooden Chest

```
Name:                     Wooden Chest
Icon:                     icon_storage_wooden_chest
Skill:                    Carpentry
Skill Level Req:          1
Category:                 Storage
Weapon Req:               Hammer
Max Distance:             5
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Storage
Stage Number:             1
Interaction Type:         Chest
Health:                   500
Loot Table:               LT_ConstructionWood_Salvage
Loot Min Percentage:      20
Loot Max Percentage:      50

Stage 1 — Complete
  Time to Build:          30 seconds
  Time to Repair:         15 seconds
  Health:                 500
  Items Required:         Planks x5, Nails x4, Hinge x2
  Progress Prefab:        BO_WoodenChest_Stage1
  Damage Prefab:          BO_WoodenChest_Stage1_Damaged
```

---

### Guild Vault

```
Name:                     Guild Vault
Icon:                     icon_storage_guild_vault
Skill:                    Architecture
Skill Level Req:          25
Category:                 Storage
Weapon Req:               Mason's Hammer
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Storage
Stage Number:             2
Interaction Type:         Chest
Health:                   8000
Loot Table:               LT_ConstructionMixed_Salvage
Loot Min Percentage:      40
Loot Max Percentage:      70

Stage 1 — Vault Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x30, Iron Ingot x20, Mortar x15

Stage 2 — Vault Complete
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Iron Ingot x30, Steel Lock x4, Rune Fragment x2
```

---

## Defense Templates

### Stone Wall

```
Name:                     Stone Wall
Icon:                     icon_defense_stone_wall
Skill:                    Masonry
Skill Level Req:          15
Category:                 Wall
Weapon Req:               Mason's Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             2
Interaction Type:         None
Health:                   6000
Loot Table:               LT_ConstructionStone_Salvage
Loot Min Percentage:      35
Loot Max Percentage:      65

Stage 1 — Base Course
  Time to Build:          300 seconds
  Items Required:         Stone Block x20, Mortar x15

Stage 2 — Complete Wall
  Time to Build:          600 seconds
  Items Required:         Stone Block x25, Mortar x15
  Progress Prefab:        BO_StoneWall_Stage2
  Damage Prefab:          BO_StoneWall_Stage2_Damaged50, BO_StoneWall_Stage2_Damaged80
```

---

### Reinforced Gate

```
Name:                     Reinforced Gate
Icon:                     icon_defense_reinforced_gate
Skill:                    Blacksmithing
Skill Level Req:          20
Category:                 Gate
Weapon Req:               Dwarven Forge Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             2
Interaction Type:         None
Health:                   7000

Stage 1 — Gate Frame
  Time to Build:          480 seconds
  Items Required:         Stone Block x15, Iron Ingot x20, Timber x10

Stage 2 — Complete Gate
  Time to Build:          720 seconds
  Items Required:         Iron Ingot x30, Steel Bar x10, Stone Block x10, Hinge x4
```

---

### Watchtower

```
Name:                     Watchtower
Icon:                     icon_defense_watchtower
Skill:                    Masonry
Skill Level Req:          20
Category:                 Tower
Weapon Req:               Mason's Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             3
Interaction Type:         None
Health:                   8000

Stage 1 — Foundation
  Time to Build:          300 seconds
  Items Required:         Stone Block x25, Mortar x20

Stage 2 — Tower Body
  Time to Build:          600 seconds
  Items Required:         Stone Block x40, Mortar x25, Timber x10

Stage 3 — Battlements
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Mortar x10, Timber x15, Iron Bar x8
```

---

### Ballista Platform

```
Name:                     Ballista Platform
Icon:                     icon_defense_ballista
Skill:                    Siegecraft
Skill Level Req:          30
Category:                 Defense
Weapon Req:               Mason's Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Fortress Claim, Outpost Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             3
Interaction Type:         None
Health:                   5000

Stage 1 — Platform Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x30, Timber x20, Iron Bar x10

Stage 2 — Ballista Frame
  Time to Build:          900 seconds
  Items Required:         Timber x30, Iron Ingot x20, Rope x15

Stage 3 — Complete Ballista
  Time to Build:          1200 seconds
  Items Required:         Iron Ingot x30, Steel Bar x15, Rope x20, Timber x10
```

---

## Crafting Templates

### Blacksmith Forge

```
Name:                     Blacksmith Forge
Icon:                     icon_crafting_forge
Skill:                    Blacksmithing
Skill Level Req:          10
Category:                 Crafting Station
Weapon Req:               Dwarven Forge Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Crafting Station
Stage Number:             2
Interaction Type:         None
Health:                   3000

Stage 1 — Forge Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x20, Mortar x15, Iron Ingot x10

Stage 2 — Complete Forge
  Time to Build:          900 seconds
  Items Required:         Stone Block x15, Iron Ingot x20, Forge Coal x10, Bellows x1
```

---

### Enchanting Circle

```
Name:                     Enchanting Circle
Icon:                     icon_crafting_enchanting_circle
Skill:                    Enchanting
Skill Level Req:          15
Category:                 Crafting Station
Weapon Req:               Enchanting Focus
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Crafting Station
Stage Number:             2
Interaction Type:         Effect
Health:                   2000
Loot Table:               LT_MysticalComponents_Salvage
Loot Min Percentage:      25
Loot Max Percentage:      50

Stage 1 — Circle Foundation
  Time to Build:          480 seconds
  Items Required:         Stone Block x10, Aether Shard x5, Rune Fragment x3

Stage 2 — Complete Circle
  Time to Build:          900 seconds
  Items Required:         Aether Crystal x8, Rune Fragment x6, Silver Dust x4
```

---

### Relic Restoration Table

```
Name:                     Relic Restoration Table
Icon:                     icon_crafting_relic_table
Skill:                    Relic Restoration
Skill Level Req:          25
Category:                 Crafting Station
Weapon Req:               Rune Tool
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Workshop Claim, Gnome Workshop Claim, Mystical Site Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Crafting Station
Stage Number:             2
Interaction Type:         None
Health:                   2500

Stage 1 — Table Frame
  Time to Build:          600 seconds
  Items Required:         Timber x10, Iron Bar x8, Rune Fragment x4

Stage 2 — Complete Table
  Time to Build:          1200 seconds
  Items Required:         Timber x5, Iron Ingot x10, Aether Shard x6, Ancient Component x2
```

---

## Resource Templates

### Mine Entrance

```
Name:                     Mine Entrance
Icon:                     icon_resource_mine
Skill:                    Dwarven Stonework
Skill Level Req:          25
Category:                 Resource Node
Weapon Req:               Pickaxe
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Dwarven Hall Claim, Workshop Claim, Outpost Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Resource Node
Stage Number:             3
Interaction Type:         Resource
Health:                   5000
Loot Table:               LT_Mining_Resource_Table
Loot Min Percentage:      40
Loot Max Percentage:      70

Stage 1 — Shaft Entrance
  Time to Build:          600 seconds
  Items Required:         Stone Block x20, Timber x15, Iron Bar x8

Stage 2 — Reinforced Entrance
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Timber x20, Iron Ingot x15

Stage 3 — Operational Mine
  Time to Build:          1800 seconds
  Items Required:         Stone Block x15, Iron Ingot x20, Timber x10, Rope x10, Lantern x2
  Progress Prefab:        BO_MineEntrance_Stage3
  Damage Prefab:          BO_MineEntrance_Stage3_Damaged
```

**Purpose:** Primary mineral and ore production node for claims. Requires Dwarven Stonework skill but yields a consistent stream of mining resources over time.

---

### Small Farm Plot

```
Name:                     Small Farm Plot
Icon:                     icon_farm_plot
Skill:                    Farming
Skill Level Req:          1
Category:                 Farm
Weapon Req:               Shovel
Max Distance:             5
Build Task Requires Player: true
Valid Claim Type:         Farm Claim, Residential Claim, Tribal Camp Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               false
Repairable:               false
Claim Object Category:    Farm
Stage Number:             1
Interaction Type:         Resource
Health:                   200

Stage 1 — Prepared Plot
  Time to Build:          60 seconds
  Items Required:         Seeds x5, Water x2
```

---

### Coral Harvester

```
Name:                     Coral Harvester
Icon:                     icon_resource_coral
Skill:                    Farming
Skill Level Req:          10
Category:                 Resource Node
Weapon Req:               None
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Dock Claim, Pirate Hideout Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               false
Repairable:               true
Claim Object Category:    Resource Node
Stage Number:             2
Interaction Type:         Resource
Health:                   800

Stage 1 — Anchor Frame
  Time to Build:          120 seconds
  Items Required:         Rope x6, Iron Ring x4

Stage 2 — Operational
  Time to Build:          300 seconds
  Items Required:         Net x3, Rope x4, Coral Seed x2
```

---

## NPC Service Templates

### Merchant Stall

```
Name:                     Merchant Stall
Icon:                     icon_npc_merchant_stall
Skill:                    Carpentry
Skill Level Req:          10
Category:                 Merchant
Weapon Req:               Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    NPC Service
Stage Number:             1
Interaction Type:         NPC
NPC Spawned:              Merchant_Player_Generic
Health:                   1500

Stage 1 — Complete Stall
  Time to Build:          300 seconds
  Items Required:         Timber x12, Planks x8, Canvas x4, Rope x3
```

---

### Pirate Black Market Stall

```
Name:                     Black Market Stall
Icon:                     icon_npc_black_market
Skill:                    Pirate Construction
Skill Level Req:          15
Category:                 Merchant
Weapon Req:               Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Pirate Hideout Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    NPC Service
Stage Number:             1
Interaction Type:         NPC
NPC Spawned:              NPC_BlackMarket_Merchant
Health:                   1200

Stage 1 — Complete Stall
  Time to Build:          240 seconds
  Items Required:         Timber x10, Canvas x3, Rope x4, Barrel x2
```

**Purpose:** Spawns a Black Market Merchant NPC who trades in contraband, rare naval goods, stolen relics, and outlaw equipment. Only valid inside Pirate Hideout Claims.

---

### Guard Barracks

```
Name:                     Guard Barracks
Icon:                     icon_npc_guard_barracks
Skill:                    Masonry
Skill Level Req:          15
Category:                 NPC Service
Weapon Req:               Mason's Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    NPC Service
Stage Number:             3
Interaction Type:         NPC
NPC Spawned:              NPC_Guard_Player (x2 by default, configurable)
Health:                   4000

Stage 1 — Foundation
  Time to Build:          300 seconds
  Items Required:         Stone Block x15, Timber x10

Stage 2 — Walls
  Time to Build:          600 seconds
  Items Required:         Stone Block x25, Timber x15, Mortar x15

Stage 3 — Complete
  Time to Build:          900 seconds
  Items Required:         Stone Block x10, Timber x10, Iron Bar x8, Thatch x10
```

---

## Mystical Object Templates

### Ward Shrine

```
Name:                     Ward Shrine
Icon:                     icon_shrine_ward
Skill:                    Ward Construction
Skill Level Req:          20
Category:                 Shrine
Weapon Req:               Rune Tool
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim, City Plot, Guild Claim, Elven Grove Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Shrine
Stage Number:             2
Interaction Type:         Effect
Effect Applied:           Ward Protection Aura (reduces incoming Veil damage, resists corruption in claim radius)
Health:                   3500
Loot Table:               LT_MysticalComponents_Salvage
Loot Min Percentage:      30
Loot Max Percentage:      65

Stage 1 — Shrine Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x15, Aether Shard x6, Rune Fragment x4

Stage 2 — Complete Shrine
  Time to Build:          1200 seconds
  Items Required:         Stone Block x10, Aether Crystal x8, Ward Essence x3, Silver Dust x4
  Progress Prefab:        BO_WardShrine_Stage2
  Damage Prefab:          BO_WardShrine_Stage2_Damaged
```

**Purpose:** Core mystical defense object. Applies a Ward Protection Aura that reduces Veil corruption within claim radius. May require maintenance with Ward Essence to stay active.

---

### Veil Containment Stone

```
Name:                     Veil Containment Stone
Icon:                     icon_mystic_veil_stone
Skill:                    Ward Construction
Skill Level Req:          35
Category:                 Mystic Object
Weapon Req:               Rune Tool
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim
Available as Item Only:   true
Build Solo:               true
Fixed Time:               true
Attackable:               true
Repairable:               true
Claim Object Category:    Mystic Object
Stage Number:             1
Interaction Type:         Effect
Effect Applied:           Veil Suppression Field (suppresses active Veil corruption events in a large radius)
Health:                   4000
Loot Table:               LT_AncientRelics_Salvage
Loot Min Percentage:      50
Loot Max Percentage:      80

Stage 1 — Complete
  Time to Build:          3600 seconds
  Items Required:         Veil Containment Core x1 (rare quest item), Aether Crystal x12, Ward Essence x8, Rune Fragment x10
```

**Purpose:** Suppresses active Veil corruption in the area. Rare and politically significant — a target for enemy factions.

---

### Portal Anchor

```
Name:                     Portal Anchor
Icon:                     icon_portal_anchor
Skill:                    Relic Restoration
Skill Level Req:          40
Category:                 Portal
Weapon Req:               Rune Tool
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim
Available as Item Only:   true
Build Solo:               false
Fixed Time:               true
Attackable:               true
Repairable:               true
Claim Object Category:    Portal
Stage Number:             3
Interaction Type:         Instance
Health:                   5000
Loot Table:               LT_AncientRelics_Salvage
Loot Min Percentage:      50
Loot Max Percentage:      75

Stage 1 — Anchor Foundation
  Time to Build:          1800 seconds
  Items Required:         Ancient Stone Block x20, Rune Fragment x10, Iron Bar x15

Stage 2 — Portal Frame
  Time to Build:          3600 seconds
  Items Required:         Ancient Component x10, Aether Crystal x15, Rune Fragment x15

Stage 3 — Calibrated Portal
  Time to Build:          7200 seconds
  Items Required:         Portal Calibration Stone x1 (rare), Ancient Component x15, Aether Crystal x20, Ward Essence x10
```

**Purpose:** Creates a permanent dimensional portal to a linked location. Extremely resource-intensive. Politically significant as a major travel node.

---

### Ancient Power Node

```
Name:                     Ancient Power Node
Icon:                     icon_mystic_power_node
Skill:                    Relic Restoration
Skill Level Req:          45
Category:                 Ancient Machine
Weapon Req:               Wrench
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim, Gnome Workshop Claim, Workshop Claim
Available as Item Only:   true
Build Solo:               false
Fixed Time:               true
Attackable:               true
Repairable:               true
Claim Object Category:    Ancient Machine
Stage Number:             2
Interaction Type:         Effect
Effect Applied:           Power Surge (buffs nearby crafting stations — reduced craft time, increased yield chance)
Health:                   4500
Loot Table:               LT_AncientRelics_Salvage
Loot Min Percentage:      60
Loot Max Percentage:      85

Stage 1 — Node Base
  Time to Build:          3600 seconds
  Items Required:         Ancient Component x15, Aether Crystal x10, Iron Bar x20

Stage 2 — Operational Node
  Time to Build:          7200 seconds
  Items Required:         Ancient Component x20, Aether Crystal x20, Power Core x1 (rare), Rune Fragment x12
```

---

## Naval Templates

### Ship Repair Dock

```
Name:                     Ship Repair Dock
Icon:                     icon_dock_repair
Skill:                    Shipbuilding
Skill Level Req:          20
Category:                 Dock
Weapon Req:               Shipwright Hammer
Max Distance:             15
Build Task Requires Player: true
Valid Claim Type:         Dock Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Dock
Stage Number:             3
Interaction Type:         Resource
Health:                   4000

Stage 1 — Dock Frame
  Time to Build:          600 seconds
  Items Required:         Timber x25, Rope x10, Iron Ring x8

Stage 2 — Dock Structure
  Time to Build:          1200 seconds
  Items Required:         Timber x30, Planks x20, Iron Bar x12, Rope x15

Stage 3 — Operational Dock
  Time to Build:          1800 seconds
  Items Required:         Planks x20, Iron Ingot x15, Rope x10, Shipwright Supplies x4
```

---

### Shipyard Frame

```
Name:                     Shipyard Frame
Icon:                     icon_dock_shipyard
Skill:                    Shipbuilding
Skill Level Req:          30
Category:                 Shipyard
Weapon Req:               Shipwright Hammer
Max Distance:             20
Build Task Requires Player: true
Valid Claim Type:         Dock Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Dock
Stage Number:             4
Interaction Type:         None
Health:                   6000

Stage 1 — Keel Foundation
  Time to Build:          900 seconds
  Items Required:         Timber x30, Stone Block x20, Iron Bar x10

Stage 2 — Frame Structure
  Time to Build:          1800 seconds
  Items Required:         Timber x40, Planks x30, Iron Bar x20, Rope x20

Stage 3 — Crane and Rigging
  Time to Build:          2400 seconds
  Items Required:         Timber x20, Planks x20, Rope x30, Iron Ingot x20

Stage 4 — Operational Shipyard
  Time to Build:          3600 seconds
  Items Required:         Planks x20, Iron Ingot x25, Rope x20, Shipwright Supplies x8
```

---

## Political and Guild Templates

### Guild Hall

```
Name:                     Guild Hall
Icon:                     icon_guild_hall
Skill:                    Architecture
Skill Level Req:          30
Category:                 Guild Structure
Weapon Req:               Hammer
Max Distance:             15
Build Task Requires Player: true
Valid Claim Type:         Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Guild Structure
Stage Number:             4
Interaction Type:         Instance
Health:                   10000
Loot Table:               LT_ConstructionMixed_Salvage
Loot Min Percentage:      40
Loot Max Percentage:      70

Stage 1 — Foundation
  Time to Build:          900 seconds
  Items Required:         Stone Block x30, Timber x20, Mortar x20

Stage 2 — Outer Walls
  Time to Build:          1800 seconds
  Items Required:         Stone Block x50, Mortar x30, Timber x20, Iron Bar x10

Stage 3 — Interior Fitting
  Time to Build:          2700 seconds
  Items Required:         Planks x40, Timber x20, Iron Ingot x15, Glass x8

Stage 4 — Complete Hall
  Time to Build:          3600 seconds
  Items Required:         Planks x20, Stone Block x10, Timber x10, Tapestry x4, Banner x2
  Progress Prefab:        BO_GuildHall_Stage4
  Damage Prefab:          BO_GuildHall_Stage4_Damaged
```

**Purpose:** The central building of every guild claim. Provides Instance access to a private interior meeting hall. Politically important — losing a guild hall weakens guild morale and limits governance access.

---

### Throne Seat

```
Name:                     Throne Seat
Icon:                     icon_political_throne
Skill:                    Architecture
Skill Level Req:          35
Category:                 Political Structure
Weapon Req:               Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Fortress Claim, City Plot
Available as Item Only:   true
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Political Structure
Stage Number:             1
Interaction Type:         None
Health:                   3000

Stage 1 — Complete Throne
  Time to Build:          1800 seconds
  Items Required:         Stone Block x15, Timber x10, Gold Trim x4, Velvet x6, Iron Ingot x8
```

**Purpose:** The physical seat of power for a faction or city ruler. Required for certain political progression milestones.

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Building Categories] (building_categories.md)
- Next: [Mystical Isles — Claim Profiles] (claim_profiles.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/player_settlements.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Player Settlements

---

# Mystical Isles — Player Settlements
This document covers the design rules for three major settlement types: **City Building**, **Fortresses**, and **Mystical Sites**. Each represents a different scale and function of player-built civilization in the Isles.

---

## Table of Contents

1. [City Building System] (#city-building-system)
2. [Fortress System] (#fortress-system)
3. [Mystical Site System] (#mystical-site-system)
4. [Settlement Progression Overview] (#settlement-progression-overview)
5. [Settlement Conflict and Control] (#settlement-conflict-and-control)
6. [Ruin Restoration System] (#ruin-restoration-system)
7. [Related Documents] (#related-documents)

---

## City Building System

### Overview

Cities in Mystical Isles are not entirely pre-built by the developers. They contain **predefined empty plots** that players may acquire, develop, and lose over time. Players physically shape the visible look, commerce, and politics of every city.

### City Plot Types

| Plot Type | Description |
|---|---|
| **Residential Plot** | Player home within a city neighborhood |
| **Shop Plot** | Storefront or stall for player-run commerce |
| **Guild Office Plot** | Small guild presence within a city |
| **Civic Plot** | Structures like meeting halls, training areas, and shrines |
| **Harbor Plot** | Dock and naval service lots in coastal cities |
| **Market Plot** | Open market areas with multiple stall slots |

### Acquiring a City Plot

Players acquire city plots through one of these methods:

1. **Purchase**: Pay gold or currency to a City Deed NPC or via an auction system.
2. **Quest Reward**: Complete city faction quests to earn a free or discounted plot.
3. **Reputation Unlock**: Reach a required reputation tier with the city's ruling faction.
4. **Guild Assignment**: Guild leader assigns a plot to a member within a guild-owned city district.

### City Plot Requirements

- **Lawful Cities (Kingdom)**: Require Kingdom faction reputation (Tier 2+)
- **Pirate Cities**: Require Pirate faction reputation (Tier 2+)
- **Neutral Cities**: Open to all players above minimum level
- **Restored Cities** (Ruin Restoration): Unlock progressively as restoration completes

### City Taxes

City plots are subject to ongoing tax obligations:

| Tax Type | Description |
|---|---|
| **Weekly Plot Tax** | Fixed periodic payment to maintain the plot |
| **Commerce Tax** | Percentage of NPC merchant sales |
| **Guild Office Tax** | Flat fee for guild presence in city |
| **Expansion Tax** | Additional cost when upgrading from basic to extended plot |

**Tax failure consequences:**
- 3-day grace period after missed payment
- Building permissions suspended after grace period
- NPC services disabled after 7 days
- Plot returned to unclaimed status after 14 days
- Former owner has first right of repurchase for 7 days

### City Plot Limits

Each city has a finite number of each plot type. Established, high-reputation cities have more plots. Frontier cities may have as few as 6–10 total plots. Players compete for desirable plots in high-traffic locations.

### Special City Rules

- **Protected NPC areas**: Core city buildings (main tavern, guild hall, city guard post) cannot be replaced by player buildings.
- **Aesthetic restrictions**: Certain city factions may restrict which building styles are permitted in their city.
- **Plot abandonment**: Plots abandoned for 30+ days without payment revert to the city and can be reclaimed.
- **City expansion**: Players may collectively invest in a city to unlock new plot rows or expand the city's footprint into adjacent unclaimed land.

---

## Fortress System

### Overview

Fortresses are the largest and most politically significant player structures. They are constructed over weeks of coordinated effort and can be contested during faction conflict events.

### Fortress Claim Sizes

| Tier | Size | Description |
|---|---|---|
| **Frontier Outpost** | 20×20 | Basic forward position, minimal defenses |
| **Established Outpost** | 30×30 | Reinforced position with garrison |
| **Frontier Fortress** | 60×60 | Major defensive installation |
| **Grand Fortress** | 80×80 | Regional capital-level stronghold |

### What Can Be Built in a Fortress

| Category | Examples |
|---|---|
| **Walls** | Stone walls, reinforced walls, battlemented walls |
| **Towers** | Standard watchtowers, ballista towers, mage towers |
| **Gates** | Reinforced gates, portcullis gates, hidden postern doors |
| **Barracks** | Guard barracks, officer quarters, war huts |
| **Siege Weapons** | Ballista platforms, cannon emplacements |
| **Support** | Forges, supply storage, resource nodes |
| **Political** | Throne room, war room, governor's desk, council table |
| **Services** | Merchant stalls, banker counters, trainer posts |

### Fortress Requirements

Building a full Frontier Fortress requires:
- **Guild**: Guild Claim ownership, minimum guild level 8
- **Materials**: Hundreds of stone blocks, iron ingots, timber, and specialized materials
- **Skills**: Masonry 20+, Blacksmithing 20+, Siegecraft 30+ (at least one guild member each)
- **Time**: Weeks of coordinated construction
- **Political**: Regional faction standing in contested territory may require political approval

### Fortress Maintenance

Active fortresses require ongoing maintenance:
- **Weekly supply cost**: Iron, timber, and stone for upkeep
- **NPC guard cost**: Currency per guard NPC active
- **Siege weapon maintenance**: Periodic repair materials
- Neglected fortresses begin to decay in health; walls weaken over time

### Fortress Conflict

Fortresses in contested territory can be attacked:

| Phase | Description |
|---|---|
| **Declaration** | Attacking faction declares siege, triggering a timed event |
| **Siege** | Attackers attempt to breach walls and disable key structures |
| **Victory Condition** | Capture the throne/war room, or destroy the guild hall |
| **Aftermath** | Winning side may claim the fortress or raze it |
| **Reconstruction** | Losing guild may rebuild over time if not fully expelled |

Fortress defenders receive:
- Advance notice of siege declaration
- Ability to reinforce walls and position siege weapons
- NPC guard spawns from barracks
- Buff effects from shrines and Ward objects

### Fortress Political Influence

A functioning Grand Fortress grants its controlling guild:
- Regional political title and governance access
- Tax income from nearby settlements
- Control of regional spawn tables (influence on NPC density)
- Territory markers on the world map
- NPC faction alignment in the surrounding region

---

## Mystical Site System

### Overview

Mystical Sites are dimensional or Ward-magic structures that affect the world around them. They can be built by Wardkeepers, witches, elves, gnomes, or players specializing in relic restoration and dimensional engineering.

### Who Can Build Mystical Sites

| Race / Class | Skill Focus | Site Type |
|---|---|---|
| Wardkeeper | Ward Construction | Ward Shrines, Veil Containment Stones, Healing Sanctuaries |
| Witch | Alchemy, Enchanting | Curse Circles, Bone Altars, Shadow Shrines, Corrupted Gardens |
| Elf | Elven Grovecraft | Moon Wells, Ward Groves, Living Bridges |
| Gnome | Gnomish Machinery, Relic Restoration | Ancient Power Nodes, Portal Stabilizers, Automation Stations |
| Relic Specialist (any) | Relic Restoration | Portal Anchors, Aether Stabilizers, Ancient Machines |

### Mystical Site Object Types

| Object | Effect | Notes |
|---|---|---|
| **Ward Shrine** | Ward Protection Aura in claim radius | Requires Ward Essence to maintain |
| **Healing Shrine** | Periodic healing pulse to claim members | Powerful in defended settlements |
| **Curse Circle** | Debuff field; damages or weakens enemies in radius | Dangerous; may affect friendly players |
| **Ritual Fire** | Tribal buff to combat stats | Limited duration per activation |
| **Moon Well** | Healing and magical power source | Elven Grove only; long cooldown |
| **Veil Containment Stone** | Suppresses active Veil corruption events | Rare; politically significant target |
| **Portal Anchor** | Dimensional portal to linked location | Extremely expensive; requires ancient materials |
| **Ancient Power Node** | Buffs nearby crafting stations | Powers adjacent machines |
| **Aether Stabilizer** | Stabilizes nearby portals and Ward network | Required near Portal Anchors for stability |
| **Shadow Shrine** | Stealth buff in area | Witch-built; debuffs non-stealth players |
| **Bone Altar** | Corruption ritual site | Witch; dangerous to nearby non-allied players |

### Mystical Site Rules

**Effect zones:**
- Mystical objects project effect zones of varying radius.
- Friendly effects apply to claim members and allied players.
- Hostile effects (Curse Circle, Bone Altar) can affect any player.
- Effects may stack with multiple objects, up to defined limits.

**Political targets:**
- Active Ward Shrines and Veil Containment Stones are high-value targets.
- Destroying a Ward Shrine removes its protection effect.
- Factions aligned with the Veil may actively target Ward Shrines.
- Guild claims with active Ward Shrines are harder to siege.

**Maintenance:**
- Most mystical objects require periodic material feeding (Ward Essence, Aether Shards, etc.).
- Objects without maintenance gradually lose effectiveness.
- Neglected shrines become inactive but retain their structure.
- Inactive objects may attract hostile supernatural entities.

**Corruption risk:**
- Building certain dark objects (Curse Circle, Bone Altar, Shadow Shrine) near Veil-weakened terrain may attract corruption events.
- Witch-path players accept this risk as part of their power.

### Example Mystical Site Configurations

**Ward Sanctuary (Wardkeeper/Kingdom)**
- Ward Shrine (central)
- Healing Shrine (adjacent)
- Ward Barrier Posts (perimeter)
- Veil Containment Stone (if Tier 2+ site)

**Elven Moon Grove**
- Moon Well (central)
- Ward Grove (surrounding trees)
- Nature Shrine (east)
- Living Bridge (connecting canopy platforms)

**Gnomish Research Node**
- Ancient Power Node (central)
- Aether Stabilizer (adjacent)
- Portal Anchor (connected)
- Relic Restoration Table (nearby)

**Witch's Dark Garden**
- Curse Circle (entry perimeter)
- Bone Altar (center)
- Shadow Shrine (hidden)
- Corrupted Gardens (perimeter)

---

## Settlement Progression Overview

Settlements in Mystical Isles can evolve from small camps to major cities over time.

```
Personal Homestead
        ↓
    Small Outpost / Workshop
        ↓
    Settlement Cluster (multiple claims)
        ↓
    Village / Camp (NPC services unlock)
        ↓
    Town (guild hall, markets)
        ↓
    City (political structures, full services)
        ↓
    Capital / Fortress City (regional control)
```

**Key milestone unlocks:**
- First merchant stall: enables commerce
- First guard barracks: enables NPC defense
- Guild Hall completion: unlocks Instance interior and guild governance
- Throne Seat placement: enables faction leadership title
- Fortress completion: grants regional political influence
- Ruin Restoration complete: unlocks NPC population and expansion plots

---

## Settlement Conflict and Control

### Contested Territory

Certain islands and regions are designated as contested territory. Settlements built here may be attacked during:
- Declared sieges by enemy guilds
- Faction invasion events (NPC armies + player coordination)
- Veil corruption events (if Ward objects are insufficient)

### Uncontested Territory

Most residential and civilian claims exist in uncontested territory where PvP building conflict is not possible. These areas are safe for solo and small-group players.

### Political Control Effects

Controlling a fortress or city grants the owning faction:
- Tax income from territory
- NPC spawn influence
- Travel point control (safe landing zones)
- Trade route bonuses
- World map presence

---

## Ruin Restoration System

### Overview

Many islands contain ruined settlements — remnants of pre-Fracturing civilization or abandoned towns. Players can undertake **Ruin Restoration** projects to rebuild these sites into functional settlements.

### How Ruin Restoration Works

1. **Discover the Ruin**: Players find an eligible ruined site (flagged with Ruin Restoration Claim type).
2. **Acquire Restoration Rights**: Purchase a Ruin Restoration Deed from a faction quest, reputation vendor, or rare drop.
3. **Place the Claim**: Use the deed to establish a Ruin Restoration Claim on the site.
4. **Stage 1 Restoration**: Clear debris, rebuild foundations, meet stage 1 build requirements.
5. **Quest Integration**: Each restoration stage may require completing associated lore quests.
6. **Stage 2 Restoration**: Interior structures, NPC slots, services.
7. **Full Restoration**: The site becomes a fully functional settlement with NPC population.

### Ruin Restoration Rewards

| Stage | Reward |
|---|---|
| Stage 1 Complete | Expanded claim area, first NPCs unlock |
| Stage 2 Complete | Full NPC population, market access |
| Full Restoration | Faction reputation gain, possible city-tier designation, regional map presence |

### Ruin Types

| Ruin Type | Restored Into |
|---|---|
| Ancient Ward Station | Mystical Site or Ward Sanctuary |
| Abandoned Trade Port | Player Harbor Town |
| Collapsed Canyon Village | Tribal Village |
| Ruined Kingdom Keep | Kingdom Outpost or Fortress |
| Overgrown Elven Sanctuary | Elven Grove Settlement |
| Flooded Dwarven Hall | Dwarven Stronghold |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Claim Profiles] (claim_profiles.md)
- Next: [Mystical Isles — Race & Class Building Identity] (race_class_building_identity.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---
