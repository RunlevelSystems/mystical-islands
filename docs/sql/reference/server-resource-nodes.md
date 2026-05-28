# Resource Nodes Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify table names, column names, IDs, foreign key relationships, option values, and Atavism version compatibility.

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/setting-up-resource-nodes/ was unavailable at time of writing. All information is derived from SQL schema files. Verify against the wiki before generating production SQL.

## Purpose
The Resource Nodes Plugin defines harvestable world objects (ore veins, herb patches, wood nodes, fishing spots, etc.). Each node has a template defining skill requirements and loot. Profiles group sub-profiles that determine what appears at runtime. Drop tables define what items are yielded on harvest.

## Source Links
- https://unity.wiki.atavismonline.com/project/setting-up-resource-nodes/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/schema/world_content.sql (empty schema — world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `resource_node_profile` | Top-level profile grouping sub-profiles | world_content DB |
| `resource_node_sub_profile` | Defines a specific node variant within a profile | world_content DB |
| `resource_node_template` | Places a specific node with skill reqs on an instance | world_content DB |
| `resource_node_spawn` | Spawn locations for node templates | world_content DB |
| `resource_drop` | Loot table per sub-profile | world_content DB |
| `resource_grids` | Grid-based region spawners for resource variety | world_content DB |

## Column Reference

### resource_node_profile

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `resource_node_profile` | `id` | PK | Referenced by `resource_node_template.profileId` | `resource_node_template`, `resource_node_sub_profile` |
| `resource_node_profile` | `name` | Profile name | — | — |
| `resource_node_profile` | `spawnPercentage` | Base spawn chance % | Float 0–100 | — |
| `resource_node_profile` | `spawnPecentageMax` | Max spawn chance % | Note: typo in column name (`Pecentage`) | — |
| `resource_node_profile` | `maxHarvestDistance` | Max player distance to harvest | Float | — |
| `resource_node_profile` | `isactive` | Active flag | — | — |

### resource_node_sub_profile

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `resource_node_sub_profile` | `id` | PK | Referenced by `resource_drop.resourceSubProfileId` | `resource_drop` |
| `resource_node_sub_profile` | `profileId` | FK → `resource_node_profile.id` | — | `resource_node_profile` |
| `resource_node_sub_profile` | `priority` / `priorityMax` | Priority range for weighted selection | — | — |
| `resource_node_sub_profile` | `skill` | Required skill ID | FK → `skills.id` | `skills` |
| `resource_node_sub_profile` | `skillLevel` / `skillLevelMax` | Min/max skill level range | — | — |
| `resource_node_sub_profile` | `skillExp` | Skill XP granted on harvest | — | — |
| `resource_node_sub_profile` | `weaponReq` | Required weapon/tool type | String | — |
| `resource_node_sub_profile` | `equipped` | Whether tool must be equipped | 0/1 | — |
| `resource_node_sub_profile` | `gameObject` | Unity prefab name | — | — |
| `resource_node_sub_profile` | `harvestCoordEffect` | Visual effect on harvest | — | — |
| `resource_node_sub_profile` | `activateCoordeffect` | Effect on node activation | — | — |
| `resource_node_sub_profile` | `deactivateCoordeffect` | Effect on node deactivation | — | — |
| `resource_node_sub_profile` | `respawnTime` / `respawnTimeMax` | Respawn interval range (seconds) | — | — |
| `resource_node_sub_profile` | `harvestCount` | Times this node can be harvested before depletion | — | — |
| `resource_node_sub_profile` | `harvestTimeReq` | Time to complete one harvest (seconds) | — | — |
| `resource_node_sub_profile` | `cooldown` | Player cooldown after harvest | Float seconds | — |
| `resource_node_sub_profile` | `deactivationDelay` | Delay before node deactivates | Float seconds | — |
| `resource_node_sub_profile` | `lootCount` | Max loot rolls per harvest | Default 10 | — |
| `resource_node_sub_profile` | `ensureLoot` | Guarantee at least one item | 1 = yes | — |
| `resource_node_sub_profile` | `cursorIcon` / `cursorIcon2` | Cursor display when targeting node | Path string / base64 | — |
| `resource_node_sub_profile` | `selectedIcon` / `selectedIcon2` | Icon when node is selected | Path string / base64 | — |

