# Database Reference

Technical Atavism plugin and SQL reference for field meanings, plugin relationships, data dependencies, and automation-ready schema conventions.

This is the primary future source for SQL insert generation, balancing workflows, NPC/item/merchant/quest generation, and AI-assisted content tooling.

---

## Consolidated Sourcebook

This page consolidates and preserves existing Mystical Islands documentation in one centralized reference.

### Source: `docs/technical/database_notes.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to 🛠 Technical Index] (README.md)

**Breadcrumbs:** Home / Technical / 🗄 Database Notes

---

# 🗄 Database Notes
## Overview
Document authoritative data ownership for characters, progression, economy transactions, and world state.

## Priority
**P1 before vertical slice persistence hardening.**

---

## Related Documents
- [🧩 Atavism Notes] (atavism_notes.md)
- [🖥 Server Setup] (server_setup.md)
- [Mystical Isles Merchant Tables (Atavism X 9)] (../systems/merchant_tables.md)

## Suggested Reading
- Previous: [🧱 Prefab Standards] (prefab_standards.md)
- Next: You have reached the end of this section path.

## Navigation
- [⬆ Back to 🛠 Technical Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/technical/atavism_notes.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to 🛠 Technical Index] (README.md)

**Breadcrumbs:** Home / Technical / 🧩 Atavism Notes

---

# 🧩 Atavism Notes
## Overview
Atavism is the MMORPG backbone for character, combat, inventory, quest, and networked progression systems.

## Implementation Notes
- keep system data normalized across skills/items/abilities
- maintain strict ID ownership rules to avoid content collisions

## Production Priority
**P0 core platform dependency.**

---

## Related Documents
- [🛠 Unity Setup] (unity_setup.md)
- [🗄 Database Notes] (database_notes.md)
- [Mystical Isles Items System (Atavism X 9)] (../systems/items_system.md)

## Suggested Reading
- Previous: Start with this page.
- Next: [🛠 Unity Setup] (unity_setup.md)

## Navigation
- [⬆ Back to 🛠 Technical Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/technical/server_setup.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to 🛠 Technical Index] (README.md)

**Breadcrumbs:** Home / Technical / 🖥 Server Setup

---

# 🖥 Server Setup
## Overview
Server environment standards for multiplayer stability, persistence, and update safety.

## Priority
**P0 for multiplayer prototype reliability.**

---

## Related Documents
- [🛠 Unity Setup] (unity_setup.md)
- [🗄 Database Notes] (database_notes.md)
- [✅ MVP Scope — Minimum Playable MMORPG] (../production/mvp_scope.md)

## Suggested Reading
- Previous: [🛠 Unity Setup] (unity_setup.md)
- Next: [🧱 Prefab Standards] (prefab_standards.md)

## Navigation
- [⬆ Back to 🛠 Technical Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/technical/unity_setup.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to 🛠 Technical Index] (README.md)

**Breadcrumbs:** Home / Technical / 🛠 Unity Setup

---

# 🛠 Unity Setup
## Overview
Unity project setup standards for deterministic builds and shared team workflow.

## Key Standards
- fixed package versions per milestone
- scene/prefab folder structure consistency
- environment and lighting presets by region profile

## Production Priority
**P0 team onboarding and stability.**

---

## Related Documents
- [🖥 Server Setup] (server_setup.md)
- [🧱 Prefab Standards] (prefab_standards.md)
- [⚙ Technical Asset Notes] (../assets/technical_asset_notes.md)

## Suggested Reading
- Previous: [🧩 Atavism Notes] (atavism_notes.md)
- Next: [🖥 Server Setup] (server_setup.md)

