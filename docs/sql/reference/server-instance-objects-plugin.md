# Instance Objects Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose
The Instance Objects Plugin places interactive world objects on instances — things like doors, levers, chests, zone triggers, and other non-mob interactables. Each object has a type, interaction behavior, optional quest requirements, and coordinate effects. Unlike `spawn_data` which handles mobs, `interactive_object` handles static interactive props.

## Source Links
- https://unity.wiki.atavismonline.com/project/instance-objects-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/10.13/demo/world_content.sql (demo data — world_content database)
- /docs/sql/10.13/core/world_content.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `interactive_object` | Places interactive world objects on instances | world_content DB |
| `interactive_object_coordeffects` | Optional coordinated effects linked to interactive objects | world_content DB |

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
| `interactive_object` | `currencyReq` / `currencyCountReq` / `currencyReqGet` | Currency gating for interaction | Added in 10.13; verify behavior in editor | `currencies` |
| `interactive_object` | `itemReq` / `itemCountReq` / `itemReqGet` | Item gating for interaction | Added in 10.13 | `item_templates` |
| `interactive_object` | `minLevel` / `maxLevel` | Player level gate | Added in 10.13 | — |
| `interactive_object` | `profileId` | Interaction profile linkage | Added in 10.13; mapping uncertain | — |
| `interactive_object` | `interactDistance` | Distance check before interaction | Added in 10.13 | — |
| `interactive_object` | `icon` / `icon2` | UI icon and encoded icon | Added in 10.13 | — |
| `interactive_object` | `despawnDelay` / `despawnTime` | Despawn timing controls | Added in 10.13 | — |
| `interactive_object` | `useLimit` / `makeBusy` | Usage count and busy-state controls | Added in 10.13 | — |
| `interactive_object` | `respawnTime` | Respawn time in seconds | NULL = no respawn | — |
| `interactive_object` | `isactive` | Active flag | 1 = active | — |
| `interactive_object_coordeffects` | `gameObject` / `coordEffect*` | Per-object coordinated effect mappings | New 10.13 support table | `interactive_object` |

## Relationships
- `interactive_object.instance` → `instance_template.id`
- `interactive_object.questReqID` → `quests.id`
- `interactive_object.interactionType` → `editor_option_choice` (Interaction Type option)
- `interactive_object.interactionID` → target table depends on `interactionType` (e.g. quest, dialogue, merchant)

> **Mapping uncertain.** The exact set of valid `interactionType` values and what `interactionID` references for each type is not visible in the schema alone. Verify against editor behavior and wiki before inserting.
>
> Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.

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
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.

Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
