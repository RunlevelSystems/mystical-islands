# Instances Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify:
- table names
- column names
- IDs
- foreign key relationships
- option values
- Atavism version compatibility

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/instances-plugin/ was unavailable at the time of writing. All information below is derived from the SQL schema and demo data files. Verify against the wiki before generating production SQL.

## Purpose
The Instances Plugin manages the island/world instances that players inhabit. Each instance corresponds to a loadable map/scene in Unity. Instances are defined as templates in the `admin` database and contain configuration for access control, recommended level, population limits, water height, and more. Mob spawns and interactive objects reference instance IDs to place content within specific islands.

In Mystical Islands, every explorable island will be an instance.

## Source Links
- https://unity.wiki.atavismonline.com/project/instances-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/admin.sql (demo data — admin database)
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/schema/admin.sql (empty schema — admin database)
- /docs/sql/schema/world_content.sql (empty schema — world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `instance_template` | Defines each island/world instance | admin DB |
| `templates` | Defines world layout size presets | admin DB |
| `templateportals` | Portals placed within template islands | admin DB |
| `spawn_data` | Mob and NPC spawns placed on instances | world_content DB |

## Column Reference

### instance_template (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `instance_template` | `id` | Auto-increment primary key | Referenced by `spawn_data.instance`, `resource_node_template.instance`, `interactive_object.instance` | spawn_data, interactive_object, resource_node_template |
| `instance_template` | `island_name` | Unique name for this island | Unique key. Used as a reference string in some systems | — |
| `instance_template` | `template` | Template/prefab name | References the Unity scene or world template name | `templates` |
| `instance_template` | `administrator` | Account ID of the island administrator | Integer FK to account | account |
| `instance_template` | `category` | Category classification | Integer; meaning unclear — verify via editor | — |
| `instance_template` | `status` | Instance status string | Examples: "open", "closed", "private" — verify exact values | — |
| `instance_template` | `subscription` | Subscription expiry date | NULL = no subscription required | — |
| `instance_template` | `public` | Whether instance is publicly visible | 0 = private, 1 = public | — |
| `instance_template` | `password` | Password protection | Empty string = no password | — |
| `instance_template` | `rating` | Player rating | Default 0 | — |
| `instance_template` | `islandType` | Island type classification | Integer; meaning uncertain — verify | — |
| `instance_template` | `globalWaterHeight` | Y-coordinate of the water plane | Float; 0 = no global water | — |
| `instance_template` | `createOnStartup` | Auto-create on server start | 0 = manual, 1 = auto | — |
| `instance_template` | `style` | Visual/biome style string | Freeform string; maps to editor style tag | — |
| `instance_template` | `recommendedLevel` | Suggested player level for this island | Integer | — |
| `instance_template` | `description` | Text description shown to players | TEXT field | — |
| `instance_template` | `size` | World size | Integer; FK to `templates.id` likely | `templates` |
| `instance_template` | `populationLimit` | Max players on this instance | -1 = unlimited | — |
| `instance_template` | `lastUpdate` | Auto-updated timestamp | — | — |
| `instance_template` | `dateCreated` | Creation timestamp | — | — |

### templates (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `templates` | `id` | Primary key | — | `instance_template` |
| `templates` | `name` | Template preset name | Unique | — |
| `templates` | `size` | World size in units | Integer | — |

### templateportals (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `templateportals` | `id` | Auto-increment PK | — | — |
| `templateportals` | `templateID` | FK → `templates.id` | Associates portal with a template world | `templates` |
| `templateportals` | `portalType` | Type of portal | Integer; verify portal type codes | — |
| `templateportals` | `faction` | Faction association | Integer FK to faction | `factions` |
| `templateportals` | `locX/Y/Z` | World position | Integer coordinates | — |
| `templateportals` | `displayID` | Display object ID | Integer; references a display/model | — |

### spawn_data (world_content DB) — partial reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `spawn_data` | `instance` | FK → `instance_template.id` | Places this spawn on a specific island | `instance_template` |
| `spawn_data` | `mobTemplate` through `mobTemplate5` | Up to 5 mob templates to randomly spawn | -1 = unused | `mob_templates` |
| `spawn_data` | `numSpawns` | Number of spawns at this point | — | — |
| `spawn_data` | `spawnRadius` | Spread radius | — | — |
| `spawn_data` | `respawnTime` / `respawnTimeMax` | Respawn interval in seconds | — | — |
| `spawn_data` | `locX/Y/Z` | World position | Float | — |
| `spawn_data` | `isChest` | Whether this spawn is a chest | 1 = chest, 0 = mob | — |
| `spawn_data` | `merchantTable` | Merchant table FK | -1 = no merchant | `merchant_tables` |
| `spawn_data` | `patrolPath` | Patrol path FK | -1 = stationary | `patrol_path` |

## Relationships
- `instance_template.id` is the central reference for placing all content on islands
- `spawn_data.instance` → `instance_template.id`
- `resource_node_template.instance` → `instance_template.id`
- `interactive_object.instance` → `instance_template.id`
- `templateportals.templateID` → `templates.id`
- `instance_template.size` may reference `templates.id` (mapping uncertain — verify)

## Data Creation Flow
1. Define world layout presets in `templates` if needed
2. INSERT into `instance_template` for each island
3. Note the assigned `instance_template.id`
4. INSERT `spawn_data` rows referencing that ID
5. INSERT `resource_node_template`/`interactive_object` rows referencing that ID
6. Add portals via `templateportals` if applicable

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Create a new island instance
INSERT INTO `instance_template`
  (island_name, template, administrator, category, status, public, password,
   islandType, globalWaterHeight, createOnStartup, style, recommendedLevel,
   description, size, populationLimit)
VALUES
  ('Thornshore Isle', 'island_template_medium', 1, 1, 'open', 1, '',
   1, 5.0, 1, 'tropical', 10,
   'A mid-tier tropical island with pirate outposts.', 2, 50);
```

## Mystical Islands Usage
Every Mystical Islands island is an `instance_template` row. Key design decisions:
- Each island should have a `recommendedLevel` matching its intended progression tier
- Use `globalWaterHeight` to set sea level on island scenes
- `populationLimit` should be tuned per island type (social hubs higher, dungeons lower)
- `createOnStartup = 1` for persistent world islands; consider 0 for instanced dungeons
- All island `island_name` values should follow a Mystical Islands naming convention

## External Application Notes
- **World map tools**: List all `instance_template` rows to render a navigable world map
- **Player portals / travel UI**: Query instance status and population before allowing travel
- **Admin panels**: CRUD for island management

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading. Island instance behavior may change with new instance management features in 10.13.
