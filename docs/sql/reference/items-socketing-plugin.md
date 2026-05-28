# Socketing Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose

The Socketing Plugin allows players to insert socket items (gems, runes, orbs, etc.) into socketed equipment. Each socketed item in `item_templates` declares a `socket_type` string (e.g. `Gem`, `Rune`). The socket item itself is also defined in `item_templates` — its effect is delivered via the `effect*` columns.

Socketing does **not** use a separate configuration table for socket profiles. The socket behavior is controlled by:
1. The `socket_type` column on equippable items — declares what type of socket they accept
2. The item template of the socket item itself — defines what bonus it provides

The `item_enchant_profile` table is used by **both** the Socketing and Enchanting plugins. In the context of socketing, it serves as the upgrade profile for socketed items (via the same `enchant_profile_id` on `item_templates`).

> **Mapping uncertain.** The exact boundary between socketing and enchanting at the database level requires verification against the Atavism editor and wiki. Both systems share `item_enchant_profile`. Verify which columns and behaviors are exclusive to each before generating production inserts.

## Source Links

- https://unity.wiki.atavismonline.com/project/socketing-plugin/

> **Wiki Note:** The Atavism wiki was unavailable at time of documentation. All table/column information is derived directly from SQL files. Cross-check with the wiki before generating production SQL.

## SQL Files Reviewed

- `docs/sql/10.13/demo/world_content.sql` — demo data (world_content database)
- `docs/sql/10.13/core/world_content.sql` — empty schema (world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `item_templates` | Equippable items with `socket_type`, socket items with effect values | world_content |
| `item_enchant_profile` | Upgrade/socket profile controlling bonus stats per level | world_content |

## Column Reference

### `item_templates` — socket-relevant columns

| Column | Meaning | Notes | Related Tables |
|---|---|---|---|
| `socket_type` | Socket category this item accepts (for equippables) OR socket category this item can be inserted into (for socket items) | varchar(86); e.g. `Gem`, `Rune`, `Orb`; empty=no socket | |
| `enchant_profile_id` | Enchant/socket profile controlling level-based bonuses | int FK to `item_enchant_profile.id`; -1=none | `item_enchant_profile` |
| `effect1type`–`effect32type` | Effect type for socket item bonuses | For socket items: type like `Stat`, `Effect` | `stat`, `effects` |
| `effect1name`–`effect32name` | Stat/effect name for socket item bonus | Must match `stat.name` | `stat` |
| `effect1value`–`effect32value` | Value of the bonus | varchar(86); numeric string | |

### `item_enchant_profile` — used also by socketing

See [items-enchanting-plugin.md](items-enchanting-plugin.md) for the full column reference of `item_enchant_profile`.

When used for socketing, the profile controls what stat bonuses the socketed item gains. The `level` column in `item_enchant_profile` represents the socket tier/quality level.

Key columns relevant to socketing:
| Column | Meaning | Notes |
|---|---|---|
| `id` | Profile ID | Referenced by `item_templates.enchant_profile_id` |
| `Name` | Profile name | varchar(64) |
| `level` | Socket quality level | int; combined PK with `id` |
| `effect1name`–`effect32name` | Stat names this profile can add | varchar(45) |
| `effect1value`–`effect32value` | Flat value added at this level | int |
| `effect1valuep`–`effect32valuep` | Percentage value added at this level | int |
| `cost` | Cost to socket | int |
| `currency` | Currency ID for socket cost | int FK to `currencies.id` |
| `chance` | Success chance | float; 0–100 |

## Relationships

```
item_templates.socket_type         — string match to socket item's socket_type
item_templates.enchant_profile_id  → item_enchant_profile.id
item_enchant_profile.currency      → currencies.id
```

The relationship between a socketed equippable and a socket item is driven by matching `socket_type` strings:
- Equippable item has `socket_type = 'Gem'`
- Gem item also has `socket_type = 'Gem'`
- At runtime, the game allows inserting a `Gem` socket item into the equippable

## Data Creation Flow

1. Decide on socket type strings (e.g. `Gem`, `Rune`, `Shard`) — these are free-form strings, not foreign keys
2. Create `currencies` row for socket costs (if different from default)
3. Create `item_enchant_profile` rows for socket bonuses (if using profile-driven bonuses)
4. Create socket item templates (`item_templates` with `socket_type` and `effect*` columns set)
5. Create equippable item templates (`item_templates` with `socket_type` matching and `enchant_profile_id` set)

> **socket_type must match exactly** between the equippable and the socket item. It is a plain string comparison, not a foreign key.

## Example SQL Planning Notes

```sql
-- Example only. Verify IDs before inserting.

-- Create a "Minor Vigor Gem" socket item (a gem that adds +10 health-max)
INSERT INTO item_templates (name, icon, icon2, category, itemType, stackLimit,
  socket_type, effect1type, effect1name, effect1value,
  enchant_profile_id, weapon_profile_id, audio_profile_id, isactive)
VALUES ('Minor Vigor Gem', 'Assets/Icons/gem_vigor.png', '', 'Socket', 'Gem', 10,
  'Gem', 'Stat', 'health-max', '10',
  -1, -1, -1, 1);

-- Create a sword with 1 Gem socket
INSERT INTO item_templates (name, icon, icon2, category, itemType, slot,
  damage, damageMax, damageType, delay,
  socket_type, enchant_profile_id, weapon_profile_id, audio_profile_id, isactive)
VALUES ('Sailor Sword', 'Assets/Icons/sword_sailor.png', '', 'Weapon', 'Sword', 'Main Hand',
  10, 18, 'Physical', 2.0,
  'Gem', -1, 4, 8, 1);
```

## Mystical Islands Usage

Mystical Islands will use a gem/rune socketing system:
- **Gems** — stat bonuses (health, stamina, attack power, armor)
- **Runes** — elemental enhancements or spell bonuses
- **Sigils** — unique effects or active procs

Socket slots will scale with item quality — Common items may have no socket, Rare items 1 socket, Epic items 2, Legendary items 3+.

## External Application Notes

- **Web item database**: Show socket slots by checking `socket_type != ''`
- **Crafting calculator**: Socket items appear as separate inserts; no dependency chain to recipes
- **Admin item editor**: `socket_type` field exposed for editing on equippable and socket items
- **Player inventory viewer**: Show inserted gems by reading player character socket data (runtime tables)

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.


Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
