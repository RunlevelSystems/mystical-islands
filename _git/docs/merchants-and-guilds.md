# Merchants and Guilds

Centralized reference for merchant types, regional traders, black markets, rare merchants, guild progression, guild creation pathways, and faction merchants.

Preserves merchant table structures and Atavism plugin field references for future data automation.

---

## Consolidated Sourcebook

This page consolidates and preserves existing Mystical Islands documentation in one centralized reference.

### Source: `docs/guilds-and-merchants.md`

# Guilds & Merchants

Guilds and merchants form the social and economic skeleton of Mystical Isles. This page centralizes the major guild structure, merchant categories, reputation logic, and the political economy of the world.

---

## Guild Philosophy

Players should not begin by founding their own guilds.

At launch, the intended structure is:

1. join a pre-existing guild or chartered order
2. prove loyalty and usefulness
3. earn access to benefits, missions, and reputation
4. later unlock the ability to form or lead a new group if the design allows it

This makes guild life feel earned rather than automatic.

---

## Example Pre-Existing Guilds

These are design placeholders and can be renamed later.

### Crownward League
- civic defenders and lawful protectors
- tied to the mainland, city patrols, and political stability
- strong access to guards, sanctioned missions, and civic vendors

### Salt Banner Company
- merchant-aligned sailors, escorts, and route protectors
- focused on trade, shipping, convoy defense, and docks
- good fit for naval content and economic quests

### Emberforge Hall
- dwarven and artisan-focused guild structure
- tied to smithing, mining, and construction
- strong access to equipment and repair benefits

### Veilwatch Order
- scholars, sentries, and ruin specialists
- focused on containment, secrets, and dangerous places
- tied to late-game exploration and ancient lore

### Moonthorn Circle
- witch, herbalist, and wilderness-aligned group
- focused on potions, curses, gathering, and swamp regions
- strong access to reagents and ritual contracts

### Blackwake Free Company
- pirate, privateer, and outlaw-adjacent organization
- tied to sea raids, smuggling, and fast money
- strong access to illegal or gray-market content

---

## Guild Ranks

Typical rank ladder:

| Rank | Purpose |
|---|---|
| Initiate | proves basic loyalty |
| Member | regular access to benefits |
| Veteran | trusted specialist |
| Officer | manages missions and recruits |
| Envoy | handles diplomacy and trade |
| Master / Captain | leads a major branch or charter |

Ranks can unlock missions, shops, cosmetics, and political options.

---

## Guild Benefits

Guild membership can grant:

- access to faction gear
- discounted services
- unique missions
- shared storage or housing access
- trade perks
- travel support
- reputation growth
- cosmetic identity items
- group event participation

Guilds should feel like a home base, not just a chat channel.

---

## Reputation and Politics

Reputation should exist on multiple layers:

- **personal reputation** with merchants and factions
- **guild reputation** with allied institutions
- **region reputation** with towns and islands
- **black market reputation** with illicit buyers

Political groups should react to what the player does:

- help the crown, and rebel access may weaken
- help smugglers, and legal merchants may distrust you
- help witches, and civic institutions may complain
- help explorers, and ruins may open new opportunities

This creates tradeoffs instead of one universal path.

---

## Merchant Categories

### General Merchants
- buy common loot, basic goods, and supplies
- found in towns, ports, camps, and hubs
- sell food, tools, repair items, and starter consumables

### Faction Vendors
- sell themed gear and reputation goods
- found in faction hubs and rank-gated locations
- specialize in region or organization identity

### Rare Item Buyers
- buy relics, unusual trophies, and high-value curios
- found in museums, noble districts, secret markets, and scholarly enclaves
- pay premium prices for unique finds

### Black Market Traders
- buy stolen goods, contraband, and dangerous artifacts
- found in hidden alleys, pirate docks, and secret coves
- specialize in high risk, high reward trade

### Crafting Specialists
- smiths, alchemists, tailors, enchanters, shipwrights, and field engineers
- sell materials, services, or recipe-linked supplies
- often live near production hubs or guild halls

---

## Merchant Specialization Table

