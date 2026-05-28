# Effects Plugin

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
The Effects Plugin defines buff/debuff/heal/damage/stat-modification behaviors and trigger logic used by abilities and passive systems.

## Source Links
- https://unity.wiki.atavismonline.com/project/effects-plugin/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `effects` | Core effect definitions and parameter payloads | core + demo |
| `effects_triggers` | Trigger profiles for effect-driven reactions | core + demo |
| `effects_triggers_actions` | Trigger actions launched by effect trigger profiles | core + demo |
| `ability_effects` | Abilities that apply these effects | core + demo |
| `abilities` | Ability rows that consume effect IDs | core + demo |
| `coordinated_effects` | Optional pulse coordinated visuals | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `effects` | `id`, `name`, `displayName`, `icon`, `icon2` | Effect identity/display | PK + UI fields | `ability_effects.effect`, trigger action tables |
| `effects` | `effectMainType`, `effectType` | Effect classification | Must match editor effect types | Option choice tables |
| `effects` | `isBuff`, `passive` | Buff/passive behavior flags | 1/0 flags | — |
| `effects` | `stackLimit`, `stackTime`, `allowMultiple` | Stacking behavior | Controls duplicate handling | — |
| `effects` | `duration`, `pulseCount` | Lifetime and pulse count | Pulse-based effects use both | — |
| `effects` | `skillType`, `skillLevelMod` | Skill scaling controls | Verify skill-type values in editor | `skills` |
| `effects` | `bonusEffectReq`, `bonusEffectReqConsumed`, `bonusEffect`, `removeBonusWhenEffectRemoved` | Conditional effect linking | Effect dependency chain | `effects.id` |
| `effects` | `pulseCoordEffect` | Coordinated effect played on pulse | Uses coordinated effect name/id convention | `coordinated_effects` |
| `effects` | `intValue1..5`, `floatValue1..5`, `stringValue1..5`, `boolValue1..5` | Generic effect payload fields | Meaning depends on selected effect type | stat/ability/effect tables |
| `effects` | `chance`, `group_tags`, interruption columns | Chance/tag/interruption behavior | Includes max/all interruption controls | — |
| `effects_triggers` | `id`, `name`, `event_type`, `tags`, `race`, `class`, `action_type` | Trigger profile identity and filters | Chance range columns included | `effects_triggers_actions` |
| `effects_triggers_actions` | `effects_triggers_id` | Owning trigger profile | FK-style relation | `effects_triggers.id` |
| `effects_triggers_actions` | `target`, `ability`, `effect` | Trigger action target and payload | Can execute ability/effect | `abilities.id`, `effects.id` |
| `effects_triggers_actions` | `mod_v`, `mod_p`, `chance_min`, `chance_max` | Value/percent modifiers and chance bounds | Runtime scaling controls | — |
| `ability_effects` | `ability_power_id`, `effect`, `target`, `delay` | Ability-to-effect application mapping | Core effect usage path | `abilities.id`, `effects.id` |

## Relationships
- `abilities` apply effects through `ability_effects`.
- effects can reference other effects through bonus/conditional fields.
- effects can trigger additional actions through `effects_triggers` + `effects_triggers_actions`.
- pulse coordinated visuals can link effects to coordinated effect assets.
- effect payload fields map to stat/ability/effect targets depending on effect type.

## Data Creation Flow
1. Create required stats and damage types first.
2. Create coordinated effects required by pulse visuals.
3. Create effect rows with matching effect type payload values.
4. Create effect trigger profiles.
5. Create trigger actions per profile.
6. Create abilities and map effects via `ability_effects`.
7. Validate stack, duration, and interruption interactions.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO effects (name, effectMainType, effectType, isBuff, duration, pulseCount, chance, isactive)
VALUES ('Example Burning Dot', 'Periodic', 'Damage', 0, 12, 6, 100, 1);
```

## Mystical Islands Usage
Effects handle buffs, debuffs, damage-over-time, heals, crowd control, and passive combat modifiers across classes, items, and encounter scripts.

## External Application Notes
- combat balancing dashboard
- effect dependency map
- damage/heal simulation tool
- admin effect editor

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
