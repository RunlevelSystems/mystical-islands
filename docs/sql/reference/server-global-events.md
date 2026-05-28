# Global Events Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify table names, column names, IDs, foreign key relationships, option values, and Atavism version compatibility.

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/global-events/ was unavailable at time of writing. All information is derived from SQL schema files. Verify against the wiki before generating production SQL.

## Purpose
The Global Events Plugin provides two related but distinct systems:
1. **`events`** — A registry of named server-side event types used by other systems (achievements, triggers, scripts)
2. **`global_events`** — Scheduled server-wide timed events with date/time windows and associated bonuses

Global events allow seasonal content (e.g. "Festival of Tides"), timed XP weekends, or holiday events.

## Source Links
- https://unity.wiki.atavismonline.com/project/global-events/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/schema/world_content.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `events` | Named event type registry used across systems | world_content DB |
| `global_events` | Scheduled timed global server events | world_content DB |
| `global_events_bonuses` | Bonuses active during a global event | world_content DB |

## Column Reference

### events

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `events` | `id` | Auto-increment PK | — | `achievement_criteria` |
| `events` | `name` | Event type name | Max 32 chars; referenced by `achievement_criteria.event` | `achievement_criteria` |
| `events` | `data_type` | Data type carried by this event | Max 32 chars; purpose uncertain — verify | — |
| `events` | `save_data` | Whether event data is persisted | 0 = no, 1 = yes | — |
| `events` | `description` | Description | Max 256 chars | — |

### global_events

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `global_events` | `id` | Auto-increment PK | — | `global_events_bonuses` |
| `global_events` | `name` | Event name | Max 256 chars | — |
| `global_events` | `description` | Event description | TEXT | — |
| `global_events` | `start_year` | Start year | -1 = any year (recurring) | — |
| `global_events` | `start_month` | Start month (1–12) | -1 = any | — |
| `global_events` | `start_day` | Start day (1–31) | -1 = any | — |
| `global_events` | `start_hour` | Start hour (0–23) | — | — |
| `global_events` | `start_minute` | Start minute (0–59) | — | — |
| `global_events` | `end_year` | End year | -1 = any | — |
| `global_events` | `end_month` | End month | -1 = any | — |
| `global_events` | `end_day` | End day | -1 = any | — |
| `global_events` | `end_hour` | End hour | — | — |
| `global_events` | `end_minute` | End minute | — | — |
| `global_events` | `icon` | Event icon path | varchar(256) | — |
| `global_events` | `icon2` | Base64 or alternate icon | mediumtext | — |
| `global_events` | `isactive` | Active flag | — | — |

### global_events_bonuses

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `global_events_bonuses` | `id` | PK | — | — |
| `global_events_bonuses` | `global_event_id` | FK → `global_events.id` | — | `global_events` |
| `global_events_bonuses` | `bonus_settings_id` | FK → `bonuses_settings.id` | — | `bonuses_settings` |
| `global_events_bonuses` | `value` | Flat bonus value | Integer | — |
| `global_events_bonuses` | `valuep` | Percent bonus value | Float | — |

## Relationships
- `global_events.id` → `global_events_bonuses.global_event_id`
- `global_events_bonuses.bonus_settings_id` → `bonuses_settings.id`
- `events.name` → `achievement_criteria.event` (used as trigger strings)

## Data Creation Flow
1. Register event type names in `events` (used by achievement criteria and server scripts)
2. For timed global events: INSERT into `global_events` with date window
3. INSERT `global_events_bonuses` rows linking bonuses to the event

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Create a recurring annual event (any year)
INSERT INTO `global_events`
  (name, description, start_year, start_month, start_day, start_hour, start_minute,
   end_year, end_month, end_day, end_hour, end_minute, icon, icon2, isactive)
VALUES
  ('Festival of Tides', 'Annual nautical celebration with bonus XP.',
   -1, 6, 21, 0, 0,
   -1, 6, 28, 23, 59,
   'Events/festival_tides.png', '', 1);

-- Add XP bonus (replace IDs)
INSERT INTO `global_events_bonuses` (global_event_id, bonus_settings_id, value, valuep)
VALUES (1, 3, 0, 25.0);
```

## Mystical Islands Usage
Global events support Mystical Islands' living world vision:
- **Festival of Tides**: Annual summer event with bonus gathering XP
- **Pirate Siege Weekends**: Increased PvP rewards
- **Merchant Fair**: Bonus coin drops and trade bonuses
- **Storm Season**: Increased mob difficulty and survival rewards
- **Explorer's Holiday**: Double discovery XP

## External Application Notes
- **Event calendar page**: Show upcoming global events with dates and bonuses
- **News/announcements feed**: Pull from `global_events` for automated announcements
- **In-game notification system**: Query active events at login

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.
