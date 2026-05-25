[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

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
- Previous: [Mystical Isles Merchant System (Atavism X 9)](merchant_system.md)
- Next: [Mystical Isles Black Market Merchants](black_market_merchants.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
