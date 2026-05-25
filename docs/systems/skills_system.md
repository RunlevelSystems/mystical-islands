[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

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

- [Abilities System](./abilities_system.md)
- [Effects System](./effects_system.md)
- [Mastery & Progression](./mastery_progression.md)
- [Starting Character Templates](./starting_templates.md)
- [Races & Classes](./races_and_classes.md)
- [Magic System](./magic_system.md)
- [Naval Travel](./naval_travel.md)
- [Exploration Systems](./exploration_systems.md)
- [Factions](../factions/factions.md)

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

> See also: [Mastery & Progression](./mastery_progression.md) for detailed treatment of skill mastery, hidden ability unlocks, and world reputation effects.

---

## Related Documents


## Suggested Reading
- Previous: Start with this page.
- Next: [Skills & Progression](skills_and_progression.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
