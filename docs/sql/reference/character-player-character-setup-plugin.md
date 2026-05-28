# Player Character Setup Plugin

## AI Reference Notes
This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify table names, column names, IDs, foreign key relationships, option values, and Atavism version compatibility.

> **Wiki Note:** The official wiki at https://unity.wiki.atavismonline.com/project/player-character-setup-plugin/ was unavailable at time of writing. All information is derived from SQL schema files. Verify against the wiki before generating production SQL.

## Purpose
The Player Character Setup Plugin defines the character creation system. Each template maps a race + class (aspect) combination to a spawn instance, starting stats, starting items, starting skills, gender options, and respawn location. When a player creates a new character, the server reads this template to configure their new character.

## Source Links
- https://unity.wiki.atavismonline.com/project/player-character-setup-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/world_content.sql (demo data — world_content database)
- /docs/sql/schema/world_content.sql (empty schema)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `character_create_template` | One row per race+class combination | world_content DB |
| `character_create_items` | Starting items per template | world_content DB |
| `character_create_skills` | Starting skills per template | world_content DB |
| `character_create_stats` | Starting stats and per-level growth per template | world_content DB |
| `character_create_gender` | Gender model and icon options per template | world_content DB |
| `skills` | Skill definitions | world_content DB |
| `skill_profile` | Skill leveling profile | world_content DB |
| `skill_profile_levels` | XP required per skill level | world_content DB |

## Column Reference

### character_create_template

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `character_create_template` | `id` | Auto-increment PK | — | `character_create_items`, `character_create_skills`, `character_create_stats`, `character_create_gender` |
| `character_create_template` | `race` | Race option ID | FK → `editor_option_choice` (Race type); -1 = any | `editor_option_choice` |
| `character_create_template` | `aspect` | Class/aspect option ID | FK → `editor_option_choice` (Class type); -1 = any | `editor_option_choice` |
| `character_create_template` | `instance` | Starting spawn instance | FK → `instance_template.id` | `instance_template` |
| `character_create_template` | `pos_x/y/z` | Spawn position | Float | — |
| `character_create_template` | `orientation` | Spawn facing direction | Float (radians) | — |
| `character_create_template` | `faction` | Starting faction ID | FK → factions; default 1 | `factions` |
| `character_create_template` | `autoAttack` | Auto-attack ability ID | FK → `abilities.id`; -1 = none | `abilities` |
| `character_create_template` | `race_icon` / `race_icon2` | Race selection icon | Path / base64 | — |
| `character_create_template` | `class_icon` / `class_icon2` | Class selection icon | Path / base64 | — |
| `character_create_template` | `race_description` | Race lore text shown at creation | varchar(2048) | — |
| `character_create_template` | `class_description` | Class lore text shown at creation | varchar(2048) | — |
| `character_create_template` | `respawnInstance` | Instance to respawn in | FK → `instance_template.id`; -1 = same as spawn | `instance_template` |
| `character_create_template` | `respawnPosX/Y/Z` | Respawn position | Float | — |
| `character_create_template` | `startingLevel` | Starting character level | Default 1 | — |
| `character_create_template` | `sprint` | Sprint ability ID | FK → `abilities.id`; -1 = none | `abilities` |
| `character_create_template` | `xpProfile` | XP profile to use | FK → `level_xp_requirements_templates.xpProfile` | `level_xp_requirements_templates` |
| `character_create_template` | `dodge` | Dodge ability ID | FK → `abilities.id`; -1 = none | `abilities` |

### character_create_items

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `character_create_items` | `id` | PK | — | — |
| `character_create_items` | `character_create_id` | FK → `character_create_template.id` | — | `character_create_template` |
| `character_create_items` | `item_id` | FK → `item_templates.id` | Starting item | `item_templates` |
| `character_create_items` | `count` | Quantity | Default 1 | — |
| `character_create_items` | `equipped` | Start equipped | 0/1 | — |

### character_create_skills

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `character_create_skills` | `id` | PK | — | — |
| `character_create_skills` | `character_create_id` | FK → `character_create_template.id` | — | `character_create_template` |
| `character_create_skills` | `skill` | FK → `skills.id` | Starting skill granted | `skills` |

### character_create_stats

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `character_create_stats` | `id` | PK | — | — |
| `character_create_stats` | `character_create_id` | FK → `character_create_template.id` | — | `character_create_template` |
| `character_create_stats` | `stat` | Stat name | Must match `stat.name` | `stat` |
| `character_create_stats` | `value` | Base starting value | Integer | — |
| `character_create_stats` | `levelIncrease` | Flat increase per level | Float | — |
| `character_create_stats` | `levelPercentIncrease` | Percent increase per level | Float | — |

