# Instance Objects Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify table names, column names, IDs, foreign key relationships, option values, and Atavism version compatibility.

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/instance-objects-plugin/ was unavailable at time of writing. All information is derived from SQL schema files. Verify against the wiki before generating production SQL.

## Purpose
The Instance Objects Plugin places interactive world objects on instances — things like doors, levers, chests, zone triggers, and other non-mob interactables. Each object has a type, interaction behavior, optional quest requirements, and coordinate effects. Unlike `spawn_data` which handles mobs, `interactive_object` handles static interactive props.

## Source Links
- https://unity.wiki.atavismonline.com/project/instance-objects-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/schema/world_content.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `interactive_object` | Places interactive world objects on instances | world_content DB |

Also references: `instance_template` (admin DB) — see instances plugin doc.

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `interactive_object` | `id` | Auto-increment PK | — | — |
| `interactive_object` | `name` | Object name | Max 45 chars | — |
| `interactive_object` | `gameObject` | Unity prefab path | Max 256 chars | — |
| `interactive_object` | `instance` | FK → `instance_template.id` | -1 = no instance | `instance_template` |
| `interactive_object` | `locX/Y/Z` | World position | Float | — |
| `interactive_object` | `interactionType` | Type of interaction | Max 45 chars; verify valid values in editor | `editor_option_choice` |
| `interactive_object` | `interactionID` | ID of the target interaction | -1 = none. Meaning depends on `interactionType` | varies |
| `interactive_object` | `interactionData1/2/3` | Extra interaction parameters | Max 45 chars each | — |
| `interactive_object` | `questReqID` | Quest requirement | FK → `quests.id`; -1 = no requirement | `quests` |
| `interactive_object` | `interactTimeReq` | Time to complete interaction (seconds) | Float; 0 = instant | — |
| `interactive_object` | `coordEffect` | Visual/audio effect on interact | Max 128 chars | — |
| `interactive_object` | `respawnTime` | Respawn time in seconds | NULL = no respawn | — |
| `interactive_object` | `isactive` | Active flag | 1 = active | — |

## Relationships
- `interactive_object.instance` → `instance_template.id`
- `interactive_object.questReqID` → `quests.id`
- `interactive_object.interactionType` → `editor_option_choice` (Interaction Type option)
- `interactive_object.interactionID` → target table depends on `interactionType` (e.g. quest, dialogue, merchant)

> **Mapping uncertain.** The exact set of valid `interactionType` values and what `interactionID` references for each type is not visible in the schema alone. Verify against editor behavior and wiki before inserting.

## Data Creation Flow
1. Ensure instance exists in `instance_template`
2. Ensure any referenced quest exists in `quests`
3. INSERT `interactive_object` row with position and interaction config

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs and interaction types before inserting.
INSERT INTO `interactive_object`
  (name, gameObject, instance, locX, locY, locZ, interactionType, interactionID,
   questReqID, interactTimeReq, coordEffect, respawnTime, isactive)
VALUES
  ('Ancient Rune Stone', 'Props/RuneStone01', 3, 120.5, 10.0, -45.2,
   'Dialogue', 7, -1, 2.0, 'FX/RuneGlow', NULL, 1);
```

## Mystical Islands Usage
Instance objects are key for Mystical Islands' environmental storytelling:
- **Quest triggers**: Interact to start or advance quests
- **Island lore objects**: Ancient ruins, shipwrecks with readable text
- **Dungeon mechanisms**: Levers, locked doors, pressure plates
- **Chest spawns**: Treasure chests with respawn timers
- **Portal activators**: Trigger zone transitions

## External Application Notes
- **Map editors / level design tools**: Display placed interactive objects on island maps
- **Quest editors**: Show which objects trigger or complete quest steps

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.