| Merchant Type | Buys | Sells | Typical Location | Specialty |
|---|---|---|---|---|
| General Trader | common loot | food, tools, basics | towns and camps | broad convenience |
| Relic Buyer | artifacts | nothing or collector items | museums, archives, noble houses | high-value curios |
| Black Market Fence | stolen goods, contraband | illicit wares | hidden markets | risk-based trading |
| Faction Quartermaster | reputation gear | themed armor, weapons, supplies | faction strongholds | loyalty rewards |
| Alchemist | herbs, venom, beast parts | potions, toxins, reagents | labs, marsh settlements | consumables |
| Ship Supplier | salvage, rope, timber | sails, maps, repair kits | ports and harbors | naval logistics |

---

## Merchant Logic Notes

- Merchants should reflect the island they live on.
- Rare goods should be gated by location, reputation, or story.
- Black market merchants should feel hidden, not common.
- Different guilds should open different trade lines.
- Some merchants should react to political events or world states.

---

## Future Guild and Trade Ideas

- chartered player alliances
- guild hall upgrades
- faction wars over trade routes
- merchant caravan events
- dock control and harbor taxation
- rival buyer competition
- rare item auction systems
- guild-specific cosmetic banners and housing

---

### Source: `docs/factions/factions.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to 🏴 Factions Index] (README.md)

**Breadcrumbs:** Home / Factions / Factions

---

# Factions
## Faction Design Role

Factions turn exploration into politics. They give context to territorial conflict, expedition funding, relic recovery, trade protection, and the competing interpretations of the world's past.

## Major Powers

| Faction | Base Region | Public Identity | Core Goal | Common Conflict |
| --- | --- | --- | --- | --- |
| Crown Compact | Mainland Kingdom | Royal authority, trade law, reconstruction | Preserve order and control shipping lanes | Pirates, smugglers, rivals, hidden internal agendas |
| Thornbound Circles | Witchwood Isle | Witches, druids, and ritual wardens | Protect forests, secrets, and sacred sites | Kingdom expansion, relic plunderers |
| Moonroot Enclaves | Witchwood Isle | Reclusive elven communities | Defend ancestral routes and hidden knowledge | Covens, invaders, corrupted groves |
| Frostpeak Holds | Frostpeak Isle | Dwarven clans and forge councils | Secure mines, holds, and excavation rights | Dragons, collapses, trade pressure |
| Cinder Tribes | Ashen Deadlands | Orc warbands and survivalist clans | Claim strength through conquest and salvage | Undead hosts, rival warbands, outsiders |
| Gravebound Legions | Ashen Deadlands | Undead rulers and necromantic remnants | Expand cursed dominion through ruin control | Everyone living |
| Free Reef Corsairs | Shattered Reefs | Pirate captains and smugglers | Profit through mobility, secrecy, and seized routes | Navy blockades, internal betrayal |
| Reef Wardens | Shattered Reefs | Canyon-dwelling tribal civilization | Protect the inner canyons, oases, and relic sites from exploitation | Corsair encroachment, relic hunters, outsider intrusion |
| Tempest Accord | Stormreach Isles | Scholars, engineers, and elite explorers | Stabilize routes and exploit anomaly zones | Cults, storms, catastrophic failure |

## Reputation Design

- faction standing should unlock vendors, contracts, safe harbors, and expedition support
- rival interests should create meaningful choice without forcing permanent early failure states
- some neutral or black-market factions can bridge hostile political groups at a cost
- relic and ward content should often create conflicting faction objectives

## Faction Notes by Region

### Mainland Kingdom: Crown Compact
The Crown Compact includes royal officials, harbor masters, chartered guilds, and the naval command structure. They present themselves as the guardians of civilization, but internally they also compete to monopolize knowledge, route control, and ancient infrastructure.

### Witchwood Isle: Thornbound Circles and Moonroot Enclaves
Witchwood factions are not a unified state. The Thornbound Circles are ritual authorities, hedge mystics, and ward-keepers with differing philosophies. The Moonroot Enclaves are older elven communities that maintain hidden paths and ancestral sites.

