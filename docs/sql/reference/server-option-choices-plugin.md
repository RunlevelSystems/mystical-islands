# Option Choices Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose
The Option Choices Plugin provides a centralized registry of dropdown/select option types and their valid choices used throughout the Atavism editor. Instead of hardcoding values into each plugin table, options are stored here and referenced by `optionTypeID`. This ensures consistency across item types, weapon types, mob types, races, and many other classification fields.

This is a foundational plugin — almost every other plugin references these option IDs (via integer or string) when classifying entities.

## Source Links
- https://unity.wiki.atavismonline.com/project/option-choices-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/10.13/demo/world_content.sql (demo data — world_content database)
- /docs/sql/10.13/core/world_content.sql (empty schema — world_content database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `editor_option` | Defines each option type category (e.g. "Item Type", "Race") | world_content DB |
| `editor_option_choice` | Defines the valid choices within each option type | world_content DB |

## Column Reference

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `editor_option` | `id` | Auto-increment primary key | Referenced as `optionTypeID` in `editor_option_choice` | `editor_option_choice` |
| `editor_option` | `optionType` | Human-readable label for this option category | Unique. Examples: "Item Type", "Race", "Class", "Gender" | — |
| `editor_option` | `deletable` | Whether this option type can be deleted from the editor | 0 = system-protected, 1 = user-deletable | — |
| `editor_option` | `isactive` | Soft-delete flag | 1 = active | — |
| `editor_option` | `creationtimestamp` | Row creation time | Auto-set | — |
| `editor_option` | `updatetimestamp` | Last update time | Managed by trigger | — |
| `editor_option_choice` | `id` | Auto-increment primary key | 454 choices in demo data | — |
| `editor_option_choice` | `optionTypeID` | FK → `editor_option.id` | Determines which category this choice belongs to | `editor_option` |
| `editor_option_choice` | `choice` | The actual choice text | Max 45 chars. Examples: "Sword", "Elf", "Warrior" | — |
| `editor_option_choice` | `deletable` | Whether this choice can be deleted | 0 = protected, 1 = user-deletable | — |
| `editor_option_choice` | `isactive` | Soft-delete flag | 1 = active | — |
| `editor_option_choice` | `creationtimestamp` | Row creation time | Auto-set | — |
| `editor_option_choice` | `updatetimestamp` | Last update time | — | — |

## Demo Data: Known Option Types (from world_content.sql)

| ID | optionType | deletable |
|---|---|---|
| 1 | Item Type | 0 |
| 2 | Weapon Type | 0 |
| 3 | Armor Type | 0 |
| 4 | Species | 0 |
| 5 | Race | 0 |
| 6 | Class | 0 |
| 7 | Crafting Station | 0 |
| 8 | Dialogue Action | 0 |
| 9 | Mob Type | 0 |
| 10 | Stat Functions | 0 |
| 11 | Target Type | 0 |
| 12 | Item Effect Type | 0 |
| 13 | Quest Objective Type | 0 |
| 14 | Stat Shift Requirement | 0 |
| 15 | Stat Shift Action | 0 |
| 16 | Requirement | 0 |
| 17 | Currency Group | 0 |
| 18 | Building Category | 0 |
| 19 | State | 0 |
| 20 | Interaction Type | 0 |
| 21 | Ammo Type | 0 |
| 22 | Claim Object Interaction Type | 0 |
| 23 | Sockets Type | 0 |
| 24 | Item Quality | 0 |
| 25 | Effects Tags | 0 |
| 26 | Ability Tags | 0 |
| 27 | Claim Type | 0 |
| 28 | Claim Object Category | 0 |
| 29 | Gender | 0 |
| 30 | Item Slot Type | 1 |
| 31 | Tool Type | 1 |
| 32 | Mob Tags | 1 |
| 33 | Target Sub Type | 0 |
| 34 | Slots Sets | 0 |
| 35 | Weapon Actions | 0 |

## Relationships
- `editor_option.id` → `editor_option_choice.optionTypeID` (one-to-many)
- Option choice IDs and text strings are referenced across virtually all other tables in world_content for classification fields
- Many tables store option text (e.g. `weaponType` = "Sword") as a string rather than FK integer — verify per table before assuming integer join

## Data Creation Flow
1. Check if the option type already exists in `editor_option`
2. If a new type is needed, INSERT into `editor_option` first
3. INSERT choice rows into `editor_option_choice` referencing the `editor_option.id`
4. Use the resulting `editor_option_choice.id` or `choice` text as values in other plugin tables

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.

-- Add a new option type
INSERT INTO `editor_option` (`optionType`, `deletable`, `isactive`)
VALUES ('Island Region Type', 1, 1);

-- Add choices to the new type (replace 36 with the actual inserted ID)
INSERT INTO `editor_option_choice` (`optionTypeID`, `choice`, `deletable`, `isactive`)
VALUES (36, 'Tropical', 1, 1);
```

## Mystical Islands Usage
Mystical Islands will need custom option choices for:
- **Race**: Island-specific races (e.g. Corsair, Deepborn, Tidecaller)
- **Class**: Mystical Islands class/aspect names
- **Mob Type**: Island fauna and pirate faction mobs
- **Item Type / Weapon Type**: Nautical weapons, island relics
- **Claim Type**: Player settlement types
- **Island Region Type**: Custom type if added

All Mystical Islands option choices should use `deletable = 1` so they can be adjusted without breaking core Atavism types.

## External Application Notes
Option choices are useful for:
- **Admin panels**: Populate dropdowns for item/mob editors
- **Web dashboards**: Render human-readable labels from integer codes stored elsewhere
- **Data migration tools**: Validate classification values before import

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.

Review migration notes and re-verify this module against the 10.13 SQL files before production inserts.
