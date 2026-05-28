# Guilds Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify table names, column names, IDs, foreign key relationships, option values, and Atavism version compatibility.

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/guilds-plugin/ was unavailable at time of writing. All information is derived from SQL schema files. Verify against the wiki before generating production SQL.

## Purpose
The Guilds Plugin enables players to form persistent organizations. Guilds have a name, faction, message of the day, level, and a warehouse inventory OID. Members have ranks with configurable permissions. Guilds can level up by donating items, and each level unlocks more members, merchant access, and warehouse slots.

## Source Links
- https://unity.wiki.atavismonline.com/project/guilds-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/admin.sql (demo data — admin database)
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/schema/admin.sql (empty schema)
- /docs/sql/schema/world_content.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `guild` | Guild definition | admin DB |
| `guild_rank` | Per-guild rank definitions with permissions | admin DB |
| `guild_member` | Guild membership records | admin DB |
| `guild_level_resources` | Items contributed by guild toward level-up | admin DB |
| `guild_level_requirements` | Items required per guild level | world_content DB |
| `guild_level_settings` | Perks unlocked per guild level | world_content DB |

## Column Reference

### guild (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `guild` | `id` | Auto-increment PK | — | `guild_rank`, `guild_member`, `guild_level_resources` |
| `guild` | `name` | Guild name | Max 45 chars | — |
| `guild` | `faction` | Faction ID | FK → factions | `factions` |
| `guild` | `motd` | Message of the Day | Max 256 chars | — |
| `guild` | `omotd` | Officer Message of the Day | Max 256 chars | — |
| `guild` | `isactive` | Active flag | 0 = disbanded | — |
| `guild` | `level` | Current guild level | Default 1 | `guild_level_settings` |
| `guild` | `warehouse` | OID of the guild warehouse object | BigInt; 0 = no warehouse yet | `objstore` |

### guild_rank (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `guild_rank` | `id` | PK | — | — |
| `guild_rank` | `guildID` | FK → `guild.id` | — | `guild` |
| `guild_rank` | `guildRank` | Rank number | Integer; lower = higher authority typically | — |
| `guild_rank` | `name` | Rank title | Max 45 chars | — |
| `guild_rank` | `permissions` | Permissions string | Max 256 chars; format uncertain — verify | — |

### guild_member (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `guild_member` | `id` | PK | — | — |
| `guild_member` | `guildID` | FK → `guild.id` | — | `guild` |
| `guild_member` | `memberOid` | Character OID | BigInt FK → objstore.obj_id | `objstore` |
| `guild_member` | `name` | Character name (cached) | Max 32 chars | — |
| `guild_member` | `guildRank` | Rank number | Matches `guild_rank.guildRank` | `guild_rank` |
| `guild_member` | `level` | Character level (cached) | Integer | — |
| `guild_member` | `note` | Member note | Max 128 chars | — |

### guild_level_resources (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `guild_level_resources` | `id` | PK | — | — |
| `guild_level_resources` | `guild_id` | FK → `guild.id` | — | `guild` |
| `guild_level_resources` | `item_id` | Item contributed | FK → item_templates.id | `item_templates` |
| `guild_level_resources` | `item_count` | Quantity contributed | Integer | — |

### guild_level_requirements (world_content DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `guild_level_requirements` | `id` | PK | — | — |
| `guild_level_requirements` | `level` | Target guild level | — | `guild_level_settings` |
| `guild_level_requirements` | `item_id` | Required item | FK → item_templates.id | `item_templates` |
| `guild_level_requirements` | `count` | Required quantity | — | — |

### guild_level_settings (world_content DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `guild_level_settings` | `id` | PK | — | — |
| `guild_level_settings` | `level` | Guild level (unique) | — | `guild` |
| `guild_level_settings` | `members_num` | Max members at this level | — | — |
| `guild_level_settings` | `merchant_table` | Merchant table FK unlocked | -1 = none | `merchant_tables` |
| `guild_level_settings` | `warehouse_num_slots` | Warehouse slots available | — | — |

## Relationships
- `guild.id` → `guild_rank.guildID`, `guild_member.guildID`, `guild_level_resources.guild_id`
- `guild_member.memberOid` → `objstore.obj_id`
- `guild_member.guildRank` matches `guild_rank.guildRank` for the same `guildID`
- `guild_level_requirements.level` → `guild_level_settings.level`
- `guild_level_resources.item_id` → `item_templates.id`
- `guild.level` → `guild_level_settings.level`

## Data Creation Flow
1. Define `guild_level_settings` rows for each level tier (content setup)
2. Define `guild_level_requirements` rows for each level (content setup)
3. Guilds are created at runtime by players — INSERT into `guild` happens in-game
4. Server inserts `guild_rank` defaults and founding `guild_member` at creation
5. Contributed items tracked in `guild_level_resources`

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Define level 2 guild settings
INSERT INTO `guild_level_settings` (level, members_num, merchant_table, warehouse_num_slots, isactive)
VALUES (2, 25, -1, 10, 1);

-- Define items required to reach level 2 (replace item_id)
INSERT INTO `guild_level_requirements` (level, item_id, count, isactive)
VALUES (2, 500, 100, 1);
```

## Mystical Islands Usage
Guilds will be central to Mystical Islands' faction-maritime culture:
- **Pirate Fleets / Merchant Companies / Explorer Orders** — guild archetypes
- Guild level system drives crew size and ship warehouse capacity
- Guild merchant tables could unlock unique nautical goods
- Guild warehouses store shared resources for ship repairs and expeditions

## External Application Notes
- **Guild pages**: Show roster, rank structure, level progress, warehouse
- **Recruitment boards**: List open guilds with faction and level
- **Alliance / rivalry maps**: Visualize guild faction affiliations

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.
