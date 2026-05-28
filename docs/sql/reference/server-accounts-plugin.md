# Accounts Plugin

## AI Reference Notes
This file is based on Atavism 10.13 SQL core/demo schema files and official Atavism wiki documentation.

Before generating SQL:
- verify target database version is Atavism 10.13
- verify IDs and option choices
- verify foreign key-style relationships
- verify whether demo rows are present or removed
- verify whether the target database was created from core schema or demo schema

## Purpose
The Accounts Plugin manages player login accounts, their linked characters, in-game currency balances, shop purchases, and per-account settings. Account data is split across two databases: `master` (source of truth for login, currency, purchases) and `admin` (runtime copy used by game servers). Both must be kept in sync.

## Source Links
- https://unity.wiki.atavismonline.com/project/accounts-plugin/ (unavailable at time of writing)

## SQL Files Reviewed
- /docs/sql/10.13/demo/master.sql (demo data — master database)
- /docs/sql/10.13/demo/admin.sql (demo data — admin database)
- /docs/sql/10.13/core/master.sql (empty schema — master database)
- /docs/sql/10.13/core/admin.sql (empty schema — admin database)

## Tables Edited / Used

| Table | Purpose | Source |
|---|---|---|
| `account` | Primary account record (login, currency, status) | master DB |
| `account_character` | Links account IDs to character IDs per world server | master DB |
| `account_purchases` | Records shop item purchases per account | master DB |
| `account_setting` | Per-account key/value settings | master DB |
| `account` | Runtime copy of account data used by game server | admin DB |
| `account_character` | Character name → accountId mapping used at runtime | admin DB |

## Column Reference

### account (master DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `account` | `id` | Auto-increment PK | Primary account identifier | `account_character`, `account_purchases`, `account_setting` |
| `account` | `username` | Login name | Unique, max 228 chars | — |
| `account` | `password` | Hashed password | Max 128 chars | — |
| `account` | `email` | Email address | Max 64 chars | — |
| `account` | `status` | Account status | Default 1 (active). Check Atavism docs for status codes | — |
| `account` | `birthdate` | Date of birth | Optional | — |
| `account` | `activated` | Email activation flag | 0/1 | — |
| `account` | `suspended` | Suspension flag | 0/1 | — |
| `account` | `activation_key` | Email activation key | 32 char token | — |
| `account` | `current_world_id` | Currently logged-in world | -1 = not logged in | `server` |
| `account` | `created_at` | Account creation datetime | — | — |
| `account` | `last_modified_at` | Last modification datetime | — | — |
| `account` | `coin_current` | Current premium coin balance | Integer | — |
| `account` | `coin_total` | Total coins ever received | Integer | — |
| `account` | `external_id` | External auth/SSO ID | Optional; for third-party auth | — |

### account_character (master DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `account_character` | `id` | Auto-increment PK | — | — |
| `account_character` | `account_id` | FK → `account.id` (master) | — | `account` |
| `account_character` | `character_id` | OID of the character object | BigInt; references `objstore.obj_id` in atavism DB | `objstore` |
| `account_character` | `world_server_id` | Server the character lives on | Integer | `server` |
| `account_character` | `status` | Character status | Default 1 (active) | — |

### account_purchases (master DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `account_purchases` | `id` | Auto-increment PK | — | — |
| `account_purchases` | `account_id` | FK → `account.id` | BigInt | `account` |
| `account_purchases` | `itemID` | Shop item ID purchased | Integer | — |
| `account_purchases` | `itemCount` | Quantity purchased | — | — |
| `account_purchases` | `itemPurchaseDate` | When purchased | Timestamp | — |
| `account_purchases` | `itemClaimDate` | When claimed in-game | NULL = not yet claimed | — |
| `account_purchases` | `itemClaims` | Claim tracking JSON/string | TEXT; format uncertain | — |

### account_setting (master DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `account_setting` | `id` | Auto-increment PK | — | — |
| `account_setting` | `account_id` | FK → `account.id` | — | `account` |
| `account_setting` | `setting` | Setting key name | Max 45 chars | — |
| `account_setting` | `settingValue` | Setting value | Max 45 chars | — |

### account (admin DB) — runtime copy

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `account` | `id` | BigInt PK | Matches master `account.id` | — |
| `account` | `username` | Login name | Unique | — |
| `account` | `status` | Runtime account status | Integer | — |
| `account` | `created` | Account creation timestamp | — | — |
| `account` | `last_login` | Last login timestamp | — | — |
| `account` | `character_slots` | Max character slots | Default 10 | — |
| `account` | `coin_current` | Current coin balance (runtime) | — | — |
| `account` | `coin_total` | Total coins received (runtime) | — | — |
| `account` | `coin_used` | Coins spent | — | — |
| `account` | `islands_available` | Number of islands account can own | Default 1 | — |
| `account` | `last_logout` | Last logout timestamp | — | — |

### account_character (admin DB)

| Table | Column | Meaning | Notes | Related Tables |
|---|---|---|---|---|
| `account_character` | `characterId` | BigInt PK; OID of character | — | `objstore` |
| `account_character` | `characterName` | Character display name | Max 45 chars | — |
| `account_character` | `accountId` | FK → `account.id` (admin) | BigInt | `account` |

## Relationships
- `master.account.id` = `admin.account.id` (same account, different databases)
- `master.account_character.character_id` = `admin.account_character.characterId` = `atavism.objstore.obj_id`
- `master.account_character.account_id` → `master.account.id`
- `admin.account_character.accountId` → `admin.account.id`
- `account_purchases.account_id` → `master.account.id`
- `account_setting.account_id` → `master.account.id`

## Data Creation Flow
1. Accounts are created through the Atavism registration system (not typically by manual INSERT)
2. For migration, INSERT into `master.account` first, then sync to `admin.account`
3. `account_character` rows are created when a character is first created
4. `account_purchases` rows are created by the billing/shop system
5. `account_setting` rows are inserted as players adjust their preferences

## Example SQL Planning Notes
```sql
-- Example only. Verify IDs before inserting.
-- Account creation is normally handled by the Atavism auth system.
-- Direct INSERT is for migration/testing only.

-- Check an account's coin balance
SELECT id, username, coin_current, coin_total FROM account WHERE username = 'player_name';

-- Check characters for an account
SELECT ac.character_id, s.world_server_id
FROM account_character ac
WHERE ac.account_id = 42;
```

## Mystical Islands Usage
- Account system will be used as-is from Atavism — no major customization expected
- `islands_available` in admin.account controls how many player islands each account can own
- `coin_current` drives premium shop purchases (Mystical Islands cosmetic economy)
- `account_setting` can store custom Mystical Islands UI preferences
- External SSO/OAuth integration can use `external_id`

## External Application Notes
- **Account portal / web dashboard**: Read account status, coin balance, character list
- **Shop / billing integration**: Write to `account_purchases` on successful purchase
- **Admin tools**: Suspend/activate accounts, adjust coin balances
- **Character management page**: List characters per account using `account_character`

## Atavism 10.13 Upgrade Notes
See [Atavism 10.13 SQL Migration Notes](atavism-10.13-migration-notes.md) for consolidated cross-module schema changes and insert impacts.

Review migration notes and re-verify this module against the 10.13 SQL files before production inserts. The split between master/admin account tables is a core Atavism architecture pattern unlikely to change.