### Frostpeak Isle: Frostpeak Holds
The dwarf holds are pragmatic, proud, and heavily invested in excavation. They can be strong allies for crafting and logistics, but their hunger for buried infrastructure can escalate danger if old systems are awakened carelessly.

### Ashen Deadlands: Cinder Tribes and Gravebound Legions
This region is driven by survival and attrition. Orc warbands are not uniformly villainous, but they are brutal competitors for territory and salvage. The Gravebound Legions represent corrupted militaries, necromantic cult remnants, and cursed command structures left active long after the old world died.

### The Shattered Reefs: Free Reef Corsairs and Reef Wardens
The Reefs operate on two separate power structures that share a single island in uneasy coexistence.

The **Free Reef Corsairs** operate on reputation, leverage, and hidden routes rather than formal law. Pirate factions can serve as antagonists, informants, route brokers, or temporary allies depending on player behavior. Their power is concentrated in the outer reef ports, coastal coves, and sea-facing infrastructure.

The **Reef Wardens** are the island's original inhabitants — a canyon-dwelling tribal civilization whose culture predates any pirate presence. Their identity is built around reef navigation, storm reading, oasis stewardship, and the protection of pre-Fracturing ruin sites buried beneath the canyon floors. They are not hostile by default, but they are protective of their territory and their secrets. Players must earn Reef Warden standing independently from Corsair reputation.

The two factions operate under an unspoken territorial division: Corsairs own the outer coasts, Reef Wardens own the inner canyons. This arrangement is pragmatic — Corsairs cannot navigate the inner reef passages without Reef Warden knowledge, and the Reef Wardens occasionally require sea-route goods they cannot produce in their canyon settlements. The balance is maintained by mutual need and mutual restraint, but it is not stable, and player actions can shift it in either direction.

### Stormreach Isles: Tempest Accord
The Tempest Accord is an expedition coalition rather than a traditional nation. It combines scholars, ward technicians, navigators, mercenary escorts, and high-risk financiers who understand that Stormreach can either save civilization or destroy what remains of it.

---

## Related Documents
- [🏴 Factions Overview] (../lore/factions_overview.md)
- [🏰 Political System] (../lore/political_system.md)
- [🏰 Gameplay Track: Politics] (../gameplay/politics/README.md)

## Suggested Reading
- Previous: Start with this page.
- Next: You have reached the end of this section path.

