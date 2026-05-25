# Items

Single consolidated items and equipment reference covering weapons, armor, consumables, crafting materials, ammo, tools, sockets, enchants, rarity, and loot flow.

Atavism structures, SQL terminology, field meaning references, and balancing structures are preserved.

---

## Consolidated Sourcebook

This page consolidates and preserves existing Mystical Islands documentation in one centralized reference.

### Source: `docs/items-and-equipment.md`

# Items & Equipment

Items and equipment form the economic and combat backbone of Mystical Isles. This page centralizes the major item families, rarity structure, progression tiers, and design expectations for weapons, armor, consumables, materials, and special relics.

---

## Design Goals

- Items should support identity, not just stats.
- Equipment should feel tied to islands, factions, and threats.
- Crafting materials should matter in the economy.
- Rare gear should be exciting without breaking progression.
- Loot should always suggest a story.

---

## Item Families

### Weapons
- swords, axes, spears, bows, daggers, staves, wands, shields, and future naval weapons
- each weapon family should support a distinct combat feeling
- damage profiles should be easy to understand at a glance

### Armor
- cloth, leather, mail, plate, ceremonial gear, faction gear, and specialized resistance sets
- armor should trade off mobility, mitigation, and magical protection

### Consumables
- food, drinks, potions, tonics, bandages, bombs, scrolls, and temporary buffs
- consumables should support both exploration and combat

### Materials
- ore, wood, cloth, leather, herbs, gems, monster parts, relic fragments, and salvage
- materials should drive crafting, trade, and quest completion

### Magical Artifacts
- relics, ward stones, ancient tools, royal seals, reactor shards, and Veil-touched items
- these are rare, story-linked, and usually tied to discovery or faction progress

### Tools and Utility Items
- fishing rods, mining picks, lock tools, lanterns, maps, compasses, salvage kits, and camping supplies
- utility items should make exploration feel richer and more grounded

### Ammo and Supports
- arrows, bolts, thrown charges, traps, and special powders
- ammunition can be basic, elemental, or faction-specific

### Currencies
- common coinage for trade
- faction tokens
- relic currency
- event or reputation currency

---

## Equipment Slots

Typical equipment structure:

- main hand
- off hand
- head
- chest
- hands
- legs
- feet
- trinket 1
- trinket 2
- cloak or mantle
- weapon swap slot
- bag or utility slot

Slots can be adjusted by the final technical implementation, but the design should remain modular.

---

## Rarity Tiers

| Rarity | Color Feel | Design Meaning |
|---|---|---|
| Common | plain | reliable starter gear |
| Uncommon | tinted | improved base item |
| Rare | bright | clear build choice |
| Epic | dramatic | strong identity item |
| Legendary | iconic | quest or world-defining reward |
| Relic | ancient | tied to history, factions, or hidden lore |

Rarity should affect more than numbers. It should affect story and desirability.

---

## Progression Tiers

| Tier | Purpose | Example |
|---|---|---|
| Tier 1 | starter gear | mainland equipment |
| Tier 2 | regional gear | island-craft items |
| Tier 3 | specialist gear | faction or dungeon drops |
| Tier 4 | veteran gear | elite dungeon and quest rewards |
| Tier 5 | endgame gear | relics, bosses, hidden content |

These tiers help keep region rewards readable.

---

## Cost and Value Philosophy

Item pricing should scale by usefulness, rarity, and source.

General value guidance:

- basic food and repair items should be cheap
- travel supplies should be affordable but never free
- crafting reagents should vary by region
- faction gear should require reputation, not just money
- relics should often require both currency and story progress
- black market goods should cost more and carry social risk

Example price bands:

| Item Type | Typical Cost Band |
|---|---:|
| Common consumable | very low |
| Basic weapon | low |
| Regional armor | moderate |
| Rare crafted item | high |
| Legendary relic | very high |

---

## Effects and Bonuses

Equipment and items can grant:

- damage increases
- healing bonuses
- resistance bonuses
- movement bonuses
- crafting bonuses
- gathering bonuses
- reputation modifiers
- faction access
- travel quality-of-life effects
- skill-specific improvements

The best items should create new play patterns, not only larger numbers.

---

## Damage and Resistance Links

Weapons and magical items should connect directly to the world’s combat logic.

