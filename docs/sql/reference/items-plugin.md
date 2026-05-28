# Items Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose

The Items Plugin is the core of Atavism's item system. It defines item templates — every equippable, consumable, crafting material, currency bag, tool, or shop item in the game. Each row in `item_templates` is one item definition.

Items support:
- Equipment slots (armor, weapons, rings, etc.)
- Visual display prefabs for equipped weapons
- Stat effects (up to 32 effect slots)
- Purchase currency and cost
- Item quality (rarity)
- Binding rules
- Stack limits
- Durability and repairability
- Passive abilities
- Enchanting, socketing, and weapon profiles
- Audio profiles
- Item weight categories
- Shop/vending behavior

## Source Links

- https://unity.wiki.atavismonline.com/project/items-plugin/

> **Wiki Note:** The Atavism wiki was unavailable at time of documentation. All table/column information is derived directly from SQL files. Cross-check with the wiki before generating production SQL.

## SQL Files Reviewed

- `docs/sql/10.13/demo/world_content.sql` — demo data (world_content database)
- `docs/sql/10.13/core/world_content.sql` — empty schema (world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `item_templates` | One row per item definition | world_content |
| `item_templates_options` | Option choice requirements per item (race/class restrictions, etc.) | world_content |
| `item_quality` | Item rarity/quality tiers with cost multiplier and drop chance | world_content |
| `item_weights` | Named weight profiles that map stat names to weight values | world_content |
| `editor_option_choice` | Valid option values for item type, slot, binding, etc. | world_content |

## Column Reference

### `item_templates`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | Referenced by `item_templates_options.item_id`, `crafting_recipes.resultItemID`, `item_set_items.template_id`, `build_object_stage.itemReq*`, `character_create_items.item` |
| `name` | Item display name | varchar(86) | |
| `icon` | Path to icon asset | varchar(256); Unity asset path | |
| `icon2` | Base64-encoded icon | mediumtext; used by editor UI | |
| `category` | Item category string | Option choice value; e.g. `Weapon`, `Armor`, `Consumable` | `editor_option_choice` |
| `subcategory` | Item subcategory | Option choice value | `editor_option_choice` |
| `itemType` | Item type code | Option choice value | `editor_option_choice` |
| `subType` | Item subtype code | Option choice value | `editor_option_choice` |
| `slot` | Equipment slot name | Must match a name in `item_slots.name` | `item_slots` |
| `display` | Display prefab asset path | Prefab shown when equipped as armor | |
| `slot1`–`slot10` | Weapon attachment bone slots | Bone/transform names for weapon draw | `item_slots` |
| `drawWeaponEffect1`–`10` | Coordinated effect on draw for each slot | Asset path or effect name | |
| `drawWeaponTime1`–`10` | Draw animation time (int) | In tenths of a second typically | |
| `holsteringWeaponEffect1`–`10` | Coordinated effect on holster | | |
| `holsteringWeaponTime1`–`10` | Holster animation time | | |
| `itemQuality` | Rarity tier (tinyint) | FK to `item_quality.id`; 1=Poor, 2=Common, 3=Uncommon, 4=Rare, 5=Epic, 6=Legendary | `item_quality` |
| `binding` | Binding rule (tinyint) | 0=No Bind, 1=Bind on Pickup, 2=Bind on Equip | `editor_option_choice` |
| `isUnique` | Cannot have more than one in inventory | tinyint(1) | |
| `stackLimit` | Max stack size | NULL or int | |
| `duration` | Item duration in seconds | 0=permanent | |
| `purchaseCurrency` | Currency ID for buying | FK to `currencies.id` | `currencies` |
| `purchaseCost` | Cost in that currency | bigint | |
| `sellable` | Can sell to NPC vendor | tinyint(1), default 1 | |
| `damage` | Minimum weapon damage | int | |
| `damageMax` | Maximum weapon damage | int | |
| `damageType` | Damage type string | Must match `damage_type.name` | `damage_type` |
| `delay` | Weapon attack speed | float; seconds per swing | |
| `toolTip` | Tooltip text | varchar(255) | |
| `triggerEvent` | Server event triggered on use | varchar(86) | |
| `triggerAction1Type` | Type of trigger action | varchar(86) | |
| `triggerAction1Data` | Data for trigger action | varchar(86) | |
| `effect1type`–`effect32type` | Effect type for effect slot N | String key: `Stat`, `Ability`, `Effect`, etc. | `effects`, `abilities` |
| `effect1name`–`effect32name` | Effect/stat name for slot N | Must match stat name or effect name | `stat`, `effects` |
| `effect1value`–`effect32value` | Effect value for slot N | varchar(86); numeric string | |
| `actionBarAllowed` | Item can be placed on action bar | tinyint(1), default 0 | |
| `enchant_profile_id` | Enchanting profile | FK to `item_enchant_profile.id`; -1=none | `item_enchant_profile` |
| `weapon_profile_id` | Weapon action profile | FK to `weapon_templates_profile.id`; -1=none | `weapon_templates_profile` |
| `auctionHouse` | Can list on auction house | tinyint(1), default 1 | |
| `skillExp` | Skill XP granted on use | int | |
| `gear_score` | Gear score contribution | int | |
| `weight` | Item weight value | int | |
| `durability` | Max durability | int; 0=indestructible | |
| `autoattack` | Auto-attack ability ID | int; -1=none | `abilities` |
| `socket_type` | Socket category string | varchar(86); e.g. `Gem`, `Rune`; empty=no socket | |
| `ammotype` | Ammo type requirement | int; 0=none | |
| `death_loss` | Percent chance to lose on death | int | |
| `parry` | Can parry attacks | tinyint(1), default 0 | |
| `oadelete` | Remove from OA on delete | tinyint(1) | |
| `passive_ability` | Passive ability applied when equipped | int FK to `abilities.id`; -1=none | `abilities` |
| `shopSlots` | Number of shop slots (for shop items) | int | |
| `shopModel` | Shop model asset (not used per comment) | varchar(256) | |
| `shopTag` | Shop tag identifier | varchar(256) | |
| `numShops` | Number of shops | int | |
| `shopDestroyOnLogOut` | Destroy shop on logout | tinyint(1), default 1 | |
| `shopMobTemplate` | Mob template for shop NPC | int FK to `mob_templates.id`; -1=none | `mob_templates` |
| `shopTimeOut` | Shop timeout in seconds | int; 0=no timeout | |
| `repairable` | Can be repaired | tinyint, default 1 | |
| `ground_prefab` | Prefab shown on ground (dropped item) | varchar(128) | |
| `audio_profile_id` | Audio events for this item | int FK to `item_audio_profile.id`; -1=none | `item_audio_profile` |
| `isactive` | Active flag | tinyint(1), default 1 | |
| `creationtimestamp` | Created timestamp | auto | |
| `updatetimestamp` | Last updated timestamp | auto via trigger | |

### `item_templates_options`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `item_id` | Item this option requirement applies to | FK to `item_templates.id` | `item_templates` |
| `editor_option_type_id` | The option type (e.g. Race, Class) | FK to `editor_option.id` | `editor_option` |
| `editor_option_choice_type_id` | The specific option value required | varchar(45); value from `editor_option_choice` | `editor_option_choice` |
| `required_value` | Minimum value of the option required | int | |
| `isactive` | Active flag | tinyint(1), default 1 | |
| `creationtimestamp` | Created timestamp | auto | |
| `updatetimestamp` | Last updated timestamp | auto via trigger | |

### `item_quality`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Quality tier ID | Not auto-increment; manually set | Referenced by `item_templates.itemQuality` |
| `name` | Quality name | varchar(20); e.g. `Poor`, `Common`, `Rare` | |
| `cost` | Cost multiplier | int; used in pricing calculations | |
| `chance` | Base drop chance percentage | int | |

Demo data:
```
(1, 'Poor',      50, 100)
(2, 'Common',    60,  90)
(3, 'Uncommon',  70,  80)
(4, 'Rare',      80,  70)
(5, 'Epic',      90,  60)
(6, 'Legendary', 100, 50)
```

### `item_weights`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `name` | Profile name | varchar(64) | |
| `prefix` | Add as prefix to item name | tinyint(1) | |
| `stat1`–`stat3` | Stat name for each weight slot | varchar(64) | `stat` |
| `weight1`–`weight3` | Weight value for each stat | int | |
| `isactive` | Active flag | | |
| `creationtimestamp` | Created timestamp | | |
| `updatetimestamp` | Updated timestamp | | |

> No demo data found for `item_weights` in the reviewed SQL files.

## Relationships

```
item_quality.id           ← item_templates.itemQuality
item_slots.name           ← item_templates.slot
item_enchant_profile.id   ← item_templates.enchant_profile_id
weapon_templates_profile.id ← item_templates.weapon_profile_id
item_audio_profile.id     ← item_templates.audio_profile_id
currencies.id             ← item_templates.purchaseCurrency
damage_type.name          ← item_templates.damageType
abilities.id              ← item_templates.passive_ability / autoattack
stat/effects              ← item_templates.effect*name

item_templates.id         ← item_templates_options.item_id
editor_option.id          ← item_templates_options.editor_option_type_id
editor_option_choice      ← item_templates_options.editor_option_choice_type_id

item_templates.id         ← crafting_recipes.resultItemID / component*
item_templates.id         ← item_set_items.template_id
item_templates.id         ← build_object_stage.itemReq*
item_templates.id         ← character_create_items.item
item_templates.id         ← loot_table_items.item
item_templates.id         ← merchant_item.item_id
```

## Data Creation Flow

1. Create `editor_option_choice` entries for item categories, types, binding values (usually exists from base install)
2. Create `item_quality` rows (usually pre-populated: Poor–Legendary)
3. Create `currencies` rows (must exist before items that reference `purchaseCurrency`)
4. Create `item_slots` rows (must exist before items that use `slot`)
5. Create `item_audio_profile` rows (optional; needed if `audio_profile_id` used)
6. Create `item_enchant_profile` rows (optional; needed if `enchant_profile_id` used)
7. Create `weapon_templates_profile` rows (optional; needed if `weapon_profile_id` used)
8. Create `abilities` rows (optional; needed if `passive_ability` / `autoattack` used)
9. Create `item_templates` rows
10. Create `item_templates_options` rows (race/class restrictions, if needed)

## Example SQL Planning Notes

```sql
-- Example only. Verify IDs before inserting.

-- Item with no effects (simple resource drop)
INSERT INTO item_templates (name, icon, icon2, category, subcategory, itemType, subType,
  itemQuality, stackLimit, purchaseCurrency, purchaseCost, sellable,
  enchant_profile_id, weapon_profile_id, audio_profile_id, isactive)
VALUES ('Ironwood Plank', 'Assets/Icons/ironwood_plank.png', '', 'Resource', 'Wood', '', '',
  2, 99, 1, 50, 1,
  -1, -1, -1, 1);

-- Item restriction: class requirement via item_templates_options
-- option_type_id for 'Class' and choice_type_id value must be verified from editor_option tables
INSERT INTO item_templates_options (item_id, editor_option_type_id, editor_option_choice_type_id, required_value)
VALUES (1001, 3, '23', 1);
```

## Mystical Islands Usage

Every item in Mystical Islands — weapons, armor, consumables, crafting materials, quest items, building components, currency bags — requires one row in `item_templates`.

Items we plan to create:
- Weapons (swords, bows, staves, axes, tools)
- Armor (plate, leather, cloth per slot)
- Consumables (potions, food, scrolls)
- Crafting materials (gathered resources, refined materials)
- Quest items and keys
- Building components (planks, stones, metals)
- Currency bags and exchange tokens

Item effects map to Atavism's stat system. Stats like `health-max`, `stamina`, `attack-power`, `armor` must match entries in the `stat` table.

## External Application Notes

- **Web item database**: Query `item_templates JOIN item_quality` for a full item catalog with rarity
- **Crafting calculator**: Join `crafting_recipes` to `item_templates` on `component*` and `resultItemID`
- **Market/auction helper**: `item_templates.auctionHouse` flag controls listing eligibility
- **Admin item editor**: Direct CRUD on `item_templates`; `item_templates_options` for class/race restrictions
- **Player inventory viewer**: Player inventory references `item_templates.id` for display name, icon, tooltip

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.


Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
