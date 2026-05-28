# Currencies Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose

The Currencies Plugin manages all in-game currencies. Currencies are used by:
- Items (purchase cost)
- Merchants (shop pricing)
- Crafting (material costs)
- Enchanting (enchant fees)
- Quests (rewards)
- Achievements (rewards)

Atavism supports multiple currencies simultaneously. Currencies can be grouped and ordered in the UI. A currency can optionally auto-convert into another currency (e.g. 100 Bronze → 1 Silver).

Currencies can be marked as `external` (premium/real-money currency), which enables a separate economy track.

## Source Links

- https://unity.wiki.atavismonline.com/project/currencies-plugin/

> **Wiki Note:** The Atavism wiki was unavailable at time of documentation. All table/column information is derived directly from SQL files. Cross-check with the wiki before generating production SQL.

## SQL Files Reviewed

- `docs/sql/10.13/demo/world_content.sql` — demo data (world_content database)
- `docs/sql/10.13/core/world_content.sql` — empty schema (world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `currencies` | One row per currency definition | world_content |
| `currency_conversion` | Auto-conversion rules between currencies | world_content |

## Column Reference

### `currencies`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | Referenced by `item_templates.purchaseCurrency`, `item_enchant_profile.currency`, `merchant_item.currency_id`, `quests` reward fields |
| `category` | Category group for UI display | int; groups currencies into tabs/sections | |
| `name` | Currency display name | varchar(64); e.g. `Gold`, `Silver`, `Bronze` | |
| `icon` | Path to currency icon | varchar(256); Unity asset path | |
| `icon2` | Base64-encoded icon | mediumtext; used by editor UI | |
| `description` | Short description | varchar(225) | |
| `maximum` | Maximum amount player can hold | bigint; default 999999 | |
| `currencyGroup` | UI group ID | int; groups currencies in wallet UI | |
| `currencyPosition` | Sort order within the group | int | |
| `external` | Premium/external currency flag | tinyint(1); 0=normal, 1=external (real-money) | |
| `isactive` | Active flag | tinyint(1), default 1 | |
| `creationtimestamp` | Created timestamp | auto | |
| `updatetimestamp` | Last updated timestamp | auto | |

Demo data (from world_content.sql):
```
id=1  Gold    category=1  maximum=999999  currencyGroup=80  position=0  external=0
id=2  Silver  category=1  maximum=100     currencyGroup=80  position=1  external=0
id=3  Bronze  category=1  maximum=100     currencyGroup=80  position=2  external=0
```
> Icon paths for Gold/Silver/Bronze use base64 icon2; actual icon field references `Assets/Dragonsan/AtavismObjects/Icons/...`

### `currency_conversion`

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `id` | Primary key | Auto increment | |
| `currencyID` | Source currency that converts | int FK to `currencies.id` | `currencies` |
| `currencyToID` | Target currency to convert into | int FK to `currencies.id` | `currencies` |
| `amount` | How many of source = 1 of target | int; e.g. 100 Bronze = 1 Silver | |
| `autoConverts` | Convert automatically when threshold reached | tinyint(1); 1=auto, 0=manual | |
| `isactive` | Active flag | tinyint(1), default 1 | |

Demo data:
```
(1, currencyID=2 Silver → currencyToID=1 Gold,   amount=100, autoConverts=1)
(2, currencyID=3 Bronze → currencyToID=2 Silver,  amount=100, autoConverts=1)
```
This creates a 3-tier Bronze → Silver → Gold cascade.

## Relationships

```
currencies.id  ←  item_templates.purchaseCurrency
currencies.id  ←  item_enchant_profile.currency
currencies.id  ←  merchant_item.currency_id (mapping uncertain; verify)
currencies.id  ←  currency_conversion.currencyID
currencies.id  ←  currency_conversion.currencyToID
currencies.id  ←  quest reward fields (verify column names in quests table)
currencies.id  ←  vip_level_bonuses (verify)
```

## Data Creation Flow

1. Create `currencies` rows (do this early — items, enchanting, and merchants all reference currency IDs)
2. Create `currency_conversion` rows (optional; only if tiered currency is desired)

> **Warning:** Currency IDs are hard-coded in many other tables. Do not change an existing currency's ID after it has been referenced by items, enchant profiles, or merchant tables.

## Example SQL Planning Notes

```sql
-- Example only. Verify IDs before inserting.

-- Three-tier currency system: Bronze, Silver, Gold
INSERT INTO currencies (category, name, icon, icon2, description, maximum, currencyGroup, currencyPosition, external)
VALUES
  (1, 'Gold',   'Assets/Icons/gold.png',   '', '', 999999, 1, 0, 0),
  (1, 'Silver', 'Assets/Icons/silver.png', '', '', 9999,   1, 1, 0),
  (1, 'Bronze', 'Assets/Icons/bronze.png', '', '', 9999,   1, 2, 0);

-- Auto-conversion: 100 Silver → 1 Gold; 100 Bronze → 1 Silver
INSERT INTO currency_conversion (currencyID, currencyToID, amount, autoConverts)
VALUES
  (2, 1, 100, 1),  -- Silver → Gold
  (3, 2, 100, 1);  -- Bronze → Silver
```

## Mystical Islands Usage

Mystical Islands will use a tiered currency system consistent with a nautical trading MMORPG theme. Planned currencies:

| Name | Role | Notes |
|---|---|---|
| Gold Doubloon | Primary high-value currency | Standard MMO gold equivalent |
| Silver Coin | Mid-tier currency | 100 = 1 Gold Doubloon |
| Copper Bit | Small transactions | 100 = 1 Silver Coin |
| Guild Marks | Guild economy | Non-convertible guild reward currency |
| Harbor Tokens | Port/faction currency | Island-specific faction rewards |

> Final currency names and IDs are not yet inserted. Do not hard-code these IDs in item templates until currencies are confirmed.

## External Application Notes

- **Market/auction helper**: Currency display uses `currencies.name` and `icon` for price labels
- **Admin item editor**: Currency selector dropdown populates from `currencies` table
- **Web item database**: Purchase cost shown as `[purchaseCost] [currency.name]`
- **Guild crafting pages**: Guild Marks currency referenced in crafting cost display

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.


Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
