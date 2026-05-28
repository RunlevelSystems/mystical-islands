# Stats Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation
- future admin/player tools

This file is based on:
- Atavism 10.13 SQL core schema
- Atavism 10.13 demo SQL rows
- official Atavism wiki documentation

Before generating SQL:
- verify target database version is Atavism 10.13
- verify table names
- verify column names
- verify IDs
- verify option choices
- verify foreign key-style relationships
- verify whether the database was created from core schema or demo schema

## Purpose
The Stats Plugin defines all combat and progression stats, their calculation functions, growth rules, links/conversions, and reusable stat profiles for players and mobs.

## Source Links
- https://unity.wiki.atavismonline.com/project/stats-plugin/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `stat` | Master stat definitions and behavior settings | core + demo |
| `stat_link` | Converts one stat into another using point conversion settings | core + demo |
| `stat_profile` | Named stat profile headers | core + demo |
| `stat_profile_stats` | Per-stat values inside each profile | core + demo |
| `character_create_stats` | Starting player stat values on character templates | core + demo |
| `mob_stat` | Mob template stat values | core + demo |
| `damage_type` | Uses stat names for resistance/power/accuracy/evasion/crit mappings | core + demo |
| `skills` | Uses stat names for skill-based stat progression | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `stat` | `id`, `name` | Stat identity | `name` is the key used throughout combat tables | many tables reference `stat.name` |
| `stat` | `type`, `stat_function` | Stat type and function group | Function text is used by thresholds/formulas | `stat_thresholds.stat_function` |
| `stat` | `mob_base`, `mob_level_increase`, `mob_level_percent_increase` | Mob progression defaults | Baseline + scaling values | `mob_stat`, mob formulas |
| `stat` | `min`, `max`, `maxstat`, `canExceedMax` | Min/max and cap behavior | `maxstat` points to another stat name | `stat.name` |
| `stat` | `shiftTarget`, `shiftValue`, `shiftReverseValue`, `shiftInterval`, `isShiftPercent` | Shift/regen/degeneration mechanics | Supports periodic stat shifts | `stat.name` |
| `stat` | `onMaxHit`, `onMinHit`, `shiftReq*` columns | Boundary and conditional behavior | Requires editor validation | state/effect systems |
| `stat` | `startPercent`, `deathResetPercent`, `releaseResetPercent` | Spawn/death reset handling | Vital for vitality stat behavior | character runtime |
| `stat` | `sendToClient`, `serverPresent`, `stat_precision` | Replication and precision settings | 10.13 schema includes precision/server flags | client/runtime systems |
| `stat` | `onThreshold*`, `threshold*` | Threshold trigger fields | Works with threshold functions | `stat_thresholds` |
| `stat_link` | `stat`, `statTo`, `pointsForChange`, `changePerPoint` | Conversion from one stat to another | Used for derived stat gains | `stat.name` |
| `stat_profile` | `id`, `name` | Stat profile identity | Reusable profile header | `stat_profile_stats.profile_id` |
| `stat_profile_stats` | `profile_id`, `stat_id`, `value` | Stat values within profile | Base value assignment | `stat_profile.id`, `stat.id` |
| `stat_profile_stats` | `level_increase`, `level_percent_increase` | Level scaling in profile | Flat + percent growth | progression systems |
| `stat_profile_stats` | `send_to_client`, `serverPresent`, `override_values` | Profile-level stat flags | Can override default stat behavior | runtime/client systems |
| `character_create_stats` | `character_create_id`, `stat`, `value` | New character base stats | Character template defaults | `character_create_template.id`, `stat.name` |
| `character_create_stats` | `levelIncrease`, `levelPercentIncrease` | Per-level growth by character template | Template-specific scaling | — |
| `mob_stat` | `mobTemplate`, `stat`, `value` | Per-mob stat value overrides | Monster balance data | `mob_templates.id`, `stat.name` |

## Relationships
- `stat` is the central registry used by skills, effects, damage, and character templates.
- `stat_link` maps source stats to destination stats for derived values.
- `stat_profile` + `stat_profile_stats` package reusable stat sets.
- `character_create_stats` and `mob_stat` consume stat names for runtime entities.
- `damage_type` maps combat formula slots directly to stat names.
- `stat.stat_function` names connect to `stat_thresholds.stat_function` rows.

## Data Creation Flow
1. Create base stat rows.
2. Configure stat caps, shift rules, and reset behavior.
3. Create stat links for derived conversions.
4. Create stat profiles and profile stat entries.
5. Configure character template stats.
6. Configure mob stat values.
7. Connect damage types and skills to finalized stat names.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO stat (name, type, stat_function, min, max, sendToClient, serverPresent, isactive)
VALUES ('seafaring_power', 0, 'Damage Power', 0, 9999, 1, 1, 1);
```

## Mystical Islands Usage
Stats define core combat identity (power, resistance, crit, vitality, speed) and progression scaling across classes, mobs, ships, and itemization.

## External Application Notes
- player build calculator
- combat balancing dashboard
- stat profile editor
- mob tuning assistant

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
