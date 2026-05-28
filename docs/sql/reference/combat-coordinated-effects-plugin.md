# Coordinated Effects Plugin

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
The Coordinated Effects Plugin links combat/system events to visual/audio prefabs so abilities, items, and interactions present synchronized feedback in game.

## Source Links
- https://unity.wiki.atavismonline.com/project/coordinated-effects-plugin/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `coordinated_effects` | Master coordinated effect definitions | core + demo |
| `abilities_coordeffects` | Ability event to coordinated effect mappings | core + demo |
| `abilities` | Legacy coordinated effect columns and power-up coordinated effect field | core + demo |
| `interactive_object_coordeffects` | Coordinated effect order for interactive objects | core + demo |
| `item_templates` | Draw/holster coordinated effect references | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `coordinated_effects` | `id` | Coordinated effect ID | PK | Referenced by gameplay systems |
| `coordinated_effects` | `name` | Coordinated effect name | Common lookup key in mappings | `abilities_coordeffects.coordEffect`, `abilities.powerUpCoordEffect` |
| `coordinated_effects` | `prefab` | Prefab asset path | Visual/audio payload | Unity resources |
| `abilities_coordeffects` | `ability_power_id` | Ability receiving coordinated event | FK-style relation | `abilities.id` |
| `abilities_coordeffects` | `coordEffectEvent` | Ability event hook name | Demo uses values like `activating`, `completed` | Editor event options |
| `abilities_coordeffects` | `coordEffect` | Coordinated effect name | Must match configured effect entry | `coordinated_effects.name` |
| `abilities` | `coordEffect1event..coordEffect5event` | Legacy event columns | Older inline mapping path | `coordinated_effects` |
| `abilities` | `coordEffect1..coordEffect5` | Legacy coordinated effect refs | Prefer consistent naming with master table | `coordinated_effects.name` |
| `abilities` | `powerUpCoordEffect` | Coordinated effect for power-up state | Used with power-up settings | `coordinated_effects.name` |
| `item_templates` | `drawWeaponEffect1..10` | Draw weapon effect refs | Item weapon presentation | `coordinated_effects.name` |
| `item_templates` | `holsteringWeaponEffect1..10` | Holster weapon effect refs | Item weapon presentation | `coordinated_effects.name` |
| `interactive_object_coordeffects` | `objId`, `coordEffect`, `order` | Interactive object event effects | Non-combat object integration path | `coordinated_effects.name` |

## Relationships
- `coordinated_effects` is the reusable visual/audio library.
- Abilities link to coordinated effects through `abilities_coordeffects` and legacy `abilities.coordEffect*` columns.
- Ability power-up behavior can use `abilities.powerUpCoordEffect`.
- Item draw/sheath events can reference coordinated effects.
- Interactive objects can share the same coordinated effect records.

## Data Creation Flow
1. Create coordinated effect master rows with prefab paths.
2. Create or update abilities.
3. Attach event-based coordinated effects in `abilities_coordeffects`.
4. Populate legacy `abilities.coordEffect*` fields only if required by workflow.
5. Attach coordinated effects to item draw/holster behavior if needed.
6. Validate event timing in editor/runtime.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO coordinated_effects (name, prefab, isactive)
VALUES ('Example Sword Slash CEffect', 'Assets/Resources/Content/CoordinatedEffects/Combat/Slash.prefab', 1);
```

## Mystical Islands Usage
Coordinated effects provide weapon trails, spell impacts, cast indicators, and combat readability for players during island exploration and PvP.

## External Application Notes
- spell visual catalog
- FX timing review tools
- admin coordinated effect mapper
- combat presentation QA checklist automation

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
