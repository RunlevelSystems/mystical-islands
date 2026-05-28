# Level / XP Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose
The Level/XP Plugin controls character progression through levels. XP profiles allow different character classes or archetypes to level at different rates. Each level in a profile defines the XP required and optionally a reward template. Reward templates define what is granted (items, abilities, currencies, etc.) when that level is reached. The `stat` table defines all character stats including XP-related ones.

## Source Links
- https://unity.wiki.atavismonline.com/project/level-xp-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/10.13/demo/world_content.sql (demo data — world_content database)
- /docs/sql/10.13/core/world_content.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `level_xp_requirements_templates` | Named XP profiles for different progression paths | world_content DB |
| `level_xp_requirements` | XP needed per level per profile | world_content DB |
| `level_xp_requirements_reward_templates` | Named reward template definitions | world_content DB |
| `level_xp_requirements_rewards` | Individual reward items within a template | world_content DB |
| `stat` | Defines all character stats including XP stat | world_content DB |
| `vip_level` | VIP tier definitions (premium progression) | world_content DB |
| `vip_level_bonuses` | Bonuses per VIP tier | world_content DB |

## Column Reference

### level_xp_requirements_templates

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `level_xp_requirements_templates` | `xpProfile` | Auto-increment PK | Referenced by `level_xp_requirements.xpProfile` and `character_create_template.xpProfile` | `level_xp_requirements`, `character_create_template` |
| `level_xp_requirements_templates` | `xpProfile_name` | Profile display name | Max 86 chars | — |
| `level_xp_requirements_templates` | `isactive` | Active flag | — | — |

### level_xp_requirements

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `level_xp_requirements` | `xpProfile` | FK → `level_xp_requirements_templates.xpProfile` | Composite PK with `level` | `level_xp_requirements_templates` |
| `level_xp_requirements` | `level` | The level this row defines | Composite PK with `xpProfile` | — |
| `level_xp_requirements` | `xpRequired` | XP needed to reach this level | Integer | — |
| `level_xp_requirements` | `reward_template_id` | FK → `level_xp_requirements_reward_templates` | -1 = no reward | `level_xp_requirements_reward_templates` |

### level_xp_requirements_reward_templates

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `level_xp_requirements_reward_templates` | `reward_template_id` | Auto-increment PK | — | `level_xp_requirements_rewards`, `level_xp_requirements` |
| `level_xp_requirements_reward_templates` | `reward_template_name` | Template name | Max 86 chars | — |
| `level_xp_requirements_reward_templates` | `reward_mail_subject` | Subject of reward mail | Max 255 chars | — |
| `level_xp_requirements_reward_templates` | `reward_mail_message` | Body of reward mail | TEXT | — |
| `level_xp_requirements_reward_templates` | `isactive` | Active flag | — | — |

### level_xp_requirements_rewards

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `level_xp_requirements_rewards` | `reward_id` | Auto-increment PK | — | — |
| `level_xp_requirements_rewards` | `reward_template_id` | FK → `level_xp_requirements_reward_templates` | — | `level_xp_requirements_reward_templates` |
| `level_xp_requirements_rewards` | `reward_type` | Type of reward | Max 86 chars; e.g. "item", "ability", "currency" — verify valid values | — |
| `level_xp_requirements_rewards` | `reward_value` | ID of the reward (item ID, ability ID, etc.) | Context-dependent on `reward_type` | — |
| `level_xp_requirements_rewards` | `reward_amount` | Quantity | Integer | — |
| `level_xp_requirements_rewards` | `give_once` | Whether reward is given only once | 1 = once, 0 = every level | — |
| `level_xp_requirements_rewards` | `on_level_down` | Whether to apply on level decrease | 0 = no | — |

