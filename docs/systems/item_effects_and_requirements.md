[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Item Effects and Requirements (Atavism X 9)

---

# Item Effects and Requirements (Atavism X 9)
## Atavism Item Effect Types

| Effect Type | Purpose | Mystical Isles Example |
| --- | --- | --- |
| Stat | Grants direct stat modifiers | Ward relic grants passive resistance |
| UseAbility | Activates an ability on use | Healing potion triggers instant heal ability |
| ClaimObject | Spawns claim-linked world object | Dock claim item places dock marker object |
| CreateClaim | Creates land claim area | Claim deed creates land claim |
| StartQuest | Starts or advances quests | Treasure map starts quest |
| Currency | Converts item into currency | Ancient coin converts to currency |
| BuildingMaterial | Flags building resource | Ship timber contributes to construction pools |
| CraftsItem | Teaches or unlocks crafting outcome | Blueprint teaches ship upgrade recipe |
| Sockets | Adds socket container data | Armor receives Armor Gem socket slot |
| Blueprint | Unlocks permanent recipe blueprint | Blueprint: Reinforced Hull unlocks ship recipe |
| VipPoints | Grants VIP points | Founder token grants VipPoints |
| VipTime | Grants VIP duration | Event chronometer adds VipTime |
| Bonus | Adds generic configurable bonus | Pirate luck charm grants loot bonus |
| SkillPoints | Grants skill points | Skill book gives SkillPoints |
| TalentPoints | Grants talent points | Advanced codex grants TalentPoints |
| SkillReset | Resets allocated skill points | Reset tome applies SkillReset |
| TalentReset | Resets allocated talents | Talent prism applies TalentReset |
| Achievements | Grants achievement progress | Expedition plaque triggers achievement credit |
| SocketAbility | Socket grants ability | Rune adds socket ability proc |
| SocketEffect | Socket grants passive effect | Rune adds socket effect |

## Socketing Items

### Socket Types

- Weapon Rune Socket
- Armor Gem Socket
- Relic Core Socket
- Ship Upgrade Socket
- Ward Socket
- Veil Socket

### Socket Items

| Socket Item | Socket Type | Primary Effect | Usage |
| --- | --- | --- | --- |
| Fire Rune | Weapon Rune Socket | Adds fire damage proc | Socketed in weapons for burn pressure |
| Frost Rune | Weapon Rune Socket | Adds slow on hit | Control option for melee/ranged builds |
| Storm Rune | Weapon Rune Socket | Chain lightning chance | AoE pressure for advanced weapons |
| Ward Gem | Ward Socket / Armor Gem Socket | Corruption resistance | Defensive anti-Veil loadouts |
| Veil Crystal | Veil Socket | Corruption power bonus | High-risk offensive caster builds |
| Ancient Core Socket | Relic Core Socket | Ancient-tech stat scaling | Relic and ancient weapon enhancement |
| Pirate Luck Charm | Ship Upgrade Socket | Loot/find bonus | Naval treasure-hunting loadouts |
| Navigator's Starstone | Ship Upgrade Socket | Route stability and navigation bonus | Exploration and long-range convoy support |

### SocketAbility and SocketEffect Usage

- `SocketAbility` is used when the inserted item should grant an active or triggered ability.
- `SocketEffect` is used when the inserted item should grant passive or always-on modifiers.
- socket families prevent invalid combinations and preserve build readability.

## Consumables

| Consumable | UseAbility Effect | Delete on Activate | Stack Limit | Tooltip Summary | Currency Value | Crafting Source |
| --- | --- | --- | --- | --- | --- | --- |
| Minor Healing Potion | Heal_Minor | Yes | 50 | Restores a small amount of health. | 12 Copper | Apprentice Alchemy |
| Healing Potion | Heal_Standard | Yes | 50 | Restores moderate health. | 35 Copper | Alchemy Bench |
| Greater Healing Potion | Heal_Greater | Yes | 30 | Restores major health quickly. | 1 Silver | Advanced Alchemy |
| Minor Mana Potion | Mana_Minor | Yes | 50 | Restores a small amount of mana. | 12 Copper | Apprentice Alchemy |
| Mana Potion | Mana_Standard | Yes | 50 | Restores moderate mana. | 35 Copper | Alchemy Bench |
| Greater Mana Potion | Mana_Greater | Yes | 30 | Restores major mana quickly. | 1 Silver | Advanced Alchemy |
| Stamina Draught | Stamina_Burst | Yes | 40 | Restores stamina and reduces fatigue briefly. | 60 Copper | Field Alchemy |
| Frostpeak Stew | Survival_ColdResist | Yes | 20 | Meal that boosts cold resistance. | 90 Copper | Cooking + Frostpeak Supplies |
| Desert Bloom Elixir | Survival_HeatResist | Yes | 20 | Increases heat tolerance in desert zones. | 95 Copper | Canyon Alchemy |
| Stormproof Tonic | Survival_StormResist | Yes | 20 | Improves storm resistance and balance. | 1 Silver | Naval Alchemy |
| Reef Rum | Morale_Regen | Yes | 20 | Grants short morale/stamina regeneration. | 75 Copper | Pirate Distillery Crafting |
| Ward Tonic | Cleanse_Ward | Yes | 20 | Clears minor corruption and ward decay. | 2 Silver | Ward Alchemy |
| Anti-Venom | Cleanse_Poison | Yes | 30 | Removes poison effects. | 85 Copper | Herbal Alchemy |
| Curse Cleanser | Cleanse_Curse | Yes | 20 | Removes curse effects. | 2 Silver | Arcane Alchemy |
| Veil Purge Draught | Cleanse_Veil | Yes | 15 | Purges Veil contamination stacks. | 3 Silver | Veilfront Alchemy |
| Water Breathing Draught | Explore_WaterBreath | Yes | 15 | Enables underwater breathing for expeditions. | 2 Silver | Reef Alchemy |
| Night Sight Elixir | Explore_NightSight | Yes | 20 | Improves vision in dark ruins and caves. | 1 Silver | Exploration Alchemy |
| Relic Awareness Potion | Explore_RelicSense | Yes | 15 | Reveals nearby relic signatures briefly. | 3 Silver | Relic Lab |
| Heatguard Tonic | Explore_HeatGuard | Yes | 20 | Increases heat mitigation. | 1 Silver | Canyon Alchemy |
| Coldguard Tonic | Explore_ColdGuard | Yes | 20 | Increases cold mitigation. | 1 Silver | Frostpeak Alchemy |

## Blueprints / Recipe Items

These use `Blueprint` or `CraftsItem` effects.

- Blueprint: Reinforced Hull
- Blueprint: Storm Sails
- Blueprint: Wardsteel Blade
- Blueprint: Froststeel Armor
- Blueprint: Relic Scanner
- Blueprint: Aether Compass
- Blueprint: Pirate Smuggler Hold
- Blueprint: Ancient Portal Key

## Skill Books

Skill books may teach skills, grant skill points, start quests, and unlock abilities.

- Manual of Swordsmanship
- Beginner's Guide to Navigation
- Treatise on Relic Recovery
- Witchwood Herbal Primer
- Frostpeak Mining Notes
- Pirate Boarding Manual
- Gnomish Engineering Handbook
- Wardkeeper Prayer Book
- Forbidden Veil Codex

## Player Shop Items

| Item | Shop Slots | Shop Mob Template | Shop Tag | Number of Shops | Shop Timeout | Destroy on Logout |
| --- | --- | --- | --- | --- | --- | --- |
| Market Stall License | 12 | Human_Market_Stall | market_stall | 1 | 48h | No |
| Merchant Cart Deed | 20 | Cart_Merchant_Mob | merchant_cart | 1 | 72h | No |
| Pirate Black Market Stall | 14 | Pirate_Black_Stall | black_market | 1 | 48h | No |
| Dockside Vendor Permit | 16 | Dock_Vendor_Mob | dock_vendor | 1 | 72h | No |
| Traveling Trader Contract | 18 | Trader_Roaming_Mob | travel_trader | 1 | 24h | Yes |

## Land Claim Items

Uses `CreateClaim` and `ClaimObject` effects for settlements, guild halls, crafting stations, ports, and political control.

- Small Land Claim Deed
- Guild Hall Claim Deed
- Dock Claim Deed
- Workshop Claim Deed
- Farm Claim Deed

## Item Requirement Examples

Requirement Types:

- Level
- Skill
- Race
- Class
- Stat
- Guild Level

| Item | Requirement Type | Example Requirement |
| --- | --- | --- |
| Paladin Warhammer | Level, Race, Class | Requires Level 20 Human Paladin |
| Frostplate Armor | Stat | Requires Endurance 40 |
| Relic Scanner | Skill | Requires Engineering 10 |
| Forbidden Veil Codex | Class/Attunement | Requires Witch class or Veil Attunement |
| Reef Cutlass | Class/Reputation | Requires Pirate class or Reef Corsair reputation Friendly |
| Guild Hall Claim Deed | Guild Level | Requires Guild Level 3 |

## Materials

| Category | Materials |
| --- | --- |
| Ores | Iron Ore, Silver Ore, Gold Ore, Froststeel Ore, Ancient Alloy Fragment |
| Wood | Softwood, Hardwood, Witchwood Branch, Ship Timber |
| Herbs | Healing Herb, Mana Bloom, Desert Bloom, Frostcap Mushroom, Witchroot |
| Monster Parts | Goblin Ear, Dragon Scale, Leviathan Scale, Scorpion Stinger, Cobra Venom Sac, Treant Bark, Demon Horn, Veil Heart |
| Ancient Materials | Relic Shard, Aether Fragment, Ancient Core, Portal Gear, Dimensional Lens |
| Naval Materials | Sailcloth, Rope, Tar, Cannon Fuse, Coral Plate, Ship Nails |

Each material must define stack limit, weight, sell value, crafting use, and region source in item templates.

## Quest Items

- Broken Ward Fragment
- Queen Elyra's Seal
- Ancient Map Piece
- Pirate Ledger
- Witchwood Rune
- Frostpeak Mining Charter
- Orc War Banner
- Coral Vault Key
- Sunken Journal
- Portal Stabilizer Core
- Lost Navigator Compass
- Veil-Stained Relic

Quest item default rules:

- Bind on Pickup
- Unique where appropriate
- Not sellable
- Not auction sellable
- Low or zero death loss chance

## Bags

- Traveler's Satchel
- Merchant Pack
- Miner's Pack
- Ship Captain's Locker
- Relic Hunter's Bag
- Alchemist Pouch
- Smuggler's Hidden Bag

Bag templates use slot count in place of stack size, plus weight, sellable flags, auction flags, currency, and purchase cost.

## Junk Items

- Bent Spoon
- Broken Blade
- Cracked Goblin Charm
- Rusted Gear
- Torn Sailcloth
- Burnt Bone
- Cracked Shell
- Dented Mug
- Old Boot
- Splintered Shield

Junk rules:

- sellable for low value
- drops from mobs/chests
- supports economy flavor and vendor loops

## Planned Containers / Chests

- Wooden Chest
- Pirate Lockbox
- Ancient Vault Cache
- Coral Chest
- Witchwood Coffer
- Frostpeak Strongbox
- Veil-Tainted Chest
- Mimic Chest

Container notes:

- some are loot containers
- some are hostile entities (Mimic Chest)
- some require keys
- some require skill checks

---

## Related Documents


## Suggested Reading
- Previous: [Item Master List (Atavism X 9)](item_master_list.md)
- Next: [Equipment and Slots (Atavism X 9)](equipment_and_slots.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