### character_create_gender

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `character_create_gender` | `id` | PK | — | — |
| `character_create_gender` | `character_create_id` | FK → `character_create_template.id` | — | `character_create_template` |
| `character_create_gender` | `gender` | Gender option ID | FK → `editor_option_choice` (Gender type) | `editor_option_choice` |
| `character_create_gender` | `model` | Unity model name | — | — |
| `character_create_gender` | `icon` / `icon2` | Gender selection icon | Path / base64 | — |

### skills

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `skills` | `id` | PK | Referenced by `character_create_skills.skill` | `character_create_skills` |
| `skills` | `name` | Skill name | Max 64 chars | — |
| `skills` | `aspect` | Aspect/class this skill belongs to | FK → editor_option_choice (Class); -1 = universal | `editor_option_choice` |
| `skills` | `primaryStat` through `fourthStat` | Stats boosted by this skill | Must match `stat.name` | `stat` |
| `skills` | `primaryStatValue` etc. | Flat value added per skill level interval | — | — |
| `skills` | `primaryStatInterval` etc. | Level interval for stat boost | — | — |
| `skills` | `maxLevel` | Maximum skill level | Default 1 | — |
| `skills` | `automaticallyLearn` | Granted automatically | 1 = auto | — |
| `skills` | `skillPointCost` | Skill points required | 0 = free | — |
| `skills` | `parentSkill` | Prerequisite skill ID | 0 = none | `skills` |
| `skills` | `skill_profile_id` | FK → `skill_profile.id` | Controls leveling curve | `skill_profile` |
| `skills` | `talent` | Is this a talent (not a skill) | 0/1 | — |

### skill_profile / skill_profile_levels

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `skill_profile` | `id` | PK | — | `skills`, `skill_profile_levels` |
| `skill_profile` | `type` | Profile type integer | — | — |
| `skill_profile` | `profile_name` | Profile name | — | — |
| `skill_profile` | `level_diff` | Level diff config | TEXT; format uncertain | — |
| `skill_profile_levels` | `profile_id` | FK → `skill_profile.id` | — | `skill_profile` |
| `skill_profile_levels` | `level` | Skill level | — | — |
| `skill_profile_levels` | `required_xp` | XP to reach this skill level | — | — |

## Relationships
- `character_create_template.id` → all `character_create_*` child tables
- `character_create_template.instance` → `instance_template.id`
- `character_create_template.xpProfile` → `level_xp_requirements_templates.xpProfile`
- `character_create_template.race/aspect` → `editor_option_choice` values
- `character_create_items.item_id` → `item_templates.id`
- `character_create_skills.skill` → `skills.id`
- `character_create_stats.stat` → `stat.name`
- `skills.skill_profile_id` → `skill_profile.id`
- `skill_profile.id` → `skill_profile_levels.profile_id`

## Data Creation Flow
1. Ensure editor option choices exist for Race, Class, Gender
2. Ensure target instances exist in `instance_template`
3. Ensure items exist in `item_templates` before linking
4. Ensure skills exist in `skills` before linking
5. Create `character_create_template` (one per race+class combo)
6. Add `character_create_items` rows
7. Add `character_create_skills` rows
8. Add `character_create_stats` rows (all stats the character needs at creation)
9. Add `character_create_gender` rows

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Create a template for Race 5 (Elf), Aspect 3 (Ranger)
INSERT INTO `character_create_template`
  (race, aspect, instance, pos_x, pos_y, pos_z, orientation, faction,
   autoAttack, respawnInstance, respawnPosX, respawnPosY, respawnPosZ,
   startingLevel, sprint, xpProfile, dodge)
VALUES
  (5, 3, 2, 100.0, 10.0, -50.0, 0.0, 1,
   1, 2, 100.0, 10.0, -50.0,
   1, 2, 1, -1);

-- Add a starting item (replace character_create_id and item_id)
INSERT INTO `character_create_items` (character_create_id, item_id, count, equipped, isactive)
VALUES (1, 101, 1, 1, 1);

-- Add a starting skill
INSERT INTO `character_create_skills` (character_create_id, skill, isactive)
VALUES (1, 5, 1);
```

## Mystical Islands Usage
Mystical Islands character creation must define:
- Each race (Corsair, Deepborn, Tidecaller, etc.) + class (Buccaneer, Navigator, Witch-Surgeon, etc.) combination
- Starting islands per race/class — thematically appropriate spawn locations
- Starting gear appropriate to the nautical setting
- Starting skills that reflect the class fantasy
- Per-class stat growth curves via `character_create_stats.levelIncrease`

Demo data contains 6 character create templates (AUTO_INCREMENT=7 in schema) — review these before creating Mystical Islands templates.

## External Application Notes
- **Character creation UI**: Read templates to populate race/class selection
- **New player onboarding tools**: Preview starting stats, items, and class description
- **Migration tools**: Validate character template completeness before live deployment

## Atavism 10.13 Upgrade Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.
