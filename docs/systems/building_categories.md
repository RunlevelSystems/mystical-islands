[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Building Categories

---

# Mystical Isles — Building Categories
This document defines all build object categories, interaction types, and the master list of build objects for Mystical Isles.

---

## Table of Contents

1. [Claim Object Categories](#claim-object-categories)
2. [Interaction Types](#interaction-types)
3. [Build Object Field Reference](#build-object-field-reference)
4. [Build Object Master List](#build-object-master-list)
5. [Related Documents](#related-documents)

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
- Previous: [Mystical Isles — Building & Claims System](building_and_claims_system.md)
- Next: [Mystical Isles — Build Object Templates](build_object_templates.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
