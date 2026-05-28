# Skills Plugin

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
The Skills Plugin defines skill lines, skill progression profiles, prerequisites, and ability unlocks granted at specific skill levels.

## Source Links
- https://unity.wiki.atavismonline.com/project/skills-plugin/
- https://unity.wiki.atavismonline.com/

## SQL Files Reviewed
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `skills` | Core skill definitions, prerequisite rules, stat gains, and leveling limits | core + demo |
| `skill_ability_gain` | Abilities unlocked by skill level | core + demo |
| `skill_profile` | XP curve profiles for skills | core + demo |
| `skill_profile_levels` | XP required by level for each skill profile | core + demo |
| `abilities` | Ability IDs referenced by skill unlock rows | core + demo |
| `character_create_skills` | Starter skills assigned to character templates | core + demo |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `skills` | `id` | Skill ID | PK | `skill_ability_gain.skillID`, `character_create_skills.skill`, `abilities.skill` |
| `skills` | `name`, `icon`, `icon2` | Display identity | UI/Editor fields | — |
| `skills` | `maxLevel` | Skill level cap | Demo uses large caps on some rows | — |
| `skills` | `automaticallyLearn` | Auto-learn flag | 1 auto-grants skill | — |
| `skills` | `skillPointCost` | Point cost to learn/upgrade | Talent-like progression control | — |
| `skills` | `playerLevelReq` | Minimum player level | Player gating | — |
| `skills` | `parentSkill`, `parentSkillLevelReq` | Parent skill prerequisite | Skill tree dependency | `skills.id` |
| `skills` | `prereqSkill1..3`, `prereqSkill1Level..3Level` | Additional required skills/levels | Multi-branch prerequisites | `skills.id` |
| `skills` | `skill_profile_id` | XP profile used by this skill | `-1` when profile not used | `skill_profile.id` |
| `skills` | `primaryStat`..`fourthStat` and value/interval columns | Stat progression grants | Valid stat names required | `stat.name` |
| `skills` | `type`, `talent` | Skill type behavior flags | Verify option behavior in editor | Option choice tables |
| `skill_ability_gain` | `skillID` | Skill that grants ability | FK-style link | `skills.id` |
| `skill_ability_gain` | `skillLevelReq` | Required skill level | Unlock threshold | — |
| `skill_ability_gain` | `abilityID` | Granted ability ID | Ability unlock target | `abilities.id` |
| `skill_ability_gain` | `automaticallyLearn` | Auto-learn unlocked ability | 1 grant automatically | — |
| `skill_profile` | `id`, `profile_name` | Skill XP profile identity | Named progression curve | `skill_profile_levels.profile_id`, `skills.skill_profile_id` |
| `skill_profile` | `type`, `level_diff` | Profile mode/tuning | Verify exact editor semantics | — |
| `skill_profile_levels` | `profile_id`, `level`, `required_xp` | XP required per level | One row per level per profile | `skill_profile.id` |
| `character_create_skills` | `character_create_id`, `skill` | Starting skill assignment | New character setup dependency | `character_create_template.id`, `skills.id` |

## Relationships
- `skills.id` is the center key for skill progression and unlock mapping.
- `skills.skill_profile_id` → `skill_profile.id`.
- `skill_profile.id` → `skill_profile_levels.profile_id`.
- `skill_ability_gain.skillID` → `skills.id`.
- `skill_ability_gain.abilityID` → `abilities.id`.
- `character_create_skills.skill` → `skills.id`.
- `abilities.skill` can map an ability back to its parent skill line.

## Data Creation Flow
1. Create stats used by skill stat-gain columns.
2. Create skill XP profile header rows.
3. Create skill XP profile level rows.
4. Create skill definitions with prerequisites.
5. Create abilities that skills can unlock.
6. Create skill-to-ability gain rows.
7. Assign starter skills in character template setup.

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
INSERT INTO skill_profile (type, profile_name, level_diff, isactive)
VALUES (1, 'Warrior Skill Curve', 0, 1);
```

## Mystical Islands Usage
Skills represent nautical combat disciplines, survival professions, and class progression trees. Prerequisites and unlock rows should enforce intended class identity and level pacing.

## External Application Notes
- skill planner
- character builder
- class progression validator
- admin skill tree editor

## Atavism 10.13 Notes
No major 10.13-specific differences were identified from this page. Recheck when upgrading.

## Uncertain Mappings
Mapping uncertain. Verify against Atavism 10.13 schema and editor behavior before generating production inserts.
