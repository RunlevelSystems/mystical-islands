# Atavism SQL Reference Library

This folder maps official Atavism wiki documentation to the actual SQL schema and demo data, so developers and AI tools can later generate safe Mystical Islands SQL inserts.

Each file in this library documents one Atavism plugin or system, covering:
- The SQL tables and columns involved
- How those tables relate to each other
- The correct order for inserting data
- How the system will be used in Mystical Islands
- Notes on external application support (admin panels, web tools, etc.)
- Atavism 10.9 → 10.13 upgrade notes

All documentation is derived from:
- `/docs/sql/world_content.sql` — demo data (world_content database)
- `/docs/sql/atavism.sql` — demo data (atavism database)
- `/docs/sql/admin.sql` — demo data (admin database)
- `/docs/sql/master.sql` — demo data (master database)
- `/docs/sql/schema/world_content.sql` — empty schema (world_content database)
- `/docs/sql/schema/atavism.sql` — empty schema (atavism database)
- `/docs/sql/schema/admin.sql` — empty schema (admin database)
- `/docs/sql/schema/master.sql` — empty schema (master database)

> **Wiki Note:** The official Atavism wiki at `unity.wiki.atavismonline.com` was unavailable during this documentation pass. All table/column information is verified from the SQL files directly. Cross-check each file against the wiki before generating production SQL inserts.

---

## Server Module

| File | Plugin | Description |
|---|---|---|
| [server-option-choices-plugin.md](server-option-choices-plugin.md) | Option Choices | Central registry of dropdown option types (Item Type, Race, Class, Gender, etc.) and their valid choices. Referenced by almost every other plugin. |
| [server-game-settings-plugin.md](server-game-settings-plugin.md) | Game Settings | Global server-wide key/value configuration (inventory sizes, combat rules, death penalties, economy settings). ~199 settings in demo data. |
| [server-instances-plugin.md](server-instances-plugin.md) | Instances | Island/world instance definitions. Every explorable island in Mystical Islands is an `instance_template` row. Controls access, population limits, water height, and spawn placement. |
| [server-accounts-plugin.md](server-accounts-plugin.md) | Accounts | Player login accounts, linked characters, coin balances, shop purchases, and per-account settings. Split across `master` and `admin` databases. |
| [server-task-plugin.md](server-task-plugin.md) | Task | Named server-side task definitions. Minimal schema — full behavior depends on server scripting. Used for scheduled triggers and event hooks. |
| [server-resource-nodes.md](server-resource-nodes.md) | Resource Nodes | Harvestable world objects (ore, herbs, wood, fishing spots). Full pipeline: profile → sub-profile → drop table → template → spawn placement. |
| [server-bonus-plugin.md](server-bonus-plugin.md) | Bonus | Reusable bonus type definitions and runtime character bonus tracking. Used by achievements, VIP levels, global events, and items. |
| [server-achievements-plugin.md](server-achievements-plugin.md) | Achievements | Player milestone tracking. Categories, criteria (event triggers), stat and bonus rewards, and per-player progress data. Note: runtime table is `achivement_data` (typo — missing 'e'). |
| [server-instance-objects-plugin.md](server-instance-objects-plugin.md) | Instance Objects | Interactive world objects placed on instances (doors, levers, chests, lore objects, zone triggers). Separate from mob spawns. |
| [server-guilds-plugin.md](server-guilds-plugin.md) | Guilds | Player organizations with ranks, permissions, warehouse, and a leveling system driven by item donations. |
| [server-global-events.md](server-global-events.md) | Global Events | Two systems: (1) named event type registry used by achievements/scripts, and (2) scheduled timed server-wide events with bonus rewards (seasonal events, XP weekends). |

---

## Character Module

| File | Plugin | Description |
|---|---|---|
| [character-level-xp-plugin.md](character-level-xp-plugin.md) | Level / XP | XP profiles, per-level XP requirements, level-up reward templates, stat definitions, and VIP tier bonuses. |
| [character-player-character-setup-plugin.md](character-player-character-setup-plugin.md) | Player Character Setup | Character creation templates: one row per race+class combination. Defines spawn location, starting items, skills, stats, gender models, and respawn point. |

---

## Future Modules

The following modules will be documented in subsequent passes.

### Combat Module
- Abilities, effects, damage types, weapon actions
- References: `abilities`, `effects`, `damage_type`, `weapon_action_settings`, `stat`, `stat_link`, `stat_thresholds`

### Items Module
- Item templates, item slots, item quality, enchanting, sockets, item sets
- References: `item_templates`, `item_templates_options`, `item_slots`, `item_quality`, `item_enchant_profile`, `item_set_profile`

### Mob / NPC Module
- Mob templates, behavior profiles, stats, loot tables, display data, spawn data
- References: `mob_templates`, `mob_behaviors`, `mob_behavior_profile`, `mob_stat`, `mob_loot`, `mob_display`, `spawn_data`, `loot_tables`, `loot_table_items`

### Quest Module
- Quest definitions, objectives, requirements, rewards
- References: `quests`, `quest_objectives`, `quest_items`, `quest_requirement`

### Merchant Module
- Merchant tables and items for NPC shops and guild merchants
- References: `merchant_tables`, `merchant_item`

### Build / Claim Module
- Player claims, build objects, grids, stage progression
- References: `claim_profile`, `build_object_template`, `build_object_stage`, `building_grids`
