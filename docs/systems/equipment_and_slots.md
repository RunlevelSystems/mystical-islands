[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Equipment and Slots (Atavism X 9)

---

# Equipment and Slots (Atavism X 9)
## Equipment Technical Setup

Characters and mobs must include:

- `AtavismMobAppearance` script
- assigned slot bones/sockets
- Main Hand socket
- Off Hand socket
- armor display sockets as needed per race rig

### Equipment Display Prefabs

- stored in `Resources/Content/EquipmentDisplay`
- duplicate an existing display prefab as template
- assign the intended item model
- connect the prefab in the item `Equipment Display` field

### Ground Prefabs

- used for dropped world representations
- must be configured for pickup readability
- must match intended visual scale per item family

## Master Weapon List

| Item Name | Type | Subtype | Slot | Damage | Delay | Currency | Cost | Quality | Binding | Skill Exp | Effects |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Iron Longsword | Weapon | Sword | Main Hand | 16-24 | 1.8 | Silver | 120 | Common | None | +2 Sword | Balanced melee profile |
| Training Sword | Weapon | Sword | Main Hand | 8-12 | 1.9 | Copper | 35 | Common | None | +1 Sword | Starter training weapon |
| Wardguard Blade | Weapon | Sword | Main Hand | 24-34 | 1.7 | Ward Sigils | 180 | Rare | Bind on Equip | +3 Sword | Passive ward resistance |
| Knight's Shield | Weapon | Shield | Off Hand | 4-7 | 2.0 | Silver | 160 | Uncommon | None | +2 Shield | +Parry, defensive stance |
| Paladin Warhammer | Weapon | Hammer | Main Hand | 28-40 | 2.4 | Gold | 320 | Rare | Bind on Equip | +3 Hammer | Bonus vs corrupted enemies |
| Kingdom Spear | Weapon | Spear | Main Hand | 18-28 | 2.1 | Silver | 140 | Uncommon | None | +2 Spear | Reach bonus |
| Reef Cutlass | Weapon | Sword | Main Hand | 20-30 | 1.8 | Doubloons | 95 | Uncommon | None | +2 Sword | Boarding damage bonus |
| Rusted Cutlass | Weapon | Sword | Main Hand | 12-18 | 1.9 | Copper | 28 | Common | None | +1 Sword | Cheap pirate fallback |
| Storm Flintlock | Weapon | Pistol | Main Hand | 22-36 | 2.2 | Doubloons | 210 | Rare | Bind on Equip | +3 Firearms | Uses Bullet ammo |
| Boarding Axe | Weapon | Axe | Main Hand | 24-34 | 2.0 | Doubloons | 155 | Uncommon | None | +2 Axe | Bonus vs ship structures |
| Corsair Dagger | Weapon | Dagger | Main Hand | 14-20 | 1.4 | Silver | 90 | Uncommon | None | +2 Dagger | Backstrike modifier |
| Sandfang Spear | Weapon | Spear | Main Hand | 21-31 | 2.0 | Silver | 150 | Uncommon | None | +2 Spear | Bleed on crit |
| Stormbone Bow | Weapon | Bow | Main Hand | 18-30 | 2.1 | Silver | 185 | Rare | Bind on Equip | +3 Archery | Uses Arrow ammo |
| Reef Hunter Harpoon | Weapon | Harpoon Launcher | Main Hand | 24-38 | 2.3 | Gold | 260 | Rare | Bind on Equip | +3 Harpoon | Uses Harpoon ammo |
| Canyon Knife | Weapon | Dagger | Main Hand | 13-19 | 1.3 | Silver | 75 | Common | None | +1 Dagger | Fast utility blade |
| Iceforge Hammer | Weapon | Hammer | Main Hand | 30-44 | 2.5 | Gold | 340 | Rare | Bind on Equip | +3 Hammer | Frost impact proc |
| Miner's Pickaxe | Weapon | Pickaxe | Main Hand | 12-18 | 2.0 | Silver | 65 | Common | None | +2 Mining | Tool-combat hybrid |
| Froststeel Axe | Weapon | Axe | Main Hand | 27-39 | 2.2 | Gold | 300 | Rare | Bind on Equip | +3 Axe | Armor sundering hit |
| Dragonbone Maul | Weapon | Maul | Main Hand | 36-52 | 2.8 | Gold | 520 | Epic | Bind on Pickup | +4 Hammer | Heavy stagger chance |
| Witchwood Bow | Weapon | Bow | Main Hand | 20-32 | 2.0 | Gold | 240 | Rare | Bind on Equip | +3 Archery | Uses Arrow ammo |
| Thornblade | Weapon | Sword | Main Hand | 23-33 | 1.7 | Silver | 210 | Rare | Bind on Equip | +3 Sword | Nature bleed effect |
| Moonlit Staff | Weapon | Staff | Main Hand | 18-28 | 2.2 | Gold | 260 | Rare | Bind on Equip | +3 Channeling | Mana regen passive |
| Forest Dagger | Weapon | Dagger | Main Hand | 15-22 | 1.3 | Silver | 95 | Uncommon | None | +2 Dagger | Stealth crit bonus |
| Arcforge Pistol | Weapon | Pistol | Main Hand | 28-42 | 2.1 | Ancient Cores | 120 | Epic | Bind on Equip | +4 Firearms | Uses Aether Cell |
| Spark Rod | Weapon | Rod | Main Hand | 19-29 | 1.8 | Gold | 220 | Rare | Bind on Equip | +3 Engineering Combat | Chain spark proc |
| Relic Spanner | Weapon | Tool-Blade | Main Hand | 14-21 | 1.7 | Silver | 130 | Uncommon | None | +2 Engineering | Bonus vs constructs |
| Dimensional Resonator | Weapon | Resonator | Main Hand | 32-48 | 2.4 | Ancient Cores | 220 | Legendary | Bind on Pickup | +4 Relic Mastery | Rift pulse ability |
| Bone Wand | Weapon | Wand | Main Hand | 16-26 | 1.7 | Veil Shards | 140 | Rare | Bind on Equip | +3 Hexcraft | Curse amplification |
| Curse Staff | Weapon | Staff | Main Hand | 24-36 | 2.3 | Veil Shards | 260 | Epic | Bind on Pickup | +4 Hexcraft | DoT extension passive |
| Veil Knife | Weapon | Dagger | Main Hand | 19-27 | 1.4 | Veil Shards | 180 | Rare | Bind on Equip | +3 Dagger | Corruption strike proc |
| Shadow Sickle | Weapon | Sickle | Main Hand | 25-37 | 2.0 | Veil Shards | 230 | Epic | Bind on Pickup | +4 Reaping | Health siphon hit |
| Ancient Energy Blade | Weapon | Energy Blade | Main Hand | 34-50 | 1.9 | Ancient Cores | 260 | Legendary | Bind on Pickup | +4 Ancient Weapons | Aether burn effect |
| Portal Pike | Weapon | Pike | Main Hand | 30-44 | 2.2 | Ancient Cores | 245 | Epic | Bind on Pickup | +4 Spear | Teleport lunge proc |
| Aether Rifle | Weapon | Rifle | Main Hand | 36-54 | 2.6 | Ancient Cores | 320 | Legendary | Bind on Pickup | +5 Firearms | Uses Aether Cell |

## Armor Item List

| Item Name | Type | Slot | Quality | Currency | Cost | Binding | Durability | Weight | Effects |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Wardsteel Helm | Armor | Head | Uncommon | Silver | 140 | None | 80 | 4.2 | +Endurance |
| Wardsteel Chestplate | Armor | Chest | Rare | Gold | 260 | Bind on Equip | 110 | 8.8 | +Armor, ward resistance |
| Wardsteel Greaves | Armor | Legs | Uncommon | Silver | 180 | None | 90 | 6.1 | +Stability |
| Wardsteel Boots | Armor | Feet | Uncommon | Silver | 120 | None | 70 | 3.8 | +Movement control |
| Wardsteel Gloves | Armor | Hands | Uncommon | Silver | 105 | None | 65 | 2.9 | +Parry |
| Corsair Hat | Armor | Head | Common | Doubloons | 70 | None | 50 | 1.6 | +Luck |
| Corsair Coat | Armor | Chest | Uncommon | Doubloons | 150 | None | 75 | 4.9 | +Evasion |
| Corsair Boots | Armor | Feet | Common | Doubloons | 85 | None | 55 | 2.3 | +Deck grip |
| Smuggler Gloves | Armor | Hands | Uncommon | Doubloons | 95 | None | 52 | 1.8 | +Stealth handling |
| Reef Captain Belt | Armor | Waist | Rare | Doubloons | 180 | Bind on Equip | 60 | 2.0 | +Cargo efficiency |
| Stormcaller Mask | Armor | Head | Rare | Silver | 170 | Bind on Equip | 72 | 2.7 | +Storm resistance |
| Canyonhide Vest | Armor | Chest | Uncommon | Silver | 145 | None | 74 | 4.1 | +Heat resistance |
| Sandwalker Boots | Armor | Feet | Uncommon | Silver | 110 | None | 58 | 2.4 | +Desert movement |
| Boneguard Bracers | Armor | Hands | Rare | Silver | 130 | Bind on Equip | 62 | 2.2 | +Bleed resist |
| Frostplate Helm | Armor | Head | Rare | Gold | 220 | Bind on Equip | 95 | 4.6 | +Frost resist |
| Frostplate Armor | Armor | Chest | Epic | Gold | 410 | Bind on Equip | 130 | 9.6 | +Armor, +Endurance |
| Miner's Gauntlets | Armor | Hands | Uncommon | Silver | 115 | None | 64 | 2.6 | +Mining skill bonus |
| Dragonhide Boots | Armor | Feet | Rare | Gold | 210 | Bind on Equip | 88 | 3.3 | +Fire resist |
| Witchwood Hood | Armor | Head | Uncommon | Silver | 130 | None | 60 | 1.9 | +Focus |
| Leafwoven Robe | Armor | Chest | Rare | Gold | 240 | Bind on Equip | 78 | 3.8 | +Nature attunement |
| Forest Strider Boots | Armor | Feet | Uncommon | Silver | 125 | None | 57 | 2.1 | +Stealth movement |
| Moonthread Gloves | Armor | Hands | Rare | Silver | 145 | Bind on Equip | 61 | 1.7 | +Cast speed |
| Engineer Goggles | Armor | Head | Rare | Gold | 205 | Bind on Equip | 68 | 1.4 | +Engineering skill |
| Arcforge Coat | Armor | Chest | Rare | Gold | 255 | Bind on Equip | 82 | 4.4 | +Aether handling |
| Utility Gloves | Armor | Hands | Uncommon | Silver | 110 | None | 56 | 1.5 | +Craft speed |
| Relic Harness | Armor | Waist | Epic | Ancient Cores | 90 | Bind on Pickup | 74 | 2.8 | +Relic capacity |
| Coven Hood | Armor | Head | Rare | Veil Shards | 160 | Bind on Equip | 63 | 1.8 | +Hex focus |
| Veil-Touched Robe | Armor | Chest | Epic | Veil Shards | 280 | Bind on Pickup | 86 | 3.9 | +Corruption power |
| Cursebinder Gloves | Armor | Hands | Rare | Veil Shards | 145 | Bind on Equip | 58 | 1.6 | +DoT potency |
| Shadowwrap Boots | Armor | Feet | Rare | Veil Shards | 150 | Bind on Equip | 59 | 1.9 | +Phase step bonus |
| Ancient Surveyor Helm | Armor | Head | Epic | Ancient Cores | 105 | Bind on Pickup | 84 | 3.1 | +Relic scan range |
| Relic Explorer Coat | Armor | Chest | Epic | Ancient Cores | 125 | Bind on Pickup | 90 | 4.7 | +Artifact protection |
| Portal Stabilizer Harness | Armor | Waist | Legendary | Ancient Cores | 180 | Bind on Pickup | 100 | 3.5 | +Portal stability |
| Hollow Veil Plate | Armor | Chest | Corrupted | Veil Shards | 340 | Bind on Pickup | 115 | 8.2 | +Corruption armor, health drain |
| Cursed Bone Helm | Armor | Head | Corrupted | Veil Shards | 210 | Bind on Pickup | 82 | 3.9 | +Fear aura |
| Tainted Wraps | Armor | Hands | Corrupted | Veil Shards | 170 | Bind on Pickup | 68 | 2.1 | +Hex throughput |

## Tool Items

| Tool Item | Subtype | Slot | Durability | Weight | Required Skill | Use Case | Associated System |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Mining Pick | Gathering Tool | Tool | 100 | 4.5 | Mining 1 | Mine ore veins | Gathering/Crafting |
| Lumber Axe | Gathering Tool | Tool | 95 | 4.2 | Logging 1 | Harvest trees and timber | Gathering/Crafting |
| Skinning Knife | Gathering Tool | Tool | 85 | 1.2 | Skinning 1 | Skin creatures for parts | Loot/Skinning |
| Fishing Rod | Gathering Tool | Tool | 90 | 2.4 | Fishing 1 | Catch fish and marine reagents | Survival/Food |
| Salvage Hook | Naval Tool | Tool | 88 | 3.1 | Salvaging 1 | Recover wreck materials | Naval Economy |
| Archaeology Brush | Exploration Tool | Tool | 70 | 0.8 | Archaeology 1 | Excavate relic nodes | Exploration/Relics |
| Relic Scanner | Relic Tool | Tool | 80 | 2.0 | Engineering 10 | Detect hidden relic caches | Exploration/Ancient Tech |
| Repair Hammer | Crafting Tool | Tool | 110 | 3.4 | Smithing 5 | Repair armor and weapons | Durability/Repair |
| Shipwright Hammer | Naval Craft Tool | Tool | 120 | 3.8 | Shipwright 10 | Build and repair ship modules | Naval Crafting |
| Alchemy Kit | Crafting Kit | Tool | 75 | 1.6 | Alchemy 1 | Brew potions and tonics | Alchemy |
| Enchanting Focus | Enchanting Tool | Tool | 85 | 1.7 | Enchanting 1 | Apply enchant profiles | Enchanting/Socketing |
| Diving Bell Tool | Exploration Tool | Tool | 65 | 5.2 | Diving 5 | Enable deep reef interaction | Underwater Exploration |
| Coral Chisel | Gathering Tool | Tool | 78 | 2.3 | Reefcraft 1 | Harvest coral plate resources | Naval Materials |
| Cartographer Compass | Navigation Tool | Tool | 92 | 1.1 | Navigation 1 | Improve route discovery and mapping | Exploration/Naval |

## Ammo Type Options

- Arrow
- Bolt
- Bullet
- Cannonball
- Harpoon
- Fire Bomb
- Frost Charge
- Storm Charge
- Aether Cell

## Ammo Items

| Ammo Item | Ammo Type | Damage | Stack Limit | Weight | Currency | Cost | Quality | Compatible Weapons |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Wooden Arrow | Arrow | +2 | 250 | 0.02 | Copper | 1 | Common | Bows |
| Iron Arrow | Arrow | +4 | 250 | 0.03 | Copper | 2 | Uncommon | Bows |
| Witchwood Arrow | Arrow | +6 | 200 | 0.03 | Silver | 3 | Rare | Witchwood/long bows |
| Crossbow Bolt | Bolt | +5 | 220 | 0.03 | Silver | 3 | Uncommon | Crossbows |
| Lead Bullet | Bullet | +6 | 180 | 0.04 | Silver | 4 | Uncommon | Flintlocks, pistols |
| Storm Bullet | Bullet | +8 | 180 | 0.04 | Gold | 6 | Rare | Storm Flintlock, arc pistols |
| Cannonball | Cannonball | +20 | 40 | 1.20 | Gold | 14 | Rare | Ship cannons |
| Chain Shot | Cannonball | +16 | 30 | 1.10 | Gold | 16 | Rare | Ship cannons (anti-sail) |
| Harpoon Bolt | Harpoon | +9 | 120 | 0.09 | Silver | 8 | Uncommon | Harpoon launchers |
| Explosive Harpoon | Harpoon | +14 | 80 | 0.12 | Gold | 15 | Epic | Heavy harpoon launchers |
| Aether Cell | Aether Cell | +12 | 100 | 0.06 | Ancient Cores | 3 | Epic | Arcforge and ancient rifles |

---

## Related Documents


## Suggested Reading
- Previous: [Item Effects and Requirements (Atavism X 9)](item_effects_and_requirements.md)
- Next: [Mystical Isles Merchant System (Atavism X 9)](merchant_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