Possible damage types:

- physical
- fire
- frost
- lightning
- poison
- shadow
- holy
- arcane
- bleed or trauma

Possible resistance types:

- armor mitigation
- elemental resistance
- status resistance
- corruption resistance
- naval or environmental resistance

---

## Crafting and Loot Notes

- Rare materials should come from meaningful enemies or risky regions.
- Bosses should drop signature components for themed gear.
- Some items should only appear through faction vendors or hidden buyers.
- Certain relics should be unique enough to become world rumors.
- Gear sets should reinforce the island or faction where they are found.

---

## Item Storytelling

Every good item should suggest one of these ideas:

- who made it
- where it was found
- which faction wants it
- what creature dropped it
- what ancient function it once served
- why it matters now

That is how loot becomes worldbuilding.

---

### Source: `docs/systems/items_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles Items System (Atavism X 9)

---

# Mystical Isles Items System (Atavism X 9)
This is the master production specification for Mystical Isles items using the Atavism X 9 item model and database fields.

## Purpose

The item system must simultaneously support:

- combat
- crafting
- quests
- economy
- faction rewards
- skill progression
- naval gameplay
- exploration
- treasure hunting
- political progression
- player identity
- loot tables
- merchant tables
- starting equipment
- socketing
- enchanting
- death loss
- durability
- bag/storage systems

## Atavism X 9 Production Scope

Mystical Isles item data is authored as database-ready records with consistent field usage so designers can wire:

- item templates
- drop/loot tables
- merchant tables
- quest rewards
- crafting outputs
- faction vendor catalogs
- starting template loadouts

## Design Rules

### Items should

- reinforce race/class identity
- support exploration loops and discovery rewards
- support gathering/crafting pipelines
- support faction and reputation progression
- support economy circulation and price bands
- support naval combat and ship progression
- support political and settlement progression
- support quest progression and narrative gating
- remain database-ready for Atavism content pipelines

### Items should not

- exist only as generic filler
- create runaway vertical power scaling
- ignore weight and encumbrance expectations
- ignore currency and market value
- ignore death loss risk profiles
- ignore binding and trade control
- ignore crafting, loot, and merchant integrations

## Item Lifecycle in Mystical Isles

| Lifecycle Stage | System Owner | Item Use |
| --- | --- | --- |
| Acquisition | Loot, merchants, quests, crafting, faction vendors | Introduce scarcity and progression pacing |
| Ownership | Binding + unique + stack logic | Control market flow and role identity |
| Active Use | Combat, utility, world interaction, claims, shops | Drive gameplay outcomes |
| Maintenance | Durability, repair, death loss, replacement loops | Sustain economy and long-term demand |
| Conversion | Selling, auctioning, crafting input, salvage | Keep item circulation active |

## Cross-Document Index

- [Item Types Reference] (./item_types_reference.md)
- [Equipment and Slots] (./equipment_and_slots.md)
- [Item Effects and Requirements] (./item_effects_and_requirements.md)
- [Item Master List] (./item_master_list.md)

---

## Related Documents


## Suggested Reading
- Previous: [Currency System] (currency_system.md)
- Next: [Item Types Reference (Atavism X 9)] (item_types_reference.md)

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

