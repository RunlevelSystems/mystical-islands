# Damage Plugin

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
The Damage Plugin maps each damage type to the stat fields used for resistance, power, accuracy, evasion, and critical formulas. Abilities and effects then consume those mappings.

## Source Links
- https://unity.wiki.atavismonline.com/project/damage-plugin/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `damage_type` | Damage formula stat mapping per damage category | core + demo |
| `abilities` | Ability damage type assignment | core + demo |
| `effects` | Effect payload values used for damage/restoration behaviors | core + demo |
| `stat` | Stat names consumed by damage mappings | core + demo |
| `stat_thresholds` | Threshold functions used by scaling formulas | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `damage_type` | `name` | Damage type key | PK-like unique key in schema | `abilities.damageType`, item/weapon references |
| `damage_type` | `resistance_stat` | Stat used to reduce incoming damage | Must match stat name | `stat.name` |
| `damage_type` | `power_stat` | Stat used for outgoing damage power | Must match stat name | `stat.name` |
| `damage_type` | `accuracy_stat` | Stat used for hit chance | Must match stat name | `stat.name` |
| `damage_type` | `evasion_stat` | Stat used for dodge/evasion checks | Must match stat name | `stat.name` |
| `damage_type` | `critic_chance_stat` | Stat used for critical chance | Must match stat name | `stat.name` |
| `damage_type` | `critic_power_stat` | Stat used for critical multiplier/power | Must match stat name | `stat.name` |
| `abilities` | `damageType` | Damage type used by ability | Must exist in damage_type table | `damage_type.name` |
| `abilities` | `miss_chance` | Extra miss chance modifier | Works with accuracy/evasion logic | `damage_type` + combat formulas |
| `abilities` | `interruption_chance` | Interrupt behavior chance | Can affect hit outcome flow | combat runtime |
| `effects` | `effectMainType`, `effectType` | Damage or restoration behavior class | Determines interpretation of value payload fields | effect runtime |
| `effects` | `intValue*`, `floatValue*`, `stringValue*` | Damage/heal payload values | Exact use depends on effect type | stat/ability/damage formula systems |
| `stat_thresholds` | `stat_function`, `threshold`, `num_per_point` | Progressive scaling breaks used by formulas | Common for crit/resistance scaling | `stat.stat_function` |

## Relationships
- `damage_type` defines which stats feed each damage pipeline.
- `abilities.damageType` selects a `damage_type` row for runtime formulas.
- mapped stats in `damage_type` must exist in `stat.name`.
- threshold scaling can alter effective formula output through `stat_thresholds` + stat function links.
- effect payload values ultimately use the same stat and damage systems at runtime.

## Data Creation Flow
1. Create/verify all combat stats used by formulas.
2. Create stat threshold rows for targeted stat functions.
3. Create damage type rows mapping all required stats.
4. Create effects with damage/restoration payloads.
5. Create abilities and set `damageType`.
6. Test hit chance, crit, and mitigation behaviors.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO damage_type (name, resistance_stat, power_stat, accuracy_stat, evasion_stat, critic_chance_stat, critic_power_stat, isactive)
VALUES ('storm', 'storm_resistance', 'storm_power', 'storm_accuracy', 'storm_evasion', 'storm_crit', 'storm_crit_power', 1);
```

## Mystical Islands Usage
Damage types support physical and magical schools plus future island-specific schools (storm, tide, volcanic, etc.) while preserving balanced stat interactions.

## External Application Notes
- damage calculator
- PvP balance analyzer
- crit/resistance tuning dashboard
- admin damage type editor

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