## Navigation
- [⬆ Back to 🛠 Technical Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/merchant_tables.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles Merchant Tables (Atavism X 9)

---

# Mystical Isles Merchant Tables (Atavism X 9)
## Atavism Merchant Table Overview

Atavism Merchant Tables define what items each merchant sells and how stock behaves over time.

- Merchant Tables define sell inventory for a merchant profile.
- Merchant Tables attach to Mob/NPC templates during spawn setup.
- Merchants are assigned through in-game spawner configuration.
- Item `Count = -1` means unlimited stock.
- Item `Count > 0` means limited stock.
- `Refresh Time` controls restock interval.
- Multiple merchant tables should be used for different merchant identities.

## Merchant Table Field Reference

| Field | Purpose | Mystical Isles Usage |
| --- | --- | --- |
| Merchant Table Name | Unique table identifier | Use role + region naming (example: `Frostpeak Dwarven Forge Merchant`) |
| Item | Item template entry in merchant inventory | Add only role-appropriate items to preserve merchant identity |
| Count | Available quantity for each item entry | `-1` for basics, finite counts for rare/specialized stock |
| Refresh Time | Restock interval in seconds | Short for common goods, long for rare blueprints/maps/relics |
| Add Item | Appends an item row to the table | Build curated inventory per merchant archetype |

## Stock and Refresh Rules

| Stock Category | Rule | Recommended Refresh |
| --- | --- | --- |
| Basic food/supplies | Unlimited or high stock | Unlimited or 300 seconds |
| Beginner tools/common consumables | Unlimited | Unlimited or 300 seconds |
| Crafting supplies | Limited by tier | 900-1800 seconds |
| Rare materials | Limited | 3600-21600 seconds |
| Blueprints and ship upgrades | Very limited | 7200-43200 seconds |
| Treasure maps | Very limited | 43200-86400 seconds |
| Legendary/event items | Event/quest gated | Event-only or unlock-only |

## Merchant Table Master List

| Merchant Table | Merchant Type | Region | Faction | Items Sold | Stock Rules | Refresh Time | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| General Town Supplies | General Merchant | Multi-region towns | Neutral | Basic supplies and consumables | Mostly unlimited | 0-600 | New player sustain |
| Basic Adventurer Goods | General Merchant | Multi-region towns | Neutral | Starter gear and utility items | Mixed | 300-900 | Early progression |
| Common Food and Drink | Food Merchant | Multi-region towns | Neutral | Rations and drinks | Unlimited | 0-300 | Travel prep |
| Starter Tools | Tool Merchant | Multi-region towns | Neutral | Basic gathering tools | Unlimited | 0-300 | Gathering entry |
| Common Bags | General Merchant | Multi-region towns | Neutral | Low-tier bag upgrades | Limited | 600-1800 | Inventory progression |
| Kingdom Weapons | Weapon Merchant | Mainland Kingdom | Kingdom | Kingdom weapon lineup | Limited | 900-3600 | Lawful combat identity |
| Kingdom Armor | Armor Merchant | Mainland Kingdom | Kingdom | Kingdom armor tiers | Limited | 900-3600 | Defensive progression |
| Pirate Weapons | Pirate Merchant | Shattered Reefs | Reef Corsairs | Pirate melee/ranged weapons | Limited | 1800-7200 | Outlaw loadouts |
| Pirate Gear | Pirate Merchant | Shattered Reefs | Reef Corsairs | Utility and smuggling gear | Limited | 1800-7200 | Smuggling-focused |
| Dwarven Forge Weapons | Dwarven Forge Merchant | Frostpeak Isle | Frostpeak Clan | Heavy forged weapon stock | Limited | 1800-7200 | Ore/forge synergy |
| Dwarven Armor | Dwarven Forge Merchant | Frostpeak Isle | Frostpeak Clan | Heavy armor sets | Limited | 1800-21600 | Tank gear progression |
| Elven Bows and Robes | Elven Grove Merchant | Witchwood Isle | Witchwood Enclave | Bows, robes, nature gear | Limited | 1800-7200 | Nature/stealth role |
| Witch Coven Implements | Witch Coven Merchant | Witchwood Isle | Coven of the Veil | Ritual tools and cursed focus gear | Limited | 3600-21600 | Veil-aligned inventory |
| Orc War Gear | Orc War Merchant | Ashen Deadlands | Ashen Horde | War salvage and heavy battle gear | Limited | 1800-7200 | War economy |
| Blacksmith Supplies | Crafting Merchant | Mainland/Frostpeak | Neutral | Smelting and forging materials | Mixed | 900-1800 | Core crafting supply |
| Alchemy Supplies | Crafting Merchant | Mainland/Witchwood | Neutral | Herbs, vials, reagents | Mixed | 900-1800 | Potion pipelines |
| Engineering Supplies | Crafting Merchant | Frostpeak/Stormreach | Arcforge Consortium | Mechanical parts and kits | Limited | 1800-7200 | Tech progression |
| Shipbuilding Supplies | Crafting Merchant | Shattered Reefs ports | Neutral | Timber, sailcloth, fittings | Mixed | 900-3600 | Naval economy |
| Enchanting Supplies | Crafting Merchant | Mainland/Witchwood | Neutral | Dust, runes, catalysts | Limited | 1800-7200 | Enchanting loop |
| Cooking Supplies | Crafting Merchant | Multi-region towns | Neutral | Ingredients and cookware | Unlimited/Mixed | 0-900 | Survival loop |
| Tailoring Supplies | Crafting Merchant | Mainland/Witchwood | Neutral | Cloth, thread, leather supports | Mixed | 900-1800 | Apparel crafting |
| Dockside Supplies | Dock Merchant | All major ports | Neutral | Rope, lanterns, cargo tools | Mixed | 300-1800 | Port logistics |
| Ship Repair Goods | Ship Merchant | All major ports | Neutral | Repair kits and hull materials | Limited | 900-3600 | Expedition sustain |
| Sailor Provisions | Dock Merchant | All major ports | Neutral | Naval food/water stock | Unlimited | 0-300 | Voyage prep |
| Shipwright Upgrades | Shipwright Merchant | Shattered Reefs/Stormreach | Neutral | Upgrade components and plans | Limited | 3600-21600 | Ship progression |
| Pirate Ship Goods | Pirate Merchant | Shattered Reefs | Reef Corsairs | Contraband naval modules | Limited | 3600-21600 | Illegal naval trade |
| Wardkeeper Reputation Vendor | Reputation Vendor | Mainland Kingdom | Wardkeepers | Sigil rewards and authority gear | Tier-gated | 1800-21600 | Requires standing |
| Kingdom Military Vendor | Faction Vendor | Mainland Kingdom | Kingdom | Military issue gear | Tier-gated | 1800-21600 | Combat reputation rewards |
| Reef Corsair Vendor | Faction Vendor | Shattered Reefs | Reef Corsairs | Pirate faction goods | Tier-gated | 1800-21600 | Pirate standing required |
| Frostpeak Clan Vendor | Faction Vendor | Frostpeak Isle | Frostpeak Clan | Forge and mountain rewards | Tier-gated | 1800-21600 | Clan progression |
| Witchwood Enclave Vendor | Faction Vendor | Witchwood Isle | Witchwood Enclave | Nature relic and stealth rewards | Tier-gated | 1800-21600 | Enclave progression |
| Arcforge Consortium Vendor | Faction Vendor | Stormreach Isles | Arcforge Consortium | Tech prototypes and plans | Tier-gated | 3600-43200 | High-end engineering |
| Ashen Horde Vendor | Faction Vendor | Ashen Deadlands | Ashen Horde | War trophies and siege gear | Tier-gated | 1800-21600 | Horde loyalty |
| Coven of the Veil Vendor | Faction Vendor | Witchwood/Ashen edge | Coven of the Veil | Forbidden ritual stock | Tier-gated | 3600-43200 | Veil affinity |
| Relic Scholar Buyer | Rare Buyer | Mainland/Stormreach | Neutral | Buys ancient relic items | Buy-focused | N/A | High relic valuation |
| Dragon Part Buyer | Rare Buyer | Frostpeak Isle | Frostpeak Clan | Buys dragon trophies/components | Buy-focused | N/A | Monster specialization |
| Veil Material Buyer | Rare Buyer | Witchwood/Ashen | Coven-aligned | Buys Veil materials and cursed drops | Buy-focused | N/A | Corruption specialization |
| Treasure Broker Buyer | Rare Buyer | Shattered Reefs | Pirate networks | Buys maps, keys, treasure artifacts | Buy-focused | N/A | Treasure economy anchor |
| Sea Monster Trophy Buyer | Rare Buyer | Shattered Reefs ports | Neutral/Pirate | Buys leviathan and sea trophies | Buy-focused | N/A | Naval hunting rewards |
| Ancient Machine Buyer | Rare Buyer | Stormreach Isles | Arcforge Consortium | Buys machine cores and tech relics | Buy-focused | N/A | Tech economy anchor |
| Pirate Black Market | Black Market Merchant | Shattered Reefs | Reef Corsairs | Pirate contraband inventory | Limited | 3600-43200 | Hidden access |
| Smuggler Goods | Black Market Merchant | Shattered Reefs/Docks | Smuggler networks | Concealment and smuggling tools | Limited | 1800-21600 | Illegal logistics |
| Forbidden Relics | Black Market Merchant | Hidden nodes | Veil/Pirate brokers | Restricted relic inventory | Limited | 7200-43200 | High risk stock |
| Stolen Cargo Dealer | Black Market Merchant | Reefs back alleys | Smuggler networks | Fenced cargo goods | Limited | 1800-7200 | Dynamic stolen stock |
| Cursed Item Dealer | Black Market Merchant | Hidden covens | Coven brokers | Cursed weapons and reagents | Limited | 7200-43200 | Corruption-heavy inventory |
| Traveling Merchant | Traveling Trader | Route-based multi-region | Neutral | Rotating mixed stock | Limited | 900-7200 | Route-dependent |
| Storm Event Merchant | Event Merchant | Stormreach event zones | Neutral | Storm event rewards and supplies | Event-limited | 3600-event | Appears by event |
| Festival Vendor | Event Merchant | Major settlements | Neutral | Festival consumables and cosmetics | Event-limited | 1800-event | Seasonal goods |
| Siege Supply Vendor | Event Merchant | Conflict zones | Faction-linked | Siege kits and support gear | Event-limited | 900-3600 | War-time stock |
| World Event Relic Vendor | Event Merchant | Rotating world events | Neutral | World event relic offerings | Event-limited | Event-only | Rare cycle inventory |

## Merchant Table Examples

### General Town Supplies

| Item | Count | Refresh Time |
| --- | ---: | ---: |
| Minor Healing Potion | -1 | 0 |
| Minor Mana Potion | -1 | 0 |
| Traveler’s Satchel | 5 | 600 |
| Basic Mining Pick | -1 | 0 |
| Bread | -1 | 0 |

### Dwarven Forge Merchant

| Item | Count | Refresh Time |
| --- | ---: | ---: |
| Iron Longsword | 5 | 1800 |
| Froststeel Axe | 2 | 7200 |
| Miner’s Pickaxe | -1 | 0 |
| Blacksmith Hammer | -1 | 0 |
| Frostplate Armor | 1 | 21600 |

### Pirate Black Market

| Item | Count | Refresh Time |
| --- | ---: | ---: |
| Reef Cutlass | 3 | 3600 |
| Storm Flintlock | 1 | 21600 |
| Smuggler’s Hidden Bag | 2 | 7200 |
| Coral Vault Key | 1 | 43200 |
| Treasure Map | 1 | 86400 |

### Gnome Relic Scholar

| Item | Count | Refresh Time |
| --- | ---: | ---: |
| Relic Scanner | 2 | 7200 |
| Aether Compass Blueprint | 1 | 86400 |
| Spark Rod | 3 | 3600 |
| Portal Stabilizer Parts | 1 | 21600 |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles Merchant System (Atavism X 9)] (merchant_system.md)
- Next: [Mystical Isles Black Market Merchants] (black_market_merchants.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/item_master_list.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Item Master List (Atavism X 9)

---

# Item Master List (Atavism X 9)
| Item Name | Type | Subtype | Quality | Slot | Currency | Cost | Sellable | Auction | Stack | Weight | Binding | Effect | Source |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Iron Longsword | Weapon | Sword | Common | Main Hand | Silver | 120 | Yes | Yes | 1 | 4.0 | None | Balanced melee | Kingdom vendors |
| Training Sword | Weapon | Sword | Common | Main Hand | Copper | 35 | Yes | Yes | 1 | 3.6 | None | Starter weapon | Starting equipment |
| Wardguard Blade | Weapon | Sword | Rare | Main Hand | Ward Sigils | 180 | Yes | No | 1 | 4.3 | Bind on Equip | Passive ward resist | Faction rewards |
| Knight's Shield | Weapon | Shield | Uncommon | Off Hand | Silver | 160 | Yes | Yes | 1 | 5.2 | None | Parry bonus | Kingdom vendors |
| Paladin Warhammer | Weapon | Hammer | Rare | Main Hand | Gold | 320 | Yes | No | 1 | 5.8 | Bind on Equip | Anti-corruption hit | Dungeon/faction |
| Kingdom Spear | Weapon | Spear | Uncommon | Main Hand | Silver | 140 | Yes | Yes | 1 | 4.7 | None | Reach bonus | Kingdom vendors |
| Reef Cutlass | Weapon | Sword | Uncommon | Main Hand | Doubloons | 95 | Yes | Yes | 1 | 3.9 | None | Boarding bonus | Pirate merchants |
| Rusted Cutlass | Weapon | Sword | Common | Main Hand | Copper | 28 | Yes | Yes | 1 | 3.5 | None | Budget melee | Pirate drops |
| Storm Flintlock | Weapon | Pistol | Rare | Main Hand | Doubloons | 210 | Yes | No | 1 | 4.1 | Bind on Equip | Uses Bullet ammo | Pirate faction shop |
| Boarding Axe | Weapon | Axe | Uncommon | Main Hand | Doubloons | 155 | Yes | Yes | 1 | 4.6 | None | Bonus vs ship parts | Pirate loot/vendor |
| Corsair Dagger | Weapon | Dagger | Uncommon | Main Hand | Silver | 90 | Yes | Yes | 1 | 2.0 | None | Backstrike bonus | Pirate vendors |
| Sandfang Spear | Weapon | Spear | Uncommon | Main Hand | Silver | 150 | Yes | Yes | 1 | 4.8 | None | Bleed on crit | Canyon tribe vendors |
| Stormbone Bow | Weapon | Bow | Rare | Main Hand | Silver | 185 | Yes | No | 1 | 3.3 | Bind on Equip | Uses Arrow ammo | Canyon hunts |
| Reef Hunter Harpoon | Weapon | Harpoon Launcher | Rare | Main Hand | Gold | 260 | Yes | No | 1 | 5.0 | Bind on Equip | Uses Harpoon ammo | Naval quests |
| Canyon Knife | Weapon | Dagger | Common | Main Hand | Silver | 75 | Yes | Yes | 1 | 1.9 | None | Fast strikes | Canyon drops |
| Iceforge Hammer | Weapon | Hammer | Rare | Main Hand | Gold | 340 | Yes | No | 1 | 6.0 | Bind on Equip | Frost impact | Dwarven forges |
| Miner's Pickaxe | Weapon | Pickaxe | Common | Main Hand | Silver | 65 | Yes | Yes | 1 | 4.5 | None | Mining skill exp | Starter/profession vendor |
| Froststeel Axe | Weapon | Axe | Rare | Main Hand | Gold | 300 | Yes | No | 1 | 5.2 | Bind on Equip | Armor sunder | Dwarven crafting |
| Dragonbone Maul | Weapon | Maul | Epic | Main Hand | Gold | 520 | Yes | No | 1 | 6.8 | Bind on Pickup | Stagger chance | Dungeon boss |
| Witchwood Bow | Weapon | Bow | Rare | Main Hand | Gold | 240 | Yes | No | 1 | 3.1 | Bind on Equip | Uses Arrow ammo | Elven crafters |
| Thornblade | Weapon | Sword | Rare | Main Hand | Silver | 210 | Yes | No | 1 | 3.8 | Bind on Equip | Nature bleed | Elven faction rewards |
| Moonlit Staff | Weapon | Staff | Rare | Main Hand | Gold | 260 | Yes | No | 1 | 4.2 | Bind on Equip | Mana regen passive | Elven relic sites |
| Forest Dagger | Weapon | Dagger | Uncommon | Main Hand | Silver | 95 | Yes | Yes | 1 | 1.8 | None | Stealth crit | Elven vendors |
| Arcforge Pistol | Weapon | Pistol | Epic | Main Hand | Ancient Cores | 120 | Yes | No | 1 | 4.0 | Bind on Equip | Uses Aether Cell | Gnome relic lab |
| Spark Rod | Weapon | Rod | Rare | Main Hand | Gold | 220 | Yes | No | 1 | 2.7 | Bind on Equip | Chain spark | Gnome engineering vendors |
| Relic Spanner | Weapon | Tool-Blade | Uncommon | Main Hand | Silver | 130 | Yes | Yes | 1 | 2.5 | None | Construct bonus | Gnome crafting |
| Dimensional Resonator | Weapon | Resonator | Legendary | Main Hand | Ancient Cores | 220 | No | No | 1 | 4.9 | Bind on Pickup | Rift pulse | Ancient vault reward |
| Bone Wand | Weapon | Wand | Rare | Main Hand | Veil Shards | 140 | Yes | No | 1 | 2.2 | Bind on Equip | Curse amplification | Witch faction vendor |
| Curse Staff | Weapon | Staff | Epic | Main Hand | Veil Shards | 260 | Yes | No | 1 | 4.6 | Bind on Pickup | DoT extension | Forbidden rituals |
| Veil Knife | Weapon | Dagger | Rare | Main Hand | Veil Shards | 180 | Yes | No | 1 | 2.0 | Bind on Equip | Corruption strike | Veilfront loot |
| Shadow Sickle | Weapon | Sickle | Epic | Main Hand | Veil Shards | 230 | Yes | No | 1 | 3.9 | Bind on Pickup | Health siphon | Witch boss drops |
| Ancient Energy Blade | Weapon | Energy Blade | Legendary | Main Hand | Ancient Cores | 260 | No | No | 1 | 4.4 | Bind on Pickup | Aether burn | Ancient discovery |
| Portal Pike | Weapon | Pike | Epic | Main Hand | Ancient Cores | 245 | No | No | 1 | 5.1 | Bind on Pickup | Teleport lunge | Ancient events |
| Aether Rifle | Weapon | Rifle | Legendary | Main Hand | Ancient Cores | 320 | No | No | 1 | 5.6 | Bind on Pickup | Uses Aether Cell | Endgame relic cache |
| Wardsteel Helm | Armor | Plate Helm | Uncommon | Head | Silver | 140 | Yes | Yes | 1 | 4.2 | None | Endurance bonus | Kingdom vendors |
| Wardsteel Chestplate | Armor | Plate Chest | Rare | Chest | Gold | 260 | Yes | No | 1 | 8.8 | Bind on Equip | Ward resistance | Kingdom faction vendor |
| Wardsteel Greaves | Armor | Plate Legs | Uncommon | Legs | Silver | 180 | Yes | Yes | 1 | 6.1 | None | Stability | Kingdom vendors |
| Wardsteel Boots | Armor | Plate Boots | Uncommon | Feet | Silver | 120 | Yes | Yes | 1 | 3.8 | None | Movement control | Kingdom vendors |
| Wardsteel Gloves | Armor | Plate Gloves | Uncommon | Hands | Silver | 105 | Yes | Yes | 1 | 2.9 | None | Parry bonus | Kingdom vendors |
| Corsair Hat | Armor | Leather Hat | Common | Head | Doubloons | 70 | Yes | Yes | 1 | 1.6 | None | Luck bonus | Pirate vendors |
| Corsair Coat | Armor | Leather Coat | Uncommon | Chest | Doubloons | 150 | Yes | Yes | 1 | 4.9 | None | Evasion bonus | Pirate vendors |
| Corsair Boots | Armor | Leather Boots | Common | Feet | Doubloons | 85 | Yes | Yes | 1 | 2.3 | None | Deck grip | Pirate vendors |
| Smuggler Gloves | Armor | Gloves | Uncommon | Hands | Doubloons | 95 | Yes | Yes | 1 | 1.8 | None | Stealth handling | Black market |
| Reef Captain Belt | Armor | Belt | Rare | Waist | Doubloons | 180 | Yes | No | 1 | 2.0 | Bind on Equip | Cargo efficiency | Pirate faction rewards |
| Stormcaller Mask | Armor | Tribal Mask | Rare | Head | Silver | 170 | Yes | No | 1 | 2.7 | Bind on Equip | Storm resistance | Canyon tribe faction |
| Canyonhide Vest | Armor | Hide Chest | Uncommon | Chest | Silver | 145 | Yes | Yes | 1 | 4.1 | None | Heat resistance | Canyon crafters |
| Sandwalker Boots | Armor | Hide Boots | Uncommon | Feet | Silver | 110 | Yes | Yes | 1 | 2.4 | None | Desert movement | Canyon vendors |
| Boneguard Bracers | Armor | Bracers | Rare | Hands | Silver | 130 | Yes | No | 1 | 2.2 | Bind on Equip | Bleed resist | Canyon hunts |
| Frostplate Helm | Armor | Heavy Helm | Rare | Head | Gold | 220 | Yes | No | 1 | 4.6 | Bind on Equip | Frost resist | Dwarven forges |
| Frostplate Armor | Armor | Heavy Chest | Epic | Chest | Gold | 410 | Yes | No | 1 | 9.6 | Bind on Equip | Endurance and armor | Dwarven faction vendor |
| Miner's Gauntlets | Armor | Work Gloves | Uncommon | Hands | Silver | 115 | Yes | Yes | 1 | 2.6 | None | Mining bonus | Dwarven vendors |
| Dragonhide Boots | Armor | Reinforced Boots | Rare | Feet | Gold | 210 | Yes | No | 1 | 3.3 | Bind on Equip | Fire resist | Dragon hunt rewards |
| Witchwood Hood | Armor | Cloth Hood | Uncommon | Head | Silver | 130 | Yes | Yes | 1 | 1.9 | None | Focus bonus | Elven vendors |
| Leafwoven Robe | Armor | Cloth Robe | Rare | Chest | Gold | 240 | Yes | No | 1 | 3.8 | Bind on Equip | Nature attunement | Elven crafters |
| Forest Strider Boots | Armor | Cloth Boots | Uncommon | Feet | Silver | 125 | Yes | Yes | 1 | 2.1 | None | Stealth movement | Elven vendors |
| Moonthread Gloves | Armor | Cloth Gloves | Rare | Hands | Silver | 145 | Yes | No | 1 | 1.7 | Bind on Equip | Cast speed | Elven faction vendor |
| Engineer Goggles | Armor | Goggles | Rare | Head | Gold | 205 | Yes | No | 1 | 1.4 | Bind on Equip | Engineering bonus | Gnome engineers |
| Arcforge Coat | Armor | Utility Coat | Rare | Chest | Gold | 255 | Yes | No | 1 | 4.4 | Bind on Equip | Aether handling | Gnome lab vendor |
| Utility Gloves | Armor | Utility Gloves | Uncommon | Hands | Silver | 110 | Yes | Yes | 1 | 1.5 | None | Craft speed | Gnome vendors |
| Relic Harness | Armor | Harness | Epic | Waist | Ancient Cores | 90 | No | No | 1 | 2.8 | Bind on Pickup | Relic capacity | Ancient lab reward |
| Coven Hood | Armor | Hood | Rare | Head | Veil Shards | 160 | Yes | No | 1 | 1.8 | Bind on Equip | Hex focus | Witch vendors |
| Veil-Touched Robe | Armor | Robe | Epic | Chest | Veil Shards | 280 | Yes | No | 1 | 3.9 | Bind on Pickup | Corruption power | Veil dungeon reward |
| Cursebinder Gloves | Armor | Gloves | Rare | Hands | Veil Shards | 145 | Yes | No | 1 | 1.6 | Bind on Equip | DoT potency | Witch faction rewards |
| Shadowwrap Boots | Armor | Boots | Rare | Feet | Veil Shards | 150 | Yes | No | 1 | 1.9 | Bind on Equip | Phase-step bonus | Veilfront merchants |
| Ancient Surveyor Helm | Armor | Survey Helm | Epic | Head | Ancient Cores | 105 | No | No | 1 | 3.1 | Bind on Pickup | Relic scan bonus | Ancient ruins |
| Relic Explorer Coat | Armor | Explorer Coat | Epic | Chest | Ancient Cores | 125 | No | No | 1 | 4.7 | Bind on Pickup | Artifact protection | Ancient ruins |
| Portal Stabilizer Harness | Armor | Harness | Legendary | Waist | Ancient Cores | 180 | No | No | 1 | 3.5 | Bind on Pickup | Portal stability | Portal events |
| Hollow Veil Plate | Armor | Corrupted Plate | Corrupted | Chest | Veil Shards | 340 | Yes | No | 1 | 8.2 | Bind on Pickup | Corruption armor | Veil bosses |
| Cursed Bone Helm | Armor | Corrupted Helm | Corrupted | Head | Veil Shards | 210 | Yes | No | 1 | 3.9 | Bind on Pickup | Fear aura | Veil bosses |
| Tainted Wraps | Armor | Corrupted Wraps | Corrupted | Hands | Veil Shards | 170 | Yes | No | 1 | 2.1 | Bind on Pickup | Hex throughput | Veil bosses |
| Mining Pick | Tool | Gathering | Common | Tool | Silver | 45 | Yes | Yes | 1 | 4.5 | None | Mine ore nodes | Tool vendors |
| Lumber Axe | Tool | Gathering | Common | Tool | Silver | 42 | Yes | Yes | 1 | 4.2 | None | Harvest wood | Tool vendors |
| Skinning Knife | Tool | Gathering | Common | Tool | Silver | 25 | Yes | Yes | 1 | 1.2 | None | Skin creature parts | Hunters' vendors |
| Fishing Rod | Tool | Gathering | Common | Tool | Silver | 30 | Yes | Yes | 1 | 2.4 | None | Fishing interaction | Dock vendors |
| Salvage Hook | Tool | Naval | Uncommon | Tool | Silver | 65 | Yes | Yes | 1 | 3.1 | None | Wreck salvage | Naval vendors |
| Archaeology Brush | Tool | Exploration | Uncommon | Tool | Silver | 55 | Yes | Yes | 1 | 0.8 | None | Relic excavation | Relic vendors |
| Relic Scanner | Tool | Relic | Rare | Tool | Gold | 190 | Yes | No | 1 | 2.0 | Bind on Equip | Cache detection | Ancient blueprint craft |
| Repair Hammer | Tool | Crafting | Uncommon | Tool | Silver | 70 | Yes | Yes | 1 | 3.4 | None | Repair gear durability | Smithing vendors |
| Shipwright Hammer | Tool | Naval Crafting | Rare | Tool | Gold | 210 | Yes | No | 1 | 3.8 | Bind on Equip | Ship module repair | Shipwright progression |
| Alchemy Kit | Tool | Crafting Kit | Uncommon | Tool | Silver | 60 | Yes | Yes | 1 | 1.6 | None | Potion crafting | Alchemy vendors |
| Enchanting Focus | Tool | Enchanting | Rare | Tool | Gold | 175 | Yes | No | 1 | 1.7 | Bind on Equip | Enchant profile access | Enchanting vendor |
| Diving Bell Tool | Tool | Exploration | Rare | Tool | Gold | 240 | Yes | No | 1 | 5.2 | Bind on Equip | Deep dive interaction | Naval exploration rewards |
| Coral Chisel | Tool | Gathering | Uncommon | Tool | Silver | 68 | Yes | Yes | 1 | 2.3 | None | Coral harvest | Reefcraft vendors |
| Cartographer Compass | Tool | Navigation | Rare | Tool | Gold | 185 | Yes | No | 1 | 1.1 | Bind on Equip | Map reveal bonus | Navigation vendors |
| Wooden Arrow | Ammo | Arrow | Common | None | Copper | 1 | Yes | Yes | 250 | 0.02 | None | +2 ammo damage | Fletcher vendors |
| Iron Arrow | Ammo | Arrow | Uncommon | None | Copper | 2 | Yes | Yes | 250 | 0.03 | None | +4 ammo damage | Crafting outputs |
| Witchwood Arrow | Ammo | Arrow | Rare | None | Silver | 3 | Yes | Yes | 200 | 0.03 | None | +6 ammo damage | Elven crafting |
| Crossbow Bolt | Ammo | Bolt | Uncommon | None | Silver | 3 | Yes | Yes | 220 | 0.03 | None | +5 ammo damage | Engineering craft |
| Lead Bullet | Ammo | Bullet | Uncommon | None | Silver | 4 | Yes | Yes | 180 | 0.04 | None | +6 ammo damage | Gunsmith vendors |
| Storm Bullet | Ammo | Bullet | Rare | None | Gold | 6 | Yes | Yes | 180 | 0.04 | None | +8 storm damage | Pirate/Storm crafting |
| Cannonball | Ammo | Cannonball | Rare | None | Gold | 14 | Yes | Yes | 40 | 1.20 | None | Naval cannon shot | Shipwright vendors |
| Chain Shot | Ammo | Cannonball | Rare | None | Gold | 16 | Yes | Yes | 30 | 1.10 | None | Sail-ripping shot | Naval crafting |
| Harpoon Bolt | Ammo | Harpoon | Uncommon | None | Silver | 8 | Yes | Yes | 120 | 0.09 | None | +9 harpoon damage | Harpoon craft |
| Explosive Harpoon | Ammo | Harpoon | Epic | None | Gold | 15 | Yes | No | 80 | 0.12 | None | Explosive harpoon shot | Advanced naval craft |
| Aether Cell | Ammo | Aether Cell | Epic | None | Ancient Cores | 3 | Yes | No | 100 | 0.06 | None | +12 aether shot | Ancient tech craft |
| Minor Healing Potion | Consumable | Potion | Common | None | Copper | 12 | Yes | Yes | 50 | 0.10 | None | UseAbility Heal_Minor | Alchemy craft |
| Healing Potion | Consumable | Potion | Uncommon | None | Copper | 35 | Yes | Yes | 50 | 0.10 | None | UseAbility Heal_Standard | Alchemy craft |
| Greater Healing Potion | Consumable | Potion | Rare | None | Silver | 1 | Yes | Yes | 30 | 0.11 | None | UseAbility Heal_Greater | Advanced alchemy |
| Minor Mana Potion | Consumable | Potion | Common | None | Copper | 12 | Yes | Yes | 50 | 0.10 | None | UseAbility Mana_Minor | Alchemy craft |
| Mana Potion | Consumable | Potion | Uncommon | None | Copper | 35 | Yes | Yes | 50 | 0.10 | None | UseAbility Mana_Standard | Alchemy craft |
| Greater Mana Potion | Consumable | Potion | Rare | None | Silver | 1 | Yes | Yes | 30 | 0.11 | None | UseAbility Mana_Greater | Advanced alchemy |
| Stamina Draught | Consumable | Tonic | Uncommon | None | Copper | 60 | Yes | Yes | 40 | 0.12 | None | UseAbility Stamina_Burst | Field alchemy |
| Frostpeak Stew | Consumable | Food | Uncommon | None | Copper | 90 | Yes | Yes | 20 | 0.30 | None | Cold resistance buff | Cooking |
| Desert Bloom Elixir | Consumable | Elixir | Rare | None | Copper | 95 | Yes | Yes | 20 | 0.12 | None | Heat resistance buff | Canyon alchemy |
| Stormproof Tonic | Consumable | Tonic | Rare | None | Silver | 1 | Yes | Yes | 20 | 0.13 | None | Storm resistance buff | Naval alchemy |
| Reef Rum | Consumable | Drink | Uncommon | None | Copper | 75 | Yes | Yes | 20 | 0.20 | None | Morale regen buff | Pirate crafting |
| Ward Tonic | Consumable | Cleanser | Rare | None | Silver | 2 | Yes | Yes | 20 | 0.12 | None | Cleanse corruption | Ward alchemy |
| Anti-Venom | Consumable | Cleanser | Uncommon | None | Copper | 85 | Yes | Yes | 30 | 0.11 | None | Cleanse poison | Herbal alchemy |
| Curse Cleanser | Consumable | Cleanser | Rare | None | Silver | 2 | Yes | Yes | 20 | 0.12 | None | Cleanse curse | Arcane alchemy |
| Veil Purge Draught | Consumable | Cleanser | Epic | None | Silver | 3 | Yes | No | 15 | 0.13 | None | Purge Veil stacks | Veilfront alchemy |
| Water Breathing Draught | Consumable | Exploration | Rare | None | Silver | 2 | Yes | Yes | 15 | 0.12 | None | Underwater breathing | Reef alchemy |
| Night Sight Elixir | Consumable | Exploration | Uncommon | None | Silver | 1 | Yes | Yes | 20 | 0.12 | None | Night vision | Exploration alchemy |
| Relic Awareness Potion | Consumable | Exploration | Epic | None | Silver | 3 | Yes | No | 15 | 0.12 | None | Relic detection | Relic lab |
| Heatguard Tonic | Consumable | Exploration | Uncommon | None | Silver | 1 | Yes | Yes | 20 | 0.12 | None | Heat mitigation | Canyon alchemy |
| Coldguard Tonic | Consumable | Exploration | Uncommon | None | Silver | 1 | Yes | Yes | 20 | 0.12 | None | Cold mitigation | Frostpeak alchemy |
| Iron Ore | Material | Ore | Common | None | Copper | 4 | Yes | Yes | 200 | 0.20 | None | Smithing input | Mainland mines |
| Silver Ore | Material | Ore | Uncommon | None | Copper | 8 | Yes | Yes | 200 | 0.20 | None | Smithing input | Highland veins |
| Gold Ore | Material | Ore | Rare | None | Silver | 1 | Yes | Yes | 200 | 0.22 | None | High-tier smithing | Deep mines |
| Froststeel Ore | Material | Ore | Rare | None | Silver | 2 | Yes | Yes | 150 | 0.24 | None | Froststeel crafting | Frostpeak mines |
| Ancient Alloy Fragment | Material | Ore | Epic | None | Ancient Cores | 1 | Yes | No | 100 | 0.18 | None | Ancient gear craft | Ancient ruins |
| Softwood | Material | Wood | Common | None | Copper | 2 | Yes | Yes | 300 | 0.15 | None | Basic crafting | Mainland forests |
| Hardwood | Material | Wood | Uncommon | None | Copper | 5 | Yes | Yes | 300 | 0.18 | None | Weapons/structures | Dense forests |
| Witchwood Branch | Material | Wood | Rare | None | Silver | 1 | Yes | Yes | 200 | 0.16 | None | Arcane bows/staves | Elven groves |
| Ship Timber | Material | Wood | Uncommon | None | Silver | 1 | Yes | Yes | 150 | 0.35 | None | Ship construction | Naval lumberyards |
| Healing Herb | Material | Herb | Common | None | Copper | 3 | Yes | Yes | 250 | 0.05 | None | Healing potions | Meadow zones |
| Mana Bloom | Material | Herb | Uncommon | None | Copper | 6 | Yes | Yes | 250 | 0.05 | None | Mana potions | Arcane glades |
| Desert Bloom | Material | Herb | Uncommon | None | Copper | 7 | Yes | Yes | 250 | 0.05 | None | Heat tonics | Canyon deserts |
| Frostcap Mushroom | Material | Herb | Uncommon | None | Copper | 7 | Yes | Yes | 250 | 0.05 | None | Cold tonics | Frost caves |
| Witchroot | Material | Herb | Rare | None | Silver | 1 | Yes | Yes | 200 | 0.06 | None | Curse remedies | Veil woodlands |
| Goblin Ear | Material | Monster Part | Common | None | Copper | 2 | Yes | Yes | 200 | 0.04 | None | Quest/crafting token | Goblin camps |
| Dragon Scale | Material | Monster Part | Rare | None | Silver | 3 | Yes | Yes | 100 | 0.20 | None | Dragon armor crafting | Dragon lairs |
| Leviathan Scale | Material | Monster Part | Epic | None | Gold | 2 | Yes | No | 80 | 0.30 | None | Naval plate crafting | Deep sea hunts |
| Scorpion Stinger | Material | Monster Part | Uncommon | None | Copper | 8 | Yes | Yes | 200 | 0.06 | None | Poison crafting | Desert fauna |
| Cobra Venom Sac | Material | Monster Part | Uncommon | None | Silver | 1 | Yes | Yes | 150 | 0.07 | None | Anti-venom craft | Jungle fauna |
| Treant Bark | Material | Monster Part | Uncommon | None | Copper | 9 | Yes | Yes | 180 | 0.14 | None | Nature armor craft | Forest encounters |
| Demon Horn | Material | Monster Part | Rare | None | Silver | 3 | Yes | No | 120 | 0.12 | None | Hexcraft components | Veil incursions |
| Veil Heart | Material | Monster Part | Epic | None | Veil Shards | 4 | Yes | No | 60 | 0.16 | None | Corrupted gear craft | Veil bosses |
| Relic Shard | Material | Ancient | Rare | None | Silver | 2 | Yes | Yes | 200 | 0.10 | None | Relic crafting | Ancient ruins |
| Aether Fragment | Material | Ancient | Epic | None | Ancient Cores | 1 | Yes | No | 150 | 0.09 | None | Aether tech crafting | Ancient ruins |
| Ancient Core | Material | Ancient | Legendary | None | Ancient Cores | 3 | Yes | No | 80 | 0.15 | None | High-end ancient crafting | Vault encounters |
| Portal Gear | Material | Ancient | Epic | None | Ancient Cores | 2 | Yes | No | 100 | 0.14 | None | Portal construction | Portal facilities |
| Dimensional Lens | Material | Ancient | Epic | None | Ancient Cores | 2 | Yes | No | 100 | 0.08 | None | Scanner and compass craft | Dimensional labs |
| Sailcloth | Material | Naval | Common | None | Copper | 5 | Yes | Yes | 250 | 0.18 | None | Sail crafting | Dock producers |
| Rope | Material | Naval | Common | None | Copper | 3 | Yes | Yes | 300 | 0.12 | None | Ship and utility craft | Dock producers |
| Tar | Material | Naval | Common | None | Copper | 4 | Yes | Yes | 200 | 0.20 | None | Hull sealing | Shipyards |
| Cannon Fuse | Material | Naval | Uncommon | None | Copper | 9 | Yes | Yes | 200 | 0.08 | None | Ammunition crafting | Naval workshops |
| Coral Plate | Material | Naval | Rare | None | Silver | 2 | Yes | Yes | 120 | 0.25 | None | Marine armor craft | Reef regions |
| Ship Nails | Material | Naval | Common | None | Copper | 3 | Yes | Yes | 300 | 0.10 | None | Ship assembly | Shipyards |
| Broken Ward Fragment | Quest | Quest Artifact | Uncommon | None | None | 0 | No | No | 1 | 0.10 | Bind on Pickup | Quest progression | Main quest reward |
| Queen Elyra's Seal | Quest | Royal Seal | Rare | None | None | 0 | No | No | 1 | 0.05 | Bind on Pickup | Political quest flag | Kingdom storyline |
| Ancient Map Piece | Quest | Map Fragment | Rare | None | None | 0 | No | No | 1 | 0.03 | Bind on Pickup | Starts treasure chain | Exploration quest |
| Pirate Ledger | Quest | Ledger | Uncommon | None | None | 0 | No | No | 1 | 0.05 | Bind on Pickup | Smuggling evidence quest | Pirate storyline |
| Witchwood Rune | Quest | Rune | Rare | None | None | 0 | No | No | 1 | 0.02 | Bind on Pickup | Unlocks ward puzzle | Elven/ward quest |
| Frostpeak Mining Charter | Quest | Charter | Uncommon | None | None | 0 | No | No | 1 | 0.05 | Bind on Pickup | Mining district access | Frostpeak quest |
| Orc War Banner | Quest | Banner | Rare | None | None | 0 | No | No | 1 | 0.40 | Bind on Pickup | War objective trigger | Battlefield events |
| Coral Vault Key | Quest | Key | Epic | None | None | 0 | No | No | 1 | 0.03 | Bind on Pickup | Opens coral vault | Reef expedition |
| Sunken Journal | Quest | Journal | Uncommon | None | None | 0 | No | No | 1 | 0.08 | Bind on Pickup | Lore and map clue | Sunken wreck quest |
| Portal Stabilizer Core | Quest | Core | Epic | None | None | 0 | No | No | 1 | 0.50 | Bind on Pickup | Portal quest objective | Ancient facility quest |
| Lost Navigator Compass | Quest | Compass | Rare | None | None | 0 | No | No | 1 | 0.12 | Bind on Pickup | Route unlock quest | Naval questline |
| Veil-Stained Relic | Quest | Relic | Epic | None | None | 0 | No | No | 1 | 0.20 | Bind on Pickup | Veil investigation quest | Corruption questline |
| Traveler's Satchel | Bag | Satchel | Common | Bag | Silver | 45 | Yes | Yes | 16 | 0.9 | None | +16 inventory slots | General vendors |
| Merchant Pack | Bag | Pack | Uncommon | Bag | Silver | 90 | Yes | Yes | 24 | 1.5 | None | +24 inventory slots | Trade guild vendors |
| Miner's Pack | Bag | Pack | Uncommon | Bag | Silver | 85 | Yes | Yes | 22 | 1.8 | None | +22 slots, ore-friendly | Mining vendors |
| Ship Captain's Locker | Bag | Locker | Rare | Bag | Gold | 160 | Yes | No | 28 | 2.4 | Bind on Equip | +28 slots | Naval vendors |
| Relic Hunter's Bag | Bag | Relic Bag | Rare | Bag | Gold | 170 | Yes | No | 26 | 1.4 | Bind on Equip | +26 slots, relic bonus | Relic vendors |
| Alchemist Pouch | Bag | Pouch | Uncommon | Bag | Silver | 80 | Yes | Yes | 20 | 0.8 | None | +20 slots for reagents | Alchemy vendors |
| Smuggler's Hidden Bag | Bag | Hidden Pack | Epic | Bag | Doubloons | 190 | Yes | No | 24 | 1.1 | Bind on Equip | Concealed inventory bonus | Black market |
| Bent Spoon | Junk | Scrap | Common | None | Copper | 1 | Yes | Yes | 50 | 0.05 | None | Vendor trash | Mob/chest drop |
| Broken Blade | Junk | Scrap Metal | Common | None | Copper | 2 | Yes | Yes | 50 | 0.30 | None | Vendor trash | Mob/chest drop |
| Cracked Goblin Charm | Junk | Trinket | Common | None | Copper | 2 | Yes | Yes | 50 | 0.06 | None | Vendor trash | Goblin drop |
| Rusted Gear | Junk | Mechanical Scrap | Common | None | Copper | 2 | Yes | Yes | 50 | 0.20 | None | Vendor trash | Construct drop |
| Torn Sailcloth | Junk | Cloth Scrap | Common | None | Copper | 1 | Yes | Yes | 50 | 0.10 | None | Vendor trash | Naval wreck drop |
| Burnt Bone | Junk | Bone Scrap | Common | None | Copper | 1 | Yes | Yes | 50 | 0.08 | None | Vendor trash | Undead drop |
| Cracked Shell | Junk | Shell Scrap | Common | None | Copper | 1 | Yes | Yes | 50 | 0.09 | None | Vendor trash | Reef drop |
| Dented Mug | Junk | Salvage | Common | None | Copper | 1 | Yes | Yes | 50 | 0.12 | None | Vendor trash | Tavern/wreck drop |
| Old Boot | Junk | Salvage | Common | None | Copper | 1 | Yes | Yes | 50 | 0.15 | None | Vendor trash | Fishing loot |
| Splintered Shield | Junk | Scrap Wood/Metal | Common | None | Copper | 2 | Yes | Yes | 50 | 0.35 | None | Vendor trash | Battlefield loot |
| Wooden Chest | Container | Loot Chest | Common | None | None | 0 | No | No | 1 | 25.0 | None | Opens loot table | World placement |
| Pirate Lockbox | Container | Lockbox | Uncommon | None | None | 0 | No | No | 1 | 12.0 | None | Requires key | Pirate encounters |
| Ancient Vault Cache | Container | Vault Cache | Epic | None | None | 0 | No | No | 1 | 18.0 | None | High-tier relic loot | Ancient vaults |
| Coral Chest | Container | Reef Chest | Rare | None | None | 0 | No | No | 1 | 16.0 | None | Underwater loot table | Reef dungeons |
| Witchwood Coffer | Container | Coffer | Rare | None | None | 0 | No | No | 1 | 14.0 | None | Rune/key gating | Witchwood zones |
| Frostpeak Strongbox | Container | Strongbox | Rare | None | None | 0 | No | No | 1 | 20.0 | None | Skill lock requirement | Frostpeak mines |
| Veil-Tainted Chest | Container | Corrupted Chest | Corrupted | None | None | 0 | No | No | 1 | 17.0 | None | Corruption-risk loot | Veilfront zones |
| Mimic Chest | Container | Mimic Mob | Corrupted | None | None | 0 | No | No | 1 | 17.0 | None | Mob encounter disguised as chest | Rare ambush spawn |
| Fire Rune | Material | Socket Rune | Rare | None | Silver | 4 | Yes | Yes | 20 | 0.05 | None | SocketAbility fire proc | Rune crafting |
| Frost Rune | Material | Socket Rune | Rare | None | Silver | 4 | Yes | Yes | 20 | 0.05 | None | SocketEffect slow | Rune crafting |
| Storm Rune | Material | Socket Rune | Epic | None | Gold | 2 | Yes | No | 20 | 0.05 | None | SocketAbility chain strike | Rune crafting |
| Ward Gem | Material | Socket Gem | Rare | None | Silver | 5 | Yes | Yes | 20 | 0.05 | None | SocketEffect ward resist | Ward crafting |
| Veil Crystal | Material | Socket Crystal | Epic | None | Veil Shards | 2 | Yes | No | 20 | 0.05 | None | SocketEffect corruption power | Veil crafting |
| Ancient Core Socket | Material | Socket Core | Epic | None | Ancient Cores | 1 | Yes | No | 10 | 0.06 | None | Relic core socket bonus | Ancient crafting |
| Pirate Luck Charm | Material | Socket Charm | Rare | None | Doubloons | 12 | Yes | Yes | 10 | 0.04 | None | Bonus loot chance | Pirate crafting |
| Navigator's Starstone | Material | Socket Stone | Epic | None | Gold | 3 | Yes | No | 10 | 0.04 | None | Navigation stability bonus | Navigation crafting |
| Blueprint: Reinforced Hull | Quest | Blueprint | Rare | None | Gold | 25 | Yes | No | 1 | 0.05 | Bind on Pickup | Blueprint unlock | Naval reward |
| Blueprint: Storm Sails | Quest | Blueprint | Rare | None | Gold | 24 | Yes | No | 1 | 0.05 | Bind on Pickup | Blueprint unlock | Naval reward |
| Blueprint: Wardsteel Blade | Quest | Blueprint | Rare | None | Gold | 20 | Yes | No | 1 | 0.05 | Bind on Pickup | CraftsItem unlock | Kingdom crafting quest |
| Blueprint: Froststeel Armor | Quest | Blueprint | Epic | None | Gold | 35 | Yes | No | 1 | 0.05 | Bind on Pickup | Blueprint unlock | Dwarven reward |
| Blueprint: Relic Scanner | Quest | Blueprint | Epic | None | Ancient Cores | 5 | Yes | No | 1 | 0.05 | Bind on Pickup | CraftsItem unlock | Ancient rewards |
| Blueprint: Aether Compass | Quest | Blueprint | Epic | None | Ancient Cores | 4 | Yes | No | 1 | 0.05 | Bind on Pickup | Blueprint unlock | Ancient rewards |
| Blueprint: Pirate Smuggler Hold | Quest | Blueprint | Rare | None | Doubloons | 30 | Yes | No | 1 | 0.05 | Bind on Pickup | Blueprint unlock | Pirate reputation |
| Blueprint: Ancient Portal Key | Quest | Blueprint | Legendary | None | Ancient Cores | 12 | No | No | 1 | 0.05 | Bind on Pickup | Blueprint unlock | Ancient storyline |
| Manual of Swordsmanship | Quest | Skill Book | Uncommon | None | Silver | 6 | Yes | Yes | 1 | 0.12 | None | SkillPoints + sword skill | Trainers |
| Beginner's Guide to Navigation | Quest | Skill Book | Uncommon | None | Silver | 5 | Yes | Yes | 1 | 0.12 | None | SkillPoints + navigation | Dock trainers |
| Treatise on Relic Recovery | Quest | Skill Book | Rare | None | Gold | 8 | Yes | No | 1 | 0.12 | Bind on Equip | SkillPoints + relic skill | Scholar quests |
| Witchwood Herbal Primer | Quest | Skill Book | Uncommon | None | Silver | 5 | Yes | Yes | 1 | 0.12 | None | SkillPoints + herbalism | Elven trainers |
| Frostpeak Mining Notes | Quest | Skill Book | Uncommon | None | Silver | 5 | Yes | Yes | 1 | 0.12 | None | SkillPoints + mining | Dwarven trainers |
| Pirate Boarding Manual | Quest | Skill Book | Rare | None | Doubloons | 9 | Yes | No | 1 | 0.12 | Bind on Equip | SkillPoints + boarding | Pirate faction vendor |
| Gnomish Engineering Handbook | Quest | Skill Book | Rare | None | Gold | 9 | Yes | No | 1 | 0.12 | Bind on Equip | SkillPoints + engineering | Gnome vendor |
| Wardkeeper Prayer Book | Quest | Skill Book | Rare | None | Ward Sigils | 12 | Yes | No | 1 | 0.12 | Bind on Equip | SkillPoints + ward skill | Ward faction vendor |
| Forbidden Veil Codex | Quest | Skill Book | Epic | None | Veil Shards | 15 | No | No | 1 | 0.12 | Bind on Pickup | Skill unlock/start quest | Veil questline |
| Market Stall License | Quest | Shop License | Rare | None | Gold | 30 | Yes | No | 1 | 0.10 | Bind on Pickup | Player shop unlock | Trade guild vendor |
| Merchant Cart Deed | Quest | Shop Deed | Rare | None | Gold | 45 | Yes | No | 1 | 0.30 | Bind on Pickup | Player shop unlock | Trade guild reward |
| Pirate Black Market Stall | Quest | Shop License | Epic | None | Doubloons | 65 | Yes | No | 1 | 0.12 | Bind on Pickup | Player shop unlock | Pirate faction reward |
| Dockside Vendor Permit | Quest | Shop Permit | Rare | None | Gold | 40 | Yes | No | 1 | 0.10 | Bind on Pickup | Player shop unlock | Port authority rewards |
| Traveling Trader Contract | Quest | Shop Contract | Rare | None | Gold | 35 | Yes | No | 1 | 0.10 | Bind on Pickup | Timed roaming shop unlock | Merchant contracts |
| Small Land Claim Deed | Quest | Claim Deed | Rare | None | Gold | 75 | Yes | No | 1 | 0.20 | Bind on Pickup | CreateClaim | Settlement progression |
| Guild Hall Claim Deed | Quest | Claim Deed | Epic | None | Gold | 220 | No | No | 1 | 0.35 | Bind on Pickup | CreateClaim + ClaimObject | Guild progression |
| Dock Claim Deed | Quest | Claim Deed | Epic | None | Gold | 180 | No | No | 1 | 0.30 | Bind on Pickup | CreateClaim + dock object | Naval progression |
| Workshop Claim Deed | Quest | Claim Deed | Rare | None | Gold | 140 | No | No | 1 | 0.25 | Bind on Pickup | CreateClaim + crafting object | Crafting progression |
| Farm Claim Deed | Quest | Claim Deed | Rare | None | Gold | 120 | Yes | No | 1 | 0.22 | Bind on Pickup | CreateClaim + farm object | Settlement economy |

---

## Related Documents


## Suggested Reading
- Previous: [Item Types Reference (Atavism X 9)] (item_types_reference.md)
- Next: [Item Effects and Requirements (Atavism X 9)] (item_effects_and_requirements.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/item_types_reference.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Item Types Reference (Atavism X 9)

---

# Item Types Reference (Atavism X 9)
## Atavism Item Types Used in Mystical Isles

| Item Type | Classification | Gameplay Weight | Notes |
| --- | --- | --- | --- |
| Weapon | Equipment-specific | Heavy | Uses combat stats, weapon profile, equip slot, and display data |
| Armor | Equipment-specific | Heavy | Uses slot, durability, defensive identity, and display data |
| Consumable | Logical category | Medium | Mostly shared fields plus UseAbility effects |
| Material | Logical category | Heavy (economy/crafting) | Shared fields with stack/weight/value/crafting source |
| Junk | Logical category | Light | Shared sell-value fields for loot flavor economy |
| Quest | Logical category | Medium | Shared fields with strict bind/trade controls |
| Bag | Logical category | Heavy (inventory) | Uses slot count semantics and storage progression |
| Container | Logical category | Medium | Shared fields; supports loot container planning |
| Ammo | Specialized category | Heavy | Uses ammo type, damage contribution, and compatibility rules |
| Tool | Equipment-specific | Heavy | Uses subtype, slot, durability, world interaction role |

Weapon, Armor, and Tool are equipment-specific records. Consumable, Material, Junk, Quest, Bag, and Container primarily share common item-template fields. Ammo uses dedicated ammo and damage behavior.

## Core Item Field Reference

| Field | Applies To | Purpose | Mystical Isles Usage |
| --- | --- | --- | --- |
| Name | All | Item display and DB key label | Unique production-facing names for each authored item |
| Item Type | All | Top-level behavior routing | Selects Weapon/Armor/Consumable/etc pipeline behavior |
| Sub Type | Most | Defines subtype logic | Swords, bows, plate, potion, ore, deed, map, etc. |
| Icon | All | UI representation | Culture/region-specific icon language for fast recognition |
| Ground Prefab | Droppable items | World drop model | Scaled pickup visuals matching biome style |
| Equipment Display | Equippable | Character display mesh binding | Links to prefab in Resources/Content/EquipmentDisplay |
| Slot | Equippable/bags | Equip or inventory placement | Main Hand, Off Hand, Head, Chest, Tool, Bag slot |
| Gear Score | Weapon/Armor/Tool | Comparative strength index | Vendor sorting and progression signaling only |
| Skill Exp | Weapons/tools/books | Skill progression contribution | Supports combat and profession progression loops |
| Damage Min | Weapons/ammo | Minimum damage roll | Defines weapon baseline output |
| Damage Max | Weapons/ammo | Maximum damage roll | Defines weapon variance ceiling |
| Delay | Weapons | Attack interval | Balances weapon family tempo |
| Enchant Profile | Gear/socketables | Enchanting profile route | Defines valid enchant progression family |
| Item Quality | All | Rarity expectation and value scaling | Controls rarity, color, economy expectation, not raw power by itself |
| Binding | Most | Ownership/trade control | None, Bind on Equip, Bind on Pickup |
| Currency | Tradeable/purchasable | Purchase denomination | Copper, Silver, Gold, Doubloons, Sigils, etc. |
| Purchase Cost | Vendor items | Buy price | Merchant and faction vendor pricing |
| Sellable | Most | Vendor resale toggle | Disables selling for protected quest/political records |
| Auction Sellable | Most | Player market toggle | Enables or blocks auction flow per design intent |
| Unique | Quest/relics/special | Max ownership count | Prevents duplicates for critical progression items |
| Stack Limit | Stackables | Max stack amount | Governs inventory pressure and trade granularity |
| Passive Ability | Gear/relic/socketables | Passive stat/effect grant | Ward resistance, navigation bonuses, etc. |
| Parry | Weapon/shield | Defensive stat | Used for melee guard identities |
| Repairable | Durability gear/tools | Repair eligibility | Enables maintenance economy loop |
| Durability | Gear/tools | Wear lifespan | Supports attrition, repair, and replacement demand |
| Draw Weapon CoordEffect | Weapons | Draw-time effect hook | Culture-specific weapon draw FX |
| Holstering Weapon CoordEffect | Weapons | Sheath-time effect hook | Supports polished equip/unequip feedback |
| Weapon Profile | Weapons | Weapon handling behavior | Connects attack style, animations, and tuning |
| Audio Profile | Equippable/consumables | SFX profile routing | Per-material or per-weapon sound family |
| Socket Type | Socketables/gear | Socket compatibility control | Weapon Rune, Armor Gem, Relic Core, etc. |
| Weight | Most | Encumbrance contribution | Core inventory and travel pressure lever |
| Death Loss Chance | Most carryables | Drop risk on death | Tunes hardcore risk by category/value |
| Ammo Type | Ammo/ranged weapons | Ammo compatibility key | Arrow, Bullet, Harpoon, Aether Cell, etc. |
| Auto Attack | Weapons | Auto-attack enablement | Defines standard weapon attack channel |
| Tooltip | All | Player-facing description | Includes usage, restrictions, source, and flavor |

## Item Quality Tiers

Quality does not create power by itself. It controls rarity signaling, tooltip color, economy value expectations, and progression messaging.

| Quality | Purpose | Color Theme | Use |
| --- | --- | --- | --- |
| Common | Baseline utility | Gray | Starting gear, common drops, basic materials |
| Uncommon | Improved reliability | Green | Better crafted gear, regional upgrades |
| Rare | Specialized progression | Blue | Faction and dungeon progression items |
| Epic | Build-defining pieces | Purple | Major crafting outputs and advanced rewards |
| Legendary | Signature rewards | Orange | Named rewards, major discoveries |
| Ancient | Pre-Fracturing tech identity | Teal | Ancient tech and relic-oriented progression |
| Corrupted | Risk/reward identity | Crimson | Veil-altered gear and unstable utility |
| Mythic | World-class prestige | Prismatic | Singular discoveries and political artifacts |

## Binding Rules

| Binding Type | Rule | Mystical Isles Usage |
| --- | --- | --- |
| None | Item remains tradable | Materials, trade goods, crafted goods, common equipment, consumables |
| Bind on Equip | Binds when first equipped | Faction gear, crafted rare gear, dungeon equipment |
| Bind on Pickup | Binds on acquisition | Quest rewards, political items, unique relics, legendary discoveries |

## Tradeability Summary

Tradable by default:

- materials
- trade goods
- crafted goods
- common equipment
- consumables

Restricted trade by design:

- major quest progression items
- political authority artifacts
- one-off relic discoveries
- high-significance legendary discoveries

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles Items System (Atavism X 9)] (items_system.md)
- Next: [Item Master List (Atavism X 9)] (item_master_list.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/skills_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Skills System

---

# Skills System
## Overview

The Skill System is the single most important progression framework in Mystical Isles. It is not a combat ladder. It is the mechanism through which players build identity, earn social standing, unlock world access, and become recognizable figures in the politics and history of the Isles.

A player's skill profile determines:
- what they can do in the world
- what factions will deal with them
- what other players will seek them out for
- what regions, ruins, and routes they can access
- what role they fill in cooperative play
- what their legacy will be

This document defines the full Atavism X 9 skill architecture for Mystical Isles: structure, categories, learning systems, progression models, profiles, and long-term identity design.

---

## Related Documents

- [Abilities System] (./abilities_system.md)
- [Effects System] (./effects_system.md)
- [Mastery & Progression] (./mastery_progression.md)
- [Starting Character Templates] (./starting_templates.md)
- [Races & Classes] (./races_and_classes.md)
- [Magic System] (./magic_system.md)
- [Naval Travel] (./naval_travel.md)
- [Exploration Systems] (./exploration_systems.md)
- [Factions] (../factions/factions.md)

---

## Core Design Philosophy

| Principle | Implementation |
| --- | --- |
| Skills define identity | Every skill choice shapes who the player is, not just what they can do in combat |
| Horizontal progression | Skills deepen in capability and complexity rather than inflating raw stats |
| Interconnected systems | Combat, crafting, naval, social, and exploration skills cross-reference and reinforce each other |
| Meaningful scarcity | Not every skill is available to every player — some require faction loyalty, discovery, or dangerous pursuit |
| No single optimal build | Dozens of viable specialization paths ensure no single meta dominates |
| World recognition | Mastery of skills creates social reputation, political access, and world-level consequences |

---

## The Atavism X 9 Skill Hierarchy

In Atavism X 9, skills are the primary progression controllers. They operate as the backbone of the entire gameplay experience. The hierarchy is:

```
Skill
 └── unlocks Abilities
       └── Abilities apply Effects
             └── Effects modify Gameplay
```

### Skills
Skills are leveled progression systems. Each skill tracks XP, current level, and associated unlocks. Skills improve through use, training, investment, and world engagement. They define what the player can attempt.

### Abilities
Abilities are discrete gameplay actions or passive modifiers unlocked at skill thresholds. A Swordsmanship skill at level 10 might unlock the **Precision Thrust** ability. A Navigation skill at level 25 might unlock **Chart Hazard Routes**. Abilities are the functional expression of what a skill actually does.

### Effects
Effects are the direct gameplay modifications applied by abilities. A **Shield Bash** ability applies a **Stun Effect** and a **Interrupt Effect**. Effects are the atomic units of gameplay change — they modify stats, alter states, trigger world interactions, or apply conditions.

### Gameplay Changes
The terminal result: an enemy is stunned, a route is unlocked, a ward is activated, a crafted item gains a special property. This is where skill investment becomes tangible experience.

---

## Skill Improvement

Skills advance through multiple pathways:

| Method | Description | Examples |
| --- | --- | --- |
| Active use | Using a skill in the world contributes XP | Fighting with a sword raises Swordsmanship; sailing raises Navigation |
| Focused training | Practising with trainers grants accelerated XP in specific areas | Swordsmanship trainer at a garrison; cooking instructor at a faction inn |
| Quests and faction contracts | Completing skill-relevant objectives provides milestone XP | Naval escort contract advances Sailing; ruin excavation advances Archaeology |
| Tier investment | Players allocate Skill Points at level-up milestones to unlock tier gates | Required to progress past Foundation, Mastery, and Expert breakpoints |
| Discovery | Finding hidden knowledge, ruins, or teachers grants rare skill boosts | A lost scrollbook advances Veil Attunement; a hidden temple reveals Forbidden Rituals |
| World events | Seasonal or dynamic world events create bonus skill progression windows | Storm season accelerates Storm Survival; relic discovery events boost Archaeology |

---

## Skill Categories

Mystical Isles organizes skills into six primary categories. Players are not locked to a category — any character can invest in any learnable skill. Racial and class starting bonuses accelerate early progression in naturally aligned skills but do not gate others permanently.

### Category Overview

| Category | Focus | Example Skills |
| --- | --- | --- |
| Combat | Physical and magical fighting proficiency | Swordsmanship, Archery, Elemental Magic, Stealth Combat |
| Crafting | Producing items, ships, and consumables | Blacksmithing, Alchemy, Shipbuilding, Enchanting |
| Gathering | Acquiring raw materials and hidden resources | Mining, Herbalism, Fishing, Treasure Hunting |
| Naval | Seamanship, ship warfare, and sea survival | Navigation, Sailing, Cannon Operation, Storm Survival |
| Social & Political | Faction influence, leadership, and negotiation | Leadership, Diplomacy, Espionage, Governance |
| Forbidden | Dangerous, consequence-bearing dimensional skills | Veil Attunement, Curse Mastery, Forbidden Rituals |

---

## Combat Skills

| Skill | Description | Skill Type | Max Level | Auto-Learned | Parent Skill | Associated Class | Primary Stat Growth | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Swordsmanship | Proficiency with one and two-handed swords — parry, riposte, power strikes | Active | 100 | No (class grant) | — | Fighter, Knight, Pirate, Rogue | Strength, Dexterity | Core melee combat |
| Axes | Proficiency with axes and hatchets — cleave, heavy overhead, armor penetration | Active | 100 | No | — | Fighter, Dwarf Defender | Strength | Melee, armor penetration |
| Polearms | Reach weapon mastery — spears, halberds, pikes | Active | 100 | No | — | Fighter, Knight | Strength, Dexterity | Reach control, group combat |
| Shield Mastery | Blocking, counter-blocking, shield bash, and formation defense | Active/Passive | 100 | No (class grant) | — | Knight, Paladin, Dwarf Defender | Endurance, Strength | Defensive anchor |
| Dual Wielding | Paired weapon combat and off-hand mechanics | Active | 100 | No | Swordsmanship 20 | Rogue, Fighter | Dexterity | Burst melee, evasion offense |
| Heavy Weapons | Two-handed hammers, mauls, great-axes | Active | 100 | No | — | Fighter, Dwarf Defender | Strength, Endurance | Suppression, siege combat |
| Archery | Short bow, longbow, compound bow — precision and range | Active | 100 | No (class grant) | — | Ranger, Elf Mystic Ranger | Dexterity | Ranged precision |
| Firearms | Flintlock pistols, blunderbuss, rifles — burst ranged | Active | 100 | No | — | Pirate, Rogue | Dexterity | Burst ranged, boarding |
| Elemental Magic | Channeling post-Fracturing energy into damaging spells | Active | 100 | No (class grant) | — | Mage, Witch, Paladin | Intelligence, Willpower | Ranged magical damage |
| Ward Magic | Defensive and suppressive Ward energy application | Active/Passive | 100 | No | Elemental Magic 15 | Paladin, Elf Mystic Ranger | Willpower | Anti-Veil, support |
| Veil Magic | Direct channeling of dimensional corruption energy | Active | 100 | No (forbidden, quest-locked) | Veil Attunement 30 | Witch | Willpower, Intelligence | Corruption attacks, debuffs |
| Stealth Combat | Fighting from concealment — ambush, poisoned strikes, shadow retreats | Active | 100 | No | Stealth 25 | Rogue | Dexterity | Assassination, infiltration |
| Defensive Combat | Counter-fighting, wound management, controlled retreat | Passive | 100 | No | Shield Mastery 20 | Knight, Paladin | Endurance | Sustained survival |
| Mounted Combat | Fighting from horseback or creature mounts | Active | 75 | No | Swordsmanship 30 | Knight | Strength, Dexterity | Cavalry, pursuit, charge |

### Combat Skill Progression Notes

- Combat skills advance with every relevant combat encounter
- Advanced tiers gate behind trainer investment, faction contracts, or legendary encounters
- Mixing combat skills creates hybrid build identities — the Pirate who combines Firearms + Swordsmanship + Boarding Combat has a distinct playstyle from a pure Fighter
- Mastery-tier combat skills unlock abilities that change how the world perceives and reacts to the player

---

## Crafting Skills

| Skill | Description | Skill Type | Max Level | Auto-Learned | Parent Skill | Associated Class | Primary Stat Growth | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Blacksmithing | Weapons, armor, structural components, forge work | Active | 100 | No | — | Fighter, Dwarf Defender | Strength, Intelligence | Equipment supply, economy |
| Alchemy | Potions, poisons, reagents, restoration compounds | Active | 100 | No | — | Mage, Witch | Intelligence, Willpower | Consumables, buffs, sabotage |
| Engineering | Mechanical devices, ship components, gadgets, deployable systems | Active | 100 | No | — | Gnome Engineer | Intelligence | Gadgets, ship augmentation |
| Shipbuilding | Hull construction, rigging, ship class upgrades | Active | 100 | No | — | Pirate, Dwarf Defender | Strength, Intelligence | Naval economy |
| Enchanting | Imbuing dimensional energy into items and equipment | Active | 100 | No | Elemental Magic 20 | Mage, Elf Mystic Ranger | Intelligence, Willpower | Equipment enhancement |
| Cooking | Rations, buff food, long-voyage supplies, rare recipes | Active | 100 | Yes (basic tier) | — | Ranger, all | Endurance | Survival consumables |
| Tailoring | Cloth armor, travel gear, faction livery, sails | Active | 100 | No | — | Rogue, Ranger | Dexterity, Intelligence | Light armor, expedition gear |
| Leatherworking | Medium armor, straps, bindings, harpoon lines | Active | 100 | No | — | Ranger, Fighter | Strength, Dexterity | Medium armor, equipment |
| Jewelcrafting | Rings, amulets, relic adornments, ward-stones | Active | 100 | No | — | Gnome Engineer, Mage | Intelligence, Dexterity | Stat-enhancing accessories |
| Relic Restoration | Repairing and reactivating pre-Fracturing artifacts | Active | 100 | No (faction/discovery) | Archaeology 30 | Gnome Engineer | Intelligence, Willpower | Relic activation, world events |

### Crafting Skill Progression Notes

- Every crafted item contributes XP regardless of quality outcome
- Exceptional crafting (high-quality items, rare materials, complex recipes) provides bonus XP
- Master crafters can accept commissioned work, establish workshops, train apprentices, and hold license rights in faction territories
- Relic Restoration is the rarest crafting skill — it requires both Archaeology investment and a discovery unlock

---

## Gathering Skills

| Skill | Description | Skill Type | Max Level | Auto-Learned | Parent Skill | Associated Class | Primary Stat Growth | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Mining | Ore extraction, gem mining, tunnel exploration | Active | 100 | No | — | Dwarf Defender, Fighter | Strength, Endurance | Raw material supply |
| Herbalism | Identifying, harvesting, and preserving alchemical flora | Active | 100 | No | — | Ranger, Witch, Mage | Intelligence, Dexterity | Alchemy materials |
| Fishing | Open water and coastal fishing, rare specimen recovery | Active | 100 | Yes (basic tier) | — | Pirate, Ranger | Dexterity, Endurance | Food, rare specimens |
| Salvaging | Recovering usable materials from wreckage and ruins | Active | 100 | No | — | Pirate, Rogue | Strength, Intelligence | Ship materials, rare finds |
| Treasure Hunting | Identifying hidden caches, reading environmental clues, deciphering maps | Active | 100 | No | — | Rogue, Ranger | Intelligence, Dexterity | Hidden rewards, rare items |
| Archaeology | Excavating, analyzing, and documenting ruin sites | Active | 100 | No | — | Gnome Engineer, Mage | Intelligence | Relic access, lore unlock |
| Lumber Harvesting | Felling and processing timber for shipbuilding and construction | Active | 100 | No | — | Ranger, Fighter | Strength | Shipbuilding materials |
| Coral Diving | Underwater harvesting of reef materials and sunken relic recovery | Active | 100 | No | — | Pirate, Ranger | Dexterity, Endurance | Rare sea materials |
| Ancient Recovery | Identifying and extracting technology from pre-Fracturing sites | Active | 100 | No (quest-locked) | Archaeology 40 | Gnome Engineer | Intelligence, Willpower | Ancient tech, rare crafting |

---

## Naval Skills

| Skill | Description | Skill Type | Max Level | Auto-Learned | Parent Skill | Associated Class | Primary Stat Growth | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Navigation | Chart routes, read sea conditions, identify hazards and anomalies | Active/Passive | 100 | No | — | Pirate, Ranger | Intelligence, Dexterity | Route access, exploration |
| Sailing | Ship speed management, wind reading, course control | Active/Passive | 100 | No | — | Pirate, any crew role | Dexterity, Endurance | Core naval movement |
| Cannon Operation | Aiming, loading, firing, and maintenance of ship armament | Active | 100 | No | — | Pirate, Fighter, Dwarf Defender | Strength, Dexterity | Naval combat offense |
| Harpoon Mastery | Ranged harpoon use, creature control, boarding utility | Active | 100 | No | — | Pirate, Ranger | Strength, Dexterity | Naval control, hunting |
| Ship Repair | Hull assessment and field repair under combat or storm conditions | Active | 100 | No | — | Pirate, Dwarf Defender | Strength, Intelligence | Naval survival |
| Reef Navigation | Navigating shallow, broken, and reef-hazard sea terrain | Active/Passive | 75 | No | Navigation 25 | Pirate, Ranger | Intelligence, Dexterity | Shattered Reefs access |
| Storm Survival | Keeping crew and vessel functional in severe weather conditions | Active/Passive | 100 | No | — | Pirate, Ranger | Endurance, Willpower | Dangerous sea survival |
| Smuggling | Contraband movement, hidden route access, black market networks | Active | 100 | No (faction/discovery) | — | Rogue, Pirate | Dexterity, Intelligence | Economy, covert operations |
| Boarding Combat | Coordinated assault across ship gunwales and enemy decks | Active | 100 | No | Swordsmanship 20 | Pirate, Fighter | Strength, Dexterity | Naval offense, raiding |

---

## Social & Political Skills

| Skill | Description | Skill Type | Max Level | Auto-Learned | Parent Skill | Associated Class | Primary Stat Growth | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Leadership | Command authority, crew morale, expedition direction | Active/Passive | 100 | No | — | Knight, Paladin, Pirate | Willpower | Group effectiveness, political access |
| Diplomacy | Faction reputation management, negotiation, peace-brokering | Active | 100 | No | — | All Human classes | Intelligence, Willpower | Cross-faction access |
| Merchant Negotiation | Trade pricing, contract terms, market leverage | Active | 100 | No | — | Rogue, Pirate | Intelligence | Economy, trade influence |
| Intimidation | Force-based social leverage, information extraction, submission | Active | 100 | No | — | Fighter, Pirate | Strength, Willpower | Non-combat pressure |
| Espionage | Infiltration, information gathering, covert network management | Active | 100 | No (faction/quest) | — | Rogue | Dexterity, Intelligence | Covert political operations |
| Faction Influence | Building sustained standing with specific factions | Passive | 100 | No | Diplomacy 20 | All | Willpower | Long-term faction access |
| Governance | Administrative authority, law enforcement, regional management | Active | 100 | No (political tier) | Leadership 50 | Knight, Paladin, Human classes | Intelligence, Willpower | Political endgame |
| Trade Negotiation | Bulk trade pricing, exclusive contracts, supply agreements | Active | 100 | No | Merchant Negotiation 25 | Pirate, Rogue | Intelligence | Economy, supply chains |

---

## Forbidden Skills

Forbidden skills carry real consequences. They are not simply power — they are choices that change what the player is and how the world responds to them.

| Skill | Description | Skill Type | Max Level | Auto-Learned | Parent Skill | How Unlocked | Risk |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Veil Attunement | Manipulating dimensional corruption energy for active effects | Active | 100 | No | — | Specific quest event or forbidden trainer | Corruption buildup per use |
| Curse Mastery | Applying and extending curse effects on targets and environments | Active | 100 | No | Veil Attunement 30 | Thornbound Circles (forbidden path) or ruin discovery | Corruption buildup, faction hostility |
| Dimensional Resonance | Interacting with and stabilizing or destabilizing dimensional anomalies | Active | 100 | No | — | Tempest Accord deep research or ruin discovery | Anomaly exposure, instability risk |
| Corruption Resistance | Resisting, absorbing, and recovering from Veil exposure | Passive | 100 | No | — | Paladin training line or specific quest | Diminishing returns at extreme levels |
| Forbidden Rituals | Performing dangerous ancient rites from pre-Fracturing knowledge | Active | 75 | No | Veil Attunement 50 | Lost ruins, forbidden archives, hidden teachers | Severe corruption, faction consequences |

### Forbidden Skill Mechanics

- **Corruption** builds with every use of Veil Attunement, Curse Mastery, and Forbidden Rituals
- At low corruption: minor visual changes, some faction suspicion
- At moderate corruption: debuffs, NPC reactions, faction standing penalties with aligned factions
- At high corruption: character becomes recognizable as Veil-touched; certain regions become hostile; new Veil-faction interactions open
- **Cleansing** requires ritual investment or Paladin assistance
- Forbidden skills represent the deepest player identity statement in the game — choosing them is choosing consequence

---

## Skill Learning System

### How Players Learn Skills

| Method | Description | Access | Examples |
| --- | --- | --- | --- |
| Racial auto-grant | Skills given to all members of a race at character creation | Automatic | Dwarves receive Mining basics; Elves receive Ward Attunement awareness |
| Class auto-grant | Skills assigned at class selection | Automatic | Fighter receives Swordsmanship; Pirate receives Sailing and Navigation |
| Trainers | NPCs who teach skills in exchange for currency, faction standing, or proof of readiness | Trainer locations | Swordsmanship trainers in barracks; Alchemy trainers in faction labs |
| Books and Scrolls | Rare items that grant skill XP or unlock tiers | Loot, trade, discovery | Lost navigational texts advance Reef Navigation; ancient scrollbooks unlock Forbidden Rituals |
| Relics | Pre-Fracturing artifacts that contain encoded knowledge | Archaeology, Relic Restoration | A recovered resonator grants Dimensional Resonance basics |
| Faction reputation | Skills available only to characters with sufficient faction standing | Earned through faction play | Free Reef Corsairs unlock Smuggling; Tempest Accord unlocks advanced Dimensional Resonance |
| Quest events | Story-triggered skill unlocks tied to specific narrative moments | Quest completion | Completing the Witchwood corruption chain unlocks Veil Attunement |
| Discovery | Exploring hidden locations or deciphering forgotten knowledge | Exploration | Finding a hidden underground forge unlocks advanced Blacksmithing tier |
| Experimentation | Combining skills or using them in unusual ways may trigger new unlock opportunities | Active play | High Alchemy + Relic Restoration + specific ruin event unlocks Ancient Recovery |
| World events | Seasonal or dynamic events create temporary skill-learning windows | Participation | Storm season events accelerate Storm Survival and unlock special navigation skills |

### Access Restrictions

Not all skills are available to all players. Some require:

| Restriction Type | Example |
| --- | --- |
| Faction loyalty | Smuggling requires positive Free Reef Corsairs standing |
| Political standing | Governance requires Leadership 50 and a political appointment |
| Rare discovery | Ancient Recovery requires a specific deep-ruin exploration event |
| Dangerous corruption | Forbidden Rituals requires Veil Attunement 50 and accepted corruption risk |
| Hidden trainers | Veil Attunement can be learned from a hidden trainer in corrupted ruins |
| Lost ruins | Some relic-based skills exist only in a single location in the world |

This creates natural differentiation between player characters — two players of the same race and class can have dramatically different skill profiles based on what they pursued, who they aligned with, and what they discovered.

---

## Skill Profiles

Skill Profiles are Atavism X 9 configuration templates that govern how each skill category behaves in terms of XP curves, mastery pacing, and specialization design.

### Combat Profile

| Parameter | Value | Notes |
| --- | --- | --- |
| XP Curve | Moderate initial gain, steepening mid-tier | Early combat is accessible; deep mastery requires real investment |
| Tier Gates | Levels 25, 50, 75, 100 | Each gate requires trainer investment or narrative unlock |
| Mastery Pacing | 200–400 combat encounters per tier | Organic progression through real play |
| Specialization Pacing | Accessible at level 25; deep specialization at 75+ | Players can feel specialized without requiring years of grinding |
| Usage Progression | Every relevant combat action contributes | Swordsmanship advances through sword use, not generic combat XP |

### Crafting Profile

| Parameter | Value | Notes |
| --- | --- | --- |
| XP Curve | Linear early, material-gated mid-tier | Access to rare materials is the real limiter, not time |
| Tier Gates | Levels 20, 40, 60, 80, 100 | Each requires new recipes, trainers, or materials |
| Mastery Pacing | Production volume drives advancement | High-volume crafters advance faster; quality crafting gives bonus XP |
| Specialization Pacing | Sub-specializations unlock at level 40 | Players commit to weapon smithing vs. armor smithing at meaningful depth |
| Usage Progression | Every crafted item contributes | Failed crafts contribute reduced XP; exceptional crafts give bonus XP |

### Gathering Profile

| Parameter | Value | Notes |
| --- | --- | --- |
| XP Curve | Fast early, discovery-gated late | Finding new node types and locations drives advancement |
| Tier Gates | Levels 20, 50, 80 | Mid-tier requires new region access; late-tier requires ruin exploration |
| Mastery Pacing | Discovery events and volume both contribute | Explorers advance through finding new sites; dedicated gatherers through volume |
| Specialization Pacing | Location-based specialization unlocks at level 30 | Deep-sea fishing vs. freshwater; surface mining vs. underground excavation |
| Usage Progression | Node interaction drives XP | Rare node types yield bonus XP |

### Naval Profile

| Parameter | Value | Notes |
| --- | --- | --- |
| XP Curve | Steep early, plateau-breakers from dangerous voyages | Dangerous routes and combat encounters create the biggest advancement windows |
| Tier Gates | Levels 25, 50, 75 | Mid-tier requires storm encounters or deep-sea voyages |
| Mastery Pacing | Voyage frequency + difficulty both matter | Safe coastal sailing advances slowly; storm-season deep routes advance quickly |
| Specialization Pacing | Naval specialization unlocks at level 30 | Combat navigation vs. exploration navigation vs. trade route optimization |
| Usage Progression | Time at sea, encounters, and successful objectives all contribute | Failed voyages still advance skills — experience earned the hard way |

### Political Profile

| Parameter | Value | Notes |
| --- | --- | --- |
| XP Curve | Interaction-based, milestone-heavy | Social skills advance through meaningful events, not repetitive grinding |
| Tier Gates | Levels 20, 40, 60, 80 | Each tier requires faction standing milestones, not just XP |
| Mastery Pacing | Narrative events and sustained faction engagement | A player who actively participates in faction politics advances faster |
| Specialization Pacing | Political specialization unlocks at level 40 | Governance path vs. espionage path vs. merchant trade path |
| Usage Progression | Every significant interaction contributes | Routine trade gives minimal XP; major negotiations, faction events, and political crises give substantial XP |

### Forbidden Profile

| Parameter | Value | Notes |
| --- | --- | --- |
| XP Curve | Slow and risk-gated | Every advance costs corruption; progress demands commitment |
| Tier Gates | Levels 20, 40, 60, 80 | Each tier requires new corruption tolerance or ritual cleansing events |
| Mastery Pacing | Deliberate and consequence-bearing | Forbidden skills are never casually maxed; every tier is a meaningful choice |
| Specialization Pacing | Full specialization requires long commitment | Deep Forbidden specialists are rare and recognizable |
| Usage Progression | Every use advances AND costs | This is the only skill category where advancement has a built-in cost |

---

## Long-Term Skill Identity

Over time, a player's skill profile becomes their signature in the world:

- A character with maxed Navigation, Reef Navigation, and Storm Survival is known as a legendary navigator before any title confirms it
- A character with maxed Blacksmithing and Relic Restoration becomes the person factions seek for ancient systems
- A character with maxed Veil Attunement and Curse Mastery carries visible corruption markers that NPCs and other players recognize
- A character with maxed Diplomacy, Leadership, and Governance moves in political circles that most players never reach

Skills are not a mechanical grind system. They are a long-term journal of what the player chose to become.

> See also: [Mastery & Progression] (./mastery_progression.md) for detailed treatment of skill mastery, hidden ability unlocks, and world reputation effects.

---

## Related Documents


## Suggested Reading
- Previous: Start with this page.
- Next: [Skills & Progression] (skills_and_progression.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/abilities_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Abilities System

---

# Abilities System
## Overview

Abilities are the active and passive expressions of a player's skill investment. Where skills define *what a player has learned*, abilities define *what a player can do*. Every ability is unlocked through a specific skill at a specific level threshold. Abilities apply effects. Effects change gameplay.

The Abilities System is where identity becomes action.

This document defines all ability types, their structures, the full ability catalog organized by skill category, and the design principles that make abilities feel meaningful in the world of Mystical Isles.

---

## Related Documents

- [Skills System] (./skills_system.md)
- [Effects System] (./effects_system.md)
- [Mastery & Progression] (./mastery_progression.md)
- [Starting Character Templates] (./starting_templates.md)
- [Races & Classes] (./races_and_classes.md)

---

## Core Design Philosophy

| Principle | Implementation |
| --- | --- |
| Abilities express identity | What abilities a player has reveals what they are, not just what they can do |
| Abilities connect to world systems | Combat abilities affect politics; naval abilities affect exploration; crafting abilities affect economy |
| Abilities are earned | No ability is available at character creation without context — each is a reward for investment |
| Abilities have narrative weight | Master-tier abilities change how the world reacts to the character who has them |
| Abilities enable cooperation | Specialized abilities create natural player cooperation — you need what someone else has |

---

## Ability Types

| Type | Description | Examples |
| --- | --- | --- |
| Active | Deliberately triggered by the player; has a cost, cooldown, or cast time | Shield Bash, Stormcall, Boarding Strike |
| Passive | Always active once unlocked; no trigger required | Duelist's Resolve, Relic Sensitivity, Storm Instinct |
| Toggle | Switched between on/off states; may drain resources while active | Stealth Mode, Berserker Stance, Ward Aura |
| Channeling | Sustained cast requiring continuous input to maintain | Veil Drain, Dimensional Anchor, Harpoon Hold |
| Naval | Active during ship-based gameplay; tied to naval skill | Full Sail, Broadside, Emergency Patch |
| Ritual | Long-cast ceremony abilities that alter world states or apply major effects | Consecrate Ground, Veil Seal, Storm Binding |
| Crafting | Abilities that modify crafting outcomes or unlock special production | Masterwork Attempt, Rune Infusion, Salvage Insight |
| Leadership | Abilities that affect group members, crews, or commanded units | Rally, Commander's Presence, Crew Discipline |
| Exploration | Abilities that alter traversal, detection, or site interaction | Relic Scan, Hazard Sense, Ward Read |

---

## Ability Structure (Atavism X 9)

Each ability in Atavism X 9 has the following definition fields:

| Field | Description |
| --- | --- |
| Name | Unique identifier |
| Description | What the ability does in plain language |
| Ability Type | Active / Passive / Toggle / Channeling / Naval / Ritual / Crafting / Leadership / Exploration |
| Resource Cost | Stamina, Mana, Corruption, or none |
| Cooldown | Seconds before reuse |
| Cast Time | Seconds before activation; 0 = instant |
| Range | Distance to valid target in meters; 0 = self |
| Target Type | Self, Single Enemy, Single Ally, Area, Ship, Object, World |
| Required Skill | Skill that gates this ability |
| Skill Level Requirement | Minimum skill level to unlock |
| Effects Applied | List of effects triggered on use |
| Animation Type | Attack, Cast, Channel, Ceremony, Passive |
| Audio Type | Weapon impact, spell cast, environment, leadership shout |
| Visual FX | Particle, glow, beam, aura, weather, none |
| Gameplay Role | What role this ability fills in the player's toolkit |

---

## Combat Abilities

### Swordsmanship Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Precision Thrust | Active | 15 Stamina | 3s | 0.5s | Melee | 5 | Pierce Damage (High), Armor Ignore | Single-target precision strike |
| Parry Stance | Toggle | 10 Stamina/s | — | 0 | Self | 10 | Parry Buff, Counter Window | Defensive posture for melee |
| Riposte | Active | 20 Stamina | 6s | 0 | Melee | 15 | Slash Damage, Speed Debuff on target | Counter-strike after successful parry |
| Blade Whirlwind | Active | 35 Stamina | 12s | 0.5s | 3m radius | 25 | Slash Damage (multi-target), Balance Debuff | Group melee suppression |
| Duelist's Focus | Passive | — | — | — | Self | 35 | Crit Chance +10%, Parry +15% | Sustained single-combat excellence |
| Vital Strike | Active | 40 Stamina | 20s | 1s | Melee | 50 | Slash Damage (critical), Bleeding Effect | Decisive single-target damage |
| Grand Master's Edge | Passive | — | — | — | Self | 100 | Parry ×2, Counter Max Damage, Evasion Negate on target | Pinnacle swordsmanship mastery |

---

### Shield Mastery Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Shield Bash | Active | 20 Stamina | 8s | 0 | Melee | 5 | Stun (2s), Cast Interrupt, Crush Damage (low) | Interrupt, gap opener |
| Cover Ally | Active | 15 Stamina | 5s | 0 | 5m | 15 | Redirect Damage (partial), Taunt | Group protection |
| Shield Wall | Toggle | 20 Stamina/s | — | 0 | Self | 25 | Physical Defense +50%, Movement Speed -30% | Frontline anchor |
| Fortress Stance | Active | 30 Stamina | 30s | 0.5s | Self | 50 | Immovable (10s), Defense Max, Reflect Damage | Unmovable defensive posture |
| Counter Shield | Passive | — | — | — | Self | 35 | After block: instant Crush Damage counter | Passive counter-attack on block |
| Rally Point | Active | 50 Stamina | 60s | 1s | 15m | 75 | Defense Aura for group, Morale Buff | Group defensive anchor |

---

### Archery Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Pinning Shot | Active | 20 Stamina | 8s | 0.5s | 40m | 5 | Pierce Damage, Root (3s) | Range control, immobilization |
| Eagle Eye | Toggle | 10 Stamina/s | — | 0 | Self | 15 | Range +30%, Accuracy +20%, Movement Speed -50% | Long-range precision mode |
| Volley | Active | 40 Stamina | 15s | 1s | 30m radius | 25 | Pierce Damage (area, low per arrow) | Group suppression |
| Splitting Arrow | Active | 25 Stamina | 10s | 0.5s | 50m | 35 | Pierce Damage (3 targets in line) | Line-clearing shot |
| Hunter's Mark | Active | 10 Stamina | 20s | 0 | 60m | 50 | Target Visibility, Tracking Buff, Damage Taken +15% | Coordination and group damage amplification |
| Windreader Shot | Passive | — | — | — | Self | 75 | Wind Penalty Removed, Range +20% | Navigation of difficult conditions |

---

### Firearms Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Warning Shot | Active | 15 Stamina | 5s | 0 | 30m | 5 | Fear (brief), Panic Debuff | Crowd control opener |
| Deadeye | Active | 30 Stamina | 12s | 1s (aim) | 60m | 15 | Pierce Damage (very high), Armor Ignore | Long-range single-target elimination |
| Scatter Shot | Active | 35 Stamina | 15s | 0.5s | 15m cone | 25 | Pierce Damage (area, moderate) | Close-range suppression |
| Powder Keg Throw | Active | 40 Stamina | 30s | 1s | 25m | 35 | Fire Damage (area), Root | Area denial |
| Overwatch | Toggle | 20 Stamina/s | — | 0 | Self + 60m | 50 | Auto-fire on moving targets, Interrupt on cast | Battlefield control mode |
| Detonation Expertise | Passive | — | — | — | Self | 75 | Explosive ability damage +25%, Reload Speed +30% | Explosive and firearm optimization |

---

### Elemental Magic Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Force Bolt | Active | 20 Mana | 3s | 0.5s | 40m | 5 | Arcane Damage (moderate) | Reliable ranged damage |
| Frost Shards | Active | 25 Mana | 6s | 0.5s | 35m | 10 | Frost Damage, Slow (30%, 5s) | Kiting tool |
| Fireball | Active | 40 Mana | 10s | 1.5s | 50m | 20 | Fire Damage (area), Burning Effect | Area damage |
| Chain Lightning | Active | 50 Mana | 15s | 1s | 40m | 30 | Arcane Damage (bounces up to 5 targets) | Multi-target offense |
| Frost Prison | Active | 60 Mana | 25s | 2s | 30m | 45 | Frost Damage, Root (8s), Vulnerability to Damage | Hard crowd control |
| Stormcall | Ritual | 150 Mana | 120s | 5s | Regional | 75 | Storm Weather (10 min), Lightning Strikes (random area), Navigation Penalty for others | Environmental manipulation |
| Rift Tear | Active | 100 Mana | 60s | 3s | 20m | 90 | Dimensional Damage (extreme), AoE Knockback, Anomaly spawned | Pinnacle magical offense |

---

### Ward Magic Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Ward Barrier | Active | 30 Mana | 20s | 1s | 10m | 10 | Magic Resistance Buff (group), Veil Damage Reduction | Group anti-Veil defense |
| Purge Corruption | Active | 40 Mana | 30s | 2s | 8m | 20 | Corruption Removal (target), Brief Stun to Veil creatures | Cleanse and anti-Veil |
| Aetheric Anchor | Active | 60 Mana | 45s | 2s | 5m | 35 | Root (Veil creatures, 10s), Ward Stability in area | Veil creature control |
| Ward Pulse | Active | 80 Mana | 60s | 3s | 20m radius | 50 | Veil Damage (area), Corruption Clear (allies), Reveal Hidden | Anti-Veil area clear |
| Sacred Ground | Ritual | 150 Mana | 300s | 10s | 15m radius | 75 | Veil Resistance Aura, Health Regen (allies), Veil Creatures Weakened | Major defensive ritual |

---

### Stealth Combat Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Shadow Step | Active | 25 Stamina | 12s | 0 | 15m | 10 | Teleport to shadow point, brief Stealth | Repositioning |
| Ambush Strike | Active | 35 Stamina | 10s | 0 | Melee | 20 | Slash Damage (×3 from stealth), Bleed | Burst opener from stealth |
| Poison Blade | Toggle | 5 Stamina/s | — | 0 | Self | 30 | Adds Poison Effect to melee attacks | Sustained damage over time |
| Vanish | Active | 50 Stamina | 60s | 0 | Self | 50 | Full Stealth (8s), Movement Speed +20% | Emergency escape |
| Death Mark | Active | 40 Stamina | 45s | 0 | 30m | 65 | Target revealed, Damage Taken +30%, Cannot hide | Priority target designation |
| Shadow Clone | Active | 80 Stamina | 120s | 1s | Self | 85 | Decoy created (lasts 15s), Stealth for caster | Distraction and evasion |

---

## Naval Abilities

### Navigation Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Chart Course | Active | 10 Stamina | 60s | 2s | — | 5 | Route Visualization, Hazard Warning | Navigation aid |
| Hazard Read | Passive | — | — | — | Self | 15 | Reef and Shoal warning detection radius +100% | Passive navigation safety |
| Deep Route Memory | Passive | — | — | — | Self | 35 | Access to charted deep routes in Memory Map | Long-term navigation asset |
| Anomaly Detection | Active | 20 Mana | 30s | 1s | 500m | 50 | Detect Dimensional Anomaly, Ward Resonance | Exploration navigation |
| Current Mastery | Passive | — | — | — | Self | 75 | Speed +15% using ocean currents, Fuel Cost Reduced | Long-range efficiency |

---

### Sailing Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Full Sail | Active | 20 Stamina | 30s | 1s | Ship | 5 | Ship Speed +40% (30s), Maneuver Penalty | Sprint mode for ships |
| Wind Reading | Passive | — | — | — | Ship | 15 | Wind Bonus automatically applied to speed | Passive sailing efficiency |
| Hard Turn | Active | 30 Stamina | 20s | 0 | Ship | 25 | Sharp Maneuver, Heel Avoidance | Combat evasion maneuver |
| Storm Sailing | Active | 40 Stamina | 60s | 0 | Ship | 50 | Storm Damage Reduction +50%, Speed Maintained | Storm navigation |
| Ghost Wind | Active | 60 Stamina | 120s | 2s | Ship | 75 | Speed +100% (15s), Visibility Reduced for others | High-speed burst move |

---

### Cannon Operation Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Focused Volley | Active | 30 Stamina | 15s | 1s (aim) | 300m | 10 | Crush Damage (ship), Hull Breach Chance | Naval offense |
| Chain Shot | Active | 35 Stamina | 20s | 1s | 250m | 20 | Rigging Damage, Sail Slow Effect | Rigging destruction |
| Broadside | Active | 80 Stamina | 45s | 0 | Ship arc | 35 | Crush Damage (all targets in arc, moderate) | Fleet engagement |
| Heated Shot | Active | 50 Stamina | 30s | 1.5s | 300m | 50 | Fire Damage, Burning Hull Effect, Crew Damage | Fire warfare |
| Dead Eye Gunner | Passive | — | — | — | Self | 75 | Cannon Accuracy +30%, Reload Time -25% | Elite gunnery mastery |

---

### Boarding Combat Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Range | Skill Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Boarding Strike | Active | 30 Stamina | 20s | 0.5s | 15m (ship gap) | 10 | Leap to enemy ship, Crush Damage on landing, Fear (1s) | Naval combat opener |
| Grappling Hook | Active | 20 Stamina | 15s | 0.5s | 20m | 5 | Ship Tether (prevents escape), Assists Boarding | Tactical setup |
| Deck Sweep | Active | 40 Stamina | 15s | 0 | 5m radius | 25 | Slash Damage (multiple targets), Knockback | Boarder crowd control |
| Hold the Deck | Toggle | 15 Stamina/s | — | 0 | Self | 35 | Defense +40%, Cannot be boarded-thrown | Defensive boarding hold |
| Captain's Challenge | Active | 50 Stamina | 120s | 0 | Ship | 65 | Fear (enemy crew, 5s), Morale Break, Taunt captain | Naval duel opener |

---

## Crafting Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Required Skill | Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Masterwork Attempt | Active | 50 Stamina | 30 min | 10s | Any Crafting | 50 | Quality Upgrade Chance, Rare Trait Roll | Superior item production |
| Salvage Insight | Passive | — | — | — | Salvaging | 25 | Additional material yield +30% from salvage | Efficiency gatherer |
| Rune Infusion | Active | 40 Mana | 60s | 5s | Enchanting | 35 | Enchant Applied, Stat Enhancement | Item enchantment |
| Ward Forge | Active | 60 Mana | 120s | 30s | Blacksmithing 50 + Ward Magic 25 | 50 | Ward Property Added to weapon/armor | Anti-Veil equipment crafting |
| Relic Attune | Active | 80 Mana | 300s | 60s | Relic Restoration | 50 | Relic Activated, Relic Ability Unlocked | Ancient technology access |
| Recipe Discovery | Passive | — | — | — | Any Crafting | 40 | Chance to discover hidden recipe on craft | Content unlock through mastery |

---

## Exploration Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Required Skill | Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Relic Scan | Active | 20 Mana | 30s | 2s | Archaeology | 15 | Detect Relics and ancient sites in 200m radius | Exploration navigation |
| Hazard Sense | Passive | — | — | — | Survival | 20 | Environmental hazard warning, trap detection | Survival exploration |
| Ward Read | Active | 15 Mana | 20s | 1s | Relic Detection | 25 | Identify Ward function state and damage level | Ward interaction |
| Ancient Sight | Active | 30 Mana | 60s | 3s | Archaeology 50 | 50 | Visualize original pre-Fracturing layout of ruins | Exploration navigation |
| Veil Sight | Active | 40 Mana | 45s | 2s | Veil Attunement 20 | 20 | Reveal Veil corruption, hidden Veil creatures, dimensional weaknesses | Corruption detection |
| Treasure Sense | Passive | — | — | — | Treasure Hunting | 30 | Detection radius for hidden caches +100% | Passive exploration bonus |

---

## Leadership Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Required Skill | Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Rally | Active | 40 Stamina | 30s | 0 | Leadership | 10 | Morale Buff (group), Fear Immunity (10s) | Emergency group leadership |
| Commander's Presence | Passive | — | — | — | Leadership | 25 | Group XP Bonus +10%, Group Morale Sustained | Passive group benefit |
| Crew Discipline | Active | 30 Stamina | 60s | 1s | Leadership | 35 | Crew Efficiency +30%, Crew Morale Reset | Naval crew management |
| Inspiring Speech | Ritual | 60 Stamina | 600s | 30s | Leadership 50 + Diplomacy 25 | 50 | Group Buff Suite (speed, damage, morale) | Pre-engagement group buff |
| Warlord's Authority | Active | 80 Stamina | 300s | 2s | Leadership | 75 | Enemy Morale Break (area), Allied Damage +20% (30s) | Major battle leadership |
| Faction Address | Ritual | 100 Stamina | 3600s | 120s | Governance 30 | 60 | Faction Standing Gain (all present), Political Event Trigger | Political leadership |

---

## Social & Forbidden Abilities

### Social Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Required Skill | Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Hard Bargain | Active | 20 Stamina | 120s | 0 | Merchant Negotiation | 15 | Trade Price Reduction (session), Contract Bonus | Economic leverage |
| Silver Tongue | Active | 15 Stamina | 60s | 0 | Diplomacy | 20 | NPC Disposition Buff, Faction Check Bonus | Social navigation |
| Intimidate | Active | 25 Stamina | 30s | 0 | Intimidation | 10 | Fear (NPC), Information Extract, Surrender Chance | Non-combat pressure |
| Deep Cover | Toggle | 30 Stamina/s | — | 2s | Espionage | 35 | Faction disguise active, NPC faction affiliation change | Infiltration |
| Blackmail File | Active | — | 3600s | 10s | Espionage | 50 | NPC Compliance Forced (1 use), Political Consequence | Covert leverage |

### Forbidden Abilities

| Ability | Type | Cost | Cooldown | Cast Time | Required Skill | Level | Effects Applied | Gameplay Role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Veil Drain | Channeling | 10 Corruption/s | — | 0 | Veil Attunement | 20 | Veil Corruption Damage (target), Mana Restore (self) | Drain and damage |
| Curse Brand | Active | 50 Mana + 20 Corruption | 60s | 2s | Curse Mastery | 20 | Curse Effect (target), Debuff Stack, Duration extension | Persistent debuff |
| Dimensional Rift | Active | 80 Mana + 30 Corruption | 120s | 3s | Dimensional Resonance | 35 | Anomaly spawned, Area Damage, Navigation Disruption | Area denial, anomaly creation |
| Veil Siphon | Active | 60 Mana + 40 Corruption | 90s | 2s | Veil Attunement | 50 | Corruption Transfer to target, Self-Cleanse (partial) | Corruption manipulation |
| Forbidden Rite | Ritual | 200 Mana + 100 Corruption | 24h | 600s | Forbidden Rituals | 50 | Major World Effect (area), Faction Consequence, Corruption Surge | Extreme, world-impacting event |
| Corruption Aura | Toggle | 30 Corruption/min | — | 0 | Curse Mastery | 75 | AoE Corruption Buildup on nearby enemies, Fear (Corruption-weak targets) | Area presence ability |

---

## Example Ability Detail Profiles

### Shield Bash (Full Definition)

| Field | Value |
| --- | --- |
| Name | Shield Bash |
| Description | The defender drives their shield forward with full force, interrupting any ongoing ability and briefly stunning the target |
| Ability Type | Active |
| Resource Cost | 20 Stamina |
| Cooldown | 8 seconds |
| Cast Time | Instant (0s) |
| Range | Melee (2m) |
| Target Type | Single Enemy |
| Required Skill | Shield Mastery |
| Skill Level Requirement | 5 |
| Effects Applied | Stun (2s), Cast Interrupt, Crush Damage (low) |
| Animation Type | Weapon attack (shield forward) |
| Audio Type | Heavy impact — metal on body |
| Visual FX | Shield glow on impact, brief ring of stunned sparks |
| Gameplay Role | Interrupt tool and gap opener — prevents enemy casts and creates offensive window |

---

### Boarding Strike (Full Definition)

| Field | Value |
| --- | --- |
| Name | Boarding Strike |
| Description | The attacker launches across the gap between ships, slamming down on the enemy deck with enough force to scatter nearby crew |
| Ability Type | Active |
| Resource Cost | 30 Stamina |
| Cooldown | 20 seconds |
| Cast Time | 0.5s (leap animation) |
| Range | 15m (ship gap) |
| Target Type | Enemy Ship Deck (area) |
| Required Skill | Boarding Combat |
| Skill Level Requirement | 10 |
| Effects Applied | Crush Damage on landing, Fear (1s, nearby enemies) |
| Animation Type | Leap with landing impact |
| Audio Type | Wind during leap, heavy deck impact |
| Visual FX | Wake trail during leap, dust/debris ring on landing |
| Gameplay Role | Naval combat opener — initiates boarding engagement and creates immediate pressure on enemy deck |

---

### Veil Sight (Full Definition)

| Field | Value |
| --- | --- |
| Name | Veil Sight |
| Description | The caster briefly attunes their perception to dimensional fracture energy, revealing corruption presence, hidden Veil creatures, and dimensional weak points |
| Ability Type | Active |
| Resource Cost | 40 Mana |
| Cooldown | 45 seconds |
| Cast Time | 2 seconds |
| Range | 100m radius (self) |
| Target Type | Self (area reveal) |
| Required Skill | Veil Attunement |
| Skill Level Requirement | 20 |
| Effects Applied | Visibility Reveal (Veil entities), Corruption Mapping, Weak Point Reveal |
| Animation Type | Eye glow, brief distortion in view |
| Audio Type | Low dimensional resonance hum |
| Visual FX | Purple-violet haze on revealed targets, corruption areas highlighted in overlay |
| Gameplay Role | Exploration and combat scouting — essential for navigating corrupted ruins and Veil-heavy zones |

---

### Stormcall (Full Definition)

| Field | Value |
| --- | --- |
| Name | Stormcall |
| Description | The caster channels atmospheric energy into a localized storm system, disrupting navigation, suppressing enemies, and creating lightning strike hazards across a wide area |
| Ability Type | Ritual |
| Resource Cost | 150 Mana |
| Cooldown | 120 seconds |
| Cast Time | 5 seconds |
| Range | Regional (2km radius from cast location) |
| Target Type | World (area) |
| Required Skill | Elemental Magic |
| Skill Level Requirement | 75 |
| Effects Applied | Storm Weather (10 min), Random Lightning Strikes (area), Navigation Penalty (-50% for those without Storm Survival), Visibility Reduction |
| Animation Type | Long sky-cast with atmospheric visual buildup |
| Audio Type | Building wind, thunder, cracking lightning |
| Visual FX | Sky darkens, clouds form rapidly, lightning flashes, rain begins |
| Gameplay Role | Battlefield control and area denial at massive scale — creates chaos that skilled sailors and defenders can exploit |

---

### Relic Scan (Full Definition)

| Field | Value |
| --- | --- |
| Name | Relic Scan |
| Description | The practitioner pulses an aetheric frequency that bounces off pre-Fracturing material signatures, detecting their location and approximate type |
| Ability Type | Active |
| Resource Cost | 20 Mana |
| Cooldown | 30 seconds |
| Cast Time | 2 seconds |
| Range | 200m radius (self) |
| Target Type | Self (detection radius) |
| Required Skill | Archaeology |
| Skill Level Requirement | 15 |
| Effects Applied | Relic Detection (radius), Ancient Site Reveal, Artifact Type Estimate |
| Animation Type | Brief energy pulse emanation |
| Audio Type | Soft resonance ping |
| Visual FX | Outward pulse ring, distant glows on detected objects |
| Gameplay Role | Exploration navigation — the core tool for relic hunters, guiding excavation priorities and hidden site discovery |

---

## Related Documents


## Suggested Reading
- Previous: [Mastery & Progression] (mastery_progression.md)
- Next: [Abilities & Skill Trees] (abilities_and_skill_trees.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/build_object_templates.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Build Object Templates

---

# Mystical Isles — Build Object Templates
This document provides detailed Atavism-ready build object template configurations for key structures in Mystical Isles. Each template can be entered directly into the Atavism Editor Build Object section.

---

## Table of Contents

1. [How to Read These Templates] (#how-to-read-these-templates)
2. [Housing Templates] (#housing-templates)
3. [Storage Templates] (#storage-templates)
4. [Defense Templates] (#defense-templates)
5. [Crafting Templates] (#crafting-templates)
6. [Resource Templates] (#resource-templates)
7. [NPC Service Templates] (#npc-service-templates)
8. [Mystical Object Templates] (#mystical-object-templates)
9. [Naval Templates] (#naval-templates)
10. [Political and Guild Templates] (#political-and-guild-templates)
11. [Related Documents] (#related-documents)

---

## How to Read These Templates

Each template entry uses Atavism Build Object field names. Fields are presented in the order they appear in the Atavism Editor.

**Stage entries** are listed separately with their construction details. Build objects with multiple stages will have one entry per stage.

**Prefab names** follow the convention:
- `BO_[ObjectName]_Stage[N]` — progress prefabs
- `BO_[ObjectName]_Damaged[Percent]` — damage state prefabs

---

## Housing Templates

### Small Wooden House

```
Name:                     Small Wooden House
Icon:                     icon_building_wooden_house
Skill:                    Carpentry
Skill Level Req:          5
Category:                 Housing
Weapon Req:               Hammer
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Residential Claim, City Plot
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Housing
Stage Number:             3
Interaction Type:         None
Health:                   2500
Loot Table:               LT_ConstructionWood_Salvage
Loot Min Percentage:      30
Loot Max Percentage:      60

Stage 1 — Foundation
  Time to Build:          180 seconds
  Time to Repair:         90 seconds
  Health:                 500
  Items Required:         Timber x10, Nails x5
  Progress Prefab:        BO_SmallWoodenHouse_Stage1
  Damage Prefab:          BO_SmallWoodenHouse_Stage1_Damaged

Stage 2 — Frame
  Time to Build:          360 seconds
  Time to Repair:         180 seconds
  Health:                 1200
  Items Required:         Timber x20, Planks x15, Nails x20
  Progress Prefab:        BO_SmallWoodenHouse_Stage2
  Damage Prefab:          BO_SmallWoodenHouse_Stage2_Damaged

Stage 3 — Finished House
  Time to Build:          600 seconds
  Time to Repair:         300 seconds
  Health:                 2500
  Items Required:         Planks x25, Timber x10, Rope x5, Thatch x15
  Progress Prefab:        BO_SmallWoodenHouse_Stage3
  Damage Prefab:          BO_SmallWoodenHouse_Stage3_Damaged
```

**Purpose:** Basic solo or couple player home for Residential Claims or City Plots. Requires minimal skill. Foundation building block for new players establishing a home.

---

### Stone Cottage

```
Name:                     Stone Cottage
Icon:                     icon_building_stone_cottage
Skill:                    Masonry
Skill Level Req:          15
Category:                 Housing
Weapon Req:               Mason's Hammer
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Residential Claim, City Plot, Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Housing
Stage Number:             3
Interaction Type:         None
Health:                   4000

Stage 1 — Foundation
  Time to Build:          240 seconds
  Items Required:         Stone Block x15, Mortar x10

Stage 2 — Walls
  Time to Build:          600 seconds
  Items Required:         Stone Block x30, Mortar x20, Timber x10

Stage 3 — Complete
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Mortar x10, Timber x15, Thatch x20
```

---

### Guild Dormitory

```
Name:                     Guild Dormitory
Icon:                     icon_building_guild_dormitory
Skill:                    Carpentry
Skill Level Req:          10
Category:                 Housing
Weapon Req:               Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Housing
Stage Number:             3
Interaction Type:         None
Health:                   3000

Stage 1 — Foundation
  Time to Build:          300 seconds
  Items Required:         Timber x20, Stone Block x10

Stage 2 — Frame
  Time to Build:          600 seconds
  Items Required:         Timber x30, Planks x25, Nails x30

Stage 3 — Complete
  Time to Build:          900 seconds
  Items Required:         Planks x30, Timber x15, Thatch x20, Rope x10
```

---

## Storage Templates

### Wooden Chest

```
Name:                     Wooden Chest
Icon:                     icon_storage_wooden_chest
Skill:                    Carpentry
Skill Level Req:          1
Category:                 Storage
Weapon Req:               Hammer
Max Distance:             5
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Storage
Stage Number:             1
Interaction Type:         Chest
Health:                   500
Loot Table:               LT_ConstructionWood_Salvage
Loot Min Percentage:      20
Loot Max Percentage:      50

Stage 1 — Complete
  Time to Build:          30 seconds
  Time to Repair:         15 seconds
  Health:                 500
  Items Required:         Planks x5, Nails x4, Hinge x2
  Progress Prefab:        BO_WoodenChest_Stage1
  Damage Prefab:          BO_WoodenChest_Stage1_Damaged
```

---

### Guild Vault

```
Name:                     Guild Vault
Icon:                     icon_storage_guild_vault
Skill:                    Architecture
Skill Level Req:          25
Category:                 Storage
Weapon Req:               Mason's Hammer
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Storage
Stage Number:             2
Interaction Type:         Chest
Health:                   8000
Loot Table:               LT_ConstructionMixed_Salvage
Loot Min Percentage:      40
Loot Max Percentage:      70

Stage 1 — Vault Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x30, Iron Ingot x20, Mortar x15

Stage 2 — Vault Complete
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Iron Ingot x30, Steel Lock x4, Rune Fragment x2
```

---

## Defense Templates

### Stone Wall

```
Name:                     Stone Wall
Icon:                     icon_defense_stone_wall
Skill:                    Masonry
Skill Level Req:          15
Category:                 Wall
Weapon Req:               Mason's Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             2
Interaction Type:         None
Health:                   6000
Loot Table:               LT_ConstructionStone_Salvage
Loot Min Percentage:      35
Loot Max Percentage:      65

Stage 1 — Base Course
  Time to Build:          300 seconds
  Items Required:         Stone Block x20, Mortar x15

Stage 2 — Complete Wall
  Time to Build:          600 seconds
  Items Required:         Stone Block x25, Mortar x15
  Progress Prefab:        BO_StoneWall_Stage2
  Damage Prefab:          BO_StoneWall_Stage2_Damaged50, BO_StoneWall_Stage2_Damaged80
```

---

### Reinforced Gate

```
Name:                     Reinforced Gate
Icon:                     icon_defense_reinforced_gate
Skill:                    Blacksmithing
Skill Level Req:          20
Category:                 Gate
Weapon Req:               Dwarven Forge Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             2
Interaction Type:         None
Health:                   7000

Stage 1 — Gate Frame
  Time to Build:          480 seconds
  Items Required:         Stone Block x15, Iron Ingot x20, Timber x10

Stage 2 — Complete Gate
  Time to Build:          720 seconds
  Items Required:         Iron Ingot x30, Steel Bar x10, Stone Block x10, Hinge x4
```

---

### Watchtower

```
Name:                     Watchtower
Icon:                     icon_defense_watchtower
Skill:                    Masonry
Skill Level Req:          20
Category:                 Tower
Weapon Req:               Mason's Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             3
Interaction Type:         None
Health:                   8000

Stage 1 — Foundation
  Time to Build:          300 seconds
  Items Required:         Stone Block x25, Mortar x20

Stage 2 — Tower Body
  Time to Build:          600 seconds
  Items Required:         Stone Block x40, Mortar x25, Timber x10

Stage 3 — Battlements
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Mortar x10, Timber x15, Iron Bar x8
```

---

### Ballista Platform

```
Name:                     Ballista Platform
Icon:                     icon_defense_ballista
Skill:                    Siegecraft
Skill Level Req:          30
Category:                 Defense
Weapon Req:               Mason's Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Fortress Claim, Outpost Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Defense
Stage Number:             3
Interaction Type:         None
Health:                   5000

Stage 1 — Platform Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x30, Timber x20, Iron Bar x10

Stage 2 — Ballista Frame
  Time to Build:          900 seconds
  Items Required:         Timber x30, Iron Ingot x20, Rope x15

Stage 3 — Complete Ballista
  Time to Build:          1200 seconds
  Items Required:         Iron Ingot x30, Steel Bar x15, Rope x20, Timber x10
```

---

## Crafting Templates

### Blacksmith Forge

```
Name:                     Blacksmith Forge
Icon:                     icon_crafting_forge
Skill:                    Blacksmithing
Skill Level Req:          10
Category:                 Crafting Station
Weapon Req:               Dwarven Forge Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Crafting Station
Stage Number:             2
Interaction Type:         None
Health:                   3000

Stage 1 — Forge Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x20, Mortar x15, Iron Ingot x10

Stage 2 — Complete Forge
  Time to Build:          900 seconds
  Items Required:         Stone Block x15, Iron Ingot x20, Forge Coal x10, Bellows x1
```

---

### Enchanting Circle

```
Name:                     Enchanting Circle
Icon:                     icon_crafting_enchanting_circle
Skill:                    Enchanting
Skill Level Req:          15
Category:                 Crafting Station
Weapon Req:               Enchanting Focus
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Crafting Station
Stage Number:             2
Interaction Type:         Effect
Health:                   2000
Loot Table:               LT_MysticalComponents_Salvage
Loot Min Percentage:      25
Loot Max Percentage:      50

Stage 1 — Circle Foundation
  Time to Build:          480 seconds
  Items Required:         Stone Block x10, Aether Shard x5, Rune Fragment x3

Stage 2 — Complete Circle
  Time to Build:          900 seconds
  Items Required:         Aether Crystal x8, Rune Fragment x6, Silver Dust x4
```

---

### Relic Restoration Table

```
Name:                     Relic Restoration Table
Icon:                     icon_crafting_relic_table
Skill:                    Relic Restoration
Skill Level Req:          25
Category:                 Crafting Station
Weapon Req:               Rune Tool
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Workshop Claim, Gnome Workshop Claim, Mystical Site Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Crafting Station
Stage Number:             2
Interaction Type:         None
Health:                   2500

Stage 1 — Table Frame
  Time to Build:          600 seconds
  Items Required:         Timber x10, Iron Bar x8, Rune Fragment x4

Stage 2 — Complete Table
  Time to Build:          1200 seconds
  Items Required:         Timber x5, Iron Ingot x10, Aether Shard x6, Ancient Component x2
```

---

## Resource Templates

### Mine Entrance

```
Name:                     Mine Entrance
Icon:                     icon_resource_mine
Skill:                    Dwarven Stonework
Skill Level Req:          25
Category:                 Resource Node
Weapon Req:               Pickaxe
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Dwarven Hall Claim, Workshop Claim, Outpost Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Resource Node
Stage Number:             3
Interaction Type:         Resource
Health:                   5000
Loot Table:               LT_Mining_Resource_Table
Loot Min Percentage:      40
Loot Max Percentage:      70

Stage 1 — Shaft Entrance
  Time to Build:          600 seconds
  Items Required:         Stone Block x20, Timber x15, Iron Bar x8

Stage 2 — Reinforced Entrance
  Time to Build:          900 seconds
  Items Required:         Stone Block x20, Timber x20, Iron Ingot x15

Stage 3 — Operational Mine
  Time to Build:          1800 seconds
  Items Required:         Stone Block x15, Iron Ingot x20, Timber x10, Rope x10, Lantern x2
  Progress Prefab:        BO_MineEntrance_Stage3
  Damage Prefab:          BO_MineEntrance_Stage3_Damaged
```

**Purpose:** Primary mineral and ore production node for claims. Requires Dwarven Stonework skill but yields a consistent stream of mining resources over time.

---

### Small Farm Plot

```
Name:                     Small Farm Plot
Icon:                     icon_farm_plot
Skill:                    Farming
Skill Level Req:          1
Category:                 Farm
Weapon Req:               Shovel
Max Distance:             5
Build Task Requires Player: true
Valid Claim Type:         Farm Claim, Residential Claim, Tribal Camp Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               false
Repairable:               false
Claim Object Category:    Farm
Stage Number:             1
Interaction Type:         Resource
Health:                   200

Stage 1 — Prepared Plot
  Time to Build:          60 seconds
  Items Required:         Seeds x5, Water x2
```

---

### Coral Harvester

```
Name:                     Coral Harvester
Icon:                     icon_resource_coral
Skill:                    Farming
Skill Level Req:          10
Category:                 Resource Node
Weapon Req:               None
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Dock Claim, Pirate Hideout Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               false
Repairable:               true
Claim Object Category:    Resource Node
Stage Number:             2
Interaction Type:         Resource
Health:                   800

Stage 1 — Anchor Frame
  Time to Build:          120 seconds
  Items Required:         Rope x6, Iron Ring x4

Stage 2 — Operational
  Time to Build:          300 seconds
  Items Required:         Net x3, Rope x4, Coral Seed x2
```

---

## NPC Service Templates

### Merchant Stall

```
Name:                     Merchant Stall
Icon:                     icon_npc_merchant_stall
Skill:                    Carpentry
Skill Level Req:          10
Category:                 Merchant
Weapon Req:               Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    NPC Service
Stage Number:             1
Interaction Type:         NPC
NPC Spawned:              Merchant_Player_Generic
Health:                   1500

Stage 1 — Complete Stall
  Time to Build:          300 seconds
  Items Required:         Timber x12, Planks x8, Canvas x4, Rope x3
```

---

### Pirate Black Market Stall

```
Name:                     Black Market Stall
Icon:                     icon_npc_black_market
Skill:                    Pirate Construction
Skill Level Req:          15
Category:                 Merchant
Weapon Req:               Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Pirate Hideout Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    NPC Service
Stage Number:             1
Interaction Type:         NPC
NPC Spawned:              NPC_BlackMarket_Merchant
Health:                   1200

Stage 1 — Complete Stall
  Time to Build:          240 seconds
  Items Required:         Timber x10, Canvas x3, Rope x4, Barrel x2
```

**Purpose:** Spawns a Black Market Merchant NPC who trades in contraband, rare naval goods, stolen relics, and outlaw equipment. Only valid inside Pirate Hideout Claims.

---

### Guard Barracks

```
Name:                     Guard Barracks
Icon:                     icon_npc_guard_barracks
Skill:                    Masonry
Skill Level Req:          15
Category:                 NPC Service
Weapon Req:               Mason's Hammer
Max Distance:             12
Build Task Requires Player: true
Valid Claim Type:         Any
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    NPC Service
Stage Number:             3
Interaction Type:         NPC
NPC Spawned:              NPC_Guard_Player (x2 by default, configurable)
Health:                   4000

Stage 1 — Foundation
  Time to Build:          300 seconds
  Items Required:         Stone Block x15, Timber x10

Stage 2 — Walls
  Time to Build:          600 seconds
  Items Required:         Stone Block x25, Timber x15, Mortar x15

Stage 3 — Complete
  Time to Build:          900 seconds
  Items Required:         Stone Block x10, Timber x10, Iron Bar x8, Thatch x10
```

---

## Mystical Object Templates

### Ward Shrine

```
Name:                     Ward Shrine
Icon:                     icon_shrine_ward
Skill:                    Ward Construction
Skill Level Req:          20
Category:                 Shrine
Weapon Req:               Rune Tool
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim, City Plot, Guild Claim, Elven Grove Claim
Available as Item Only:   false
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Shrine
Stage Number:             2
Interaction Type:         Effect
Effect Applied:           Ward Protection Aura (reduces incoming Veil damage, resists corruption in claim radius)
Health:                   3500
Loot Table:               LT_MysticalComponents_Salvage
Loot Min Percentage:      30
Loot Max Percentage:      65

Stage 1 — Shrine Base
  Time to Build:          600 seconds
  Items Required:         Stone Block x15, Aether Shard x6, Rune Fragment x4

Stage 2 — Complete Shrine
  Time to Build:          1200 seconds
  Items Required:         Stone Block x10, Aether Crystal x8, Ward Essence x3, Silver Dust x4
  Progress Prefab:        BO_WardShrine_Stage2
  Damage Prefab:          BO_WardShrine_Stage2_Damaged
```

**Purpose:** Core mystical defense object. Applies a Ward Protection Aura that reduces Veil corruption within claim radius. May require maintenance with Ward Essence to stay active.

---

### Veil Containment Stone

```
Name:                     Veil Containment Stone
Icon:                     icon_mystic_veil_stone
Skill:                    Ward Construction
Skill Level Req:          35
Category:                 Mystic Object
Weapon Req:               Rune Tool
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim
Available as Item Only:   true
Build Solo:               true
Fixed Time:               true
Attackable:               true
Repairable:               true
Claim Object Category:    Mystic Object
Stage Number:             1
Interaction Type:         Effect
Effect Applied:           Veil Suppression Field (suppresses active Veil corruption events in a large radius)
Health:                   4000
Loot Table:               LT_AncientRelics_Salvage
Loot Min Percentage:      50
Loot Max Percentage:      80

Stage 1 — Complete
  Time to Build:          3600 seconds
  Items Required:         Veil Containment Core x1 (rare quest item), Aether Crystal x12, Ward Essence x8, Rune Fragment x10
```

**Purpose:** Suppresses active Veil corruption in the area. Rare and politically significant — a target for enemy factions.

---

### Portal Anchor

```
Name:                     Portal Anchor
Icon:                     icon_portal_anchor
Skill:                    Relic Restoration
Skill Level Req:          40
Category:                 Portal
Weapon Req:               Rune Tool
Max Distance:             10
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim
Available as Item Only:   true
Build Solo:               false
Fixed Time:               true
Attackable:               true
Repairable:               true
Claim Object Category:    Portal
Stage Number:             3
Interaction Type:         Instance
Health:                   5000
Loot Table:               LT_AncientRelics_Salvage
Loot Min Percentage:      50
Loot Max Percentage:      75

Stage 1 — Anchor Foundation
  Time to Build:          1800 seconds
  Items Required:         Ancient Stone Block x20, Rune Fragment x10, Iron Bar x15

Stage 2 — Portal Frame
  Time to Build:          3600 seconds
  Items Required:         Ancient Component x10, Aether Crystal x15, Rune Fragment x15

Stage 3 — Calibrated Portal
  Time to Build:          7200 seconds
  Items Required:         Portal Calibration Stone x1 (rare), Ancient Component x15, Aether Crystal x20, Ward Essence x10
```

**Purpose:** Creates a permanent dimensional portal to a linked location. Extremely resource-intensive. Politically significant as a major travel node.

---

### Ancient Power Node

```
Name:                     Ancient Power Node
Icon:                     icon_mystic_power_node
Skill:                    Relic Restoration
Skill Level Req:          45
Category:                 Ancient Machine
Weapon Req:               Wrench
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Mystical Site Claim, Gnome Workshop Claim, Workshop Claim
Available as Item Only:   true
Build Solo:               false
Fixed Time:               true
Attackable:               true
Repairable:               true
Claim Object Category:    Ancient Machine
Stage Number:             2
Interaction Type:         Effect
Effect Applied:           Power Surge (buffs nearby crafting stations — reduced craft time, increased yield chance)
Health:                   4500
Loot Table:               LT_AncientRelics_Salvage
Loot Min Percentage:      60
Loot Max Percentage:      85

Stage 1 — Node Base
  Time to Build:          3600 seconds
  Items Required:         Ancient Component x15, Aether Crystal x10, Iron Bar x20

Stage 2 — Operational Node
  Time to Build:          7200 seconds
  Items Required:         Ancient Component x20, Aether Crystal x20, Power Core x1 (rare), Rune Fragment x12
```

---

## Naval Templates

### Ship Repair Dock

```
Name:                     Ship Repair Dock
Icon:                     icon_dock_repair
Skill:                    Shipbuilding
Skill Level Req:          20
Category:                 Dock
Weapon Req:               Shipwright Hammer
Max Distance:             15
Build Task Requires Player: true
Valid Claim Type:         Dock Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Dock
Stage Number:             3
Interaction Type:         Resource
Health:                   4000

Stage 1 — Dock Frame
  Time to Build:          600 seconds
  Items Required:         Timber x25, Rope x10, Iron Ring x8

Stage 2 — Dock Structure
  Time to Build:          1200 seconds
  Items Required:         Timber x30, Planks x20, Iron Bar x12, Rope x15

Stage 3 — Operational Dock
  Time to Build:          1800 seconds
  Items Required:         Planks x20, Iron Ingot x15, Rope x10, Shipwright Supplies x4
```

---

### Shipyard Frame

```
Name:                     Shipyard Frame
Icon:                     icon_dock_shipyard
Skill:                    Shipbuilding
Skill Level Req:          30
Category:                 Shipyard
Weapon Req:               Shipwright Hammer
Max Distance:             20
Build Task Requires Player: true
Valid Claim Type:         Dock Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Dock
Stage Number:             4
Interaction Type:         None
Health:                   6000

Stage 1 — Keel Foundation
  Time to Build:          900 seconds
  Items Required:         Timber x30, Stone Block x20, Iron Bar x10

Stage 2 — Frame Structure
  Time to Build:          1800 seconds
  Items Required:         Timber x40, Planks x30, Iron Bar x20, Rope x20

Stage 3 — Crane and Rigging
  Time to Build:          2400 seconds
  Items Required:         Timber x20, Planks x20, Rope x30, Iron Ingot x20

Stage 4 — Operational Shipyard
  Time to Build:          3600 seconds
  Items Required:         Planks x20, Iron Ingot x25, Rope x20, Shipwright Supplies x8
```

---

## Political and Guild Templates

### Guild Hall

```
Name:                     Guild Hall
Icon:                     icon_guild_hall
Skill:                    Architecture
Skill Level Req:          30
Category:                 Guild Structure
Weapon Req:               Hammer
Max Distance:             15
Build Task Requires Player: true
Valid Claim Type:         Guild Claim
Available as Item Only:   false
Build Solo:               false
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Guild Structure
Stage Number:             4
Interaction Type:         Instance
Health:                   10000
Loot Table:               LT_ConstructionMixed_Salvage
Loot Min Percentage:      40
Loot Max Percentage:      70

Stage 1 — Foundation
  Time to Build:          900 seconds
  Items Required:         Stone Block x30, Timber x20, Mortar x20

Stage 2 — Outer Walls
  Time to Build:          1800 seconds
  Items Required:         Stone Block x50, Mortar x30, Timber x20, Iron Bar x10

Stage 3 — Interior Fitting
  Time to Build:          2700 seconds
  Items Required:         Planks x40, Timber x20, Iron Ingot x15, Glass x8

Stage 4 — Complete Hall
  Time to Build:          3600 seconds
  Items Required:         Planks x20, Stone Block x10, Timber x10, Tapestry x4, Banner x2
  Progress Prefab:        BO_GuildHall_Stage4
  Damage Prefab:          BO_GuildHall_Stage4_Damaged
```

**Purpose:** The central building of every guild claim. Provides Instance access to a private interior meeting hall. Politically important — losing a guild hall weakens guild morale and limits governance access.

---

### Throne Seat

```
Name:                     Throne Seat
Icon:                     icon_political_throne
Skill:                    Architecture
Skill Level Req:          35
Category:                 Political Structure
Weapon Req:               Hammer
Max Distance:             8
Build Task Requires Player: true
Valid Claim Type:         Fortress Claim, City Plot
Available as Item Only:   true
Build Solo:               true
Fixed Time:               false
Attackable:               true
Repairable:               true
Claim Object Category:    Political Structure
Stage Number:             1
Interaction Type:         None
Health:                   3000

Stage 1 — Complete Throne
  Time to Build:          1800 seconds
  Items Required:         Stone Block x15, Timber x10, Gold Trim x4, Velvet x6, Iron Ingot x8
```

**Purpose:** The physical seat of power for a faction or city ruler. Required for certain political progression milestones.

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Building Categories] (building_categories.md)
- Next: [Mystical Isles — Claim Profiles] (claim_profiles.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/claim_profiles.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Claim Profiles

---

# Mystical Isles — Claim Profiles
Claim profiles define the size, upgrade path, and object limits for each claim. Every claim placed in the world — whether by an admin or a player using a Claim Deed — references a profile that determines what can be built inside it and how many objects of each category are allowed.

---

## Table of Contents

1. [How Claim Profiles Work] (#how-claim-profiles-work)
2. [Claim Object Category Limits] (#claim-object-category-limits)
3. [Claim Profile Reference Table] (#claim-profile-reference-table)
4. [Profile Descriptions] (#profile-descriptions)
5. [Upgrade Paths] (#upgrade-paths)
6. [Tax and Maintenance] (#tax-and-maintenance)
7. [Related Documents] (#related-documents)

---

## How Claim Profiles Work

A claim profile is assigned to a claim when it is created. It controls:

- **Claim Type**: which build object categories and valid types are permitted
- **Size**: the footprint of the claim area
- **Upgrade Path**: which profile this claim can be upgraded to, and at what cost
- **Object Limits**: how many objects of each category may exist inside the claim simultaneously
- **Intended Use**: the design purpose of this claim configuration

Profiles are created and managed in the **Atavism Editor** and are referenced by name when configuring claim regions or Claim Deed items.

---

## Claim Object Category Limits

The following categories are tracked per-claim. Each profile defines a maximum count for each applicable category.

| Category | Notes |
|---|---|
| Housing | Sleeping areas, livable structures |
| Storage | Chests, vaults, caches |
| Crafting Station | Forges, benches, tables |
| Defense | Walls, towers, gates, barricades |
| Farm | Crop plots, animal pens, resource nodes |
| NPC Service | Merchants, guards, trainers, bankers |
| Decoration | Banners, furniture, lighting, statues |
| Shrine | Mystical, Ward, and ritual objects |
| Portal | Instance entrances and anchors |
| Dock | Naval infrastructure |
| Guild Structure | Guild halls, council tables, civic objects |
| Political Structure | Thrones, governor desks, voting stones |

---

## Claim Profile Reference Table

| Claim Profile | Claim Type | Size | Upgrade Path | Object Limits (Key) | Intended Use |
|---|---|---|---|---|---|
| **Small Homestead** | Residential Claim | 10×10 | → Medium Homestead | Housing: 1, Storage: 2, Crafting: 1, Decoration: 10, Farm: 2 | Basic solo player home and small garden |
| **Medium Homestead** | Residential Claim | 20×20 | → Large Homestead | Housing: 2, Storage: 4, Crafting: 2, Decoration: 20, Farm: 4 | Comfortable player home with workshop space |
| **Large Homestead** | Residential Claim | 30×30 | → City Plot | Housing: 3, Storage: 6, Crafting: 3, Decoration: 30, Farm: 6 | Full homestead with crafting and storage |
| **City Plot — Residential** | City Plot | 10×10 | → City Plot — Extended | Housing: 1, Storage: 2, Crafting: 1, Decoration: 15 | Empty city lot for player home |
| **City Plot — Shop** | City Plot | 10×10 | → City Plot — Extended | NPC Service: 2, Storage: 3, Decoration: 10 | Shop or stall in a player city |
| **City Plot — Guild Office** | City Plot | 15×15 | → City Plot — Extended | Guild Structure: 1, Storage: 2, NPC Service: 1, Decoration: 10 | Small guild presence in a city |
| **City Plot — Extended** | City Plot | 20×20 | — | All categories increased | Larger city lot for established players |
| **Guild Settlement** | Guild Claim | 30×30 | → Guild Town | Housing: 4, Storage: 6, Crafting: 4, Defense: 6, Guild Structure: 2, Decoration: 20 | Core guild base with hall, storage, and defenses |
| **Guild Town** | Guild Claim | 50×50 | → Guild Fortress | Housing: 10, Storage: 10, Crafting: 8, Defense: 12, NPC Service: 4, Guild Structure: 4, Political Structure: 2 | Established guild town with full infrastructure |
| **Frontier Fortress** | Fortress Claim | 60×60 | → Grand Fortress | Defense: 30, Housing: 8, Storage: 8, Crafting: 4, NPC Service: 4, Political Structure: 2 | Major defensive installation for faction control |
| **Grand Fortress** | Fortress Claim | 80×80 | — | Defense: 50, Housing: 16, Storage: 12, Crafting: 6, NPC Service: 6, Political Structure: 4 | Regional capital-tier fortress |
| **Frontier Farm** | Farm Claim | 20×20 | → Established Farm | Farm: 8, Storage: 4, Housing: 1, Decoration: 6 | Agricultural production and resource gathering |
| **Established Farm** | Farm Claim | 30×30 | — | Farm: 14, Storage: 6, Housing: 2, NPC Service: 1, Decoration: 8 | Full farming settlement with NPC workers |
| **Workshop** | Workshop Claim | 20×20 | → Master Workshop | Crafting: 6, Storage: 4, Housing: 1, Decoration: 6 | Dedicated crafting facility |
| **Master Workshop** | Workshop Claim | 30×30 | — | Crafting: 10, Storage: 8, Housing: 2, NPC Service: 2, Decoration: 10 | Advanced production facility |
| **Small Dock** | Dock Claim | 20×20 | → Harbor | Dock: 4, Storage: 4, NPC Service: 1, Decoration: 6 | Coastal dock and ship services |
| **Harbor** | Dock Claim | 40×40 | — | Dock: 10, Storage: 8, NPC Service: 4, Crafting: 2, Decoration: 12 | Full naval port with commerce and repair |
| **Pirate Cove** | Pirate Hideout Claim | 30×30 | → Pirate Port | Housing: 4, Dock: 4, Storage: 6, NPC Service: 3, Decoration: 12 | Hidden outlaw base with black market |
| **Pirate Port** | Pirate Hideout Claim | 50×50 | — | Housing: 8, Dock: 8, Storage: 10, NPC Service: 6, Decoration: 20 | Major pirate harbor with full outlaw economy |
| **Canyon Tribal Camp** | Tribal Camp Claim | 30×30 | → Canyon Village | Housing: 4, Shrine: 2, Farm: 4, Decoration: 14 | Desert tribal settlement |
| **Canyon Village** | Tribal Camp Claim | 50×50 | — | Housing: 10, Shrine: 4, Farm: 8, NPC Service: 3, Decoration: 24 | Full tribal canyon village |
| **Dwarven Hall** | Dwarven Hall Claim | 40×40 | → Dwarven Fortress | Housing: 6, Crafting: 8, Defense: 8, Storage: 8, Decoration: 12 | Underground hall with forge and defenses |
| **Dwarven Fortress** | Dwarven Hall Claim | 60×60 | — | Housing: 12, Crafting: 12, Defense: 16, Storage: 12, NPC Service: 4, Decoration: 20 | Major dwarven stronghold |
| **Elven Grove** | Elven Grove Claim | 40×40 | → Elder Grove | Housing: 6, Shrine: 4, Farm: 4, Decoration: 16 | Forest grove with nature structures |
| **Elder Grove** | Elven Grove Claim | 60×60 | — | Housing: 12, Shrine: 8, Farm: 8, Portal: 2, NPC Service: 3, Decoration: 24 | Major elven sanctuary |
| **Gnome Workshop** | Gnome Workshop Claim | 30×30 | → Gnome Complex | Crafting: 8, Storage: 6, Housing: 2, Decoration: 10 | Engineering and relic workshop |
| **Gnome Complex** | Gnome Workshop Claim | 50×50 | — | Crafting: 14, Storage: 10, Housing: 4, Portal: 2, NPC Service: 3, Decoration: 16 | Advanced engineering complex |
| **Mystical Site** | Mystical Site Claim | 20×20 | → Major Mystical Site | Shrine: 4, Portal: 1, Decoration: 8 | Arcane ritual site or Ward anchor |
| **Major Mystical Site** | Mystical Site Claim | 40×40 | — | Shrine: 8, Portal: 3, NPC Service: 2, Decoration: 14 | Major dimensional site or Ward network node |
| **Frontier Outpost** | Outpost Claim | 20×20 | → Established Outpost | Defense: 8, Housing: 2, Storage: 2, NPC Service: 1 | Small forward military or faction post |
| **Established Outpost** | Outpost Claim | 30×30 | — | Defense: 14, Housing: 6, Storage: 4, NPC Service: 3, Crafting: 2 | Reinforced outpost with garrison |
| **Ruin Restoration — Stage 1** | Ruin Restoration Claim | 30×30 | → Stage 2 | Housing: 4, Crafting: 2, Storage: 2, Decoration: 8 | First stage of ruin rebuilding |
| **Ruin Restoration — Stage 2** | Ruin Restoration Claim | 40×40 | → Stage 3 | Housing: 8, Crafting: 4, Storage: 4, NPC Service: 2, Decoration: 14 | Partial restoration with NPC inhabitants |
| **Ruin Restoration — Complete** | Ruin Restoration Claim | 50×50 | — | All categories at settlement levels | Fully restored settlement |

---

## Profile Descriptions

### Small Homestead

A basic personal claim suitable for a single player's home. Supports:
- A simple dwelling (Housing: 1)
- Basic storage containers (Storage: 2)
- One crafting station (Crafting: 1)
- A small garden or farm plot (Farm: 2)
- Decorative items for personalization (Decoration: 10)

**Upgrade path:** Small Homestead → Medium Homestead → Large Homestead → City Plot (purchase required)

---

### City Plot

City plots are predefined empty lots within established cities. They come in several sub-types:

- **Residential**: player home within the city
- **Shop**: storefront for player merchants
- **Guild Office**: small guild presence
- **Extended**: larger version for established city inhabitants

City plots require city reputation and may involve purchase costs, taxes, and NPC council approval depending on the city's political configuration.

---

### Guild Settlement

The core claim for a guild's home base. Supports a full range of guild infrastructure:
- Guild hall and civic structures
- Storage and crafting
- Defensive walls and towers
- NPC service providers
- Decorative and political objects

**Upgrade path:** Guild Settlement → Guild Town → Guild Fortress

---

### Frontier Fortress

A large, politically significant claim designed for faction conflict scenarios. Requires substantial guild investment. Supports:
- High wall and tower count
- Barracks and garrison housing
- Siege weapon emplacements
- Political structures (throne, war room)
- Merchant and service NPCs for a self-sustaining garrison

**Upgrade path:** Frontier Fortress → Grand Fortress

---

### Pirate Cove

A hidden outlaw base supporting the black market and naval economy. Requires pirate reputation. Supports:
- Rough pirate housing
- Docks and ship repair slips
- Smuggler storage
- Black market merchants and tavern NPCs

**Upgrade path:** Pirate Cove → Pirate Port

---

### Canyon Tribal Camp

A desert and canyon tribal settlement supporting the Canyon Tribes. Supports:
- Cliff homes and tribal tents
- Ritual fires and bone totems
- Oasis gardens and animal pens
- Storm-reading towers and desert watch posts

**Upgrade path:** Canyon Tribal Camp → Canyon Village

---

### Dwarven Hall

An underground or mountainside dwarven claim. Supports:
- Stone halls and forge rooms
- Mine entrances and smelters
- Heavy defensive gates and reinforced walls
- Underground storage and dwarven strongboxes

**Upgrade path:** Dwarven Hall → Dwarven Fortress

---

### Elven Grove

A forest or elevated elven settlement. Supports:
- Tree platforms and elevated homes
- Nature shrines and moon wells
- Hidden gardens and Ward groves
- Living bridges and archery platforms

**Upgrade path:** Elven Grove → Elder Grove

---

### Gnome Workshop

A compact engineering and relic workshop. Supports:
- Workbenches, machines, and relic labs
- Clockwork devices and automation stations
- Power nodes and portal stabilizers
- Engineering-focused storage and housing

**Upgrade path:** Gnome Workshop → Gnome Complex

---

### Mystical Site

A claim dedicated to dimensional and Ward magic. Supports:
- Ward shrines and ritual circles
- Portal anchors and Veil containment stones
- Ancient power nodes and aether stabilizers
- Mystical NPC guardians and attendants

**Upgrade path:** Mystical Site → Major Mystical Site

---

## Upgrade Paths

Upgrading a claim increases its area and object limits. Upgrades require:

| Upgrade Type | Requirements |
|---|---|
| Residential → Medium | Currency + Building Materials |
| Residential → Large | Currency + Materials + Time |
| Guild Settlement → Town | Guild Level 5+ + Materials + Currency |
| Guild Town → Fortress | Guild Level 10+ + Political approval + Large material cost |
| Frontier Fortress → Grand | Multi-guild coordination + Regional political approval |
| Pirate Cove → Port | Pirate Reputation Tier 3+ + Materials |
| Tribal Camp → Village | Tribal Reputation Tier 3+ + Materials |
| Dwarven Hall → Fortress | Dwarven Stonework Skill 40+ + Materials |
| Elven Grove → Elder | Elven Grovecraft Skill 40+ + Materials |
| Gnome Workshop → Complex | Gnomish Machinery Skill 40+ + Materials |
| Ruin Stage 1 → 2 | Quest completion + Materials + Time |
| Ruin Stage 2 → Complete | Quest completion + Materials + Faction unlock |

---

## Tax and Maintenance

Many claim types involve ongoing tax obligations:

- **City Plots**: subject to city tax paid to the city NPC treasury
- **Fortress Claims**: require ongoing supply costs (materials, currency)
- **Guild Claims**: optional internal guild tax system
- **Pirate Claims**: may involve protection fees to pirate faction

Claims that fall behind on taxes may:
- Lose building permissions
- Become claimable by other players
- Have NPC services disabled
- Eventually enter decay and be returned to unclaimed status

Tax rates and intervals are configured per claim in the Atavism Editor.

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Build Object Templates] (build_object_templates.md)
- Next: [Mystical Isles — Player Settlements] (player_settlements.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/starting_templates.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Starting Character Templates

---

# Starting Character Templates
## Overview

Starting templates define the complete beginning state for each playable race and class combination in Mystical Isles. Every template specifies the character's race, class, starting region, faction alignment, starting gear, starter abilities, initial stats, profession exposure, and tutorial path.

Templates are not rigid scripts. They are the foundation from which player identity begins to diverge. By the time a character has been in the world for twenty hours, no two players of the same template will look the same — because the skills they chose to invest in, the factions they approached, and the decisions they made have already started defining who they are.

This document is the authoritative reference for character creation configuration in Atavism X 9 for Mystical Isles.

---

## Related Documents

- [Races & Classes] (./races_and_classes.md)
- [Skills System] (./skills_system.md)
- [Abilities System] (./abilities_system.md)
- [Mastery & Progression] (./mastery_progression.md)
- [Factions] (../factions/factions.md)

---

## Template Format

Each template defines the following fields:

| Field | Description |
| --- | --- |
| Race | Character's playable race |
| Class | Character's chosen class or racial specialization |
| Gender Models | Available model variants |
| Starting Region | World region where character spawns |
| Spawn Location | Specific named spawn point |
| Faction | Starting faction alignment |
| Starter Gear | Complete equipment at spawn |
| Starter Weapon | Primary weapon at spawn |
| Starter Consumables | Usable items at spawn |
| Starting Skills | Skills active at spawn with starting level |
| Starting Abilities | Abilities unlocked at spawn |
| Starting Stats | Stat values at spawn (using racial base + class modifiers) |
| Profession Exposure | Crafting or gathering skill introductions at start |
| Tutorial Path | First quest chain structure and goals |
| Starting Identity | The narrative self that the character begins as |

---

## Human Templates

### Human Fighter

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Fighter |
| Gender Models | Male Fighter (muscular build, battle-worn), Female Fighter (lean build, scarred) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Garrison barracks — eastern gate district of the Kingdom capital |
| Faction | Crown Compact (Neutral Conscript standing) |
| Starter Gear | Standard-issue iron chainmail (torso), leather arm guards, iron leg greaves, leather boots |
| Starter Weapon | Iron longsword (one-handed), wooden shield |
| Starter Consumables | 3× Soldier's Ration, 2× Basic Bandage, 1× Minor Stamina Potion |
| Starting Skills | Swordsmanship 1, Shield Mastery 1, Survival 1 |
| Starting Abilities | Precision Thrust (Swordsmanship 5 — to be earned), Shield Bash (Shield Mastery 5 — to be earned), basic attack |
| Starting Stats | STR 12, DEX 10, END 12, INT 9, WIL 9, STA 12 — HP 105, Mana 90, Stamina 105 |
| Profession Exposure | Blacksmithing basics introduced through garrison forge quest |
| Tutorial Path | 1. Garrison training drill (introduces combat and Shield Bash). 2. Patrol escort outside walls (introduces exploration and survival). 3. Ruins encounter — first Ward and Veil introduction. 4. Report to garrison commander — faction introduction. |
| Starting Identity | A soldier at the beginning of a career — loyal to the Crown for now, capable of becoming much more than a rank in someone else's army. |

---

### Human Knight

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Knight |
| Gender Models | Male Knight (broad, armored, formal bearing), Female Knight (composed, disciplined, ceremonially armored) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Crown Compact Templar barracks — inner district fortress |
| Faction | Crown Compact (Sworn Initiate standing) |
| Starter Gear | Full iron plate armor (torso, arms, legs), iron knight helmet, heavy boots |
| Starter Weapon | Iron longsword, iron kite shield |
| Starter Consumables | 2× Knight's Ration, 2× Basic Bandage, 1× Defense Salve |
| Starting Skills | Swordsmanship 1, Shield Mastery 3, Defensive Combat 1, Leadership 1 |
| Starting Abilities | Shield Bash (unlocked at Shield Mastery 5), Cover Ally (Shield Mastery 15 — to be earned) |
| Starting Stats | STR 11, DEX 8, END 14, INT 9, WIL 10, STA 13 — HP 115, Mana 90, Stamina 110 |
| Profession Exposure | None at start; armor maintenance introduced through early quest |
| Tutorial Path | 1. Formation drill — introduces Shield Wall and group combat mechanics. 2. Escort mission for a Crown official — introduces political and faction systems. 3. Ward site defense — introduces Paladin/Templar alliance and Veil mechanics. 4. Oath ceremony — formalizes Crown Compact alignment. |
| Starting Identity | A sworn defender — bound by oath, respected by institution, and carrying the weight of what the Crown represents. |

---

### Human Paladin

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Paladin |
| Gender Models | Male Paladin (weathered, devoted, glowing ward-marks visible), Female Paladin (calm authority, ceremonial armor with Ward inscriptions) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Ward Command chapel — near the capital's ancient Ward installation |
| Faction | Ward Command (Acolyte standing), Crown Compact (Affiliated) |
| Starter Gear | Ward-inscribed iron plate (torso, arms), ceremonial white cloth underlayer, iron boots |
| Starter Weapon | Iron mace, Ward-emblazoned heater shield |
| Starter Consumables | 2× Healing Draught, 1× Corruption Cleanse (small), 2× Ration |
| Starting Skills | Shield Mastery 2, Ward Magic 1, Elemental Magic 1, Corruption Resistance 1 |
| Starting Abilities | Purge Corruption (Ward Magic 20 — to be earned), Ward Barrier (Ward Magic 10 — to be earned) |
| Starting Stats | STR 10, DEX 8, END 13, INT 11, WIL 14, STA 11 — HP 108, Mana 115, Stamina 105 |
| Profession Exposure | Ward repair basics introduced through chapel maintenance quest |
| Tutorial Path | 1. Ward site visit — demonstrates Ward function and Veil suppression. 2. Corruption encounter — introduces Purge Corruption mechanic. 3. Group defense scenario — introduces group healing and Ward Barrier. 4. Ward Command formal introduction — establishes anti-Veil identity. |
| Starting Identity | An acolyte who has seen what the Veil actually is — and chosen to stand between it and everything else. |

---

### Human Mage

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Mage |
| Gender Models | Male Mage (intellectual bearing, long robes, focus crystal visible), Female Mage (precise, focused, layered enchanted garments) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Tempest Accord research hall — near the capital's scholarly district |
| Faction | Tempest Accord (Junior Scholar standing), Crown Compact (Registered) |
| Starter Gear | Scholar's robes (enchanted light cloth), leather satchel, arcane focus crystal |
| Starter Weapon | Iron-tipped staff |
| Starter Consumables | 3× Mana Potion (small), 1× Spell Focus Talisman, 2× Scholar's Ration |
| Starting Skills | Elemental Magic 1, Survival 1, Archaeology 1 |
| Starting Abilities | Force Bolt (Elemental Magic 5 — starter), Frost Shards (Elemental Magic 10 — to be earned) |
| Starting Stats | STR 8, DEX 10, END 9, INT 14, WIL 13, STA 8 — HP 88, Mana 125, Stamina 85 |
| Profession Exposure | Alchemy basics introduced through scholar's experiment quest |
| Tutorial Path | 1. Research hall — introduces magical mechanics and Force Bolt. 2. Field survey — ruins outside the capital introduce Archaeology and Relic Scan basics. 3. Anomaly encounter — a minor dimensional anomaly introduces Ward and Veil concepts. 4. Accord orientation — establishes research identity and Tempest Accord connections. |
| Starting Identity | A scholar at the threshold of understanding — the world is full of forces they can describe but not yet command. |

---

### Human Ranger

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Ranger |
| Gender Models | Male Ranger (lean, sun-weathered, practical travel gear), Female Ranger (precise, quiet, layered travel clothing) |
| Starting Region | Mainland Kingdom frontier |
| Spawn Location | Frontier waystation — eastern edge of Kingdom territory, overlooking uncharted forest |
| Faction | Crown Compact (Frontier Agent, Neutral) |
| Starter Gear | Leather vest, leather arm guards, travel boots, travel cloak |
| Starter Weapon | Short bow (32 arrows), hunting knife |
| Starter Consumables | 3× Field Ration, 2× Basic Bandage, 1× Herbal Remedy |
| Starting Skills | Archery 1, Survival 3, Treasure Hunting 1, Herbalism 1 |
| Starting Abilities | Pinning Shot (Archery 5 — to be earned), Hazard Sense (Survival 20 — to be earned) |
| Starting Stats | STR 9, DEX 13, END 11, INT 10, WIL 9, STA 10 — HP 100, Mana 90, Stamina 100 |
| Profession Exposure | Cooking basics from field survival; Herbalism from starting skill |
| Tutorial Path | 1. Waystation patrol — introduces exploration and survival mechanics. 2. Creature hunt — introduces Archery and tracking. 3. Ruin discovery — introduces Archaeology basics and the wonder of exploration. 4. Route report — introduces navigation and the value of frontier knowledge to factions. |
| Starting Identity | Someone the settled world hasn't quite claimed — a person more comfortable at the edge of the map than at the center of any city. |

---

### Human Rogue

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Rogue |
| Gender Models | Male Rogue (slim, hooded, nondescript clothing), Female Rogue (precise, layered shadow gear, minimal reflection) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Dockside district — lower city, near the harbor black market |
| Faction | Neutral (no formal faction; Crown Compact Negative standing possible) |
| Starter Gear | Light leather jacket, shadow-dyed cloth wrap, soft-soled boots, pick kit |
| Starter Weapon | Iron dagger (main), iron dagger (off-hand) |
| Starter Consumables | 2× Smoke Pouch, 2× Field Ration, 1× Lockpick Set (5 uses) |
| Starting Skills | Swordsmanship 1 (dagger focus), Stealth Combat 1, Treasure Hunting 1, Espionage 1 |
| Starting Abilities | Ambush Strike (Stealth Combat 20 — to be earned), Warning Shot available if Firearms purchased |
| Starting Stats | STR 9, DEX 14, END 9, INT 11, WIL 10, STA 9 — HP 90, Mana 95, Stamina 92 |
| Profession Exposure | Smuggling basics through early dockside contact quest; light Merchant Negotiation |
| Tutorial Path | 1. Dockside contract — introduces stealth, pickpocket, and evasion mechanics. 2. Warehouse infiltration — introduces lock-picking and trap-detection systems. 3. Deliver a package — first smuggling exposure; introduces black market contacts. 4. Choice moment — decide to align with Corsair contact, stay neutral, or attempt Crown contact. |
| Starting Identity | A person who lives by advantage — information, timing, and access. The world of power is visible from the shadows, and they intend to understand it before anyone understands them. |

---

### Human Witch

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Witch |
| Gender Models | Male Witch (ritualist clothing, dark dyes, partially concealed ward-marks), Female Witch (layered robes, bone and herb accessories, unsettling stillness) |
| Starting Region | Mainland Kingdom — Witchwood border zone |
| Spawn Location | Hidden hamlet near the Witchwood treeline — a frontier settlement outside Crown Compact jurisdiction |
| Faction | Thornbound Circles (Hedge Practitioner standing); Crown Compact Negative |
| Starter Gear | Layered ritual robes, herb pouch, bone-clasp belt, soft boots |
| Starter Weapon | Carved ritual staff, iron athame (ritual dagger) |
| Starter Consumables | 3× Herbal Brew, 1× Corruption Ward (single use), 2× Field Ration |
| Starting Skills | Elemental Magic 1, Veil Attunement 1, Herbalism 2, Curse Mastery 0 (locked, unlockable via quest) |
| Starting Abilities | Veil Sight (Veil Attunement 20 — to be earned), Curse Brand (Curse Mastery 20 — later path) |
| Starting Stats | STR 8, DEX 10, END 9, INT 13, WIL 15, STA 8 — HP 88, Mana 130, Stamina 82 |
| Profession Exposure | Alchemy through herb preparation; Herbalism from starting skill |
| Tutorial Path | 1. Hedge practitioner introduction — basic ritual mechanics. 2. Veil exposure event — introduces Corruption mechanic and stakes. 3. Thornbound contact — introduction to the Circles and Witchwood politics. 4. First choice — pursue deeper Veil study (Forbidden path) or stay in hedge practice (safer social path). |
| Starting Identity | A practitioner of something the Crown doesn't name. Not a villain — but someone who has decided that understanding the Veil is more important than the comfort of pretending it isn't there. |

---

### Human Pirate

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Pirate |
| Gender Models | Male Pirate (weathered, sun-worn, rope-scarred hands), Female Pirate (sharp-eyed, fast, salt-stiffened travel gear) |
| Starting Region | Shattered Reefs |
| Spawn Location | Corsair docks — outer reef port, Free Reef Corsairs territory |
| Faction | Free Reef Corsairs (New Blood standing) |
| Starter Gear | Leather coat, cloth shirt, sturdy sea boots, belt rigging |
| Starter Weapon | Iron cutlass, flintlock pistol (6 shots) |
| Starter Consumables | 3× Sea Ration, 2× Bandage, 1× Rum Flask (morale restore) |
| Starting Skills | Swordsmanship 1, Firearms 1, Sailing 1, Navigation 1 |
| Starting Abilities | Grappling Hook (Boarding Combat 5 — to be earned), Boarding Strike (Boarding Combat 10 — to be earned) |
| Starting Stats | STR 11, DEX 13, END 11, INT 10, WIL 8, STA 11 — HP 100, Mana 80, Stamina 102 |
| Profession Exposure | Smuggling basics through Corsair contact; Ship Repair introduction on tutorial vessel |
| Tutorial Path | 1. Deck assignment on a Corsair vessel — introduces sailing mechanics and crew role. 2. Reef run — introduces Navigation and hazard avoidance. 3. Boarding scenario (tutorial ship encounter) — introduces Boarding Combat. 4. Corsair integration — formal introduction to faction standing and reputation system. |
| Starting Identity | Someone who has chosen the sea over the shore — and is starting to realize that was the right decision. |

---

## Non-Human Templates

### Dwarf Defender/Engineer

| Field | Value |
| --- | --- |
| Race | Dwarf |
| Class | Defender/Engineer (Racial Specialization) |
| Gender Models | Male Dwarf (broad, heavily tattooed, forge-blackened hair), Female Dwarf (braided, stocky, precision tools visible) |
| Starting Region | Frostpeak Isle |
| Spawn Location | Outer ring fortress — Frostpeak Hold main gates, training yard |
| Faction | Frostpeak Holds (Young Clanmember standing) |
| Starter Gear | Dwarven iron plate (chest and legs), reinforced arm guards, iron-capped boots, clan-marked helm |
| Starter Weapon | Iron warhammer, iron kite shield |
| Starter Consumables | 3× Hold Ration, 2× Bandage, 1× Dwarf Ale (endurance restore), 1× Repair Kit (basic) |
| Starting Skills | Shield Mastery 3, Heavy Weapons 1, Mining 3, Engineering 1 |
| Starting Abilities | Shield Bash (Shield Mastery 5 — close), Counter Shield (Shield Mastery 35 — later) |
| Starting Stats | STR 15, DEX 7, END 17, INT 10, WIL 8, STA 14 — HP 135, Mana 70, Stamina 118 |
| Profession Exposure | Blacksmithing basics through forge introduction quest; Mining from starting skill |
| Tutorial Path | 1. Forge introduction — basic crafting mechanics; first Blacksmithing XP. 2. Surface patrol — introduces combat and Hold defense mechanics. 3. Deep mine descent — introduces underground navigation, Mining, and dragon encounter warning system. 4. Clan council meeting — introduces faction politics and Hold political structure. |
| Starting Identity | A dwarf who carries their clan's history in their hands and the Hold's future in every decision they make underground. |

---

### Elf Mystic Ranger

| Field | Value |
| --- | --- |
| Race | Elf |
| Class | Mystic Ranger (Racial Specialization) |
| Gender Models | Male Elf (tall, forest-adapted, bioluminescent markings), Female Elf (precise, layered nature-garments, Ward-mark tattoos) |
| Starting Region | Witchwood Isle |
| Spawn Location | Forest Enclave settlement — hidden in the canopy interior, Ward installation nearby |
| Faction | Moonroot Enclaves (Young Wanderer standing) |
| Starter Gear | Woven forest armor (Ward-fiber vest), cloth underlayer, thorn-craft boots, hide cloak |
| Starter Weapon | Elf-crafted short bow (30 arrows), short blade |
| Starter Consumables | 3× Enclave Ration, 2× Herbal Remedy, 1× Ward-ward Powder (corruption ward) |
| Starting Skills | Archery 3, Stealth 2, Ward Magic 1, Herbalism 2 |
| Starting Abilities | Pinning Shot (Archery 5 — close), Ward Read (Relic Detection 25 — later), Veil Sight (Veil Attunement 20 — later path) |
| Starting Stats | STR 8, DEX 16, END 7, INT 12, WIL 14, STA 9 — HP 82, Mana 135, Stamina 88 |
| Profession Exposure | Herbalism from starting skill; Enchanting basics through Enclave workshop quest |
| Tutorial Path | 1. Forest patrol — stealth and navigation in Witchwood terrain. 2. Ward site visit — introduces Ward system and basic Ward Magic interaction. 3. Corruption event at a corrupted grove — introduces Veil Sight and anti-corruption mechanics. 4. Enclave elder meeting — faction politics and long-term identity in the Moonroot network. |
| Starting Identity | An elf who grew up listening to the Ward network hum — and is beginning to understand that what they hear isn't just machinery. |

---

### Gnome Engineer

| Field | Value |
| --- | --- |
| Race | Gnome |
| Class | Engineer/Relic Specialist (Racial Specialization) |
| Gender Models | Male Gnome (quick-moving, tool-laden, modular gear), Female Gnome (precise, goggled, adaptable layered equipment) |
| Starting Region | Hidden Enclave (concealed coastal facility) |
| Spawn Location | Workshop level of the engineering enclave — prototype testing area |
| Faction | Independent (Enclave Network standing); Tempest Accord (Registered) |
| Starter Gear | Modular engineer's suit (light, pocketed), tool belt, work goggles, lightweight boots |
| Starter Weapon | Arc-shock gadget (ranged stun tool), wrench (melee tool) |
| Starter Consumables | 3× Ration Pack, 2× Repair Kit (basic), 1× Prototype Grenade (1 use), 1× Relic Scanner (5 uses) |
| Starting Skills | Engineering 3, Relic Detection 2, Archaeology 1, Fishing 1 |
| Starting Abilities | Relic Scan (Archaeology 15 — close), Ward Read (Relic Detection 25 — later) |
| Starting Stats | STR 6, DEX 11, END 7, INT 17, WIL 12, STA 8 — HP 76, Mana 128, Stamina 82 |
| Profession Exposure | Engineering from starting skill; Jewelcrafting basics through component work quest |
| Tutorial Path | 1. Workshop project — introduces Engineering mechanics and first crafting loop. 2. Nearby ruin investigation — introduces Relic Detection and Relic Scan. 3. Component recovery — a pre-Fracturing part must be extracted from a ruin; introduces Ancient Recovery concept. 4. Enclave network briefing — introduces independent political identity and Tempest Accord research connections. |
| Starting Identity | A researcher who knows that the old world left behind more answers than anyone has bothered to look for — and intends to be the one who finds them. |

---

## Template Comparison Tables

### Starting Stat Summary

| Template | STR | DEX | END | INT | WIL | STA | HP | Mana | Stamina |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Human Fighter | 12 | 10 | 12 | 9 | 9 | 12 | 105 | 90 | 105 |
| Human Knight | 11 | 8 | 14 | 9 | 10 | 13 | 115 | 90 | 110 |
| Human Paladin | 10 | 8 | 13 | 11 | 14 | 11 | 108 | 115 | 105 |
| Human Mage | 8 | 10 | 9 | 14 | 13 | 8 | 88 | 125 | 85 |
| Human Ranger | 9 | 13 | 11 | 10 | 9 | 10 | 100 | 90 | 100 |
| Human Rogue | 9 | 14 | 9 | 11 | 10 | 9 | 90 | 95 | 92 |
| Human Witch | 8 | 10 | 9 | 13 | 15 | 8 | 88 | 130 | 82 |
| Human Pirate | 11 | 13 | 11 | 10 | 8 | 11 | 100 | 80 | 102 |
| Dwarf Defender/Engineer | 15 | 7 | 17 | 10 | 8 | 14 | 135 | 70 | 118 |
| Elf Mystic Ranger | 8 | 16 | 7 | 12 | 14 | 9 | 82 | 135 | 88 |
| Gnome Engineer | 6 | 11 | 7 | 17 | 12 | 8 | 76 | 128 | 82 |

---

### Starting Skills Summary

| Template | Primary Skills | Supporting Skills |
| --- | --- | --- |
| Human Fighter | Swordsmanship 1, Shield Mastery 1 | Survival 1 |
| Human Knight | Shield Mastery 3, Swordsmanship 1 | Defensive Combat 1, Leadership 1 |
| Human Paladin | Shield Mastery 2, Ward Magic 1 | Elemental Magic 1, Corruption Resistance 1 |
| Human Mage | Elemental Magic 1 | Survival 1, Archaeology 1 |
| Human Ranger | Archery 1, Survival 3 | Treasure Hunting 1, Herbalism 1 |
| Human Rogue | Stealth Combat 1, Treasure Hunting 1 | Swordsmanship 1 (dagger), Espionage 1 |
| Human Witch | Veil Attunement 1, Elemental Magic 1 | Herbalism 2 |
| Human Pirate | Swordsmanship 1, Firearms 1 | Sailing 1, Navigation 1 |
| Dwarf Defender/Engineer | Shield Mastery 3, Mining 3 | Heavy Weapons 1, Engineering 1 |
| Elf Mystic Ranger | Archery 3, Stealth 2 | Ward Magic 1, Herbalism 2 |
| Gnome Engineer | Engineering 3, Relic Detection 2 | Archaeology 1, Fishing 1 |

---

### Starting Region & Faction Summary

| Template | Starting Region | Spawn Location | Starting Faction | Standing |
| --- | --- | --- | --- | --- |
| Human Fighter | Mainland Kingdom | Garrison barracks | Crown Compact | Neutral Conscript |
| Human Knight | Mainland Kingdom | Inner fortress | Crown Compact | Sworn Initiate |
| Human Paladin | Mainland Kingdom | Ward Command chapel | Ward Command / Crown | Acolyte |
| Human Mage | Mainland Kingdom | Tempest Accord hall | Tempest Accord | Junior Scholar |
| Human Ranger | Mainland Kingdom frontier | Frontier waystation | Crown Compact | Frontier Agent |
| Human Rogue | Mainland Kingdom | Dockside district | None | Neutral |
| Human Witch | Witchwood border | Frontier hamlet | Thornbound Circles | Hedge Practitioner |
| Human Pirate | Shattered Reefs | Corsair docks | Free Reef Corsairs | New Blood |
| Dwarf Defender/Engineer | Frostpeak Isle | Outer ring fortress | Frostpeak Holds | Young Clanmember |
| Elf Mystic Ranger | Witchwood Isle | Forest Enclave | Moonroot Enclaves | Young Wanderer |
| Gnome Engineer | Hidden Enclave | Workshop level | Independent (Enclave) | Registered |

---

## Identity Trajectories

Each starting template has a natural long-term identity trajectory. These are not mandatory — player choices will always diverge. But these are the narrative arcs the template is designed to make available:

| Template | Short-Term Identity | Medium-Term Arc | Long-Term Potential |
| --- | --- | --- | --- |
| Human Fighter | Garrison soldier | Independent blade-for-hire | Duelist champion, mercenary captain, faction military commander |
| Human Knight | Sworn defender | Templar officer | Warden of territory, noble knight commander, Crown political figure |
| Human Paladin | Ward acolyte | Anti-corruption field agent | Ward Commander, political authority in Veil-threatened regions |
| Human Mage | Junior researcher | Field expedition mage | Tempest Accord director, legendary scholar, Rift navigator |
| Human Ranger | Frontier scout | Route pioneer | Legendary Pathfinder, frontier political authority, exploration legend |
| Human Rogue | Street operative | Information broker | Spymaster, Corsair shadow, the most dangerous person in any room |
| Human Witch | Hedge practitioner | Veil explorer | Feared Veil master, hidden political power, Thornbound leader |
| Human Pirate | Deckhand | Ship captain | Pirate Lord, Corsair council member, sea legend |
| Dwarf Defender/Engineer | Clan apprentice | Hold engineer | Hold Master, forge economy controller, legendary smith |
| Elf Mystic Ranger | Enclave scout | Ward keeper | Enclave Elder, Ward authority, keeper of hidden routes |
| Gnome Engineer | Enclave researcher | Relic investigator | Relic Architect, indispensable advisor, builder of the impossible |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Race & Class Building Identity] (race_class_building_identity.md)
- Next: [Races & Classes] (races_and_classes.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---