### Source: `docs/systems/item_effects_and_requirements.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

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
- Previous: [Item Master List (Atavism X 9)] (item_master_list.md)
- Next: [Equipment and Slots (Atavism X 9)] (equipment_and_slots.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/equipment_and_slots.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

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
- Previous: [Item Effects and Requirements (Atavism X 9)] (item_effects_and_requirements.md)
- Next: [Mystical Isles Merchant System (Atavism X 9)] (merchant_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/reward_profiles.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Reward Profiles

---

# Reward Profiles
## Reward Design Philosophy

Rewards should be meaningful, memorable, immersive, and socially visible.

| Principle | Design Outcome |
| --- | --- |
| Meaningful | Rewards unlock opportunity, not only power |
| Memorable | Milestones are ceremonial and narrative |
| Immersive | Factions and discoveries are referenced directly |
| Socially visible | Progress is recognized by players and institutions |

---

## Atavism Reward Profile Bands

| Level Range | Reward Mail | Skill Points | Talent Points | Item/Ability Rewards | Unlocks |
| --- | --- | --- | --- | --- | --- |
| 1–10 | Every 2 levels | Frequent | First at 10 | Starter kits and utility abilities | Intro faction and map access |
| 11–30 | Milestone + key quests | Regular | Every 5 levels | Specialization tools and profession sets | Naval routes and faction pathways |
| 31–50 | Milestone-centric | Moderate | Every 4 levels | Signature abilities and elite tools | Leadership and political systems |
| 50+ | Ceremony-based | Sparse/impactful | Prestige talents | Legacy cosmetics and symbolic artifacts | Influence offices and legend contracts |

---

## Milestone Reward Structure

| Level | Milestone Rewards | Intent |
| --- | --- | --- |
| 5 | Skill points, beginner faction item | Establish belonging |
| 10 | Talent point unlock, first specialization choice | Identity commitment |
| 20 | Naval system unlock, advanced crafting access | Strategic role growth |
| 30 | Faction leadership opportunities | Social advancement |
| 40 | Political influence systems | Governance relevance |
| 50 | Legendary recognition systems | World-visible prestige |

---

## Skill & Talent Rewards

| Reward Type | Purpose |
| --- | --- |
| Skill points | Build flexibility and adaptation |
| Talent points | Reinforce specialization identity |
| Milestone talents | Unlock role-defining capabilities |
| Hybrid support nodes | Keep mixed builds viable |

---

## Reward Mail System

### Subject Templates

- Congratulations, {PLAYER_NAME}
- The Isles Recognize Your Growth
- Your Reputation Expands
- A Message From The Ward Council

### Mail Trigger Matrix

| Trigger | Subject Pattern | Message Tone | Attachments |
| --- | --- | --- | --- |
| Level milestone | Congratulations, {PLAYER_NAME} | Personal and celebratory | Skill/talent rewards, ceremonial token |
| Reputation tier | The Isles Recognize Your Growth | Formal and institutional | Faction permits, standing marks |
| Discovery milestone | Your Reputation Expands | Exploratory and historic | Chart marks, relic clues |
| Political unlock | A Message From The Ward Council | Weighty and civic | Influence writ, office invitation |

### Example Mail — Level 10

**Subject:** Congratulations, {PLAYER_NAME}  
**Message:**

> Harbor records now list your name among rising expeditioners.  
> Enclosed is your specialization writ and your first formal talent allocation.  
> Choose carefully; the Isles remember first vows.

### Example Mail — Level 30

**Subject:** The Isles Recognize Your Growth  
**Message:**

> Reports from multiple ports confirm your service in dangerous waters and faction operations.  
> You are now eligible to stand for operational leadership opportunities.  
> This is not privilege. It is responsibility.

### Example Mail — Level 50

**Subject:** A Message From The Ward Council  
**Message:**

> {PLAYER_NAME}, your reputation now carries regional consequence.  
> You are recognized as a legendary citizen of the Isles, with authority to influence trade, security, and policy.  
> Use this standing wisely. History has begun recording your name.

---

## Reward Guardrails

| Do | Avoid |
| --- | --- |
| Tie rewards to identity and role | Endless gear inflation |
| Use lore-grounded milestone messaging | Generic progression text |
| Make rewards socially visible | Isolated single-player loops |
| Preserve horizontal growth after 50 | Pure vertical stat creep |

---

## Related Documents


## Suggested Reading
- Previous: [Exploration Systems] (exploration_systems.md)
- Next: You have reached the end of this section path.

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/currency_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Currency System

---

# Currency System
## Purpose

This document defines the production-ready Mystical Isles currency setup using the Atavism X 9 Currency Plugin structure for creation, grouping, conversion, UI display, and gameplay usage.

Currencies support buying, selling, quest rewards, faction rewards, trade routes, smuggling, crafting services, ship upgrades, political systems, reputation vendors, and optional future premium account services.

---

## Atavism Currency Field Reference

| Field | Meaning | Mystical Isles Usage |
| --- | --- | --- |
| Name | Currency display and database name | Use stable, unique names matching lore and vendor/quest references. |
| Max | Maximum stack/value cap per character | Set per currency to control inflation and reward pacing. |
| Group | Currency family container | Organizes denominations/tokens by economy domain (lawful, pirate, faction, etc.). |
| Position | Rank within the group (1-3) | Position 1 = highest denomination, Position 3 = lowest denomination. |
| External | Marks premium/external account currency | Only **Crown Gem** is marked `true`. All other currencies are `false`. |
| Icon | UI icon reference | Every currency must have a dedicated icon for bags, merchants, and reward windows. |
| Description | Player-facing functional description | Use gameplay-specific text for economy role, source, and vendor use. |
| Conversion Amount | Required lower units for conversion | Used for denomination ladders (example: 100 Silver -> 1 Gold). |
| Converts To | Target higher denomination currency | Used only in denomination groups that auto-convert. |
| Auto Convert | Enables automatic denomination conversion | Enabled only for Kingdom Coin and Pirate denomination chains. |

### Group and Position Rules

- Every currency belongs to a **Currency Group**.
- Each currency group supports up to **3 positions**.
- **Position 1** is the highest denomination and **Position 3** is the lowest.
- Only one currency should be marked **External**.
- Sub-currencies can auto-convert in valid denomination chains (for example, Copper -> Silver -> Gold).

---

## Currency Groups

| # | Currency Group | Core Role |
| --- | --- | --- |
| 1 | Kingdom Coin | Default lawful settlement money economy |
| 2 | Pirate Currency | Outlaw, smuggling, and black-market economy |
| 3 | Faction Tokens | Reputation and service-based progression currencies |
| 4 | Ancient Relics | Exploration and pre-Fracturing technology value |
| 5 | Corruption Currency | Forbidden Veil-aligned progression economy |
| 6 | Trade Currency | Merchant, shipping, and settlement commerce systems |
| 7 | Premium Currency | Optional external account-service and cosmetic currency |

---

## Main Standard Money (Kingdom Coin)

| Name | Group | Position | External | Max | Auto Convert | Conversion | Description |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| Gold | Kingdom Coin | 1 | false | 999999 | false | N/A | Main high-value standard currency used across lawful settlements. |
| Silver | Kingdom Coin | 2 | false | 999999 | true | 100 Silver = 1 Gold | Mid-value lawful currency for common trade and services. |
| Copper | Kingdom Coin | 3 | false | 999999 | true | 100 Copper = 1 Silver | Low-value lawful currency for everyday local transactions. |

Gold/Silver/Copper is the primary player-facing money shown in main bag and merchant UI.

### Technical Note

- Main currency prefab must be assigned in the **Inventory** component on the **Scripts** prefab in **AtavismObjects**.
- Currency prefabs should be stored in `Resources/Content/Currencies`.

---

## Pirate Currency

| Name | Group | Position | External | Max | Auto Convert | Conversion | Description |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| Doubloon | Pirate Currency | 1 | false | 250000 | false | N/A | High-value pirate coin used in pirate ports, black markets, smuggling dens, and outlaw settlements. |
| Black Mark | Pirate Currency | 2 | false | 999999 | true | 100 Black Marks = 1 Doubloon | Common pirate trade token used for smuggling, bribes, gambling, and illegal goods. |
| Salt Token | Pirate Currency | 3 | false | 999999 | true | 100 Salt Tokens = 1 Black Mark | Low-value pirate currency used by sailors, dockhands, and smugglers. |

Use Pirate Currency for pirate vendors, smuggling quests, black-market gear, outlaw services, ship contraband, and hidden ports.

---

## Faction Tokens

Faction tokens should generally **not** auto-convert because they represent loyalty and service, not standard money.

| Name | Group | Position | External | Max | Auto Convert | Conversion | Description |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| Ward Sigil | Faction Tokens | 1 | false | 50000 | false | N/A | Earned from Kingdom and Wardkeeper service. Used for holy gear, Ward upgrades, titles, and lawful political advancement. |
| Frost Rune | Faction Tokens | 2 | false | 50000 | false | N/A | Earned from Frostpeak Clan missions. Used for dwarven crafting, mining access, forge recipes, and mountain faction rewards. |
| Witchwood Leafmark | Faction Tokens | 3 | false | 50000 | false | N/A | Earned from Elven and Witchwood quests. Used for nature magic, forest gear, relic access, and hidden enclave services. |

Because Atavism currency groups only support 3 positions, additional faction currencies should use new groups.

### Future Optional Faction Groups

- Orc War Tokens
- Gnome Engineering Notes
- Pirate Reputation Currency

---

## Ancient Relics

| Name | Group | Position | External | Max | Auto Convert | Conversion | Description |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| Ancient Core | Ancient Relics | 1 | false | 25000 | false | N/A | Rare ancient technological core used for relic restoration, portal devices, ancient machines, and high-tier crafting. |
| Relic Shard | Ancient Relics | 2 | false | 99999 | false | N/A | Fragment of pre-Fracturing technology found in ruins, vaults, and ancient machines. |
| Aether Fragment | Ancient Relics | 3 | false | 99999 | false | N/A | Small unstable energy fragment used for enchantments, Ward devices, and portal stabilization. |

Use Ancient Relics for ancient technology crafting, relic vendors, portal repair, high-value exploration rewards, and dungeon discoveries.

---

## Corruption Currency

| Name | Group | Position | External | Max | Auto Convert | Conversion | Description |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| Veil Heart | Corruption Currency | 1 | false | 25000 | false | N/A | Dangerous concentrated Veil corruption used by witches, cults, and forbidden crafting systems. |
| Veil Shard | Corruption Currency | 2 | false | 99999 | false | N/A | Common corruption fragment dropped by Veil creatures and corrupted events. |
| Cursed Ash | Corruption Currency | 3 | false | 99999 | false | N/A | Residue from corrupted lands, cursed enemies, and failed rituals. |

Use Corruption Currency for forbidden magic, curse crafting, witch vendors, Veil faction rewards, and dangerous trade systems.

> Warning: Corruption currencies should not behave like normal money; later systems may tie possession/use to faction reputation, corruption stats, or NPC reactions.

---

## Trade Currency

| Name | Group | Position | External | Max | Auto Convert | Conversion | Description |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| Merchant Writ | Trade Currency | 1 | false | 100000 | false | N/A | High-value trade authorization used for merchant guild contracts, ports, large shipments, and settlement trade agreements. |
| Trade Mark | Trade Currency | 2 | false | 999999 | false | N/A | Standard merchant token earned through trade contracts, shipping, crafting orders, and economy quests. |
| Dock Token | Trade Currency | 3 | false | 999999 | false | N/A | Low-level port service token used for docking, cargo handling, ferry services, and minor ship repairs. |

Use Trade Currency for shipping contracts, merchant guild vendors, port services, legal trade routes, caravan systems, and settlement commerce.

---

## Premium / External Currency

| Name | Group | Position | External | Max | Auto Convert | Conversion | Description |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| Crown Gem | Premium Currency | 1 | true | 999999 | false | N/A | Optional external premium currency for future account services, cosmetics, convenience unlocks, or supporter rewards. |

Only **Crown Gem** is marked **External**.

### Premium Policy

| Allowed Future Uses | Avoid |
| --- | --- |
| Cosmetics | Direct player power |
| Account services | Best-in-slot gear sales |
| Name changes | Faction dominance purchases |
| Appearance changes | Political pay-to-win mechanics |
| Pets, mounts, decorations | Any direct combat advantage |
| Non-combat convenience | Progression bypass that breaks fairness |

Crown Gems must remain non-pay-to-win.

---

## Conversion Rules

Use auto-conversion only in true denomination systems.

| Group | Conversion Chain | Auto Convert |
| --- | --- | --- |
| Kingdom Coin | 100 Copper = 1 Silver; 100 Silver = 1 Gold | Yes |
| Pirate Currency | 100 Salt Tokens = 1 Black Mark; 100 Black Marks = 1 Doubloon | Yes |
| Faction Tokens | None | No |
| Ancient Relics | None | No |
| Corruption Currency | None | No |
| Trade Currency | None | No |
| Premium Currency | None | No |

---

## Currency Usage Table

| Currency | Used For | Earned From | Vendors |
| --- | --- | --- | --- |
| Gold | Lawful settlements, ship upgrades, major purchases | Trade, quests, lawful commerce | Kingdom merchants, shipwrights, civic vendors |
| Silver | Standard daily lawful transactions | Quest payouts, item sales, contracts | General merchants, innkeepers, crafters |
| Copper | Basic travel and local services | Early quests, low-tier sales | Local stalls, ferry points, service NPCs |
| Doubloon | High-end outlaw purchases and contraband | Pirate raids, smuggling milestones | Pirate port elites, black market captains |
| Black Mark | Core pirate exchange and illegal services | Smuggling jobs, pirate contracts, gambling | Black market dealers, outlaw brokers |
| Salt Token | Low-tier pirate economy and dockside trade | Dock labor, petty piracy, low-risk smuggling | Hidden-port vendors, dock smugglers |
| Ward Sigil | Lawful faction rewards and political advancement | Wardkeeper duties, Kingdom service | Ward quartermasters, lawful reputation vendors |
| Frost Rune | Dwarven crafting and mountain access | Frostpeak missions, mining service | Frostpeak forgemasters, clan vendors |
| Witchwood Leafmark | Elven nature magic and enclave access | Witchwood quests, relic tasks | Enclave keepers, druidic vendors |
| Ancient Core | Relic restoration and high-tier ancient crafting | Deep ruins, vault completions | Relic engineers, portal restorers |
| Relic Shard | Ancient component exchange and upgrades | Ruin exploration, dungeon events | Relic salvagers, archive vendors |
| Aether Fragment | Enchantments and stabilization materials | Ancient nodes, unstable events | Arcane technicians, ward engineers |
| Veil Heart | Forbidden crafting and cult exchanges | High-risk corruption content | Cult quartermasters, forbidden traders |
| Veil Shard | Corruption progression purchases | Veil creatures, corruption events | Witch vendors, Veil outposts |
| Cursed Ash | Entry-level corruption crafting | Corrupted zones, ritual fallout | Dark alchemists, cursed brokers |
| Merchant Writ | Major guild contracts and logistics rights | Trade milestones, convoy completion | Merchant guild officers, port authorities |
| Trade Mark | Standard commerce progression | Shipping contracts, crafting orders | Guild merchants, contract stewards |
| Dock Token | Port services and minor repairs | Dock tasks, delivery turn-ins | Harbor masters, ferry and dock services |
| Crown Gem | Cosmetics and optional account services | External account purchases or supporter grants | Premium services NPC/store integration |

---

## Economy Design Rules

- **Gold/Silver/Copper** is the default lawful economy.
- **Pirate Currency** runs the illegal and outlaw economy.
- **Faction Tokens** represent service, loyalty, and faction reputation pathways.
- **Ancient Relics** represent exploration and pre-Fracturing technology value.
- **Corruption Currency** represents forbidden power and risky progression.
- **Trade Currency** supports merchant guild, shipping, and naval commerce systems.
- **Crown Gems** are optional external premium currency only, never pay-to-win.

---

## UI and Technical Notes

- Currency prefabs should exist in `Resources/Content/Currencies`.
- Icons must be assigned for every currency.
- Main currency must be assigned in the Inventory component on the Scripts prefab in AtavismObjects.
- After creation, currencies become available in dropdowns for Items, Quests, Merchants, and other Atavism plugins.
- Avoid renaming currencies once database implementation starts.
- Keep currency names stable, unique, and database-safe.

---

## Related Documents


## Suggested Reading
- Previous: [Effects System] (effects_system.md)
- Next: [Mystical Isles Items System (Atavism X 9)] (items_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/economy_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / 📈 Economy System

---

# 📈 Economy System
## Overview
The economy links combat rewards, gathering output, crafted goods, and faction demand into a coherent progression loop.

## Gameplay Purpose
Ensure every playstyle contributes value to world progression and market flow.

## Player Experience Goals
- stable early economy
- profitable specialization routes
- visible supply/demand changes by region

## Technical Notes
Economic systems require synchronized drop tables, vendor sinks, and crafting costs.

## Implementation Notes
MVP economy focuses on predictable local loops in one city + nearby exploration zones.

## Examples
- dungeon salvage sold to specialist buyers
- gathered materials converted into high-demand consumables

## Production Priority
**P0 simplified local economy, P2 inter-island trade complexity.**

---

## Related Documents


## Suggested Reading
- Previous: [🛠 Crafting System] (crafting_system.md)
- Next: [Mystical Isles — Building & Claims System] (building_and_claims_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---
