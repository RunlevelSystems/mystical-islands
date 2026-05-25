[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Damage Types & Resistances

---

# Damage Types & Resistances
This document defines the complete Mystical Isles damage, resistance, power, accuracy, evasion, critical, and mitigation model for Atavism X 9 configuration.

---

## Core Design Philosophy

Damage in Mystical Isles is both numbers and world identity:

- weapon style and cultural combat traditions
- creature biology and regional ecology
- magical schools and Ward/Veil conflict
- naval warfare and faction doctrines
- ancient technology and corruption risk

Player-facing rules stay readable:

- armor helps against physical weapon damage
- wards and willpower protect against Veil/curses
- environmental gear matters by region
- storm resistance matters at sea
- Ancient Energy is rare and partially defense-bypassing

---

## Part 1 — Atavism Damage Type Overview

In Atavism, each damage type should be configured with:

| Required Field | Purpose |
| --- | --- |
| Name | Damage channel shown in design/database setup |
| Resistance Stat | Target mitigation stat for that channel |
| Power Stat | Attacker scaling stat |
| Accuracy Stat | Attacker hit reliability |
| Evasion Stat | Target avoidance stat |
| Crit Chance Stat | Chance to trigger critical damage |
| Crit Power Stat | Critical damage multiplier strength |

### Simplified Calculation Flow (Designer Language)

1. Base damage starts from weapon/ammo/creature/effect values.  
2. Skill level adds scaling where relevant.  
3. Power stat increases damage output.  
4. Hit roll adds controlled variance.  
5. Target resistance mitigates incoming damage.  
6. Damage dealt/taken modifiers apply.  
7. Critical chance and crit power may amplify the hit.  
8. Special effects can add bonus damage layers.  
9. Parry can reduce the final hit.  
10. PvP reduction applies in player-vs-player contexts.  
11. Shields and triggered effects modify delivered damage.  

---

## Part 2 — Damage Type Master Table

| Damage Type | Category | Resistance Stat | Power Stat | Accuracy Stat | Evasion Stat | Crit Chance Stat | Crit Power Stat | Used By |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Slash | Physical | slash_resistance | strength | dexterity | physical_evasion | physical_crit | physical_crit_power | Swords, axes, claws, cutlasses |
| Pierce | Physical | pierce_resistance | dexterity | dexterity | physical_evasion | physical_crit | physical_crit_power | Bows, spears, pistols, muskets |
| Crush | Physical | crush_resistance | strength | dexterity | physical_evasion | physical_crit | physical_crit_power | Hammers, maces, heavy beasts |
| Fire | Elemental | fire_resistance | potential | intelligence | magical_evasion | magical_critic | magical_crit_power | Flame spells, bombs, dragon breath |
| Frost | Elemental | frost_resistance | potential | intelligence | magical_evasion | magical_critic | magical_crit_power | Frostpeak magic, ice relics |
| Storm | Elemental | storm_resistance | potential | intelligence | magical_evasion | magical_critic | magical_crit_power | Lightning spells, storm relics |
| Nature | Elemental | nature_resistance | potential | willpower | magical_evasion | magical_critic | magical_crit_power | Witchwood magic, thorns, toxins |
| Arcane | Magical | arcane_resistance | intelligence | intelligence | magical_evasion | magical_critic | magical_crit_power | Mages, relic scholars |
| Ward | Magical | ward_resistance | willpower | willpower | magical_evasion | magical_critic | magical_crit_power | Paladins, Ward Keepers |
| Shadow | Magical | shadow_resistance | potential | willpower | magical_evasion | magical_critic | magical_crit_power | Witches, assassins, cultists |
| Curse | Magical | curse_resistance | willpower | willpower | magical_evasion | magical_critic | magical_crit_power | Ritualists, cursed artifacts |
| Veil | Special | veil_resistance | willpower | willpower | magical_evasion | magical_critic | magical_crit_power | Veil entities, corruption zones |
| Ancient Energy | Special | ancient_resistance | intelligence | intelligence | magical_evasion | ancient_crit | ancient_crit_power | Relics, pre-Fracturing tech |
| Poison | Special | poison_resistance | dexterity | dexterity | physical_evasion | physical_crit | physical_crit_power | Assassins, spiders, snakes |
| Bleed | Special | bleed_resistance | dexterity | dexterity | physical_evasion | physical_crit | physical_crit_power | Blades, claws, spears |
| Cannon | Naval | cannon_resistance | naval_power | navigation | naval_evasion | naval_crit | naval_crit_power | Ships, forts, siege decks |
| Harpoon | Naval | harpoon_resistance | naval_power | navigation | naval_evasion | naval_crit | naval_crit_power | Sea hunters, ship crews |
| Boarding | Naval | boarding_resistance | strength | dexterity | physical_evasion | physical_crit | physical_crit_power | Pirates, marines, raiders |
| Fall | Environmental | fall_resistance | survival | environmental_resilience | environmental_resilience | — | — | Cliffs, airship failures |
| Drowning | Environmental | drowning_resistance | survival | environmental_resilience | environmental_resilience | — | — | Deep water, failed dives |
| Heat | Environmental | heat_resistance | survival | environmental_resilience | environmental_resilience | — | — | Volcanic zones, deserts |
| Cold | Environmental | cold_resistance | survival | environmental_resilience | environmental_resilience | — | — | Frostpeak, blizzards |
| Storm Exposure | Environmental | storm_exposure_resistance | survival | environmental_resilience | environmental_resilience | — | — | Open-sea storms, lightning fronts |

---

## Part 3 — Required Resistance Stats

All listed stats are **Stat Type: Resistance**.

| Stat Name | Purpose | Common Sources | Gear Sources | Creature Examples | Player Usefulness |
| --- | --- | --- | --- | --- | --- |
| slash_resistance | Mitigates bladed cuts | Shield stances, guard passives | Chain, plate, shield enchants | Stone guardians, armored undead | Core melee survivability in camps/boarding |
| pierce_resistance | Mitigates puncture/projectile hits | Defensive formations, anti-ranged buffs | Brigandine, reinforced leather, tower shields | Beetle shells, shield marines | Key against bows, muskets, harpoons |
| crush_resistance | Mitigates blunt trauma | Endurance skills, fortitude buffs | Plate, impact-padded armor | Ogres, golems | Important vs hammers, siege impacts |
| fire_resistance | Mitigates heat/flame damage | Fire ward buffs, consumables | Ashen cloaks, salamander linings | Fire drakes, ember undead | Required in volcanic and bomb-heavy content |
| frost_resistance | Mitigates cold/ice damage | Frost chants, warm-up effects | Frostpeak coats, rune furs | Ice drakes, frost beasts | Enables travel/combat in frozen regions |
| storm_resistance | Mitigates lightning/storm bursts | Storm grounding buffs | Insulated gear, storm sigils | Storm eels, thunder constructs | Critical in naval storms and relic fights |
| nature_resistance | Mitigates root/thorn/wild magic | Druidic tonics, anti-spore effects | Thornproof wraps, herbal kits | Witchwood beasts | Reduces control/damage in forest zones |
| arcane_resistance | Mitigates pure arcane force | Arcane dampening auras | Scholar wards, null-thread robes | Arcane sentinels | Valuable vs mages and portal anomalies |
| ward_resistance | Mitigates Ward/light pressure damage | Faith training, anti-sanctum rites | Sanctified counters, mirror charms | Ward zealots, temple guardians | Helps in faction conflict vs Ward users |
| shadow_resistance | Mitigates shadow assaults | Mental anchoring, anti-fear routines | Moon-silver charms, duskcloth | Shade stalkers | Counters stealth/ambush magic |
| curse_resistance | Mitigates curse DOT/debuff pressure | Cleansing rites, ritual countermarks | Hexproof rings, blessed inks | Coven casters, cursed relic mobs | Reduces long-fight curse attrition |
| veil_resistance | Mitigates Veil damage/corruption pressure | Ward rituals, willpower talents | Ward armor, anti-corruption relics | Veil creatures, breach horrors | Essential for corrupted zones/endgame |
| ancient_resistance | Mitigates Ancient Energy surges | Relic acclimation passives | Relic dampeners, insulated cores | Ancient constructs | Protects from armor-bypassing tech hits |
| poison_resistance | Mitigates poison DOT/heal reduction | Antitoxin training, detox effects | Filter masks, toxin-resistant leather | Spiders, venom serpents | Strong against assassins and jungle hazards |
| bleed_resistance | Mitigates bleed DOT and movement penalty | Battle hardening, coagulation effects | Padded underlayers, stitch kits | Predators, raiders | Needed for sustained melee and pursuits |
| cannon_resistance | Mitigates cannon impact/fragmentation | Naval defense commands | Reinforced hull plating, fort braces | Cannonjaw leviathans (siege hits) | Core ship and coastal defense survivability |
| harpoon_resistance | Mitigates harpoon pierce and tether force | Deck defense drills | Reinforced rigging, anti-tether kits | Reef hunters, whalers | Crucial in sea-hunt and chase encounters |
| boarding_resistance | Mitigates close-quarters naval assault damage | Marine drills, crew discipline | Pirate armor sets, deck guard gear | Pirate captains, marines | Decides ship capture and anti-boarding outcomes |
| fall_resistance | Mitigates fall impact damage | Acrobatics/survival talents | Climbing boots, shock harnesses | Cliff predators adapted to drops | Safer vertical traversal and airship play |
| drowning_resistance | Mitigates oxygen-loss drowning damage | Breath training, swim mastery | Diving helms, rebreather relics | Deepwater hunters | Longer underwater exploration windows |
| heat_resistance | Mitigates environmental heat pressure | Survival camp skills | Desert wraps, cooling charms | Desert beasts | Prevents attrition in hot biomes |
| cold_resistance | Mitigates environmental cold pressure | Survival drills, thermal rituals | Frost gear, lined cloaks | Frost beasts | Prevents attrition in arctic biomes |
| storm_exposure_resistance | Mitigates weather-exposure damage | Survival/navigation synergy | Storm coats, static-dispersion gear | Stormreach fauna | Required for long open-sea voyages |

---

## Part 4 — Power Stats

Reusable power stats for Atavism-compatible scaling:

| Power Stat | Damage Usage | Notes |
| --- | --- | --- |
| strength | Slash, Crush, heavy melee, Boarding | Primary heavy-combat stat |
| dexterity | Pierce, archery/firearms, Harpoon, Bleed application | Precision and puncture stat |
| intelligence | Arcane, Ancient Energy, engineered relic attacks | Scholar/engineer power path |
| willpower | Ward output, curse control, Veil-facing magic | Discipline and anti-corruption path |
| potential | Pure magical scaling and advanced spell effects | Shared caster intensity stat |
| naval_power **(NEW custom stat)** | Cannon, Harpoon, ship weapon and boarding bonuses | Crew/ship offensive scaling |
| survival **(NEW custom stat)** | Environmental damage and mitigation scaling | Expedition preparedness stat |

---

## Part 5 — Accuracy and Evasion Stats

| Stat | Role | Applies To |
| --- | --- | --- |
| dexterity | Primary physical accuracy | Slash, Pierce, Crush, many weapon skills |
| intelligence | Magical accuracy | Arcane and Ancient Energy attacks |
| willpower | Discipline-based magic accuracy | Ward and Curse attacks |
| navigation | Naval weapon accuracy | Cannon and Harpoon attacks |
| perception-stealth | Detection/targeting against hidden enemies | Anti-stealth combat checks |
| physical_evasion | Avoids physical hits | Melee/ranged physical defense |
| magical_evasion | Avoids magical hits | Arcane/Ward/Shadow/Curse/Veil defense |
| naval_evasion **(NEW custom stat)** | Ship maneuver and naval avoidance | Sea-combat evasion |
| environmental_resilience **(NEW custom stat)** | Exposure avoidance/survival hazard mitigation | Fall, drowning, heat/cold/storm exposure |

---

## Part 6 — Critical Stats

| Crit Stat | Applies To |
| --- | --- |
| physical_crit | Slash, Pierce, Crush, Boarding, Harpoon |
| physical_crit_power | Physical critical multiplier |
| magical_critic | Arcane, Ward, Shadow, Curse, Veil |
| magical_crit_power | Magical critical multiplier |
| naval_crit **(NEW custom stat)** | Cannon, Harpoon, ship combat |
| naval_crit_power **(NEW custom stat)** | Naval critical multiplier |
| ancient_crit **(NEW custom stat)** | Ancient weapons and relic overload attacks |
| ancient_crit_power **(NEW custom stat)** | Ancient critical multiplier |

---

## Part 7 — Damage Type Details

### Slash Damage
- **Name:** Slash  
- **Category:** Physical  
- **Atavism resistance stat:** `slash_resistance`  
- **Atavism power stat:** `strength`  
- **Atavism accuracy stat:** `dexterity`  
- **Atavism evasion stat:** `physical_evasion`  
- **Atavism crit chance stat:** `physical_crit`  
- **Atavism crit power stat:** `physical_crit_power`  
- **Gameplay description:** Fast cutting damage representing disciplined melee styles and pirate blade culture.  
- **Common sources:** swords, axes, claws, cutlasses.  
- **Common resistances:** chain armor, plate armor, guard stances.  
- **Strong against:** cloth, unarmored creatures, plant creatures.  
- **Weak against:** heavy armor, stone creatures.  
- **Example abilities:** Cleaving Arc, Corsair Flurry.  
- **Example weapons:** Kingdom longsword, pirate cutlass, witchwood falchion.  
- **Example creatures:** reef stalkers, clawcats, vine maulers.  
- **Balance notes:** High reliability early game; limited by armor-heavy targets.

### Pierce Damage
- **Name:** Pierce  
- **Category:** Physical  
- **Atavism resistance stat:** `pierce_resistance`  
- **Atavism power stat:** `dexterity`  
- **Atavism accuracy stat:** `dexterity`  
- **Atavism evasion stat:** `physical_evasion`  
- **Atavism crit chance stat:** `physical_crit`  
- **Atavism crit power stat:** `physical_crit_power`  
- **Gameplay description:** Penetration-focused damage from ranged precision and thrusting styles.  
- **Common sources:** bows, spears, pistols, muskets, harpoons.  
- **Common resistances:** shields, layered plate, brace skills.  
- **Strong against:** lightly armored enemies, flying creatures, sea monsters.  
- **Weak against:** shields, plate armor.  
- **Example abilities:** Deadeye Shot, Spear Lunge.  
- **Example weapons:** longbow, boarding spear, deck musket.  
- **Example creatures:** sky rays, gull drakes, reef serpents.  
- **Balance notes:** Strong single-target identity; checked by shield play.

### Crush Damage
- **Name:** Crush  
- **Category:** Physical  
- **Atavism resistance stat:** `crush_resistance`  
- **Atavism power stat:** `strength`  
- **Atavism accuracy stat:** `dexterity`  
- **Atavism evasion stat:** `physical_evasion`  
- **Atavism crit chance stat:** `physical_crit`  
- **Atavism crit power stat:** `physical_crit_power`  
- **Gameplay description:** Heavy impact damage from blunt force, siege trauma, and giant creatures.  
- **Common sources:** hammers, maces, falling rocks, large monsters.  
- **Common resistances:** impact padding, fortitude buffs.  
- **Strong against:** armor, skeletons, constructs.  
- **Weak against:** agile targets.  
- **Example abilities:** Hammerfall, Stonebreaker Slam.  
- **Example weapons:** warhammer, iron mace, tower maul.  
- **Example creatures:** ogres, cave trolls, stone bulls.  
- **Balance notes:** Best anti-armor physical type; weaker hit consistency vs evasive foes.

### Fire Damage
- **Name:** Fire  
- **Category:** Elemental  
- **Atavism resistance stat:** `fire_resistance`  
- **Atavism power stat:** `potential`  
- **Atavism accuracy stat:** `intelligence`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Thermal burst damage tied to alchemy, drakes, and battle mages.  
- **Common sources:** flame spells, bombs, dragon breath, burning oil.  
- **Common resistances:** fire wards, volcanic armor.  
- **Strong against:** undead, plants, frost creatures.  
- **Weak against:** fire elementals, volcanic creatures.  
- **Example abilities:** Flame Lance, Oil Ignition.  
- **Example weapons:** incendiary bombs, ember staves.  
- **Example creatures:** ember wretches, lava drakes.  
- **Balance notes:** Strong area pressure; balanced by common consumable counters.

### Frost Damage
- **Name:** Frost  
- **Category:** Elemental  
- **Atavism resistance stat:** `frost_resistance`  
- **Atavism power stat:** `potential`  
- **Atavism accuracy stat:** `intelligence`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Cold-based damage emphasizing control, slowing, and survival warfare.  
- **Common sources:** Frostpeak magic, ice weapons, dragon frost breath.  
- **Common resistances:** dwarven cold gear, thermal enchantments.  
- **Strong against:** fire creatures, slowing enemies, desert creatures.  
- **Weak against:** frost creatures, dwarven cold gear.  
- **Example abilities:** Glacial Bolt, Whiteout Pulse.  
- **Example weapons:** frost runeblade, ice focus rod.  
- **Example creatures:** shardhorn goats, ice drakes.  
- **Balance notes:** Trades burst for control utility.

### Storm Damage
- **Name:** Storm  
- **Category:** Elemental  
- **Atavism resistance stat:** `storm_resistance`  
- **Atavism power stat:** `potential`  
- **Atavism accuracy stat:** `intelligence`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Electrical and weather-linked damage used in sea conflict and relic storms.  
- **Common sources:** lightning spells, storm relics, sea storms, charged machines.  
- **Common resistances:** insulated gear, grounding wards.  
- **Strong against:** metal armor, ships, wet targets, constructs.  
- **Weak against:** storm-touched creatures, insulated gear.  
- **Example abilities:** Chain Surge, Tempest Mark.  
- **Example weapons:** storm rod, charged coil lance.  
- **Example creatures:** storm eels, thunder giants.  
- **Balance notes:** High conditional damage; strongest when environment supports it.

### Nature Damage
- **Name:** Nature  
- **Category:** Elemental  
- **Atavism resistance stat:** `nature_resistance`  
- **Atavism power stat:** `potential`  
- **Atavism accuracy stat:** `willpower`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Wild growth and toxin-aligned magic tied to Witchwood ecosystems.  
- **Common sources:** poisons, thorns, roots, animal attacks, Witchwood rites.  
- **Common resistances:** anti-spore gear, herbal wards.  
- **Strong against:** unprotected humanoids, corrupted ecosystems.  
- **Weak against:** undead, constructs.  
- **Example abilities:** Thorn Cage, Briar Lash.  
- **Example weapons:** thorn whip, druidic staff.  
- **Example creatures:** briar hounds, rootbound horrors.  
- **Balance notes:** Excellent attrition/control lane, lower direct burst.

### Arcane Damage
- **Name:** Arcane  
- **Category:** Magical  
- **Atavism resistance stat:** `arcane_resistance`  
- **Atavism power stat:** `intelligence`  
- **Atavism accuracy stat:** `intelligence`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Refined dimensional force used by scholars and structured casters.  
- **Common sources:** mages, relic scholars, ancient spell engines.  
- **Common resistances:** arcane wards, dampening fields.  
- **Strong against:** magical shields, unstable portals, summoned creatures.  
- **Weak against:** arcane wards, high magical resistance.  
- **Example abilities:** Aether Spear, Resonant Burst.  
- **Example weapons:** scholar focus, rune catalyst.  
- **Example creatures:** arcane sentinels, portal wraiths.  
- **Balance notes:** Baseline magical DPS channel with broad utility.

### Ward Damage
- **Name:** Ward  
- **Category:** Magical  
- **Atavism resistance stat:** `ward_resistance`  
- **Atavism power stat:** `willpower`  
- **Atavism accuracy stat:** `willpower`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Stabilizing anti-corruption force, often tied to sanctified orders.  
- **Common sources:** paladins, Ward Keepers, Elyran relics.  
- **Common resistances:** anti-sanctum relics, neutralized sigils.  
- **Strong against:** Veil creatures, undead, cursed enemies.  
- **Weak against:** neutral wildlife, ancient machines.  
- **Example abilities:** Purging Ray, Sanctified Strike.  
- **Example weapons:** ward scepter, consecrated blade.  
- **Example creatures:** ward constructs, temple guardians.  
- **Balance notes:** High identity type, strongest in corruption content.

### Shadow Damage
- **Name:** Shadow  
- **Category:** Magical  
- **Atavism resistance stat:** `shadow_resistance`  
- **Atavism power stat:** `potential`  
- **Atavism accuracy stat:** `willpower`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Fear/absence-aligned damage for stealth and corruption-adjacent playstyles.  
- **Common sources:** witches, assassins, corrupted cults.  
- **Common resistances:** ward blessings, mind anchors.  
- **Strong against:** low willpower targets, isolated enemies.  
- **Weak against:** Ward protection, paladins.  
- **Example abilities:** Umbral Slash, Dread Pulse.  
- **Example weapons:** shadow daggers, dusk talismans.  
- **Example creatures:** shade stalkers, whisper wraiths.  
- **Balance notes:** High tactical value, moderated by anti-shadow support builds.

### Curse Damage
- **Name:** Curse  
- **Category:** Magical  
- **Atavism resistance stat:** `curse_resistance`  
- **Atavism power stat:** `willpower`  
- **Atavism accuracy stat:** `willpower`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Persistent entropy damage emphasizing long-fight pressure.  
- **Common sources:** witches, cursed relics, forbidden rituals.  
- **Common resistances:** cleansing rites, ward circles.  
- **Strong against:** bosses over time, enemies with low resistance.  
- **Weak against:** cleansing effects, Ward magic.  
- **Example abilities:** Hexbrand, Rotting Oath.  
- **Example weapons:** cursed idol, blood-ink focus.  
- **Example creatures:** coven matrons, hexbound revenants.  
- **Balance notes:** DOT specialist; countered by cleanse windows.

### Veil Damage
- **Name:** Veil  
- **Category:** Special  
- **Atavism resistance stat:** `veil_resistance`  
- **Atavism power stat:** `willpower`  
- **Atavism accuracy stat:** `willpower`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `magical_critic`  
- **Atavism crit power stat:** `magical_crit_power`  
- **Gameplay description:** Corruption-linked damage tied to unstable dimensional breach force.  
- **Common sources:** Veil creatures, corrupted zones, forbidden spells, cursed artifacts.  
- **Common resistances:** Ward rituals, anti-corruption gear.  
- **Strong against:** unwarded players, low willpower targets.  
- **Weak against:** Ward resistance, corruption resistance.  
- **Example abilities:** Breach Lash, Hallucination Spike.  
- **Example weapons:** veil shard focus, corruption totem.  
- **Example creatures:** breach horrors, veil-touched leviathans.  
- **Balance notes:** Powerful but dangerous; should pair with corruption risk mechanics.

### Ancient Energy Damage
- **Name:** Ancient Energy  
- **Category:** Special  
- **Atavism resistance stat:** `ancient_resistance`  
- **Atavism power stat:** `intelligence`  
- **Atavism accuracy stat:** `intelligence`  
- **Atavism evasion stat:** `magical_evasion`  
- **Atavism crit chance stat:** `ancient_crit`  
- **Atavism crit power stat:** `ancient_crit_power`  
- **Gameplay description:** Pre-Fracturing high-density energy channel with partial armor bypass behavior.  
- **Common sources:** ancient weapons, relic devices, dimensional engines.  
- **Common resistances:** ancient shielding, relic dampeners.  
- **Strong against:** armor, constructs, magical barriers.  
- **Weak against:** ancient shielding, relic dampeners.  
- **Example abilities:** Relic Overload, Lattice Pierce.  
- **Example weapons:** aether rifle, pre-Fracturing blade core.  
- **Example creatures:** awakened sentinels, vault guardians.  
- **Balance notes:** Rare specialist type; limited availability maintains balance.

### Poison Damage
- **Name:** Poison  
- **Category:** Special  
- **Atavism resistance stat:** `poison_resistance`  
- **Atavism power stat:** `dexterity`  
- **Atavism accuracy stat:** `dexterity`  
- **Atavism evasion stat:** `physical_evasion`  
- **Atavism crit chance stat:** `physical_crit`  
- **Atavism crit power stat:** `physical_crit_power`  
- **Gameplay description:** Toxic DOT pressure with anti-heal utility from natural and crafted venoms.  
- **Common sources:** snakes, spiders, assassins, Witchwood plants.  
- **Common resistances:** antitoxin kits, detox spells.  
- **Strong against:** living creatures.  
- **Weak against:** undead, constructs.  
- **Example abilities:** Venom Coat, Toxin Bomb.  
- **Example weapons:** poison daggers, venom darts.  
- **Example creatures:** widow spiders, swamp adders.  
- **Balance notes:** Sustained pressure type; weak in undead/construct-heavy zones.

### Bleed Damage
- **Name:** Bleed  
- **Category:** Special  
- **Atavism resistance stat:** `bleed_resistance`  
- **Atavism power stat:** `dexterity`  
- **Atavism accuracy stat:** `dexterity`  
- **Atavism evasion stat:** `physical_evasion`  
- **Atavism crit chance stat:** `physical_crit`  
- **Atavism crit power stat:** `physical_crit_power`  
- **Gameplay description:** Wound-based DOT escalating when targets move under pressure.  
- **Common sources:** blades, claws, spears, predators.  
- **Common resistances:** coagulation buffs, wound sealing kits.  
- **Strong against:** living creatures.  
- **Weak against:** undead, constructs, armored targets.  
- **Example abilities:** Open Artery, Rending Pursuit.  
- **Example weapons:** serrated spear, hooked saber.  
- **Example creatures:** reef panthers, fang wolves.  
- **Balance notes:** Excellent chase damage; weaker in static encounters vs armor.

### Cannon Damage
- **Name:** Cannon  
- **Category:** Naval  
- **Atavism resistance stat:** `cannon_resistance`  
- **Atavism power stat:** `naval_power`  
- **Atavism accuracy stat:** `navigation`  
- **Atavism evasion stat:** `naval_evasion`  
- **Atavism crit chance stat:** `naval_crit`  
- **Atavism crit power stat:** `naval_crit_power`  
- **Gameplay description:** High-impact naval artillery for hull/structure destruction.  
- **Common sources:** ships, coastal defenses, pirate forts.  
- **Common resistances:** reinforced hull plating, impact bulkheads.  
- **Strong against:** ships, structures, large creatures.  
- **Weak against:** small agile targets.  
- **Example abilities:** Broadside Volley, Fort Bombard.  
- **Example weapons:** deck cannon, coastal long cannon.  
- **Example creatures:** siege crabs, cannonjaw serpents (encounter analog).  
- **Balance notes:** Dominant at sea range; intentionally weak in close land skirmishes.

### Harpoon Damage
- **Name:** Harpoon  
- **Category:** Naval  
- **Atavism resistance stat:** `harpoon_resistance`  
- **Atavism power stat:** `naval_power`  
- **Atavism accuracy stat:** `navigation`  
- **Atavism evasion stat:** `naval_evasion`  
- **Atavism crit chance stat:** `naval_crit`  
- **Atavism crit power stat:** `naval_crit_power`  
- **Gameplay description:** Precision naval puncture and tether pressure for hunting and pursuit.  
- **Common sources:** sea hunters, ship crews, reef tribes.  
- **Common resistances:** reinforced hulls, anti-tether rigging.  
- **Strong against:** sea monsters, large beasts, fleeing ships.  
- **Weak against:** armored hulls.  
- **Example abilities:** Chain Harpoon, Keel Pin.  
- **Example weapons:** whale harpoon launcher, reef spear cannon.  
- **Example creatures:** hunting rafts, tribal skiffs (NPC use).  
- **Balance notes:** Tactical capture/control role; lower raw damage than cannon.

### Boarding Damage
- **Name:** Boarding  
- **Category:** Naval  
- **Atavism resistance stat:** `boarding_resistance`  
- **Atavism power stat:** `strength`  
- **Atavism accuracy stat:** `dexterity`  
- **Atavism evasion stat:** `physical_evasion`  
- **Atavism crit chance stat:** `physical_crit`  
- **Atavism crit power stat:** `physical_crit_power`  
- **Gameplay description:** Close-combat naval engagement damage after ships are linked.  
- **Common sources:** pirates, marines, raiders.  
- **Common resistances:** marine armor kits, deck defense formations.  
- **Strong against:** exposed crews, low-discipline decks.  
- **Weak against:** prepared marines, fortified deck positions.  
- **Example abilities:** Boarding Rush, Deckbreaker Order.  
- **Example weapons:** boarding axe, naval saber, hook pike.  
- **Example creatures:** pirate marines, privateer officers.  
- **Balance notes:** Bridges naval and land combat identities without replacing either.

### Fall Damage
- **Name:** Fall  
- **Category:** Environmental  
- **Atavism resistance stat:** `fall_resistance`  
- **Atavism power stat:** `survival`  
- **Atavism accuracy stat:** `environmental_resilience`  
- **Atavism evasion stat:** `environmental_resilience`  
- **Atavism crit chance stat:** N/A  
- **Atavism crit power stat:** N/A  
- **Gameplay description:** Gravity and impact hazard from vertical traversal failure.  
- **Common sources:** cliffs, airship accidents, canyon drops.  
- **Common resistances:** climbing gear, shock boots.  
- **Strong against:** unprepared explorers.  
- **Weak against:** mobility experts with mitigation gear.  
- **Example abilities:** Safe Descent (mitigation passive).  
- **Example weapons:** N/A.  
- **Example creatures:** N/A (environmental source).  
- **Balance notes:** Punishes risk without creating combat-only build checks.

### Drowning Damage
- **Name:** Drowning  
- **Category:** Environmental  
- **Atavism resistance stat:** `drowning_resistance`  
- **Atavism power stat:** `survival`  
- **Atavism accuracy stat:** `environmental_resilience`  
- **Atavism evasion stat:** `environmental_resilience`  
- **Atavism crit chance stat:** N/A  
- **Atavism crit power stat:** N/A  
- **Gameplay description:** Oxygen depletion hazard in deep water and ruins.  
- **Common sources:** deep water, underwater ruins, failed dives.  
- **Common resistances:** diving kits, breath control traits.  
- **Strong against:** overloaded/unprepared parties.  
- **Weak against:** prepared diving teams.  
- **Example abilities:** Deep Breath, Emergency Float.  
- **Example weapons:** N/A.  
- **Example creatures:** N/A (environmental source).  
- **Balance notes:** Supports expedition planning and role specialization.

### Heat Damage
- **Name:** Heat  
- **Category:** Environmental  
- **Atavism resistance stat:** `heat_resistance`  
- **Atavism power stat:** `survival`  
- **Atavism accuracy stat:** `environmental_resilience`  
- **Atavism evasion stat:** `environmental_resilience`  
- **Atavism crit chance stat:** N/A  
- **Atavism crit power stat:** N/A  
- **Gameplay description:** Attrition from extreme hot climates and thermal fields.  
- **Common sources:** deserts, volcanic zones, fire fields.  
- **Common resistances:** cooling wraps, heat wards.  
- **Strong against:** poorly equipped expeditions.  
- **Weak against:** prepared desert/volcanic gear kits.  
- **Example abilities:** Heat Acclimation.  
- **Example weapons:** N/A.  
- **Example creatures:** N/A (environmental source).  
- **Balance notes:** Encourages zone-specific prep without heavy micro-management.

### Cold Damage
- **Name:** Cold  
- **Category:** Environmental  
- **Atavism resistance stat:** `cold_resistance`  
- **Atavism power stat:** `survival`  
- **Atavism accuracy stat:** `environmental_resilience`  
- **Atavism evasion stat:** `environmental_resilience`  
- **Atavism crit chance stat:** N/A  
- **Atavism crit power stat:** N/A  
- **Gameplay description:** Attrition from freezing biomes, storms, and cave chill.  
- **Common sources:** Frostpeak, blizzards, frozen caves.  
- **Common resistances:** insulated furs, camp heat tools.  
- **Strong against:** low-survival travelers.  
- **Weak against:** frost-prepared teams.  
- **Example abilities:** Cold Endurance.  
- **Example weapons:** N/A.  
- **Example creatures:** N/A (environmental source).  
- **Balance notes:** Makes weather and route planning meaningful.

### Storm Exposure Damage
- **Name:** Storm Exposure  
- **Category:** Environmental  
- **Atavism resistance stat:** `storm_exposure_resistance`  
- **Atavism power stat:** `survival`  
- **Atavism accuracy stat:** `environmental_resilience`  
- **Atavism evasion stat:** `environmental_resilience`  
- **Atavism crit chance stat:** N/A  
- **Atavism crit power stat:** N/A  
- **Gameplay description:** Combined weather pressure (wind/rain/static) during severe sea events.  
- **Common sources:** open-sea storms, lightning zones, unstable Ward weather.  
- **Common resistances:** storm coats, static dampeners, navigation discipline.  
- **Strong against:** crews outside protected routes.  
- **Weak against:** storm-ready ships and survival specialists.  
- **Example abilities:** Storm Brace, Crew Shelter Drill.  
- **Example weapons:** N/A.  
- **Example creatures:** N/A (environmental source).  
- **Balance notes:** Keeps naval weather threatening without replacing enemy encounters.

---

## Part 8 — Creature Resistance Design

| Creature Type | Strong Resistances | Weaknesses |
| --- | --- | --- |
| Undead | poison_resistance, bleed_resistance, curse_resistance | ward_resistance (low), fire_resistance (low) |
| Skeletons | pierce_resistance, bleed_resistance | crush_resistance (low), ward_resistance (low) |
| Dragons | fire_resistance or frost_resistance (variant), slash_resistance | storm_resistance (often low), pierce_resistance (wing joints) |
| Sea Monsters | drowning_resistance, storm_exposure_resistance, harpoon_resistance | storm_resistance (variant-dependent), bleed_resistance (species-dependent) |
| Veil Creatures | veil_resistance, shadow_resistance, curse_resistance | ward_resistance (low), willpower-based disruption |
| Constructs | poison_resistance, bleed_resistance, shadow_resistance | crush pressure effects, ancient overload windows |
| Bandits | slash_resistance/pierce_resistance (light), poison_resistance (some) | ward and curse control, crush burst |
| Pirates | boarding_resistance, cannon_resistance, slash_resistance | storm exposure, ward pressure, anti-ship storm builds |
| Frost Beasts | frost_resistance, cold_resistance | fire_resistance (low), crush_resistance (varies) |
| Desert Beasts | heat_resistance, pierce_resistance (hide) | frost_resistance (low), nature control |
| Witchwood Creatures | nature_resistance, poison_resistance | fire_resistance (low), ward pressure |

---

## Part 9 — Armor and Gear Design

| Armor Type | Strong Against | Weak Against |
| --- | --- | --- |
| Cloth | Arcane, Curse (when warded variants) | Slash, Pierce, Boarding |
| Leather | Pierce, Nature, Bleed (treated sets) | Crush, Cannon fragmentation |
| Chain | Slash, Bleed | Crush, Storm |
| Plate | Slash, Pierce, Boarding | Storm, mobility pressure, some Ancient Energy |
| Ward Armor | Veil, Shadow, Curse, Ward | Crush and heavy physical focus |
| Pirate Gear | Boarding, Slash, Harpoon (partial) | Ward pressure, high-end Arcane |
| Frost Gear | Frost, Cold, storm exposure (partial) | Fire, Heat |
| Desert Gear | Heat, poison (sand-filter variants) | Frost, Cold |
| Veil-Corrupted Gear | Shadow, Veil burst output | Ward effects, cleansing mechanics |
| Ancient Relic Armor | Ancient Energy, Arcane, some Crush mitigation | sustained Curse/Veil corruption buildup |

---

## Part 10 — Faction Damage Identity

| Faction | Damage Identity | Defensive Identity |
| --- | --- | --- |
| Mainland Kingdom | Slash, Pierce, Ward | chain/plate, ward-resistance doctrine |
| Dwarves | Crush, Fire, Cannon | armor density, fire hardening |
| Elves | Pierce, Nature, Arcane | evasion, nature resistance |
| Pirates | Slash, Pierce, Cannon, Boarding | boarding resistance, mobility |
| Canyon Tribes | Pierce, Harpoon, Storm, survival tactics | storm/heat preparedness |
| Witches | Curse, Shadow, Poison, Veil | curse layering, anti-willpower pressure |
| Gnomes | Ancient Energy, Storm, engineering attacks | insulated and relic-safe gear |
| Veil Creatures | Veil, Shadow, corruption pressure | high veil/shadow resistance |

---

## Part 11 — Balance Rules

- No single damage type should dominate all targets and regions.  
- Physical damage types remain the easiest player-facing baseline.  
- Magical damage types drive faction/class identity and encounter flavor.  
- Veil damage is strong but must carry corruption and social-risk tradeoffs.  
- Ancient Energy stays rare, specialized, and progression-gated.  
- Environmental damage should reward preparation, not random punishment.  
- Naval damage should be decisive at sea and limited on land.  
- Resistance gear should feel valuable but not mandatory in every activity.  

---

## Part 12 — Appendix: Atavism Damage Formula Reference

### Damage Flow Reference (Designer Labels)

1. **Base Damage** = weapon/ammo/mob/effect base values  
2. **Skill Scaling** = skill-level contribution  
3. **Power Scaling** = power stat multiplier contribution  
4. **Hit Roll Variation** = controlled random range  
5. **Armor / Resistance Reduction** = mitigation from target resistance stats  
6. **Damage Taken Modifier** = incoming reduction/amplification effects  
7. **Critical Calculation** = crit chance roll and crit power multiplier  
8. **Damage Modifier** = damage dealt modifiers from buffs/debuffs  
9. **Bonus Damage** = supplemental effect damage layers  
10. **Parry Reduction** = successful parry applies final reduction  
11. **PvP Reduction** = player-vs-player global reduction pass  
12. **Final Receive / Dealt Modifiers** = final outbound/inbound adjustments  
13. **Trigger Effects** = on-hit/on-damage procs  
14. **Shield Effects** = shield absorb/redirect logic  

### Simplified Hit Chance Notes

- Hit chance compares attacker **accuracy stat** vs target **evasion stat**.  
- Level difference shifts hit chance up or down.  
- Global caps prevent impossible always-hit or always-miss outcomes.  

### Simplified Parry Chance Notes

- Parry chance compares defender **parry capability** against attacker accuracy.  
- Level difference shifts parry reliability.  
- Successful parry reduces final damage to **60%** of the pre-parry result.

---

## Related Documents


## Suggested Reading
- Previous: [🛡 Damage and Resistances](damage_and_resistances.md)
- Next: [Effects System](effects_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
