# Stat Thresholds

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
Stat Thresholds define diminishing/increasing return breakpoints for stat functions. They control how much effective output each additional stat point contributes beyond configured thresholds.

## Source Links
- https://unity.wiki.atavismonline.com/project/stat-thresholds/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `stat_thresholds` | Threshold definitions per stat function | core + demo |
| `stat` | Provides stat function names used by thresholds | core + demo |
| `damage_type` | Consumes stats whose functions may be threshold-scaled | core + demo |
| `abilities` | Uses damage/stat outcomes affected by threshold logic | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `stat_thresholds` | `stat_function` | Function family to scale | Matches `stat.stat_function` text | `stat.stat_function` |
| `stat_thresholds` | `threshold` | Breakpoint value | Stat amount where scaling step changes | combat formula engine |
| `stat_thresholds` | `num_per_point` | Points required per effective unit after threshold | Higher values = stronger diminishing returns | combat formula engine |
| `stat` | `stat_function` | Function classification for each stat | Link key into threshold table | `stat_thresholds.stat_function` |
| `stat` | `name` | Concrete stat name | Stat participates in formulas using its function group | `damage_type` fields, skills, effects |
| `damage_type` | `resistance_stat`, `power_stat`, `accuracy_stat`, `evasion_stat`, `critic_*` | Formula slots impacted by threshold-scaled stats | Each should resolve to a stat row | `stat.name` |
| `abilities` | `damageType` | Chooses formula family through damage type | Indirect threshold influence path | `damage_type.name` |

## Relationships
- `stat_thresholds.stat_function` must match values used in `stat.stat_function`.
- stats selected by `damage_type` participate in combat formulas where threshold scaling can apply.
- abilities inherit threshold behavior through their selected `damageType` and resulting stat mappings.
- threshold tuning therefore affects crit scaling, resistance scaling, hit scaling, and damage scaling.

## Data Creation Flow
1. Define/verify stat rows and stat functions.
2. Add threshold rows ordered by increasing threshold value per function.
3. Map damage types to the relevant stats.
4. Test ability damage/heal and crit outcomes across low/high stat values.
5. Adjust `num_per_point` for desired diminishing return curves.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO stat_thresholds (stat_function, threshold, num_per_point)
VALUES ('Critic Chance', 500, 15);
```

## Mystical Islands Usage
Thresholds will be used to keep late-game stat scaling stable and prevent runaway crit or resistance stacking in PvE and PvP.

## External Application Notes
- player build calculator
- stat curve visualizer
- combat tuning worksheet
- admin threshold editor

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
