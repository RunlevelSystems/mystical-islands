# Build Object Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose

The Build Object Plugin allows players to construct persistent world structures on player claims. A build object has:

- A **template** (`build_object_template`) defining the object's name, category, skill requirement, and interaction type
- One or more **stages** (`build_object_stage`) representing construction progression — each stage defines materials required, build time, health, and the game object prefab shown at that stage
- Optional **progress visuals** (`build_object_stage_progress`) showing in-progress mesh
- Optional **damaged visuals** (`build_object_stage_damaged`) for partially destroyed stages
- **Items** spawned or dropped when a stage is destroyed (`build_object_stage_items` — verify usage)
- **Limits** on how many of a category can be placed on a claim (`build_object_limits`)
- **Grids** placing build objects in the world (`building_grids`)

## Source Links

- https://unity.wiki.atavismonline.com/project/build-object-plugin/

> **Wiki Note:** The Atavism wiki was unavailable at time of documentation. All table/column information is derived directly from SQL files. Cross-check with the wiki before generating production SQL.

## SQL Files Reviewed

- `docs/sql/10.13/demo/world_content.sql` — demo data (world_content database)
- `docs/sql/10.13/core/world_content.sql` — empty schema (world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `build_object_template` | Defines the buildable object (name, skill, interaction, category) | world_content |
| `build_object_stage` | Each construction/repair stage with material requirements | world_content |
| `build_object_stage_items` | Items associated with a stage (loot when destroyed) | world_content |
| `build_object_stage_progress` | Visual mesh shown at each progress percentage during build | world_content |
| `build_object_stage_damaged` | Visual mesh shown at each percentage when damaged | world_content |
| `build_object_limits` | Maximum count of object categories on a claim profile | world_content |
| `building_grids` | Actual placed instances of build objects on islands | world_content |

## Column Reference

### `build_object_template`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `name` | Object display name | varchar(45) | |
| `icon` | Icon asset path | varchar(256) | |
| `icon2` | Base64-encoded icon | mediumtext | |
| `category` | Object category ID | int; used by `build_object_limits.object_category` | `build_object_limits` |
| `skill` | Required skill ID | int FK to `skills.id`; -1=none | `skills` |
| `skillLevelReq` | Minimum skill level | int | |
| `weaponReq` | Required weapon type | varchar(45); e.g. `~ none ~`, or specific weapon tag | |
| `distanceReq` | Build placement distance | float; meters | |
| `buildTaskReqPlayer` | Player must be present during build | tinyint(1), default 1 | |
| `buildSolo` | Only builder can work on it | tinyint(1), default 0 | |
| `fixedTime` | Fixed build time regardless of players | tinyint(1), default 0 | |
| `validClaimType` | Claim type IDs where this can be placed | varchar(2000); semicolon-separated list of claim profile IDs | `claim_profile` |
| `firstStageID` | Starting stage | int FK to `build_object_stage.id` | `build_object_stage` |
| `availableFromItemOnly` | Can only be placed from an item in inventory | tinyint(1), default 0 | |
| `interactionType` | Interaction type when complete | varchar(45); e.g. `Chest`, `Effect`, empty | |
| `interactionID` | ID for the interaction | int; FK depends on `interactionType`; -1=none | |
| `interactionData1` | Additional interaction data | varchar(45) | |
| `lockable` | Can be locked | tinyint(1), default 0 | |
| `lockLimit` | Max locks | int, default 1 | |
| `claim_object_category` | Category for claim object counting | int; -1=uncategorized | |
| `attackable` | Can be attacked/damaged | tinyint(1), default 0 | |
| `repairable` | Can be repaired | tinyint(1), default 1 | |
| `isactive` | Active flag | tinyint(1), default 1 | |
| `creationtimestamp` | Created timestamp | | |
| `updatetimestamp` | Updated timestamp | | |

Demo data:
```
id=2  'House Foundation'  category=-1  skill=-1  skillLevelReq=0  weaponReq='~ none ~'
      distanceReq=20  firstStageID=4  validClaimType='1'  interactionType='Chest'
id=5  'Trade Stand'       category=-1  skill=-1  weaponReq='~ none ~'  distanceReq=10  firstStageID=5
```

### `build_object_stage`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | Referenced by `build_object_template.firstStageID`, `build_object_stage.nextStage` |
| `gameObject` | Unity prefab asset path for this stage | varchar(256) | |
| `nextStage` | Next stage ID when complete | int FK to `build_object_stage.id`; -1=final | `build_object_stage` |
| `buildTimeReq` | Build time required (seconds) | float | |
| `repairTimeReq` | Repair time (seconds) | float | |
| `interactionType` | Type of interaction when this stage is active | varchar(256); e.g. `Chest`, `Effect`, empty | |
| `interactionID` | ID of the interaction target | int | |
| `interactionData1` | Additional interaction string data | varchar(256) | |
| `health` | Stage health points | int | |
| `lootTable` | Loot table for when this stage is destroyed | int FK to `loot_tables.id`; 0=none | `loot_tables` |
| `lootMinPercentage` | Minimum loot drop percentage | float | |
| `lootMaxPercentage` | Maximum loot drop percentage | float | |
| `itemReq1`–`itemReq6` | Required item IDs for this stage | int FK to `item_templates.id`; NULL=not used | `item_templates` |
| `itemReq1Count`–`itemReq6Count` | Required count per item | int | |
| `isactive` | Active flag | | |
| `creationtimestamp` | Created timestamp | | |
| `updatetimestamp` | Updated timestamp | | |

Demo data:
```
id=3  prefab=Stage2.prefab  nextStage=-1  buildTimeReq=10  itemReq1=2(15)  itemReq2=501188(10)
id=4  prefab=Stage1.prefab  nextStage=3   buildTimeReq=10  itemReq1=501188(10)
id=6  prefab=''  nextStage=-1  buildTimeReq=60  repairTimeReq=30  interactionType=Chest  interactionID=10
      health=1000  lootTable=10292  lootMin=0  lootMax=100
```

### `build_object_stage_items`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `stage_id` | Stage this item entry belongs to | int FK to `build_object_stage.id` | `build_object_stage` |
| `item` | Item template | int FK to `item_templates.id` | `item_templates` |
| `count` | Quantity | int | |

> No demo INSERT data found in reviewed SQL files. Usage uncertain — may represent items dropped when a stage is destroyed, or items spawned inside the object. Verify against editor behavior before generating production inserts.

### `build_object_stage_progress`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `stage_id` | Stage this progress mesh belongs to | int FK to `build_object_stage.id` | `build_object_stage` |
| `progress` | Percentage complete when this mesh shows | smallint; 0–100 | |
| `prefab` | Prefab asset path | varchar(1000) | |
| `trimesh` | Collision mesh blob | longblob | |

### `build_object_stage_damaged`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `stage_id` | Stage this damaged mesh belongs to | int FK to `build_object_stage.id` | `build_object_stage` |
| `progress` | Health percentage when this mesh shows | smallint; 0–100 | |
| `prefab` | Prefab asset path | varchar(1000) | |
| `trimesh` | Collision mesh blob | longblob | |

### `build_object_limits`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `profile_id` | Claim profile this limit applies to | int FK to `claim_profile.id` | `claim_profile` |
| `object_category` | Object category being limited | int; matches `build_object_template.category` | `build_object_template` |
| `count` | Maximum number allowed | int | |
| `isactive` | Active flag | | |
| `creationtimestamp` | Created timestamp | | |
| `updatetimestamp` | Updated timestamp | | |

### `building_grids`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `instance` | Instance/island name | varchar(45) | `instance_template` |
| `locX`, `locY`, `locZ` | World position | float | |
| `type` | Grid type | int | |
| `owner` | Owner entity ID | bigint | |
| `layer_count` | Number of building layers | int, default 1 | |
| `building1`–`building5` | Object asset names per layer | varchar(45) | |
| `building1_rotation`–`building5_rotation` | Rotation per layer | float | |
| `layer_height` | Height per layer | float | |
| `blueprint1`–`blueprint5` | Blueprint IDs per layer | int; -1=none | |
| `isactive` | Active flag | | |
| `creationtimestamp` | Created timestamp | | |
| `updatetimestamp` | Updated timestamp | | |

## Relationships

```
build_object_template.firstStageID  →  build_object_stage.id
build_object_stage.nextStage        →  build_object_stage.id (self-referential chain)
build_object_stage.itemReq1-6       →  item_templates.id
build_object_stage.lootTable        →  loot_tables.id
build_object_stage_items.stage_id   →  build_object_stage.id
build_object_stage_items.item       →  item_templates.id
build_object_stage_progress.stage_id → build_object_stage.id
build_object_stage_damaged.stage_id  → build_object_stage.id
build_object_limits.profile_id      →  claim_profile.id
build_object_template.validClaimType → claim_profile.id (CSV string)
building_grids.instance             →  instance_template.name
```

## Data Creation Flow

1. Create `skills` row if skill-gating is needed
2. Create `item_templates` rows for all material requirements
3. Create `loot_tables` rows if destroyed stages drop loot
4. Create `build_object_stage` rows (start with final stage, then work backwards since `nextStage` references later IDs — or insert in forward order and update `nextStage` after)
5. Optionally create `build_object_stage_progress` and `build_object_stage_damaged` rows per stage
6. Create `build_object_template` rows (reference `firstStageID`)
7. Create `build_object_limits` rows for claim profiles (optional)
8. `building_grids` rows are generated at runtime or via world editor

> **Stage chain:** stages form a linked list via `nextStage`. The final stage has `nextStage = -1`. The template's `firstStageID` points to the earliest stage.

## Example SQL Planning Notes

```sql
-- Example only. Verify IDs before inserting.

-- Final stage (no nextStage)
INSERT INTO build_object_stage (gameObject, nextStage, buildTimeReq, repairTimeReq,
  interactionType, interactionID, interactionData1, health, lootTable,
  lootMinPercentage, lootMaxPercentage)
VALUES ('Assets/Resources/Buildings/Cabin/Stage2.prefab', -1, 30, 10,
  '', 0, '', 2000, 0, 0, 0);

-- First stage (points to stage above)
INSERT INTO build_object_stage (gameObject, nextStage, buildTimeReq, repairTimeReq,
  interactionType, interactionID, interactionData1, health, lootTable,
  lootMinPercentage, lootMaxPercentage, itemReq1, itemReq1Count, itemReq2, itemReq2Count)
VALUES ('Assets/Resources/Buildings/Cabin/Stage1.prefab', LAST_INSERT_ID(), 30, 0,
  '', 0, '', 0, 0, 0, 0, 1001, 20, 1002, 10);

-- Template
INSERT INTO build_object_template (name, icon, icon2, category, skill, skillLevelReq,
  weaponReq, distanceReq, buildTaskReqPlayer, buildSolo, fixedTime, validClaimType,
  firstStageID, availableFromItemOnly, lockable, claim_object_category, attackable, repairable)
VALUES ('Fisherman Cabin', 'Assets/Icons/cabin.png', '', 1, -1, 0,
  '~ none ~', 15, 1, 0, 0, '1',
  LAST_INSERT_ID() - 1, 0, 1, 1, 1, 1);
```

## Mystical Islands Usage

Build objects are core to player housing and settlement building. Planned object categories:
- Foundations and structural frames
- Walls, doors, windows
- Roofs and floors
- Furniture and decoration
- Storage containers (chests)
- Crafting stations (forge, alchemy table, loom)
- Defensive structures (walls, towers)
- Docking platforms and harbor structures

Each island claim type will have `build_object_limits` controlling what can be placed and how many.

## External Application Notes

- **Build-object planner**: Query `build_object_template JOIN build_object_stage` to display full build chains with material lists
- **Admin item editor**: Show which items are required as `itemReq*` in stages
- **Guild crafting pages**: Display buildable structures available to guild claims

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.


Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