### resource_node_template

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `resource_node_template` | `id` | PK | Referenced by `resource_node_spawn.resourceTemplate` | `resource_node_spawn` |
| `resource_node_template` | `name` | Template name | — | — |
| `resource_node_template` | `skill` | Required skill ID | FK → `skills.id` | `skills` |
| `resource_node_template` | `skillLevel` / `skillLevelMax` | Skill level range required | — | — |
| `resource_node_template` | `skillExp` | XP awarded | — | — |
| `resource_node_template` | `weaponReq` | Tool requirement | — | — |
| `resource_node_template` | `gameObject` | Unity prefab | — | — |
| `resource_node_template` | `instance` | FK → `instance_template.id` | Which island this node belongs to | `instance_template` |
| `resource_node_template` | `respawnTime` | Seconds until respawn | — | — |
| `resource_node_template` | `locX/Y/Z` | World position | Float | — |
| `resource_node_template` | `harvestCount` | Harvests before depletion | — | — |
| `resource_node_template` | `harvestTimeReq` | Harvest duration | Float | — |
| `resource_node_template` | `profileId` | FK → `resource_node_profile.id` | -1 = no profile | `resource_node_profile` |

### resource_node_spawn

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `resource_node_spawn` | `id` | PK | — | — |
| `resource_node_spawn` | `instance` | Instance name or ID | varchar(45) — may be string or integer | `instance_template` |
| `resource_node_spawn` | `resourceTemplate` | FK → `resource_node_template.id` | — | `resource_node_template` |
| `resource_node_spawn` | `respawnTime` | Override respawn time | — | — |
| `resource_node_spawn` | `locX/Y/Z` | World position | Float | — |

### resource_drop

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `resource_drop` | `id` | PK | — | — |
| `resource_drop` | `resourceSubProfileId` | FK → `resource_node_sub_profile.id` | — | `resource_node_sub_profile` |
| `resource_drop` | `item` | FK → `item_templates.id` | Item dropped | `item_templates` |
| `resource_drop` | `min` / `max` | Drop quantity range | — | — |
| `resource_drop` | `chance` / `chanceMax` | Drop chance % range | Float 0–100 | — |

### resource_grids

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `resource_grids` | `id` | PK | — | — |
| `resource_grids` | `type` | Grid type | varchar | — |
| `resource_grids` | `count` | Number of nodes in grid | — | — |
| `resource_grids` | `locX/Y/Z` | Grid center position | Float | — |
| `resource_grids` | `rotation` | Grid rotation | Float | — |
| `resource_grids` | `instance` | Instance name/ID | varchar | — |
| `resource_grids` | `resource1_type` through `resource5_type` | Up to 5 resource types | varchar | — |
| `resource_grids` | `resource1_chance` through `resource5_chance` | Chance weight per resource type | Integer | — |

## Relationships
- `resource_node_profile.id` → `resource_node_sub_profile.profileId` (1:many)
- `resource_node_sub_profile.id` → `resource_drop.resourceSubProfileId` (1:many)
- `resource_node_template.profileId` → `resource_node_profile.id`
- `resource_node_template.instance` → `instance_template.id`
- `resource_node_spawn.resourceTemplate` → `resource_node_template.id`
- `resource_drop.item` → `item_templates.id`
- `resource_node_sub_profile.skill` → `skills.id`

## Data Creation Flow
1. Define items in `item_templates` first
2. Define skills in `skills` first
3. Create `resource_node_profile` row
4. Create `resource_node_sub_profile` rows referencing the profile
5. Create `resource_drop` rows referencing each sub-profile
6. Create `resource_node_template` rows referencing profile and instance
7. Create `resource_node_spawn` rows for world placement

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Create a profile
INSERT INTO `resource_node_profile` (name, spawnPercentage, spawnPecentageMax, maxHarvestDistance, isactive)
VALUES ('Coral Node Profile', 100, 100, 5.0, 1);

-- Create a sub-profile (replace 1 with actual profile ID)
INSERT INTO `resource_node_sub_profile`
  (profileId, priority, priorityMax, skillExp, harvestCount, harvestTimeReq, cooldown, deactivationDelay, lootCount, ensureLoot)
VALUES (1, 1, 100, 50, 5, 2.0, 1.0, 0.5, 3, 1);

-- Create a drop (replace sub-profile ID and item ID)
INSERT INTO `resource_drop` (resourceSubProfileId, item, min, max, chance, chanceMax, isactive)
VALUES (1, 101, 1, 3, 80, 100, 1);
```

## Mystical Islands Usage
Resource nodes are central to Mystical Islands' nautical economy:
- **Coral reefs** — underwater gathering nodes
- **Driftwood / Ship timber** — crafting materials on beaches
- **Island herbs / reagents** — alchemy inputs
- **Ore veins** — in cave systems under islands
- **Fishing spots** — using `resource_node` system with fishing skill

## External Application Notes
- **Resource map tools**: Query `resource_node_spawn` + `instance_template` to render node positions on island maps
- **Crafting guides**: Show what items drop from which node types

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.
