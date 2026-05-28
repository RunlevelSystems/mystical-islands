# Bonus Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify table names, column names, IDs, foreign key relationships, option values, and Atavism version compatibility.

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/bonus-plugin/ was unavailable at time of writing. All information is derived from SQL schema files. Verify against the wiki before generating production SQL.

## Purpose
The Bonus Plugin defines reusable bonus types (`bonuses_settings`) that can be applied to characters at runtime via `bonuses`. Bonuses can be granted by achievements, VIP levels, global events, items, and other systems. Each bonus has a `code` (the stat or attribute it modifies), a flat `value`, and a percent `valuep`.

## Source Links
- https://unity.wiki.atavismonline.com/project/bonus-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/master.sql (demo data — master database)
- /docs/sql/schema/world_content.sql (empty schema)
- /docs/sql/schema/master.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `bonuses_settings` | Defines reusable bonus type definitions | world_content DB |
| `bonuses` | Runtime bonuses currently applied to characters | master DB |

## Column Reference

### bonuses_settings (world_content DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `bonuses_settings` | `id` | Auto-increment PK | Referenced by `achievement_bonuses`, `global_events_bonuses`, `vip_level_bonuses` | `achievement_bonuses`, `global_events_bonuses`, `vip_level_bonuses` |
| `bonuses_settings` | `name` | Human-readable bonus name | Max 65 chars | — |
| `bonuses_settings` | `code` | The stat/attribute code to modify | Max 20 chars. Must match a stat name or recognized code | `stat` |
| `bonuses_settings` | `param` | Additional parameter | Max 100 chars; usage varies by code type | — |
| `bonuses_settings` | `isactive` | Active flag | 1 = active | — |

### bonuses (master DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `bonuses` | `id` | Auto-increment PK | — | — |
| `bonuses` | `character_oid` | OID of the character receiving the bonus | BigInt FK → objstore.obj_id | `objstore` |
| `bonuses` | `object` | Source system granting the bonus | Max 60 chars. Examples: "achievement", "vip", "global_event" | — |
| `bonuses` | `code` | Stat/attribute code being modified | Must match `bonuses_settings.code` | `bonuses_settings` |
| `bonuses` | `value` | Flat value bonus | Integer | — |
| `bonuses` | `valuep` | Percent value bonus | Float | — |

## Relationships
- `bonuses_settings.id` → `achievement_bonuses.bonus_settings_id`
- `bonuses_settings.id` → `global_events_bonuses.bonus_settings_id`
- `bonuses_settings.id` → `vip_level_bonuses.bonus_settings_id`
- `bonuses.character_oid` → `objstore.obj_id` (atavism DB)
- `bonuses_settings.code` should match a stat name in `stat` table

## Data Creation Flow
1. Define bonus types in `bonuses_settings` (world_content)
2. Link bonus IDs to achievement/event/VIP level rows as needed
3. Runtime: server writes to `bonuses` (master) when a bonus is granted to a character

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Define a new bonus type
INSERT INTO `bonuses_settings` (name, code, param, isactive)
VALUES ('Seafarer XP Boost', 'xp', '', 1);

-- Link to an achievement (replace IDs)
INSERT INTO `achievement_bonuses` (achievement_id, bonus_settings_id, value, valuep)
VALUES (5, 24, 0, 10.0);
```

## Mystical Islands Usage
Bonuses will drive Mystical Islands progression rewards:
- Achievement rewards: XP boosts, stat bonuses for island exploration
- VIP bonuses: Premium account perks
- Global event bonuses: Seasonal event boosts (e.g. "Festival of Tides" XP weekend)
- Guild bonuses: Apply bonuses to guild members via `bonuses` table

## External Application Notes
- **Achievement viewer**: Show active bonuses from achievements on a player profile page
- **Event pages**: Display active global event bonuses
- **VIP tier pages**: Show bonuses per VIP level

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.
