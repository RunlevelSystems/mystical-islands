# Atavism 10.13 SQL Migration Notes

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose
Mystical Islands SQL documentation is being updated from Atavism 10.9-era SQL sources to Atavism 10.13 SQL sources so all future reference work and insert planning target the current schema.

## Source Files
Primary authoritative SQL sources:
- `docs/sql/10.13/core/`
- `docs/sql/10.13/demo/`

Comparison baseline used during migration:
- Previous repository SQL sources from `docs/sql/schema/*.sql` (10.9-era core schema) and `docs/sql/*.sql` (10.9-era demo dumps), captured from repository history before replacement.

## Summary of Changes

| Area | 10.9 Behavior | 10.13 Behavior | Action Needed |
|---|---|---|---|
| Source layout | Mixed source roots under `docs/sql/` and `docs/sql/schema/` | Versioned source roots under `docs/sql/10.13/core` and `docs/sql/10.13/demo` | Use only `docs/sql/10.13/*` as source of truth |
| Core schema size | 185 tables in prior core dumps | 212 tables in 10.13 core dumps | Update references and insert plans for added runtime/profile tables |
| Player runtime data model | Fewer normalized runtime player tables | New `player_*` table family for bags, skills, currencies, stats, pets, pvp | Validate module assumptions before inserting directly into runtime player tables |
| Stat/profile model | No `stat_profile`/`slots_profile` family in old dumps | Adds `stat_profile`, `stat_profile_stats`, `slots_profile`, `slots_in_profile` | Update references involving stat/slot profile linkage |
| Interactive object model | Smaller `interactive_object` schema | Additional requirement, icon, profile, level, despawn, and coord effect support | Revalidate `server-instance-objects` and build-object insert templates |
| Game settings metadata | Basic `game_setting` structure | Adds `category`, `description`, `sendtoclient` columns | Include metadata columns where required by editor/server behavior |
| Demo dataset | 108 insert-target tables | 117 insert-target tables; several new populated tables | Recheck seed-data assumptions and example-driven insert order |

## Table Changes

| Table | Change Type | Details | Impact |
|---|---|---|---|
| `interactive_object_coordeffects` | Added | New table in core and demo | Required for coordinated effects attached to interactive objects |
| `mod_audit_logs` | Added | New core table | May affect admin/audit workflows; usually system-managed |
| `pet_profile`, `pet_profile_level` | Added | New pet progression/profile tables | Pet-related inserts now have dedicated profile tables |
| `player_abilities`, `player_bag`, `player_bag_bank`, `player_bag_bank_slots`, `player_bag_equip`, `player_bag_equip_slots`, `player_bag_guild`, `player_bag_guild_slots`, `player_bag_slots`, `player_bags`, `player_currencies`, `player_faction`, `player_pets`, `player_pvp`, `player_skills`, `player_stats`, `player_stats_modifiers`, `player_stats_modifiers_percentage` | Added | New player runtime table family in core | Runtime/player persistence assumptions from older docs must be revalidated |
| `pvp_ranks_settings` | Added | New PVP rank settings table (core + demo rows) | Include when documenting rank/progression configuration |
| `slots_profile`, `slots_in_profile` | Added | New slot profile model tables (core + demo rows) | Item/equipment references should account for profile-based slot sets |
| `stat_profile`, `stat_profile_stats` | Added | New stat profile mapping tables (core + demo rows) | Character setup/stat references should include profile mappings |
| `abilities` | Modified | Added `abilitiescol`, `enterCombatState`, `pvp_enter` | Ability insert/update templates must include new optional behavior columns |
| `character_create_stats` | Modified | Added `sendToClient`, `serverPresent` | Character stat setup docs need these flags |
| `character_create_template` | Modified | Added `stat_profile_id` | Character templates can now reference stat profiles |
| `cooldowns` | Modified | `obj_oid` type changed (`int` → `bigint`) | OID handling should use bigint-safe values |
| `factions` | Modified | Added `canEnterGuild`, `color`, `icon`, `icon2` | Faction docs must include new presentation/permission fields |
| `game_setting` | Modified | Added `category`, `description`, `sendtoclient` | Game setting docs and inserts should include metadata fields |
| `interactive_object` | Modified | Added currency/item requirements, level bounds, icons, profileId, despawn/use-limit fields | Existing interactive object insert templates must be expanded |
| `mob_templates` | Modified | Added `class_id`, `gender_id`, `pet_count_stat`, `race_id`, `stat_profile_id` | NPC/mob setup references will need update in later module passes |
| `ranking_settings` | Modified | Added `distinction`, `param1`, `param2`, `sub_type` | Ranking configuration docs should include new grouping/detail fields |
| `region` | Modified | Added `pvpMode` | Region/event docs should include pvp mode behavior |
| `spawn_data` | Modified | Added `roamDelayMax`, `roamDelayMin`, `roamRollTimeEachTime` | Spawn behavior documentation should include new roam timing controls |
| `stat` | Modified | Added `id`, `max`, `serverPresent`, `stat_precision`; changed `sendToClient` type | Stat-related docs should validate display/server precision flags |
| `stat_link` | Modified | Added `pointsForChange`, `stat_id` | Stat linking/reward docs should include new linkage columns |
| `memory_data_stats` | Removed (demo rows) | Present in old demo inserts; absent in 10.13 demo inserts | Treat as deprecated/unseeded in 10.13 demo workflows |