### stat (world_content DB) — key columns for XP system

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `stat` | `name` | Stat name (PK) | e.g. "xp", "level", "health" | `character_create_stats` |
| `stat` | `type` | Stat type integer | — | — |
| `stat` | `mob_base` | Base value for mobs | — | — |
| `stat` | `mob_level_increase` | Flat increase per mob level | — | — |
| `stat` | `min` | Minimum value | — | — |
| `stat` | `max` | Maximum value | Added in 10.13 | — |
| `stat` | `maxstat` | Name of the stat that serves as the cap | — | `stat` |
| `stat` | `startPercent` | Starting percentage of max | Default 50 | — |
| `stat` | `deathResetPercent` | Value % set on death | -1 = no reset | — |
| `stat` | `sendToClient` | Whether clients receive this stat | 0=none, 1=all, 2=owner only | — |
| `stat` | `serverPresent` | Server-side stat presence flag | Added in 10.13 | — |
| `stat` | `stat_precision` | Precision used for stat value handling | Added in 10.13 | — |

### vip_level

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `vip_level` | `id` | PK | — | `vip_level_bonuses` |
| `vip_level` | `level` | VIP tier number | — | — |
| `vip_level` | `name` | Tier name | Max 50 chars | — |
| `vip_level` | `description` | Tier description | TEXT | — |
| `vip_level` | `max_points` | Points required for this tier | BigInt | — |

### vip_level_bonuses

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `vip_level_bonuses` | `vip_level_id` | FK → `vip_level.id` | — | `vip_level` |
| `vip_level_bonuses` | `bonus_settings_id` | FK → `bonuses_settings.id` | — | `bonuses_settings` |
| `vip_level_bonuses` | `value` | Flat bonus | Integer | — |
| `vip_level_bonuses` | `valuep` | Percent bonus | Float | — |

## Relationships
- `level_xp_requirements_templates.xpProfile` → `level_xp_requirements.xpProfile`
- `level_xp_requirements.reward_template_id` → `level_xp_requirements_reward_templates.reward_template_id`
- `level_xp_requirements_reward_templates.reward_template_id` → `level_xp_requirements_rewards.reward_template_id`
- `character_create_template.xpProfile` → `level_xp_requirements_templates.xpProfile`
- `vip_level.id` → `vip_level_bonuses.vip_level_id`
- `vip_level_bonuses.bonus_settings_id` → `bonuses_settings.id`

## Data Creation Flow
1. Define XP profile template in `level_xp_requirements_templates`
2. For each level: INSERT a row in `level_xp_requirements` with required XP
3. For levels with rewards: create `level_xp_requirements_reward_templates` first, then `level_xp_requirements_rewards`
4. Reference the `xpProfile` in `character_create_template`
5. Define VIP levels and bonuses separately in `vip_level` / `vip_level_bonuses`

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Create XP profile
INSERT INTO `level_xp_requirements_templates` (xpProfile_name, isactive)
VALUES ('Standard Adventurer', 1);

-- Define level 1 → 2 XP requirement (profile 1)
INSERT INTO `level_xp_requirements` (xpProfile, level, xpRequired, reward_template_id)
VALUES (1, 1, 1000, -1);

-- Define level 5 with a reward
INSERT INTO `level_xp_requirements_reward_templates`
  (reward_template_name, reward_mail_subject, reward_mail_message, isactive)
VALUES ('Level 5 Reward', 'Welcome to Level 5!', 'Here is your reward.', 1);

INSERT INTO `level_xp_requirements_rewards`
  (reward_template_id, reward_type, reward_value, reward_amount, give_once, on_level_down)
VALUES (1, 'item', 201, 1, 1, 0);
```

## Mystical Islands Usage
- All Mystical Islands character classes will share or use custom XP profiles
- Level rewards should reflect the nautical theme: unlock ship abilities, navigation charts, special access
- VIP tiers could represent premium Patron ranks with sea-themed names
- The `stat` table will need Mystical Islands-specific stats verified against the damage plugin reference

## External Application Notes
- **Character profile pages**: Show current level, XP progress bar
- **Progression guides**: Display full level-up XP table from `level_xp_requirements`
- **VIP tier pages**: Show perks per tier from `vip_level` and `vip_level_bonuses`

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.

Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
