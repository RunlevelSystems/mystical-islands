# Abilities Plugin

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
The Abilities Plugin defines combat actions and spell behaviors, including costs, targeting rules, cooldowns, weapon/reagent requirements, effect application, combo chains, and trigger profiles.

## Source Links
- https://unity.wiki.atavismonline.com/project/abilities-plugin/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `abilities` | Core ability definitions and behavior settings | core + demo |
| `ability_effects` | Effects applied by ability power rows | core + demo |
| `ability_abilities` | Ability chaining/child ability execution | core + demo |
| `ability_combos` | Combo opportunities and follow-up ability links | core + demo |
| `abilities_coordeffects` | Coordinated effects attached to ability events | core + demo |
| `abilities_powerup_settings` | Power-up timing thresholds | core + demo |
| `abilities_triggers` | Trigger profiles attached to ability rows | core + demo |
| `abilities_triggers_profile` | Trigger profile definitions and filter rules | core + demo |
| `abilities_triggers_actions` | Actions executed by trigger profiles | core + demo |
| `effects` | Effect IDs referenced by ability effect rows | core + demo |
| `coordinated_effects` | Coordinated effect names referenced by ability rows | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `abilities` | `id`, `name`, `icon`, `icon2` | Ability identity/display | PK + UI fields | `ability_*` tables |
| `abilities` | `abilityType` | Ability behavior class | Validate against editor choices | Option choice tables |
| `abilities` | `skill` | Owning skill line | `-1` if standalone | `skills.id` |
| `abilities` | `passive` | Passive flag | 1 passive, 0 active ability | — |
| `abilities` | `activationCost`, `activationCostType` | Activation resource cost | Usually mana/stamina-like stat name | `stat.name` |
| `abilities` | `activationLength`, `attack_time`, `activationDelay` | Cast/attack timing | Seconds/float values | — |
| `abilities` | `maxRange`, `minRange`, `aoeRadius`, `aoeAngle`, `aoeType` | Targeting geometry | Range and AOE rules | — |
| `abilities` | `targetType`, `targetSubType`, `reqTarget`, `reqFacingTarget` | Target requirement policy | Editor targeting settings | Option choice tables |
| `abilities` | `globalCooldown`, `cooldown1Type`, `cooldown1Duration` | Cooldown system | Also check `weaponCooldown` | — |
| `abilities` | `weaponRequired`, `weaponMustBeDrawn`, `drawnWeaponBefore` | Weapon gating | Comma/text weapon types | Item/weapon profile tables |
| `abilities` | `reagentRequired`..`reagent3Consumed` | Item reagent requirements | Item IDs + consume flags | `item_templates.id` |
| `abilities` | `damageType` | Damage pipeline selector | Must match `damage_type.name` | `damage_type.name` |
| `abilities` | `toggle`, `channelling`, `channelling_cost`, `channelling_pulse_*` | Channel/toggle behavior | Pulse resource checks also exist | — |
| `abilities` | `coordEffect1event..coordEffect5` | Legacy coordinated effect slots | Also supported via `abilities_coordeffects` | `coordinated_effects` |
| `ability_effects` | `ability_power_id`, `effect`, `target`, `delay` | Effect execution by ability row | Target/delay and chance range | `abilities.id`, `effects.id` |
| `ability_abilities` | `ability_power_id`, `ability`, `target`, `delay` | Trigger child ability from parent | Ability chain action table | `abilities.id` |
| `ability_combos` | `ability_parent_id`, `ability_sub_id`, `chance_min/max`, `time` | Combo follow-up windows | UI and slot replacement flags included | `abilities.id` |
| `abilities_coordeffects` | `ability_power_id`, `coordEffectEvent`, `coordEffect` | Event-based visual/audio mapping | Demo uses activating/completed events | `abilities.id`, `coordinated_effects.name` |
| `abilities_powerup_settings` | `ability_id`, `thresholdMaxTime` | Power-up threshold timing | One ability can have multiple thresholds | `abilities.id` |
| `abilities_triggers_profile` | `id`, `event_type`, `tags`, `race`, `class`, `action_type` | Trigger profile filters and behavior | Chance range columns apply | `abilities_triggers`, `abilities_triggers_actions` |
| `abilities_triggers` | `ability_power_id`, `trigger_id` | Attach trigger profile to ability | Join table | `abilities.id`, `abilities_triggers_profile.id` |
| `abilities_triggers_actions` | `abilities_triggers_id`, `target`, `ability`, `effect`, `mod_v`, `mod_p` | Action payload from trigger execution | Ability/effect and value modifiers | `abilities_triggers.id`, `abilities.id`, `effects.id` |

## Relationships
- `skills` to `abilities` through `abilities.skill`.
- `abilities` to `effects` through `ability_effects.effect`.
- `abilities` to coordinated effects through `abilities_coordeffects` and `coordEffect*` columns.
- `abilities` to requirements via `weaponRequired`, reagent columns, and target-state fields.
- ability chains/combos through `ability_abilities` and `ability_combos`.
- trigger profiles through `abilities_triggers` + `abilities_triggers_profile` + `abilities_triggers_actions`.
- `abilities.damageType` participates in damage-type-to-stat mapping via `damage_type`.

## Data Creation Flow
1. Create required stats and damage types.
2. Create effects used by abilities.
3. Create coordinated effects used by ability visuals.
4. Create base ability rows.
5. Link effects to abilities in `ability_effects`.
6. Configure child ability calls and combos.
7. Add coordinated effect event mappings.
8. Add trigger profiles, link them, then define trigger actions.
9. Add skill-to-ability unlocks in `skill_ability_gain`.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO abilities (name, abilityType, activationCost, activationCostType, maxRange, cooldown1Duration, isactive)
VALUES ('Example Arcane Shot', 'Active', 20, 'mana', 25, 2.5, 1);
```

## Mystical Islands Usage
Abilities drive class combat kits, ship-board combat actions, and NPC tactical behavior. Ability data must be curated with strict dependencies to effects, damage types, and skill progression.

## External Application Notes
- spell/ability database
- combo chain visualizer
- cooldown and resource balancing dashboard
- admin combat editor

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
