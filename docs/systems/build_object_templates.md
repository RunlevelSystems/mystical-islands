[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Build Object Templates

---

# Mystical Isles — Build Object Templates
This document provides detailed Atavism-ready build object template configurations for key structures in Mystical Isles. Each template can be entered directly into the Atavism Editor Build Object section.

---

## Table of Contents

1. [How to Read These Templates](#how-to-read-these-templates)
2. [Housing Templates](#housing-templates)
3. [Storage Templates](#storage-templates)
4. [Defense Templates](#defense-templates)
5. [Crafting Templates](#crafting-templates)
6. [Resource Templates](#resource-templates)
7. [NPC Service Templates](#npc-service-templates)
8. [Mystical Object Templates](#mystical-object-templates)
9. [Naval Templates](#naval-templates)
10. [Political and Guild Templates](#political-and-guild-templates)
11. [Related Documents](#related-documents)

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
- Previous: [Mystical Isles — Building Categories](building_categories.md)
- Next: [Mystical Isles — Claim Profiles](claim_profiles.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