## Navigation
- [⬆ Back to 🏴 Factions Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/merchant_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

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

- [Merchant Tables] (./merchant_tables.md)
- [Rare Item Buyers] (./rare_item_buyers.md)
- [Vendor Locations] (./vendor_locations.md)
- [Black Market Merchants] (./black_market_merchants.md)
- [Faction Vendors] (./faction_vendors.md)

---

## Related Documents


## Suggested Reading
- Previous: [Equipment and Slots (Atavism X 9)] (equipment_and_slots.md)
- Next: [Mystical Isles Merchant Tables (Atavism X 9)] (merchant_tables.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
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

### Source: `docs/systems/black_market_merchants.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles Black Market Merchants

---

# Mystical Isles Black Market Merchants
## Purpose

Black market merchants support high-risk, high-reward trade loops for contraband, stolen cargo, cursed relics, and pirate economies.

## Black Market Merchant Categories

| Merchant Type | Core Trade |
| --- | --- |
| Black Market Merchants | Illegal goods and restricted equipment |
| Pirate Merchants | Pirate-only weapons, gear, and naval modules |
| Smuggler Brokers | Concealment tools, falsified cargo, route intel |
| Hidden Relic Dealers | Forbidden relic exchange and illicit appraisal |

## Black Market Table Set

| Merchant Table | Region | Access Rule | Stock Pattern |
| --- | --- | --- | --- |
| Pirate Black Market | Shattered Reefs | Friendly+ Reef Corsair standing | Contraband weapons and hidden utility |
| Smuggler Goods | Dock back alleys | Friendly+ Smuggler standing | Cargo concealment, smuggling tools |
| Forbidden Relics | Hidden coves/ruins | Honored+ with illicit brokers | Rare cursed and ancient illicit stock |
| Stolen Cargo Dealer | Pirate ports | Neutral to access, better rates with standing | Rotating stolen cargo inventory |
| Cursed Item Dealer | Veil-touched hideouts | Friendly+ Coven/Pirate contacts | Cursed items and forbidden reagents |

## Buy/Sell Rules

| Rule | Design Intent |
| --- | --- |
| Pays strong value for stolen/illegal goods | Distinct illegal economy loop |
| Pays weak value for lawful junk/common drops | Prevents replacing general merchants |
| Requires reputation for top-tier inventory | Adds progression and social alignment stakes |
| Uses longer refresh on high-risk items | Preserves scarcity and route planning |

## Risk and Progression Hooks

| Trigger | Outcome |
| --- | --- |
| Trading while low reputation | Limited inventory and inflated prices |
| Reaching Honored or Exalted with pirate/smuggler faction | Access to unique contraband and blueprints |
| Carrying contraband in lawful ports | Guard risk and confiscation encounter potential |
| Turning in rare illicit relics | Unlocks hidden broker dialogue and quest chains |

## Pirate Black Market Example Inventory

| Item | Count | Refresh Time |
| --- | ---: | ---: |
| Reef Cutlass | 3 | 3600 |
| Storm Flintlock | 1 | 21600 |
| Smuggler’s Hidden Bag | 2 | 7200 |
| Coral Vault Key | 1 | 43200 |
| Treasure Map | 1 | 86400 |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles Merchant Tables (Atavism X 9)] (merchant_tables.md)
- Next: [Mystical Isles Rare Item Buyers] (rare_item_buyers.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/rare_item_buyers.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles Rare Item Buyers

---

# Mystical Isles Rare Item Buyers
## Purpose

Rare item buyers ensure that item knowledge and travel decisions matter. A rare item sold to a general merchant should feel like a bad decision, while the right specialist buyer should provide major rewards.

## Rare Item Value Model

| Item | General Merchant Value | Specialist Merchant | Specialist Value |
| --- | --- | --- | --- |
| Ancient Core | 5 Silver | Gnome Relic Scholar | 500 Gold |
| Dragon Scale | 1 Gold | Dwarven Forge Master | 250 Gold |
| Veil Heart | 10 Copper | Witch Coven Dealer | 300 Gold |
| Coral Vault Key | 25 Copper | Pirate Treasure Broker | 150 Gold |
| Leviathan Scale | 2 Gold | Shipwright Master | 400 Gold |
| Queen Elyra’s Seal | Cannot Sell | Wardkeeper Archivist | Quest Turn-In Only |

## Buyer Rules

- General merchants treat unknown rare items as junk-value goods.
- Specialist buyers recognize domain-specific rarity and pay premium rates.
- Some rare items are quest-only and cannot be sold as currency conversion.
- Some rare items unlock hidden merchant dialogue and follow-up offers.
- Some buyers require minimum reputation before rare purchases are enabled.

## Specialist Buyer Profiles

| Buyer | Region | Specialty | Access Rule |
| --- | --- | --- | --- |
| Gnome Relic Scholar | Stormreach Isles | Ancient technology and machine relics | Neutral to view, Friendly+ for premium trade |
| Dwarven Forge Master | Frostpeak Isle | Dragon parts, alloys, rare ore products | Friendly+ with Frostpeak Clan |
| Witch Coven Dealer | Witchwood hidden enclaves | Veil materials, cursed components | Friendly+ with Coven-aligned faction |
| Pirate Treasure Broker | Shattered Reefs | Treasure keys, contraband maps, vault artifacts | Friendly+ Reef Corsair or Smuggler standing |
| Shipwright Master | Major ports/Reefs | Leviathan and ship-grade monster components | Neutral with dock access; Honored for premium rates |
| Wardkeeper Archivist | Mainland Kingdom | Political relics and sacred seals | Honored+ Wardkeeper standing, quest turn-ins only |

## Hidden Dialogue and Unlock Conditions

| Trigger Item/Condition | Unlock Result |
| --- | --- |
| First Ancient Core delivery | Relic scholar unlocks machine restoration quests |
| Dragon Scale bundle turn-in | Forge Master unlocks dragon-forged commission options |
| Veil Heart hand-in | Coven merchant unlocks forbidden reagent stock |
| Coral Vault Key trade | Treasure broker reveals hidden vault map listings |
| Exalted reputation with faction buyer | Access to unique dialogue and one-of-a-kind offers |

## Economy Integration

| System | Rare Buyer Contribution |
| --- | --- |
| Exploration | Rewards players who discover and route rare drops correctly |
| Travel | Encourages long-distance transport to specialist hubs |
| Factions | Uses reputation thresholds to gate high-value exchanges |
| Quests | Converts some rare items into quest progression rather than direct currency |
| Crafting | Routes rare parts into specialist crafting economies |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles Black Market Merchants] (black_market_merchants.md)
- Next: [Mystical Isles Faction Vendors] (faction_vendors.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/faction_vendors.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles Faction Vendors

---

# Mystical Isles Faction Vendors
## Purpose

Faction vendors tie economy progression directly to social and political alignment. They provide distinctive rewards, access control, and identity-defining goods.

## Faction Vendor Table Set

| Merchant Table | Faction | Region Focus | Vendor Theme |
| --- | --- | --- | --- |
| Wardkeeper Reputation Vendor | Wardkeepers | Mainland Kingdom | Sacred authority, governance, ward-linked gear |
| Kingdom Military Vendor | Kingdom | Mainland Kingdom | Military issue armor and battlefield supplies |
| Reef Corsair Vendor | Reef Corsairs | Shattered Reefs | Pirate faction loadouts and smuggling equipment |
| Frostpeak Clan Vendor | Frostpeak Clan | Frostpeak Isle | Forge recipes, mountain survival, heavy craft |
| Witchwood Enclave Vendor | Witchwood Enclave | Witchwood Isle | Nature relics, stealth and druidic utility |
| Arcforge Consortium Vendor | Arcforge Consortium | Stormreach Isles | Engineering prototypes and machine blueprints |
| Ashen Horde Vendor | Ashen Horde | Ashen Deadlands | War trophies and siege logistics |
| Coven of the Veil Vendor | Coven of the Veil | Witchwood/Ashen fringe | Corruption rituals and forbidden tools |

## Reputation Requirement Tiers

| Tier | Access |
| --- | --- |
| Neutral | Basic buying/selling |
| Friendly | Better goods and minor discount |
| Honored | Rare stock and special services |
| Exalted | Unique items, political goods, rare blueprints |
| Hated | No trade; hostile faction response possible |

## Faction Buy/Sell Behavior

| Vendor Type | Buy/Sell Rule |
| --- | --- |
| Standard Faction Vendor | Buys faction-relevant items at improved rates when standing is Friendly+ |
| Reputation Vendor | Unlocks tiered service stock and token-based offers |
| Hostile-Faction Vendor | Refuses trade or applies severe penalties |
| Political Vendor | May require rank/title and quest flags in addition to reputation |

## Reputation-Driven Economy Outcomes

| System Goal | Faction Vendor Contribution |
| --- | --- |
| Identity progression | Players visibly align with faction gear and services |
| Regional economy value | Faction capitals become unique trade hubs |
| Quest integration | Vendor access and stock tied to campaign milestones |
| Controlled scarcity | Exalted stock limits market flooding |
| Political gameplay | Top-tier inventory reinforces office/rank progression |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles Rare Item Buyers] (rare_item_buyers.md)
- Next: [Mystical Isles Vendor Locations] (vendor_locations.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/vendor_locations.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles Vendor Locations

---

# Mystical Isles Vendor Locations
## Location Design Rules

Vendor placement is used to reinforce travel, faction identity, and regional economy value.

- Every major region has general sustain vendors.
- Specialist merchants are tied to regional resources and lore.
- Rare buyers are intentionally distributed to reward exploration routes.
- Black market and contraband merchants are placed in hidden or risky areas.
- Ports prioritize ship supply, repair, and naval progression merchants.

## Regional Vendor Matrix

### Mainland Kingdom

| Merchant Role | Presence |
| --- | --- |
| General Merchant | Yes |
| Kingdom Weapon Merchant | Yes |
| Kingdom Armor Merchant | Yes |
| Food Vendor | Yes |
| Basic Tool Merchant | Yes |
| Wardkeeper Vendor | Yes |
| Political Vendor | Yes |
| City Plot Merchant | Yes |

**Special Buyers:** Wardkeeper Archivist, Royal Appraiser

### Frostpeak Isle

| Merchant Role | Presence |
| --- | --- |
| Dwarven Forge Merchant | Yes |
| Mining Supplier | Yes |
| Heavy Armor Merchant | Yes |
| Dragon Part Buyer | Yes |
| Engineering Supplier | Yes |

**Special Buyers:** Forge Master, Dragon Hunter Quartermaster

### Witchwood Isle

| Merchant Role | Presence |
| --- | --- |
| Elven Bowyer | Yes |
| Herbalist | Yes |
| Nature Magic Vendor | Yes |
| Witchwood Relic Keeper | Yes |
| Stealth Gear Merchant | Yes |

**Special Buyers:** Ancient Grove Archivist, Rare Herb Collector

### Shattered Reefs

| Merchant Role | Presence |
| --- | --- |
| Pirate Gear Vendor | Yes |
| Black Market Dealer | Yes |
| Shipwright | Yes |
| Smuggler Broker | Yes |
| Treasure Map Seller | Yes |
| Canyon Tribe Trader | Yes |

**Special Buyers:** Treasure Broker, Coral Vault Dealer, Sea Monster Trophy Buyer

### Ashen Deadlands

| Merchant Role | Presence |
| --- | --- |
| Orc War Gear Vendor | Yes |
| War Trophy Trader | Yes |
| Demon Relic Buyer | Yes |
| Survival Merchant | Yes |

**Special Buyers:** Ashen Warlord Quartermaster, Forbidden War Broker

### Stormreach Isles

| Merchant Role | Presence |
| --- | --- |
| Rare Traveling Relic Merchant | Yes |
| Gnome Field Researcher | Yes |
| Storm Salvage Dealer | Yes |

**Special Buyers:** Ancient Machine Buyer, Storm Relic Collector

## Travel and Trade Value Outcomes

| Design Goal | Vendor Location Impact |
| --- | --- |
| Make travel meaningful | Players move between islands for specialist buyers and stock |
| Preserve regional economy | Resource-rich regions host matching specialist merchants |
| Reward world knowledge | Best sale values require knowing where to sell rare goods |
| Support naval gameplay | Port clusters sustain ship progression and expedition loops |
| Maintain faction identity | Faction capitals host gated reputation vendors |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles Faction Vendors] (faction_vendors.md)
- Next: [🛠 Crafting System] (crafting_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/faction_progression.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Faction Progression

---

# Faction Progression
## Purpose

Faction progression transforms individual advancement into institutional influence, political authority, and world-level consequence.

---

## Faction Recognition Bands

| Standing Band | Example Range | Recognition State | Gameplay Effect |
| --- | --- | --- | --- |
| Known Outsider | 0–999 | Tolerated outsider | Basic contracts only |
| Proven Associate | 1,000–4,999 | Trusted field asset | Specialized contracts and access |
| Ranked Operative | 5,000–11,999 | Internal contributor | Strategic mission participation |
| Institutional Figure | 12,000–24,999 | Leadership candidate | Advisory authority and candidacy |
| Pillar of the Faction | 25,000+ | Political stakeholder | Office contests and policy impact |

---

## Progression Inputs

| Activity | Faction Progression Value |
| --- | --- |
| Faction quest lines | Core standing progression |
| Naval campaigns | Military trust and strategic relevance |
| Resource logistics | Economic trust and trade authority |
| Diplomatic missions | Cross-faction credibility |
| Governance tasks | Civic legitimacy and office readiness |
| Crisis response | Emergency authority eligibility |

---

## Political Advancement and World Office

| Office Tier | Example Roles | Requirement Pattern |
| --- | --- | --- |
| Local Office | Harbor Steward, Ward Marshal | Mid standing + local achievements |
| Regional Office | Governor, Fleet Commander | High standing + campaign outcomes |
| Cross-Faction Office | High Admiral, Accord Envoy | Multi-faction trust + diplomacy history |
| Sovereign-Level Influence | Kingdom Ruler, Pirate Confederacy Head | Coalition legitimacy + sustained influence |

These offices are challengeable, non-permanent, and dependent on active reputation.

---

## Challenge and Succession Rules

| Rule | Intent |
| --- | --- |
| Scheduled challenge windows | Keeps power dynamic and contested |
| Influence upkeep requirements | Prevents office hoarding |
| Confidence checks on outcomes | Ties office retention to performance |
| Crisis override protocols | Allows emergency authority transfer |

---

## Faction Rewards by Stage

| Stage | Reward Type | Examples |
| --- | --- | --- |
| Associate | Utility access | Basic faction tools and mission boards |
| Operative | Structural access | Restricted facilities and strategic contracts |
| Candidate | Political tools | Voting rights and policy proposal slots |
| Office Holder | World-impact tools | Trade directives and patrol priorities |
| Pillar | Legacy tools | Historical honors and succession influence |

---

## Long-Term Progression Outcome

| Long-Term Loop | Result |
| --- | --- |
| Influence growth | Greater policy and institutional control |
| Political rivalry | Dynamic faction power shifts |
| Trade governance | Player-shaped regional economy |
| Naval authority | Strategic sea-lane control |
| Ward/Veil policy | Stability outcomes in high-risk zones |

Faction progression is a primary horizontal system for long-term player identity.

---

## Related Documents


## Suggested Reading
- Previous: [Races & Classes] (races_and_classes.md)
- Next: [Player Ranks] (player_ranks.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/titles_and_reputation.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Titles & Reputation

---

# Titles & Reputation
## Purpose

Titles and reputation define social identity, legitimacy, and remembered achievement.

---

## Title Categories

| Category | Example Titles | Unlock Basis |
| --- | --- | --- |
| Exploration | The Reef Walker, The Lost Cartographer | Discovery milestones and map achievements |
| Faction | Warden of Frostpeak, Keeper of the Wards | Standing and service completion |
| Naval | Stormbreaker, Pirate King | Fleet command and sea campaign success |
| Crafting | Master Shipwright | Legendary production and contracts |
| Corruption | Veil Touched | Forbidden milestones and corruption thresholds |
| Leadership | Realm Steward, Harbor Marshal | Office tenure and policy outcomes |
| Discovery | Relic Witness, Vaultbreaker | Ancient-site breakthroughs |

---

## Reputation Axes

| Axis | Increases Through | Decreases Through |
| --- | --- | --- |
| Civic Trust | Settlement defense and responsible governance | Neglect, failed office outcomes |
| Faction Prestige | Loyal service and campaign success | Betrayal and alignment conflict |
| Explorer Fame | First discoveries and hazard mapping | Failed high-profile expeditions |
| Naval Renown | Convoy protection and fleet victories | Maritime disasters and command failure |
| Veil Renown | Controlled anomaly resolution | Uncontrolled corruption incidents |

---

## Title Unlock Tiers

| Tier | Requirements | Visibility |
| --- | --- | --- |
| Minor | Single notable milestone | Local/regional |
| Major | Multi-step progression chain | Multi-region |
| Historic | Rare world-impact achievements | World-wide |

---

## Reputation-Driven World Responses

| System | Response |
| --- | --- |
| NPC interaction | Dialogue and quest branching based on standing |
| Vendors/contracts | Better terms and strategic contract access |
| Political access | Candidate eligibility and trust thresholds |
| Emergency authority | Crisis command options for high-trust players |

---

## Consequences and Recovery

| Failure Case | Reputation Impact | Recovery Path |
| --- | --- | --- |
| Dangerous expedition failure | Explorer fame reduction | Recovery expedition chain |
| Political betrayal | Civic trust and faction prestige loss | Restitution and service contracts |
| Corruption misuse | Veil distrust and title suspension | Cleansing and ward-service arcs |
| Command abandonment | Leadership title suspension | Requalification through campaign duty |

Consequences are meaningful but recoverable to avoid permanent progression collapse.

---

## Related Documents


## Suggested Reading
- Previous: [Player Ranks] (player_ranks.md)
- Next: [Magic System] (magic_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---
