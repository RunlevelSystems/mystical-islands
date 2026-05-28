# Arena Plugin

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
The Arena Plugin configures PvP arena templates, team setup, scheduling windows, level limits, rewards, and optional survival arena wave templates.

## Source Links
- https://unity.wiki.atavismonline.com/project/arena-plugin/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `arena_templates` | Main arena match definitions, rewards, and schedule windows | core + demo |
| `arena_teams` | Team definitions for each arena template | core + demo |
| `arena_categories` | Arena skin/category presets | core + demo |
| `survivalarenatemplates` | Survival arena round spawn definitions | core + demo |
| `currencies` | Reward currency IDs referenced by arena template rows | core + demo |
| `instance_template` | Arena map instance IDs used by arena templates | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `arena_templates` | `id` | Arena template ID | PK | `arena_teams.arenaID` |
| `arena_templates` | `arenaType` | Arena mode type | Numeric mode selector | — |
| `arena_templates` | `name` | Arena display name | Used in editor/UI | — |
| `arena_templates` | `arenaCategory` | Category/skin ID | References category table | `arena_categories.id` |
| `arena_templates` | `arenaInstanceID` | Map instance ID | Arena scene/world instance | `instance_template.id` |
| `arena_templates` | `team1`..`team4` | Team IDs in this arena | Unused slots are commonly `-1` in demo | `arena_teams.id` |
| `arena_templates` | `levelReq`, `levelMax` | Allowed player level range | Validate against level design | — |
| `arena_templates` | `victoryCurrency`, `victoryPayment` | Winner reward currency/value | Currency ID + amount | `currencies.id` |
| `arena_templates` | `defeatCurrency`, `defeatPayment` | Loser reward currency/value | Currency ID + amount | `currencies.id` |
| `arena_templates` | `victoryExp`, `defeatExp` | XP rewards | Match outcome rewards | — |
| `arena_templates` | `start_hour`, `start_minute`, `end_hour`, `end_minute` | Active daily window | Demo contains timed windows | — |
| `arena_teams` | `id` | Team ID | PK | `arena_templates.team*` |
| `arena_teams` | `arenaID` | Arena template owner | Team belongs to arena template | `arena_templates.id` |
| `arena_teams` | `name` | Team name | e.g., Dragons/Bears in demo | — |
| `arena_teams` | `size` | Team player count | Used by matchmaking | — |
| `arena_teams` | `goal` | Score/kill target | Win condition component | — |
| `arena_teams` | `spawnX`,`spawnY`,`spawnZ` | Team spawn location | Coordinates in arena instance | — |
| `arena_categories` | `id` | Category ID | PK | `arena_templates.arenaCategory` |
| `arena_categories` | `skin1`..`skin4` | Team visual skin links | Numeric skin selectors | — |
| `survivalarenatemplates` | `id` | Survival template ID | PK | Referenced by arena/survival systems |
| `survivalarenatemplates` | `numRounds` | Number of rounds | Round config master | — |
| `survivalarenatemplates` | `round1Spawns`..`round10Spawns` | Spawn package IDs per round | Demo has schema with no rows | Spawn profile tables/editor |

## Relationships
- `arena_templates.id` → `arena_teams.arenaID`.
- `arena_templates.team1..team4` reference `arena_teams.id` entries.
- `arena_templates.arenaCategory` → `arena_categories.id`.
- `arena_templates.arenaInstanceID` should map to instance rows in `instance_template`.
- `arena_templates.victoryCurrency` / `defeatCurrency` should map to `currencies.id`.
- Survival arena flow uses `survivalarenatemplates` as round spawn definitions.

## Data Creation Flow
1. Create required arena map instances.
2. Create arena category rows.
3. Create arena team rows with spawn points.
4. Create arena template row and assign team IDs.
5. Configure reward currency IDs and payouts.
6. Configure schedule windows and level limits.
7. Add optional survival arena template rounds.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO arena_categories (id, skin1, skin2, skin3, skin4, isactive)
VALUES (10, 1, 2, 0, 0, 1);
```

## Mystical Islands Usage
Arenas will support competitive island factions, match queues, and PvP reward progression. Arena templates should align with island instance IDs and season reward balancing.

## External Application Notes
- arena leaderboard service
- match schedule dashboard
- PvP reward payout auditor
- admin arena configuration editor

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
