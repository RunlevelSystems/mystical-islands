# Game Settings Plugin

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

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/game-settings-plugin/ was unavailable at the time of writing. All information below is derived from the SQL schema and demo data files. Verify against the wiki before generating production SQL.

## Purpose
The Game Settings Plugin stores global server-wide configuration values. Each row is a named key/value pair with a declared data type. The Atavism server reads these settings at startup and runtime to control game behavior including inventory limits, combat rules, death penalties, economy settings, and more.

This is a high-impact table — incorrect values can break core game systems. Changes should be tested carefully.

## Source Links
- https://unity.wiki.atavismonline.com/project/game-settings-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/schema/world_content.sql (empty schema — world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `game_setting` | Global key/value configuration for the game server | world_content DB |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `game_setting` | `id` | Auto-increment primary key | 199 rows in demo data | — |
| `game_setting` | `name` | Setting key name | Max 101 chars. Uppercase with underscores. Example: `PLAYER_BAG_COUNT` | — |
| `game_setting` | `datatype` | Declared type of `value` | Examples: `int`, `bool`, `float`, `string` | — |
| `game_setting` | `value` | The setting value stored as a string | Always varchar regardless of `datatype` | — |
| `game_setting` | `isactive` | Soft-delete / enable flag | 1 = active | — |
| `game_setting` | `creationtimestamp` | Row creation time | Auto-set | — |
| `game_setting` | `updatetimestamp` | Last update time | — | — |

## Demo Data: Sample Known Settings (from world_content.sql)

| id | name | datatype | value |
|---|---|---|---|
| 1 | PLAYER_BAG_COUNT | int | 4 |
| 2 | PLAYER_DEFAULT_BAG_SIZE | int | 16 |
| 3 | MOB_DEATH_EXP | bool | true |
| 4 | PLAYER_CORPSE_LOOT_DURATION | int | 0 |
| 5 | PLAYER_CORPSE_SAFE_LOOT_DURATION | int | 0 |

> The demo file contains ~199 settings. Consult the full `world_content.sql` for the complete list before modifying or replacing values.

## Relationships
- No foreign key relationships. `game_setting` is a standalone configuration table.
- Some setting values reference IDs from other tables (e.g. a default spawn instance ID). Verify meaning before changing numeric values.

## Data Creation Flow
1. Do not INSERT new rows unless adding custom server features
2. For Mystical Islands customization: UPDATE existing rows to set correct values
3. Always backup the table before bulk updates
4. Verify that `datatype` matches the actual format of `value`

## Example SQL Planning Notes
```sql
-- Example only. Verify setting names and values before applying.

-- Check current value
SELECT name, datatype, value FROM game_setting WHERE name = 'PLAYER_BAG_COUNT';

-- Update a setting
UPDATE game_setting SET value = '6' WHERE name = 'PLAYER_BAG_COUNT';

-- Insert a custom setting (only if adding new server features)
-- INSERT INTO game_setting (name, datatype, value, isactive)
-- VALUES ('MI_CUSTOM_SETTING', 'bool', 'true', 1);
```

## Mystical Islands Usage
Key settings to review and configure for Mystical Islands:
- **PLAYER_BAG_COUNT / PLAYER_DEFAULT_BAG_SIZE** — inventory layout for nautical adventurers
- **MOB_DEATH_EXP** — confirm XP-on-kill behavior
- **PLAYER_CORPSE_LOOT_DURATION / PLAYER_CORPSE_SAFE_LOOT_DURATION** — death/loot rules for island PvP zones
- Any currency-related settings
- Any island/instance population limits

Run `SELECT * FROM game_setting` on the demo database to audit the full list before migration.

## External Application Notes
- **Admin panels**: Could expose safe read-only view of server settings
- **Server monitoring dashboards**: Display current game mode configuration

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading. New settings may be added in 10.13 that do not exist in the 10.9 schema — do not delete unknown rows when upgrading.
