# Crafting Recipes Plugin

## AI Reference Notes

This file is intended for:
- human developers
- GitHub Copilot
- ChatGPT
- future automated SQL generation

Before generating SQL, always verify:
- table names
- column names
- IDs
- foreign key relationships
- option values
- Atavism version compatibility

## Purpose

The Crafting Recipes Plugin allows players to combine ingredients into new items. Each row in `crafting_recipes` defines one recipe. A recipe specifies:

- Up to 16 required input components (item IDs + counts)
- Up to 16 output result items across 4 result groups (each with an independent drop chance)
- Skill and minimum skill level required
- Optional crafting station requirement
- Optional blueprint/recipe item requirement (player must hold the blueprint in inventory)
- Crafting time
- XP reward for crafting
- Whether quality, dyes, and essences are allowed

Crafting is accessed through the Crafting Station or directly from inventory, depending on configuration.

## Source Links

- https://unity.wiki.atavismonline.com/project/crafting-recipes-plugin/

> **Wiki Note:** The Atavism wiki was unavailable at time of documentation. All table/column information is derived directly from SQL files. Cross-check with the wiki before generating production SQL.

## SQL Files Reviewed

- `docs/sql/world_content.sql` — demo data (world_content database)
- `docs/sql/schema/world_content.sql` — empty schema (world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `crafting_recipes` | One row per recipe definition | world_content |

Referenced but not owned by this plugin:
| Table | Purpose | Source |
|---|---|---|
| `item_templates` | Source of component IDs and result item IDs | world_content |
| `skills` | Source of valid skill IDs for `skillID` | world_content |

## Column Reference

### `crafting_recipes`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `name` | Recipe display name | varchar(64) | |
| `icon` | Recipe icon asset path | varchar(256) | |
| `icon2` | Base64-encoded icon | mediumtext | |
| `resultItemID` | Primary result item (group 1) | int FK to `item_templates.id`; -1=none | `item_templates` |
| `resultItemCount` | Quantity of primary result | int, default 1 | |
| `resultItem2ID`–`resultItem4ID` | Additional result items (group 1) | int FK to `item_templates.id`; -1=none | `item_templates` |
| `resultItem2Count`–`resultItem4Count` | Quantities of additional results | int | |
| `chance` | Drop chance for group 1 results | float; 0–100 percent; default 100 | |
| `resultItem5ID`–`resultItem8ID` | Result items group 2 | int FK to `item_templates.id`; -1=none | `item_templates` |
| `resultItem5Count`–`resultItem8Count` | Quantities for group 2 | int | |
| `chance2` | Drop chance for group 2 results | float; default 100 | |
| `resultItem9ID`–`resultItem12ID` | Result items group 3 | int FK to `item_templates.id`; -1=none | `item_templates` |
| `resultItem9Count`–`resultItem12Count` | Quantities for group 3 | int | |
| `chance3` | Drop chance for group 3 results | float; default 100 | |
| `resultItem13ID`–`resultItem16ID` | Result items group 4 | int FK to `item_templates.id`; -1=none | `item_templates` |
| `resultItem13Count`–`resultItem16Count` | Quantities for group 4 | int | |
| `chance4` | Drop chance for group 4 results | float; default 100 | |
| `skillID` | Skill required to craft | int FK to `skills.id`; NULL=no skill req | `skills` |
| `skillLevelReq` | Minimum skill level required | int | |
| `skillLevelMax` | Maximum skill level this recipe grants XP | int | |
| `stationReq` | Crafting station type required | varchar(45); string tag matching a station; NULL=anywhere | |
| `creationTime` | Time to craft (seconds) | int, default 0 | |
| `recipeItemID` | Blueprint/recipe item player must hold | int FK to `item_templates.id`; NULL=no blueprint needed | `item_templates` |
| `layoutReq` | Requires specific layout in crafting grid | tinyint(1), default 1 | |
| `qualityChangeable` | Allow quality selection | tinyint(1) | |
| `allowDyes` | Allow dye application | tinyint(1) | |
| `allowEssences` | Allow essence use | tinyint(1) | |
| `crafting_xp` | XP awarded on craft | int | |
| `component1`–`component16` | Required input items | int FK to `item_templates.id`; -1=empty | `item_templates` |
| `component1count`–`component16count` | Required quantity for each component | int | |
| `isactive` | Active flag | tinyint(1), default 1 | |
| `creationtimestamp` | Created timestamp | auto | |
| `updatetimestamp` | Updated timestamp | auto via trigger | |

> **Pattern:** Components 1–8 and counts 1–8 default to `-1`/NULL. Components 9–16 default to `-1`/`1`. Always set unused slots to -1.

## Relationships

```
item_templates.id  ←  crafting_recipes.resultItemID / resultItem2ID-16ID
item_templates.id  ←  crafting_recipes.component1-16
item_templates.id  ←  crafting_recipes.recipeItemID
skills.id          ←  crafting_recipes.skillID
```

A recipe is referenced (indirectly) from item effects:
- An item with `effectNtype='Crafting'` or similar may reference a recipe ID via `effectNname`/`effectNvalue`
- Mapping uncertain. Verify against editor behavior before generating production inserts.

## Data Creation Flow

1. Create all `item_templates` rows for components (ingredients)
2. Create all `item_templates` rows for result items
3. Create `skills` row for any crafting skill (if using skill requirement)
4. Create `crafting_recipes` rows
5. Optionally create blueprint items (`recipeItemID`) and place them in loot/merchant tables

> **Order critical:** `component*` and `resultItemID` are foreign keys. Insert all referenced items before inserting recipes.

## Example SQL Planning Notes

```sql
-- Example only. Verify IDs before inserting.

-- Simple 1-ingredient recipe: 5x Ironwood Plank → 1x Ironwood Chest
INSERT INTO crafting_recipes (
  name, icon, icon2,
  resultItemID, resultItemCount,
  resultItem2ID, resultItem2Count, resultItem3ID, resultItem3Count, resultItem4ID, resultItem4Count,
  chance,
  resultItem5ID, resultItem5Count, resultItem6ID, resultItem6Count,
  resultItem7ID, resultItem7Count, resultItem8ID, resultItem8Count, chance2,
  resultItem9ID, resultItem9Count, resultItem10ID, resultItem10Count,
  resultItem11ID, resultItem11Count, resultItem12ID, resultItem12Count, chance3,
  resultItem13ID, resultItem13Count, resultItem14ID, resultItem14Count,
  resultItem15ID, resultItem15Count, resultItem16ID, resultItem16Count, chance4,
  skillID, skillLevelReq, skillLevelMax, stationReq, creationTime,
  recipeItemID, layoutReq, qualityChangeable, allowDyes, allowEssences, crafting_xp,
  component1, component1count,
  component2, component2count,
  component3, component3count,
  component4, component4count,
  component5, component5count,
  component6, component6count,
  component7, component7count,
  component8, component8count,
  component9, component9count,
  component10, component10count,
  component11, component11count,
  component12, component12count,
  component13, component13count,
  component14, component14count,
  component15, component15count,
  component16, component16count
) VALUES (
  'Ironwood Chest', 'Assets/Icons/ironwood_chest.png', '',
  1002, 1,
  -1, 1, -1, 1, -1, 1,
  100,
  -1, 1, -1, 1, -1, 1, -1, 1, 100,
  -1, 1, -1, 1, -1, 1, -1, 1, 100,
  -1, 1, -1, 1, -1, 1, -1, 1, 100,
  NULL, NULL, NULL, NULL, 5,
  NULL, 1, NULL, NULL, NULL, 10,
  1001, 5,
  -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1,
  -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1
);
```

> This is illustrative only. Confirm item IDs match real `item_templates` rows.

## Mystical Islands Usage

Crafting is central to Mystical Islands' economy. Planned recipe categories:
- **Woodworking**: planks, frames, structures, furniture
- **Metalworking**: ingots, fittings, weapons, armor components
- **Alchemy**: potions, buffs, poisons
- **Cooking**: food items with temp stat bonuses
- **Seamanship**: ship components, rope, sail materials
- **Tailoring**: cloth armor, bags, flags

Blueprint-based recipes (items with `recipeItemID`) will gate advanced recipes behind loot drops or faction rewards.

## External Application Notes

- **Crafting calculator**: Join `crafting_recipes.component*` to `item_templates` for ingredient lookup; resolve to result item names
- **Web item database**: Show "Can be crafted from:" by querying `crafting_recipes WHERE resultItemID = ?`
- **Guild crafting pages**: Display guild-accessible recipes filtered by skill and station
- **Admin item editor**: Allow adding/removing recipes linked to an item

## Atavism 10.13 Upgrade Notes

No major 10.13-specific differences were identified from this page. Recheck when upgrading.
