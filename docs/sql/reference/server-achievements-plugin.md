# Achievements Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify table names, column names, IDs, foreign key relationships, option values, and Atavism version compatibility.

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/achievements-plugin/ was unavailable at time of writing. All information is derived from SQL schema files. Verify against the wiki before generating production SQL.

## Purpose
The Achievements Plugin tracks player milestones and rewards. Achievements are organized into categories and subcategories. Each achievement has criteria (event + count threshold), optional stat bonuses, and optional bonus rewards. Player progress is tracked in the `achivement_data` table (note: typo in table name — missing 'e').

## Source Links
- https://unity.wiki.atavismonline.com/project/achievements-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/admin.sql (demo data — admin database)
- /docs/sql/schema/world_content.sql (empty schema)
- /docs/sql/schema/admin.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `achievement_categories` | Top-level categories | world_content DB |
| `achievement_subcategories` | Sub-categories within categories | world_content DB |
| `achievements` | Individual achievement definitions | world_content DB |
| `achievement_criteria` | Event triggers and counts for completion | world_content DB |
| `achievement_bonuses` | Bonus rewards linked to an achievement | world_content DB |
| `achievement_stats` | Stat rewards linked to an achievement | world_content DB |
| `achievement_settings` | Global achievement system settings | world_content DB |
| `achivement_data` | Per-player achievement progress (typo in name) | admin DB |

## Column Reference

### achievement_categories

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achievement_categories` | `name` | Category name (PK) | Max 64 chars | `achievements`, `achievement_subcategories` |
| `achievement_categories` | `isactive` | Active flag | — | — |

### achievement_subcategories

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achievement_subcategories` | `id` | Auto-increment PK | — | `achievements` |
| `achievement_subcategories` | `name` | Subcategory name | — | — |
| `achievement_subcategories` | `category` | FK → `achievement_categories.name` | String FK | `achievement_categories` |
| `achievement_subcategories` | `isactive` | Active flag | — | — |

### achievements

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achievements` | `id` | Auto-increment PK | — | `achievement_criteria`, `achievement_bonuses`, `achievement_stats`, `achivement_data` |
| `achievements` | `name` | Achievement name | Max 64 chars | — |
| `achievements` | `category` | FK → `achievement_categories.name` | String | `achievement_categories` |
| `achievements` | `subcategory` | FK → `achievement_subcategories.name` | String; nullable | `achievement_subcategories` |
| `achievements` | `points` | Achievement point value | Integer | — |
| `achievements` | `text` | Description text | TEXT | — |
| `achievements` | `isactive` | Active flag | — | — |

### achievement_criteria

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achievement_criteria` | `id` | Auto-increment PK | — | — |
| `achievement_criteria` | `achievementID` | FK → `achievements.id` | — | `achievements` |
| `achievement_criteria` | `event` | Event name that triggers progress | String; must match an `events.name` value | `events` |
| `achievement_criteria` | `eventCount` | How many times event must fire | NULL = 1 | — |
| `achievement_criteria` | `resetEvent1` / `resetEvent2` | Events that reset progress | Nullable | `events` |

### achievement_bonuses

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achievement_bonuses` | `achievement_id` | FK → `achievements.id` | — | `achievements` |
| `achievement_bonuses` | `bonus_settings_id` | FK → `bonuses_settings.id` | — | `bonuses_settings` |
| `achievement_bonuses` | `value` | Flat bonus value | Integer | — |
| `achievement_bonuses` | `valuep` | Percent bonus value | Float | — |

### achievement_stats

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achievement_stats` | `achievement_id` | FK → `achievements.id` | — | `achievements` |
| `achievement_stats` | `stat` | Stat name to modify | Must match `stat.name` | `stat` |
| `achievement_stats` | `value` | Flat stat bonus | Integer | — |
| `achievement_stats` | `valuep` | Percent stat bonus | Float | — |

### achievement_settings

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achievement_settings` | `id` | PK | — | — |
| `achievement_settings` | `type` | Setting type integer | — | — |
| `achievement_settings` | `value` | Setting value | — | — |
| `achievement_settings` | `name` | Setting name | — | — |
| `achievement_settings` | `description` | Setting description | TEXT | — |
| `achievement_settings` | `objects` | JSON/CSV of related objects | varchar(2048) | — |

### achivement_data (admin DB)
> ⚠️ Note: Table name has a typo — `achivement_data` not `achievement_data`

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `achivement_data` | `id` | PK | — | — |
| `achivement_data` | `playerOid` | Character OID | FK → objstore.obj_id | `objstore` |
| `achivement_data` | `type` | Achievement type | Integer | — |
| `achivement_data` | `obj` | Related object reference | varchar(200) | — |
| `achivement_data` | `rankingId` | Associated ranking ID | Integer | `rankings` |
| `achivement_data` | `achievementId` | FK → `achievements.id` | — | `achievements` |
| `achivement_data` | `acquired` | Whether achievement is completed | 0/1 | — |
| `achivement_data` | `value` | Current progress value | Integer | — |

## Relationships
- `achievements.category` → `achievement_categories.name`
- `achievements.subcategory` → `achievement_subcategories.name`
- `achievement_criteria.achievementID` → `achievements.id`
- `achievement_criteria.event` → `events.name`
- `achievement_bonuses.achievement_id` → `achievements.id`
- `achievement_bonuses.bonus_settings_id` → `bonuses_settings.id`
- `achievement_stats.achievement_id` → `achievements.id`
- `achivement_data.achievementId` → `achievements.id`
- `achivement_data.playerOid` → `objstore.obj_id`

## Data Creation Flow
1. Create `achievement_categories` first
2. Create `achievement_subcategories` referencing category names
3. Ensure event types exist in `events` table
4. Create `achievements` rows
5. Create `achievement_criteria` rows per achievement
6. Optionally add `achievement_bonuses` and/or `achievement_stats` rows
7. Runtime: server writes `achivement_data` as players progress

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

INSERT INTO `achievement_categories` (name, isactive) VALUES ('Explorer', 1);

INSERT INTO `achievements` (name, category, subcategory, points, text, isactive)
VALUES ('First Landfall', 'Explorer', NULL, 10, 'Reach your first uncharted island.', 1);

-- Link a criteria (replace achievement_id and event name)
INSERT INTO `achievement_criteria` (achievementID, event, eventCount)
VALUES (1, 'island_discovered', 1);
```

## Mystical Islands Usage
Achievements are core to Mystical Islands progression:
- **Explorer tier**: Discover X islands, chart unknown routes
- **Combat**: Defeat pirate captains, sea creatures, dungeon bosses
- **Crafting / Gathering**: Harvest rare materials, craft legendary items
- **Social**: Join a guild, recruit crew members
- **Quests**: Complete story arcs per island chain

## External Application Notes
- **Achievement viewer page**: Show completed/in-progress achievements per player
- **Leaderboards**: Query top players by achievement points
- **Guild pages**: Aggregate guild achievement points

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.
