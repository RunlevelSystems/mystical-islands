[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

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
- Previous: [Mystical Isles Items System (Atavism X 9)](items_system.md)
- Next: [Item Master List (Atavism X 9)](item_master_list.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
