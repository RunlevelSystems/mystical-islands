# Task Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose
The Task Plugin defines named server-side tasks that can be triggered or referenced by other systems (events, achievements, quests, scripts). The `task` table in world_content is minimal — only a name and active flag. The full behavior of tasks likely depends on server-side scripting and plugin configuration not visible in the SQL schema alone.

> **Mapping uncertain.** The `task` table schema is very thin. Full task behavior, trigger conditions, and linked actions are not visible in the SQL schema. Verify against schema and editor behavior before generating production inserts.

## Source Links
- https://unity.wiki.atavismonline.com/project/task-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/10.13/demo/world_content.sql (demo data — world_content database)
- /docs/sql/10.13/core/world_content.sql (empty schema — world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `task` | Named task definitions | world_content DB |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `task` | `id` | Auto-increment PK | — | — |
| `task` | `name` | Task name | Max 64 chars | — |
| `task` | `isactive` | Soft-delete flag | 1 = active | — |
| `task` | `creationtimestamp` | Row creation time | Auto-set | — |
| `task` | `updatetimestamp` | Last update time | — | — |

## Relationships
- Tasks may be referenced by achievement criteria (`achievement_criteria.event`), event definitions (`events`), or server scripts. Exact linkage is not visible in the SQL schema.

## Data Creation Flow
1. INSERT a row into `task` with a unique name
2. Reference the task `id` or `name` in the server plugin configuration or other tables as needed

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO `task` (`name`, `isactive`)
VALUES ('daily_reward_check', 1);
```

## Mystical Islands Usage
Tasks could be used for daily reward triggers, timed world events, or scripted island encounters. Define tasks for recurring Mystical Islands activities (daily voyages, timed challenges).

## External Application Notes
- Tasks could support scheduled admin actions or automated event triggers visible in an admin dashboard.

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.

Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