## Column Changes

| Table | Column | Change | Impact |
|---|---|---|---|
| `cooldowns` | `obj_oid` | Type changed from `int` to `bigint` | Ensure bigint-safe object ID handling |
| `stat` | `sendToClient` | Type changed from `smallint` to `tinyint(1)` | Update validation/assumptions for client visibility flag |
| `character_create_template` | `stat_profile_id` | Added | Character setup can be profile-driven |
| `character_create_stats` | `sendToClient`, `serverPresent` | Added | Character stat initialization has explicit visibility/presence flags |
| `game_setting` | `category`, `description`, `sendtoclient` | Added | Settings now include metadata and client exposure controls |
| `interactive_object` | `currencyReq`, `currencyCountReq`, `currencyReqGet`, `itemReq`, `itemCountReq`, `itemReqGet`, `interactDistance`, `profileId`, `icon`, `icon2`, `minLevel`, `maxLevel`, `despawnDelay`, `despawnTime`, `useLimit`, `makeBusy` | Added | Object interaction and gating logic must include new requirement fields |
| `factions` | `canEnterGuild`, `color`, `icon`, `icon2` | Added | Faction UX and guild-entry behaviors now configurable in schema |
| `spawn_data` | `roamDelayMin`, `roamDelayMax`, `roamRollTimeEachTime` | Added | Spawn timing/roam behavior needs explicit values |
| `ranking_settings` | `distinction`, `param1`, `param2`, `sub_type` | Added | Ranking configuration is more granular |
| `abilities` | `abilitiescol`, `enterCombatState`, `pvp_enter` | Added | Ability behavior now includes combat/pvp entry flags |
| `stat_link` | `pointsForChange`, `stat_id` | Added | Stat links now map more directly to target stat IDs |

## Insert Generation Impact
- Future insert generation must target `docs/sql/10.13/core` for schema validation and `docs/sql/10.13/demo` for example row patterns.
- Demo insert coverage changed (new insert-target tables added; one old insert-target table removed), so relying on previous row-order assumptions is unsafe.
- Modules touching interactive objects, character setup, stats, settings, and factions must include new 10.13 columns or explicit defaults.
- Runtime player table family expansion means production insert plans should avoid writing system-managed runtime rows unless explicitly required.
- Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.

## Mystical Islands Action Items
- Update all SQL reference docs to point to `docs/sql/10.13/core` and `docs/sql/10.13/demo` only.
- Refresh module docs that reference `character_create_*`, `game_setting`, `interactive_object`, `factions`, `stat`, and `stat_link`.
- Add follow-up module passes for combat, mobs/NPCs, quests, and merchants using 10.13 schema files.
- Revalidate all future insert templates against 10.13 schema before implementation.
