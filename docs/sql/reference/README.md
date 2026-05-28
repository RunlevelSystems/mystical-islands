# Atavism SQL Reference Library

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

Current target version:
Atavism 10.13

Primary SQL sources:
- `docs/sql/10.13/core/`
- `docs/sql/10.13/demo/`

Core files are the clean schema reference.
Demo files show example data rows.

These reference docs are used by humans, GitHub Copilot, and ChatGPT.
Future SQL inserts for Mystical Islands must target Atavism 10.13.

- [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md)

---

## Server Module

| File | Plugin | Description |
|---|---|---|
| [server-option-choices-plugin.md](server-option-choices-plugin.md) | Option Choices | Central registry of dropdown option types (Item Type, Race, Class, Gender, etc.) and their valid choices. Referenced by almost every other plugin. |
| [server-game-settings-plugin.md](server-game-settings-plugin.md) | Game Settings | Global server-wide key/value configuration (inventory sizes, combat rules, death penalties, economy settings). |
| [server-instances-plugin.md](server-instances-plugin.md) | Instances | Island/world instance definitions. Every explorable island in Mystical Islands is an `instance_template` row. |
| [server-accounts-plugin.md](server-accounts-plugin.md) | Accounts | Player login accounts, linked characters, coin balances, shop purchases, and per-account settings. |
| [server-task-plugin.md](server-task-plugin.md) | Task | Named server-side task definitions used for scheduled triggers and event hooks. |
| [server-resource-nodes.md](server-resource-nodes.md) | Resource Nodes | Harvestable world objects (ore, herbs, wood, fishing spots). |
| [server-bonus-plugin.md](server-bonus-plugin.md) | Bonus | Bonus type definitions and runtime character bonus tracking. |
| [server-achievements-plugin.md](server-achievements-plugin.md) | Achievements | Categories, criteria/event triggers, rewards, and per-player progress data. |
| [server-instance-objects-plugin.md](server-instance-objects-plugin.md) | Instance Objects | Interactive world objects placed on instances (doors, levers, chests, triggers). |
| [server-guilds-plugin.md](server-guilds-plugin.md) | Guilds | Guild organizations, ranks, permissions, warehouse, and leveling data. |
| [server-global-events.md](server-global-events.md) | Global Events | Event type registry and scheduled server-wide events with rewards. |

## Character Module

| File | Plugin | Description |
|---|---|---|
| [character-level-xp-plugin.md](character-level-xp-plugin.md) | Level / XP | XP profiles, per-level XP requirements, level-up rewards, and stat definitions. |
| [character-player-character-setup-plugin.md](character-player-character-setup-plugin.md) | Player Character Setup | Race/class template rows for spawn location, starting gear, skills, and stats. |

## Items Module

| File | Plugin | Description |
|---|---|---|
| [items-plugin.md](items-plugin.md) | Items | Item template schema and core item metadata. |
| [items-currencies-plugin.md](items-currencies-plugin.md) | Currencies | Currency definitions, groups, and related metadata. |
| [items-crafting-recipes-plugin.md](items-crafting-recipes-plugin.md) | Crafting Recipes | Crafting recipe headers, requirements, and outputs. |
| [items-build-object-plugin.md](items-build-object-plugin.md) | Build Object | Build object templates and staged construction requirements. |
| [items-socketing-plugin.md](items-socketing-plugin.md) | Socketing | Socket profile and gem/socket linking tables. |
