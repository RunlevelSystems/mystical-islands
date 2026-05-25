[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles Merchant System (Atavism X 9)

---

# Mystical Isles Merchant System (Atavism X 9)
## System Purpose

The merchant system is a major gameplay pillar for Mystical Isles. Merchants are designed to support exploration, economy circulation, crafting pipelines, faction progression, naval gameplay, and rare item discovery.

## Core Design Goal

Merchants are intentionally diverse. The world includes:

- common town merchants
- specialized merchants
- rare item buyers
- faction vendors
- black market merchants
- ship merchants
- crafting suppliers
- traveling traders
- hidden relic dealers
- regional economy vendors

Selling rare items to the wrong merchant should return poor value. Selling to the right specialist should return significantly higher value, special dialogue, or unique trade outcomes.

## Merchant Design Philosophy

### Merchants should

- support exploration
- support economy
- support crafting
- support faction identity
- support rare item discovery
- make travel meaningful
- create regional trade value
- reward knowledge of the world

### Merchants should not

- all sell the same items
- all buy everything at equal value
- make rare items feel generic
- remove the need to travel
- flatten the economy

## Merchant Type Matrix

| # | Merchant Type | Core Role | Distinct Behavior |
| --- | --- | --- | --- |
| 1 | General Merchants | Basic settlement commerce | Broad low-tier catalog, poor rare buy value |
| 2 | Weapon Merchants | Weapon supply | Class/combat progression inventories |
| 3 | Armor Merchants | Armor supply | Defensive identity by region/faction |
| 4 | Tool Merchants | Gathering/trade utility | Starter and profession tool access |
| 5 | Crafting Material Merchants | Material circulation | Commodity stock balancing by region |
| 6 | Alchemy Merchants | Potions/reagents | Consumable sustain and recipe support |
| 7 | Food and Survival Merchants | Survival loops | Provisioning for long expeditions |
| 8 | Shipwright Merchants | Ship progression | Ship upgrades, hull and sail components |
| 9 | Dock Merchants | Port logistics | Naval consumables and travel stock |
| 10 | Faction Vendors | Loyalty rewards | Stock and pricing gated by reputation |
| 11 | Reputation Vendors | Progression services | Tiered unlocks and identity rewards |
| 12 | Black Market Merchants | Illegal economy | Contraband and stolen-good trading |
| 13 | Pirate Merchants | Outlaw settlements | Pirate currencies and smuggling stock |
| 14 | Rare Item Buyers | Specialist acquisition | High-value targeted buy tables |
| 15 | Relic Scholars | Ancient artifact economy | Knowledge-gated relic valuation |
| 16 | Gnome Technology Merchants | Ancient machine tech | Tech-focused buys and blueprint sales |
| 17 | Dwarven Forge Merchants | Heavy craft specialization | Ore/dragon part premium valuation |
| 18 | Elven Grove Merchants | Nature specialization | Herb/nature relic premium valuation |
| 19 | Witch Coven Merchants | Veil/cursed specialization | Corruption goods and ritual reagents |
| 20 | Orc War Merchants | War economy | Trophy, salvage, and siege stock |
| 21 | Traveling Traders | Dynamic route economy | Rotating stock by route and schedule |
| 22 | Event Merchants | Time-limited progression | Event currencies and limited offers |
| 23 | Player Shop Merchants | Player-driven market | Stall-based decentralized economy |

## Buy/Sell Value Design Rules

| Merchant Class | Buy Rule |
| --- | --- |
| General Merchant | Pays normal value for junk/common goods, only 5-10% value for rare/specialized items |
| Specialist Merchant | Pays 100-300% value for items within specialty profile |
| Faction Merchant | Buys/sells by reputation tier, may refuse hostile players |
| Black Market Merchant | Pays well for stolen/illegal goods; may require pirate/smuggler standing |
| Relic Scholar | Pays very high for ancient items and may offer quest turn-ins instead of gold |

## Reputation Access Tiers

| Tier | Merchant Access |
| --- | --- |
| Neutral | Basic buy/sell access |
| Friendly | Better stock and minor discounts |
| Honored | Rare stock and special services |
| Exalted | Unique goods, political items, rare blueprints |
| Hated | No trade; guards or faction units may attack |

## Player Shop Merchants

Player-created commerce can be implemented with Atavism-compatible shop templates and tags.

| Player Shop Type | Usage |
| --- | --- |
| Market Stall | Static town trading point |
| Traveling Trader | Moveable route-based player store |
| Black Market Stall | Hidden illegal goods player outlet |
| Dockside Vendor | Port-focused naval and cargo trade |
| Guild Quartermaster | Guild-managed stock and pricing |

Player shop systems may use:

- shop items
- market stall licenses
- NPC shop templates
- shop tags
- max number of shops
- shop timeouts
- destroy on logout rules

## Merchant NPC Setup Workflow

1. Create Merchant Table in Atavism Editor.
2. Create or select an existing Mob/NPC template.
3. Spawn NPC in-game using `/spawner`.
4. Assign the merchant table in spawn configuration.
5. Configure faction, dialogue, quest links, and region location.
6. Test buying/selling behavior and pricing outcomes.
7. Validate stock depletion and refresh timing.
8. Restart server if required after template-level changes.

## Document Index

- [Merchant Tables](./merchant_tables.md)
- [Rare Item Buyers](./rare_item_buyers.md)
- [Vendor Locations](./vendor_locations.md)
- [Black Market Merchants](./black_market_merchants.md)
- [Faction Vendors](./faction_vendors.md)

---

## Related Documents


## Suggested Reading
- Previous: [Equipment and Slots (Atavism X 9)](equipment_and_slots.md)
- Next: [Mystical Isles Merchant Tables (Atavism X 9)](merchant_tables.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
