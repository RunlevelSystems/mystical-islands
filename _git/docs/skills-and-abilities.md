# Skills and Abilities

Consolidated combat, gathering, crafting, talents, effects, and progression handbook.

This page preserves Atavism skill structures, formulas, requirements, profiles, and system relationships for implementation and balancing.

---

## Consolidated Sourcebook

This page consolidates and preserves existing Mystical Islands documentation in one centralized reference.

### Source: `docs/skills-and-abilities.md`

# Skills & Abilities

Skills and abilities define how a character grows beyond basic class choice. This system should support specialization, hybrid builds, role identity, and long-term mastery without forcing the player into one narrow path.

---

## Design Goals

- Make specialization feel meaningful.
- Allow hybrid builds to remain viable.
- Reward repeated use, training, and profession focus.
- Tie skills to world activity, not just combat.
- Ensure every character has at least one economic identity.

---

## Skill Families

### Combat Skills
These define direct combat growth.

- swordplay
- axe combat
- spear combat
- bow use
- crossbows
- dual wielding
- shields
- spellcasting schools
- channeling and ritual combat
- unarmed and brawler styles

Combat skills should improve the tools a player already enjoys using.

### Gathering Skills
These support exploration and resource collection.

- mining
- woodcutting
- herbalism
- fishing
- salvage
- archaeology
- monster harvesting
- treasure searching

Gathering should be tied to island identity and resource scarcity.

### Crafting Skills
These transform gathered materials into value.

- smithing
- armoring
- tailoring
- leatherworking
- alchemy
- enchanting
- cooking
- ship supplies and repair crafting

Crafting should create player dependency and market activity.

### Magic Skills
These shape spell identity and arcane specialization.

- elemental magic
- healing magic
- warding
- curses
- summoning
- illusion
- rune craft
- ley channeling

Magic should feel broad enough to support both damage and utility roles.

### Profession Skills
These express everyday expertise and social utility.

- sailing
- navigation
- diplomacy
- thievery
- scouting
- trap handling
- beast handling
- relic appraisal

Professions help define how a player participates in the world outside combat.

---

## Weapon Skills

Weapon skills should track familiarity and performance with a specific tool set.

Examples:

- one-handed swords
- two-handed blades
- axes
- polearms
- daggers
- bows
- staves
- wands
- shields
- firearms or future black powder tools, if added later

Weapon skills can unlock attack modifiers, combo access, stamina savings, or passive bonuses.

---

## Abilities

Abilities are active expressions of class and skill identity.

They may include:

- strikes and finishers
- magic projectiles
- area control effects
- heals and buffs
- stealth tools
- mobility skills
- crowd control
- summons
- shouts and battle commands
- escape tools

Abilities should be easy to read but deep in combination.

---

## Passive Abilities

Passive abilities give characters their long-term texture.

Examples:

- bonus movement in rough terrain
- improved damage against beasts or undead
- reduced potion cooldowns
- stronger crafting success rates
- extra reputation gain
- resistance to poison, frost, or shadow effects
- improved travel stamina
- better loot identification

Passives should reward commitment without overpowering active play.

---

## Talent and Specialization Model

A good system should support three layers:

1. **Class foundation** — the role the player starts with.
2. **Skill specialization** — the tools the player leans into.
3. **Talent identity** — the unique pattern that makes the build feel personal.

This allows classic archetypes such as:

- sword-and-shield defender
- frost mage scholar
- pirate duelist
- swamp witch debuffer
- hunter-crafter explorer
- dwarf forge master
- relic hunter with hybrid magic

---

## Hybrid Builds

Hybrid builds should be supported on purpose, not accidentally.

Examples:

- melee plus herbalism for survivalists
- magic plus alchemy for ritual casters
- stealth plus archery for scouts
- crafting plus trade for merchant characters
- shield combat plus leadership for party anchors

Hybrid play should feel strong when the player invests consistently in both halves.

---

## Progression Philosophy

Skill growth should answer a simple question: what does this character do better than others?

A character should become known for:

- a preferred weapon
- a chosen profession
- a signature magic style
- a regional expertise
- a useful utility role in groups
- a profitable trade niche

The system should create specialization stories as much as it creates power.

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

### Source: `docs/systems/skills_and_progression.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Skills & Progression

---

# Skills & Progression
## Overview

Mystical Isles uses a horizontal progression philosophy. Players deepen mastery rather than inflating numbers. A character who has spent three hundred hours on the water is genuinely different from one who hasn't — not because their attack stat is higher, but because they know routes, can read weather, can repair a hull mid-storm, and have the reputation to dock at ports that others are turned away from.

This document defines the full skill system, progression structure, Atavism stat integration, racial stat modifiers, and long-term political progression.

---

## Design Philosophy

| Principle | Implementation |
| --- | --- |
| Horizontal progression | Skills deepen within categories rather than inflating raw stats indefinitely |
| Mastery over power | Reaching the top of a skill tree changes what you can *do*, not how hard you can hit |
| World integration | Skills connect directly to world systems — exploration, faction access, naval travel |
| Identity reinforcement | Your skill choices define your social role in the Isles, not just your combat ability |
| No artificial ceiling | Players who specialize deeply reach political and social influence, not an abstract stat cap |

There is no traditional endgame. Skill mastery leads to world influence — becoming the person others need, the captain others follow, the scholar others consult.

---

## Skill Categories

### Combat Skills

These skills govern physical and magical combat proficiency. They scale through use and specialization.

| Skill | Description | Primary Classes | Racial Bonus |
| --- | --- | --- | --- |
| Swordsmanship | Proficiency with one-handed and two-handed swords | Fighter, Knight, Pirate, Rogue | — |
| Axes | Proficiency with axes and hatchets | Fighter, Dwarf Defender | Dwarves +5% |
| Polearms | Reach weapons — spears, halberds, pikes | Fighter, Knight | — |
| Shields | Blocking, countering, and shield-bash techniques | Knight, Paladin, Dwarf Defender | Dwarves +5% |
| Firearms | Pistols, blunderbuss, flintlock rifles | Pirate, Rogue | — |
| Bows | Short bow, longbow, compound bow | Ranger, Elf Mystic Ranger | Elves +5% |
| Magic Casting | Aetheric energy channeling and spell delivery | Mage, Witch, Paladin, Elf Mystic Ranger | Elves +5% |
| Dual Wielding | Paired weapon combat, off-hand mechanics | Rogue, Fighter | — |

**Combat Skill Progression Model:**
- Skills advance through combat use — every fight contributes
- Advanced tiers unlock through dedicated training, not just repetition
- Trainers, faction contracts, and rare combat events accelerate specific skills
- Masteries at each tier unlock passive bonuses and new active technique options

---

### Naval Skills

Naval skills are the backbone of the Isles' traversal and economy. Players who invest here define the world's routes, logistics, and sea-based conflict.

| Skill | Description | Primary Classes | Racial Bonus |
| --- | --- | --- | --- |
| Navigation | Chart routes, read sea conditions, identify hazards | Pirate, Ranger | — |
| Sailing | Ship speed management, wind reading, course control | Pirate, any crew role | — |
| Ship Repair | Hull damage assessment and field repair | Pirate, Dwarf Defender | Dwarves +5% |
| Harpoon Mastery | Ranged harpoon use, creature control, boarding utility | Pirate, Ranger | — |
| Cannon Operation | Aiming, loading, firing, and maintenance of ship armament | Pirate, Fighter, Dwarf Defender | Dwarves +5% |
| Storm Survival | Keeping crew and ship alive in dangerous sea conditions | Pirate, Ranger | — |

**Naval Skill Progression Model:**
- Naval skills advance through time at sea and successful voyages
- Storms, hostile encounters, and exploration routes provide accelerated progression
- High Navigation skill unlocks access to hidden routes and anomaly-zone passages
- Master-level sailors can command multi-ship fleets and navigate Veil-affected waters

---

### Exploration Skills

Exploration skills define what a character can discover, access, and survive in the frontier regions of the Isles.

| Skill | Description | Primary Classes | Racial Bonus |
| --- | --- | --- | --- |
| Climbing | Scale cliff faces, ruins, and structures | Ranger, Rogue | — |
| Treasure Hunting | Identify hidden caches, read environmental clues | Rogue, Ranger | — |
| Relic Detection | Sense and locate pre-Fracturing artifacts | Gnome Engineer, Mage | Gnomes +10% |
| Archaeology | Excavate, analyze, and document ruins safely | Gnome Engineer, Mage | Gnomes +5% |
| Survival | Manage food, water, temperature, and environmental hazards | Ranger, all classes | — |
| Fishing | Open water and coastal fishing, rare specimen recovery | Pirate, Ranger | — |

**Exploration Skill Progression Model:**
- Exploration skills advance through discovery — new locations, found relics, completed surveys
- Higher skill tiers unlock access to deeper ruins, anomaly zones, and Ward-controlled passages
- Relic Detection and Archaeology combine to unlock the deepest layer of pre-Fracturing content
- Master Explorers can register discoveries, receive expedition funding, and establish landmark access rights

---

### Crafting Skills

Crafting skills produce the equipment, ships, alchemical supplies, and enchanted items that drive the world economy.

| Skill | Description | Primary Classes | Racial Bonus |
| --- | --- | --- | --- |
| Blacksmithing | Weapons, armor, tools, structural components | Fighter, Dwarf Defender | Dwarves +10% |
| Alchemy | Potions, reagents, poisons, restoration compounds | Mage, Witch | — |
| Engineering | Mechanical devices, gadgets, ship components | Gnome Engineer | Gnomes +10% |
| Enchanting | Imbuing items with dimensional energy properties | Mage, Elf Mystic Ranger | Elves +5% |
| Shipbuilding | Constructing and modifying vessels | Pirate, Dwarf Defender | Dwarves +5% |
| Cooking | Rations, buff food, long-voyage supplies | Ranger, any | — |

**Crafting Skill Progression Model:**
- Crafting advances through production — every crafted item contributes
- Master-tier crafting requires rare materials and unlocked recipes from exploration content
- Gnome and Dwarf characters have racial bonuses that make them the primary suppliers in their specialization domains
- Master crafters can accept commissions, train apprentices, and hold workshop licenses in faction territories

---

### Social Skills

Social skills determine how a character navigates political systems, builds reputation, and exercises non-combat influence.

| Skill | Description | Primary Classes | Racial Bonus |
| --- | --- | --- | --- |
| Diplomacy | Faction reputation management, negotiation, peace-brokering | All Human classes | Humans +5% |
| Leadership | Command authority, crew morale, group expedition management | Knight, Paladin, Pirate | Humans +5% |
| Merchant Negotiation | Trade pricing, contract terms, market leverage | Rogue, Pirate | — |
| Intimidation | Force-based social leverage, information extraction | Fighter, Pirate | — |
| Smuggling | Contraband movement, hidden route access, black market connections | Rogue, Pirate | — |

**Social Skill Progression Model:**
- Social skills advance through interaction events — successful negotiations, completed diplomatic quests, faction standing milestones
- Leadership skill directly affects group content effectiveness and crew management in naval systems
- High Diplomacy enables faction cross-access — building standing with normally hostile groups
- Master-tier Social skills unlock access to the political progression system

---

### Forbidden Skills

Forbidden skills represent the edge of what is known and safe. They are high-risk, high-depth, and carry real consequences for overuse.

| Skill | Description | Primary Classes | Racial Bonus |
| --- | --- | --- | --- |
| Veil Attunement | Manipulate dimensional corruption energy | Witch, Mage (Rift Scholar) | Elves (risk bonus) |
| Corruption Resistance | Resist and recover from Veil exposure | Paladin, Elf Mystic Ranger | Paladins +5% |
| Dimensional Resonance | Interact with and stabilize dimensional anomalies | Mage, Gnome Engineer | Gnomes +5% |
| Curse Mastery | Apply and extend curse effects on targets and environments | Witch | — |

**Forbidden Skill Mechanics:**
- These skills require initial unlocking through specific quest events or faction access
- Each use of Veil Attunement and Curse Mastery builds corruption exposure
- High corruption creates visible character changes, debuffs, and ultimately requires ritual cleansing
- Dimensional Resonance and Corruption Resistance are countermeasures to the Veil — safer to advance, but still dangerous near active breaches

---

## Atavism Stat Reference

The following table defines all stats used in the Atavism X 9 framework and how they apply to Mystical Isles character design.

### Core Primary Stats

| Stat | Description | Primary Use |
| --- | --- | --- |
| Strength | Raw physical power; governs melee damage and carrying capacity | Melee combat, weight limits |
| Dexterity | Precision, agility, and reaction speed | Ranged attacks, evasion, stealth |
| Endurance | Physical resilience and sustained effort capacity | Health calculation, stamina management |
| Intelligence | Mental capacity for learning and energy manipulation | Magic damage, crafting effectiveness, relic interaction |
| Willpower | Mental fortitude and resistance to corruption | Mana pool, corruption resistance, Veil interaction |
| Stamina | Physical action energy for non-magical abilities | Melee abilities, running, physical actions |

### Derived Pool Stats

| Stat | Description | Governed By |
| --- | --- | --- |
| Health | Total survivable damage before defeat | Endurance, level progression |
| Mana | Energy available for magical abilities | Willpower, Intelligence |
| Stamina (pool) | Physical action resource | Endurance, Strength |

### Combat Performance Stats

| Stat | Description | Primary Use |
| --- | --- | --- |
| Physical Defense | Damage reduction against physical attacks | Armor, Endurance |
| Magical Resistance | Damage reduction against magical attacks | Willpower, enchanted gear |
| Evasion | Chance to avoid physical attacks entirely | Dexterity, light armor |
| Parry | Chance to deflect melee attacks | Swordsmanship, Shield skill, Dexterity |
| Physical Crit | Chance to deal critical physical damage | Dexterity, weapon skill |
| Magical Critic | Chance to deal critical magical damage | Intelligence, magical skill |
| Stun Chance | Probability of stunning a target on hit | Specific abilities and weapons |
| Stun Resistance | Resistance to stun effects | Endurance, specific gear |
| Sleep Chance | Probability of applying sleep effect | Witch and Mage abilities |
| Sleep Resistance | Resistance to sleep effects | Willpower, specific gear |

### Damage Type Resistances

| Stat | Description |
| --- | --- |
| Pierce Resistance | Reduction to piercing damage (arrows, daggers, firearms) |
| Slash Resistance | Reduction to slashing damage (swords, axes) |
| Crush Resistance | Reduction to crushing damage (hammers, blunt weapons) |

### Damage and Recovery Modifiers

| Stat | Description |
| --- | --- |
| Damage Dealt | Multiplier on all outgoing damage |
| Damage Rec | Multiplier on all incoming damage (negative is damage reduction) |
| Health Rec | Rate of health restoration over time |

### Action Speed Stats

| Stat | Description | Affected By |
| --- | --- | --- |
| Movement Speed | Overland and combat movement rate | Dexterity, armor weight, racial base |
| Attack Speed | Speed of melee and ranged attack cycles | Dexterity, weapon type |
| Cooldown | Rate of ability cooldown reduction | Willpower, specific gear |
| Cast Time | Speed of spell casting completion | Intelligence, talent progression |
| Range | Maximum distance for ranged attacks and abilities | Weapon type, specific skills |

### Stealth Stats

| Stat | Description |
| --- | --- |
| Stealth | Character's ability to remain undetected |
| Perception-Stealth | Character's ability to detect stealthed enemies |

### Capacity Stats

| Stat | Description | Governed By |
| --- | --- | --- |
| Mana-Max | Maximum mana pool | Willpower, Intelligence progression |
| Stamina-Max | Maximum stamina pool | Endurance, Strength progression |
| Weight-Max | Maximum encumbrance before penalties | Strength, inventory systems |

---

## Racial Stat Modifiers

The following table shows the base stat biases for each race at character creation. These modifiers reflect cultural and biological identity — they are not absolute limits on growth.

| Stat | Humans | Dwarves | Elves | Gnomes |
| --- | --- | --- | --- | --- |
| Strength | 10 | 13 | 8 | 6 |
| Dexterity | 10 | 7 | 14 | 10 |
| Endurance | 10 | 15 | 7 | 7 |
| Intelligence | 10 | 9 | 11 | 15 |
| Willpower | 10 | 8 | 13 | 11 |
| Stamina | 10 | 12 | 9 | 8 |
| Health (base) | 100 | 125 | 80 | 75 |
| Mana (base) | 100 | 70 | 130 | 120 |
| Physical Defense | 10 | 15 | 7 | 6 |
| Magical Resistance | 10 | 6 | 13 | 10 |
| Stealth | 10 | 6 | 14 | 11 |
| Perception-Stealth | 10 | 12 | 13 | 12 |
| Movement Speed | 10 | 7 | 12 | 9 |
| Attack Speed | 10 | 8 | 12 | 10 |
| Evasion | 10 | 6 | 14 | 11 |
| Weight-Max | 10 | 13 | 8 | 7 |

*Values are relative starting modifiers. All races can progress stats through skill investment and equipment. Racial identity shapes the character's early trajectory, not their absolute ceiling.*

---

## Class Stat Modifiers

Class selection (for Humans) and racial specialization (for non-humans) apply additional modifiers on top of racial base stats.

| Class / Spec | STR | DEX | END | INT | WIL | Primary Stat Focus |
| --- | --- | --- | --- | --- | --- | --- |
| Fighter | +4 | +2 | +2 | — | — | Strength, Physical Defense |
| Knight | +2 | — | +5 | — | — | Endurance, Physical Defense, Shields |
| Paladin | +2 | — | +3 | — | +3 | Willpower, Ward abilities, Healing |
| Mage | — | +2 | — | +5 | +3 | Intelligence, Mana, Magical Critic |
| Ranger | +1 | +4 | +2 | — | — | Dexterity, Evasion, Ranged |
| Rogue | — | +5 | — | +1 | +1 | Dexterity, Stealth, Burst Damage |
| Witch | — | +1 | — | +3 | +4 | Willpower, Curse effectiveness, Veil |
| Pirate | +2 | +3 | +2 | — | — | Dexterity, Movement Speed, Naval |
| Dwarf Defender/Engineer | +2 | — | +5 | +2 | — | Endurance, Crafting, Engineering |
| Elf Mystic Ranger | — | +3 | — | +2 | +4 | Willpower, Ward Attunement, Stealth |
| Gnome Engineer/Relic | — | +1 | — | +6 | +2 | Intelligence, Crafting, Relic |

---

## Progression Philosophy: No Vertical Inflation

Mystical Isles explicitly avoids the pattern where progression means ever-increasing raw numbers. Instead:

- **Skill tiers** unlock new *options* rather than bigger versions of existing ones
- **Mastery levels** within a skill unlock active techniques, passive bonuses, and world-access gates
- **Combat effectiveness** at the top level comes from technique mastery, equipment quality, and situational awareness — not a stat gap that makes earlier content irrelevant
- **Horizontal depth** means a level-1 character and a veteran character can crew the same ship and both contribute meaningfully

The goal is a world where veterans are *experienced*, not untouchable.

---

## Starting Region Overview

| Race | Starting Zone | Tutorial Focus | Opening Faction | Starting Abilities |
| --- | --- | --- | --- | --- |
| Human | Mainland Kingdom — Crown Harbor | Class identity, faction intro, naval basics | Crown Compact | Class weapon skill (level 1), basic movement, intro quest item |
| Dwarf | Frostpeak Isle — Outer Hold Gate | Mining, crafting, underground navigation | Frostpeak Holds | Shield use, basic fortification, mine torch |
| Elf | Witchwood Isle — Forest Edge Enclave | Ward attunement, stealth navigation, forest survival | Moonroot Enclaves | Bow skill (level 1), Ward sense (passive), camouflage |
| Gnome | Hidden Enclave — Workshop Level | Relic identification, gadget crafting, archive research | Independent Enclave | Field kit (deployable), relic scanner (active), basic engineering |

### Starter Equipment

| Race | Starting Gear |
| --- | --- |
| Human | Class-appropriate basic weapon, light armor appropriate to class, starting faction token |
| Dwarf | Reinforced mining gear, clan shield (basic), forge hammer or pick |
| Elf | Witchwood shortbow, layered forest garments, Ward-sensitive compass |
| Gnome | Field kit (multi-tool), work goggles, basic gadget pack, enclave identification badge |

### Racial Introduction Questlines

Each race begins with a three-act introduction questline that establishes:
1. Their cultural context and home faction
2. Their core gameplay mechanic (the system that defines their identity)
3. Their first external contact with another faction or region

These quests do not merely teach controls — they are the opening of each character's story in the world.

---

## Long-Term Progression Systems

### Faction Influence Progression

Faction standing is not a linear meter. It is a network of relationships, favors, demonstrated competence, and political decisions.

| Standing Level | Gate | Unlocks |
| --- | --- | --- |
| Neutral | Default | Basic vendor access, safe passage |
| Known | 5 completed contracts | Faction equipment vendors, secondary quest access |
| Trusted | 20 completed contracts + one major story quest | Faction-specific abilities, strategic information |
| Valued | Major faction story completion + 50 contracts | Senior rank title, faction infrastructure access |
| Champion | Faction political quest completion | Unique title, faction military command option |
| Leader Candidate | All champion milestones + political event trigger | Access to leadership contest system |

### Leadership Progression

Political leadership positions are not permanent. They are held, challenged, and lost through gameplay.

| Position | Faction | How Achieved | How Lost |
| --- | --- | --- | --- |
| Harbor Master | Crown Compact | Appointment by senior official + player vote | Removal vote, rival challenge |
| Hold Elder | Frostpeak Holds | Earned through craft achievement + clan approval | Challenge by new master craftsperson |
| Enclave Voice | Moonroot Enclaves | Long-term service + community ritual | Community recall vote |
| Fleet Admiral | Any naval faction | Won through naval campaign success | Military defeat, political recall |
| Governor | Crown Compact | Assigned by Crown + verified by population | Recall, conquest, scandal |
| Guild Master | Player guilds | Founded or voted to leadership | Guild vote |
| Pirate Lord | Free Reef Corsairs | Accumulated reputation + captain council vote | Rival challenge |
| Ward Commander | Paladin/Ward Command | Senior Paladin rank + mission completion | Failure of a major Ward event |
| Faction Champion | Any | Unique faction story quest completion | Revocable by faction event |
| Ruler | Crown Compact | Extraordinary political campaign | Political overthrow, conquest |

### Naval Command Progression

Naval authority scales from solo captain to fleet command.

| Naval Rank | Requirement | Authority |
| --- | --- | --- |
| Deckhand | Starting | Personal crew role only |
| Mate | 50 hours at sea | Second-in-command on any ship |
| Captain | Own a registered ship + navigation skill tier 3 | Command one vessel and crew |
| Commodore | 5 successful naval campaigns | Command a small squadron |
| Admiral | Full naval campaign completion + faction rank | Command a fleet, set naval policy |

### Political Progression

Political influence operates independently from combat mastery. A character who never enters combat can become one of the most powerful figures in the world through:

- **Trade control** — owning or managing the shipping routes others depend on
- **Information leverage** — Rogue-class intelligence networks
- **Crafting authority** — Master crafters whose products are irreplaceable
- **Exploration rights** — Registering discovered routes, ruins, and resources
- **Diplomatic standing** — Cross-faction mediation and treaty brokerage

None of these paths require a high combat level. All of them require deep investment in specific skill trees and long-term faction engagement.

---

## Related Documents


## Suggested Reading
- Previous: [Skills System] (skills_system.md)
- Next: [Leveling & XP] (leveling_and_xp.md)

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

### Source: `docs/systems/abilities_and_skill_trees.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Abilities & Skill Trees

---

# Abilities & Skill Trees
## Overview

This document defines the branching specialization trees available to each class and racial specialization in Mystical Isles. Ability trees are the mechanism through which players define their identity beyond their race and class — choosing not just *what* they do, but *how* they do it, and what role they occupy in the world.

Every tree is designed around a clear gameplay identity, a social or political dimension, and a long-term progression fantasy that connects individual ability choices to the evolving politics and history of the Isles.

---

## Design Principles

- Each specialization path has a distinct playstyle identity — players should be able to describe their character's approach in one sentence
- Trees branch horizontally — later tiers open new options, not just bigger numbers
- Abilities connect to world systems — naval, exploration, political, and crafting
- Cross-tree synergies reward deliberate build design without forcing it
- Master-tier abilities have narrative weight — they change how the world treats your character

---

## Tree Structure

Each class has three specialization paths. Players unlock abilities within a path through skill use, training, and faction engagement. Switching paths is possible but costly — it represents a genuine shift in the character's identity, not a routine respec.

Each path has five ability tiers:
1. **Foundation** — Basic techniques available from class selection
2. **Developed** — Unlocked through practical experience and initial training
3. **Mastery** — Requires dedicated investment and specific world engagements
4. **Expert** — Rare abilities unlocked through legendary encounters or faction milestones
5. **Pinnacle** — Unique abilities that mark the character as a master of their path

---

## Fighter Ability Trees

### Path 1: Duelist

*Single-weapon mastery, one-on-one supremacy, precision over power.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Stance: Duelist Posture | Increases parry chance and riposte damage when holding a single weapon |
| Foundation | Read the Opening | Passive: brief attack speed bonus after a successful parry |
| Developed | Counter Thrust | Immediate counterattack after a successful parry that deals bonus damage |
| Developed | Footwork | Passive: increased evasion and repositioning speed in melee combat |
| Mastery | Vital Strike | Identifies and targets weak points — high precision damage against a single target |
| Mastery | Duelist's Resolve | Passive: regenerate stamina during sustained one-on-one engagements |
| Expert | The Last Lesson | Signature strike: long animation, enormous single-target damage, requires full preparation |
| Expert | Unreadable | Passive: significantly reduces enemy ability to predict attacks; disrupts enemy parry chance |
| Pinnacle | Grand Master's Edge | All parry chances double; counter-attacks deal maximum possible damage; enemies cannot apply evasion buffs while in direct combat with this character |

**Identity:** The Duelist is the finest individual combatant in the Isles. They are not built for armies — they are built for the moment when the outcome depends on one person's skill.

---

### Path 2: Berserker

*Rage-state offense, momentum damage, and high-risk high-reward escalation.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Rising Fury | Passive: damage dealt increases with consecutive hits on the same target |
| Foundation | Reckless Assault | Heavy attack that ignores stamina costs but briefly lowers defense |
| Developed | Battle Rage | Active: enter a rage state — offense sharply increases, defense decreases |
| Developed | Momentum | Passive: movement speed increases when charging toward an enemy |
| Mastery | Unbroken | Passive: during Battle Rage, cannot be stunned or interrupted by standard attacks |
| Mastery | Bloodlust | Recover health proportional to damage dealt during rage state |
| Expert | Warlord's Cry | Shout that terrifies nearby enemies and briefly buffs nearby allies |
| Expert | Unstoppable | For a short duration, cannot be slowed, rooted, or knocked back |
| Pinnacle | Berserker's Apotheosis | Extended rage state with dramatically increased damage, health recovery, and immunity to crowd control — but leaves the character exhausted afterward |

**Identity:** The Berserker is momentum and consequence. Every fight is an escalating gamble — get ahead and you are unstoppable; fall behind and the cost is catastrophic.

---

### Path 3: Vanguard

*Assault group leader, charge mechanics, and front-line suppression.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Advance | Short charge ability that closes distance and deals knockback |
| Foundation | Hold the Line | Stance: increases area threat generation, drawing enemy attention in group combat |
| Developed | Battle Formation | Group aura: nearby allies receive a small defense bonus while the Vanguard maintains position |
| Developed | Suppressing Strike | Attack that reduces enemy movement speed and attack speed briefly |
| Mastery | Breach | Charge that breaks through shield blocks and defensive stances |
| Mastery | Forward Command | Active: boost nearby allied attack speed for a short duration |
| Expert | Siege Order | Command ability that marks a target; all allies deal bonus damage against that target |
| Expert | Iron Presence | Passive: enemies in melee range have reduced attack speed simply by proximity |
| Pinnacle | Vanguard Authority | Permanent passive: the Vanguard becomes the natural anchor of any battle formation. Group combat effectiveness increases significantly when this character leads the assault. Unlocks the Military Commander political title path. |

**Identity:** The Vanguard is the reason armies win. They are not the deadliest fighter — they are the one who makes every fighter around them deadlier.

---

## Knight Ability Trees

### Path 1: Guardian

*Maximum defense, group shielding, and immovable anchor.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Iron Wall | Stance: dramatically increase block chance at the cost of movement speed |
| Foundation | Shield Bash | Strike with shield to stun enemy briefly |
| Developed | Fortress Block | Active: for a short duration, all block attempts succeed automatically |
| Developed | Protected Ground | Aura: nearby allies receive a small physical defense bonus |
| Mastery | Immovable | Passive: become immune to knockback and displacement effects |
| Mastery | Guardian's Oath | Active: redirect a portion of damage dealt to a designated ally to yourself instead |
| Expert | Last Stand | When health drops below a threshold, temporarily double physical defense |
| Expert | Defiant Roar | Reduce enemy attack speed and morale in range; boost allied defense briefly |
| Pinnacle | The Shield of the Isles | Passive: all allies within range receive a permanent defense bonus while the Guardian stands. Enemies targeting this character deal reduced damage to the entire group. Unlocks the Garrison Commander political title path. |

**Identity:** The Guardian exists so that others can survive. Their power is measured not in enemies defeated but in allies still standing.

---

### Path 2: Templar

*Ward-aligned combat, anti-Veil tactics, and sacred oath mechanics.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Ward Seal | Passive: weapon strikes carry minor Ward energy, bonus against Veil-corrupted enemies |
| Foundation | Smite | Active: radiant strike that deals bonus damage against corruption-type enemies |
| Developed | Sacred Ground | Plant a Ward standard that creates a protection zone around an area |
| Developed | Oath of Vigilance | Passive: bonus stats when fighting in proximity to active Ward infrastructure |
| Mastery | Purifying Strike | Attack that removes one corruption effect from a target enemy |
| Mastery | Radiant Ward | Shield ability that reflects magical damage back to attacker briefly |
| Expert | Divine Condemnation | High-damage attack against Veil-type enemies; moderate damage against others |
| Expert | Unbroken Oath | Passive: while at full health, all Ward abilities cost no mana |
| Pinnacle | Templar's Covenant | Permanent passive: this character becomes a recognized Ward agent. Ward installations in range are repaired passively. Veil-corrupted enemies have reduced effectiveness against all nearby allies. Unlocks the Ward Commander political title path. |

**Identity:** The Templar is the sword arm of the Ward network. They do not ask whether the fight is fair — only whether it must be fought.

---

### Path 3: Warden

*Garrison command, territory control, and fortification expertise.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Inspect Ground | Assess an area for defensibility; highlights tactical points |
| Foundation | Authority Presence | Passive: morale bonus to nearby allies in controlled (safe) territory |
| Developed | Build Barricade | Deploy a temporary physical barrier that blocks movement and provides cover |
| Developed | Controlled Ground | Passive: bonus to defense stats while standing still in a prepared position |
| Mastery | Fortify | Passive bonus to allied defense while within a player-controlled garrison or building |
| Mastery | Strategic Command | Group ability: designate rally points that allied players can navigate toward |
| Expert | Garrison Rights | Passive: can claim garrison buildings as temporary faction assets in controlled zones |
| Expert | Warden's Resolve | When standing in defended territory, cannot be flanked or surprised |
| Pinnacle | Lord Warden | Permanent passive: this character can formally govern a garrison location, collect taxes from NPCs in range, and receive daily resource income. Full access to the Governor political title progression. |

**Identity:** The Warden builds the line and holds it. Their power grows with every square mile they secure.

---

## Paladin Ability Trees

### Path 1: Lightbearer

*Radiant healing and group support, group resilience focus.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Healing Touch | Single-target heal that restores health over time |
| Foundation | Ward Blessing | Passive aura: minor health regeneration for nearby allies |
| Developed | Radiant Surge | Burst heal that instantly restores a moderate amount of health |
| Developed | Cleansing Light | Remove one negative effect from a friendly target |
| Mastery | Beacon of Hope | Place a light anchor point; allies near it receive continuous healing |
| Mastery | Barrier of Faith | Shield a target, absorbing incoming damage for a short duration |
| Expert | Mass Restoration | Heal all nearby allies simultaneously |
| Expert | Sanctified Presence | Passive: nearby allies regenerate health faster in Veil-affected zones |
| Pinnacle | Living Light | Permanent passive: this Paladin radiates constant healing to all nearby allies. In Veil zones, the effect is amplified. Unlocks the Ward Healer renown title. |

**Identity:** The Lightbearer is the reason expeditions survive. Where others count casualties, a skilled Lightbearer counts survivors.

---

### Path 2: Ward Keeper

*Ward infrastructure interaction, Veil suppression, and defensive field maintenance.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Ward Sense | Passive: detect nearby Ward installations and their operational state |
| Foundation | Seal Breach | Active: temporarily stabilize a minor Veil breach |
| Developed | Resonance Field | Deploy a short-duration Ward energy field that slows Veil creatures |
| Developed | Attune | Link to an active Ward installation; receive defensive bonuses while linked |
| Mastery | Repair Ward Node | Restore a damaged Ward node to operational status (requires crafting materials) |
| Mastery | Veil Suppression | Aura that reduces the effectiveness of Veil-type enemies and corruption spread |
| Expert | Dimensional Anchor | Lock a breach in place, preventing it from expanding for an extended duration |
| Expert | Ward Amplification | Temporarily boost a Ward installation's effectiveness beyond normal capacity |
| Pinnacle | Keeper of the Network | Permanent passive: this character can register as an official Ward Keeper, receiving Ward Command faction authority. Can permanently repair Ward nodes. Access to Ward infrastructure that no other class can interact with. |

**Identity:** The Ward Keeper is the Isles' last line of defense against the Veil. Their work is the unglamorous maintenance of a world that would fall apart without them.

---

### Path 3: Crusader

*Aggressive Ward energy offense and anti-corruption assault tactics.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Holy Charge | Charge attack that deals bonus damage against corrupted enemies |
| Foundation | Radiant Weapon | Imbue weapon with Ward energy for increased damage against Veil targets |
| Developed | Judgment | Mark a target as corrupted; all damage against them increases briefly |
| Developed | Sacred Fury | While below half health, Ward energy abilities deal bonus damage |
| Mastery | Consecrate | Apply Ward energy to an area; Veil creatures entering take continuous damage |
| Mastery | Crusader's Wrath | Enhanced melee strike that chains Ward energy to nearby corrupted enemies |
| Expert | Burning Faith | Active: surge of Ward energy that damages all Veil enemies in range simultaneously |
| Expert | Undying Purpose | When defeated, briefly return to action — a second chance powered by Ward energy |
| Pinnacle | The Last Crusade | Permanent passive: this character's combat effectiveness against Veil corruption is legendary. Bonus damage against all Veil-type enemies becomes permanent. Unlocks the Faction Champion path within Ward Command. |

**Identity:** The Crusader does not defend — they take the fight to the Veil. Every ability is a statement: the corruption retreats, or we force it to.

---

## Mage Ability Trees

### Path 1: Stormcaller

*Weather and lightning control, naval and open-field dominance.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Static Shock | Short-range lightning bolt with brief stun effect |
| Foundation | Wind Reading | Passive: bonus to navigation accuracy; slight movement speed boost in open environments |
| Developed | Chain Lightning | Lightning bolt that arcs between multiple nearby enemies |
| Developed | Gust | Knockback blast of wind that disrupts enemy positioning |
| Mastery | Storm Surge | Create an electrical storm in a target area for sustained area damage |
| Mastery | Lightning Conduct | Passive: cast spells faster while standing in rain, storms, or at sea |
| Expert | Tempest Call | Summon a localized storm that damages enemies and disrupts navigation for enemies |
| Expert | Sky Dominance | Passive: dramatically increased damage and range for all storm abilities in open environments |
| Pinnacle | Eye of the Storm | Permanent passive: this Mage can manipulate weather at a regional level — changing conditions for sea travel, agriculture, or military operations. Access to Tempest Accord senior council by invitation. |

**Identity:** The Stormcaller is the sea's voice given human form. In open water, they are the most feared individual in any engagement.

---

### Path 2: Flamebinder

*Sustained elemental offense, heat manipulation, and forge-magic synergy.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Firebolt | Direct fire projectile with burning-over-time effect |
| Foundation | Forge Affinity | Passive: bonus to fire-based crafting and alchemy; reduced cooldown on fire abilities |
| Developed | Flame Burst | Short-range area fire explosion centered on caster |
| Developed | Heat Aura | Passive: enemies in melee range take minor fire damage over time |
| Mastery | Inferno Column | Channel a sustained stream of fire against a target for massive damage |
| Mastery | Molten Ground | Leave burning terrain that damages enemies who pass through it |
| Expert | Bind the Flame | Wrap a target in fire that both damages and prevents movement |
| Expert | Forge Soul | Passive: fire abilities have a chance to produce rare crafting materials |
| Pinnacle | Living Flame | Permanent passive: fire abilities no longer have cooldowns — they cost mana only. Access to rare Flamebinder crafting recipes that cannot be obtained by any other class. |

**Identity:** The Flamebinder does not burn things — they understand fire. The difference is the space between a torch and a forge.

---

### Path 3: Rift Scholar

*Dimensional energy mastery, Ward interaction, and anomaly navigation.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Dimensional Read | Analyze an anomaly or Ward installation to understand its state |
| Foundation | Rift Bolt | Fire a bolt of dimensional energy that bypasses physical armor |
| Developed | Phase Step | Short-range teleport that moves through solid barriers |
| Developed | Void Anchor | Root a target in dimensional space, preventing movement |
| Mastery | Rift Vent | Open a temporary dimensional vent that deals continuous area damage |
| Mastery | Stabilize | Temporarily stabilize a Veil anomaly — slowing its expansion and allowing safe passage |
| Expert | Dimensional Conduit | Link two points on a map; allies can briefly move between them |
| Expert | Unravel | Disassemble a Ward or relic system to analyze its components |
| Pinnacle | Architect of Reality | Permanent passive: this Mage can interact with pre-Fracturing dimensional systems. Access to the deepest anomaly zones. Ability to permanently close minor Veil breaches. Standing invitation to Tempest Accord senior research council. |

**Identity:** The Rift Scholar stands at the edge of what reality can withstand. Their research is the most dangerous and most important work in the Isles.

---

## Ranger Ability Trees

### Path 1: Wayfinder

*Navigation mastery, route discovery, and extreme terrain survival.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Pathfind | Identify a safe route through hazardous terrain |
| Foundation | Terrain Reading | Passive: movement speed penalty from rough terrain is reduced |
| Developed | Untracked | Passive: movement leaves no tracks; reduces enemy pursuit effectiveness |
| Developed | Landmark Memory | Mark locations for personal reference and later navigation |
| Mastery | Hidden Route | Discover concealed passages in known terrain areas |
| Mastery | Trail Guide | Group ability: share navigation bonuses with nearby allies |
| Expert | Pioneer's Instinct | Passive: significantly increased chances of finding hidden content in unexplored zones |
| Expert | Register Discovery | Formally register a discovered route or location — grants income and faction standing |
| Pinnacle | Cartographer of the Isles | Permanent passive: this Ranger has mapped more of the world than any other living person. Can sell route access to factions. Access to the Pathfinder renown title and associated political privileges. |

**Identity:** The Wayfinder goes where the map ends. Their knowledge is the most valuable geography in the Isles.

---

### Path 2: Sharpshooter

*Maximum ranged precision, long-range elimination, and sniper positioning.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Steady Aim | Stand still briefly to increase ranged accuracy significantly |
| Foundation | Focus | Passive: increased critical hit chance with ranged weapons |
| Developed | Piercing Shot | Arrow that penetrates enemy armor to deal bonus damage |
| Developed | Long Range | Passive: increased effective range with bows and thrown weapons |
| Mastery | Suppressing Fire | Rapid shots that reduce enemy movement speed in a target area |
| Mastery | Sniper Position | Find and occupy ideal elevated positions for ranged engagement |
| Expert | Perfect Shot | One guaranteed critical hit with full damage multiplier after brief preparation |
| Expert | Wind Compensation | Passive: weather and environmental effects no longer affect ranged accuracy |
| Pinnacle | The Last Arrow | Permanent passive: the first ranged attack in every combat engagement deals critical damage automatically. Standing reputation with frontier factions as the finest marksman alive. |

**Identity:** The Sharpshooter ends threats before they become fights. Distance is their advantage and their art.

---

### Path 3: Beasthunter

*Creature tracking, monster weakness exploitation, and taming systems.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Track Creature | Identify and follow creature trails across terrain |
| Foundation | Study Prey | Analyze an enemy to reveal weak points and vulnerabilities |
| Developed | Hunter's Mark | Mark a creature; all damage dealt to it is increased temporarily |
| Developed | Trap Set | Place a mechanical trap that slows or stops a creature |
| Mastery | Exploit Weakness | Strike identified weak point for significantly increased damage |
| Mastery | Lure | Deploy a distraction that draws creatures away from a protected area |
| Expert | Tame | Attempt to befriend and tame certain creature types as companions |
| Expert | Apex Predator | Passive: bonus to all combat stats when hunting a creature that has previously hurt you |
| Pinnacle | Master of the Wild | Permanent passive: this Ranger is recognized as the foremost authority on Isles creatures. Can register rare specimen discoveries. Tamed companions gain unique abilities. Access to creature-related Tempest Accord research contracts. |

**Identity:** The Beasthunter respects the Isles as it is — full of things that will kill you, if you don't know them first.

---

## Rogue Ability Trees

### Path 1: Shadowblade

*Assassination focus, silent elimination, and mark-and-execute systems.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Stealth | Enter concealed state; reduced visibility to enemies |
| Foundation | Backstab | Melee attack from stealth that deals dramatically increased damage |
| Developed | Shadow Step | Teleport to a nearby enemy from stealth |
| Developed | Mark | Designate a target; increased critical hit chance against them |
| Mastery | Execute | Finish a weakened target instantly if below a health threshold |
| Mastery | Vanish | Re-enter stealth mid-combat; brief invulnerability during the transition |
| Expert | Death from Shadow | From stealth, deal maximum possible damage on a single target — one guaranteed kill trigger per engagement |
| Expert | Phantom Movement | Passive: all movement in stealth creates no sound and leaves no perceptible trace |
| Pinnacle | The Last Shadow | Permanent passive: this Rogue's existence is barely documented. Stealth duration is unlimited. Social reputation as someone the powerful do not speak of casually — and fear. |

**Identity:** The Shadowblade is the last thing a target understands. Everything before that moment was the Shadowblade deciding whether the moment was right.

---

### Path 2: Smuggler

*Trade route manipulation, contraband systems, and contact network management.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Conceal Item | Hide items from inspection mechanics |
| Foundation | Black Market Contact | Access to one black market vendor in starting region |
| Developed | Hidden Cargo | Ship-wide item concealment for naval inspection events |
| Developed | Route Knowledge | Passive: bonus income on routes that bypass official checkpoints |
| Mastery | Fence | Sell stolen or contraband goods at market value instead of reduced value |
| Mastery | Bribe | Reduce NPC faction suspicion using coin |
| Expert | Network Node | Establish a personal black market contact point in any visited region |
| Expert | Shadow Economy | Passive: this character's trade operations are not visible to faction trade records |
| Pinnacle | The Smuggler King | Permanent passive: this character runs the most sophisticated contraband network in the Isles. Access to goods that are otherwise unobtainable. Diplomatic immunity within Corsair territory. All factions quietly need this character's cooperation. |

**Identity:** The Smuggler moves what the world needs and pretends not to know it. That pretense is worth more than any weapon.

---

### Path 3: Spymaster

*Intelligence gathering, contact network management, and political leverage.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Observe | Gather detailed information about an NPC target's faction, wealth, and connections |
| Foundation | Disguise | Assume a surface identity that reduces social suspicion |
| Developed | Plant Agent | Leave an NPC contact that passively collects information in a visited location |
| Developed | Extract Intelligence | Gather specific information from a target through social interaction |
| Mastery | Leverage | Apply gathered intelligence to reduce an NPC's resistance or gain social compliance |
| Mastery | Counter-Intelligence | Detect planted agents and information leaks in controlled territories |
| Expert | Asset Network | Maintain a distributed network of planted contacts across multiple regions |
| Expert | Information Broker | Sell intelligence to faction contacts for standing and payment |
| Pinnacle | The Invisible Hand | Permanent passive: this character has influence networks in every faction. Political decisions made without this character's awareness are rare. Access to the Spymaster political role — which officially does not exist. |

**Identity:** The Spymaster is not the most powerful person in the room. They are the person who decides who the most powerful person in the room will be next week.

---

## Witch Ability Trees

### Path 1: Curseweaver

*Deep curse and affliction mastery, layered debuff systems.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Hex | Apply a basic curse that reduces target stats for a duration |
| Foundation | Wither | Passive aura that slowly reduces enemy health regeneration |
| Developed | Tangle | Root curse that prevents target movement for a short duration |
| Developed | Layered Curse | Passive: curses applied simultaneously have enhanced effects |
| Mastery | Unbreakable Hex | Curse that cannot be removed by standard cleansing abilities |
| Mastery | Contagion | Curse that spreads to nearby enemies when the original target takes damage |
| Expert | Total Ruin | Apply all known curses to a single target simultaneously |
| Expert | Lingering Shadow | Passive: all curses applied by this character last twice as long |
| Pinnacle | Weaver of Fates | Permanent passive: this Witch's curses are legendary — recognized and feared by every faction in the Isles. Can place long-duration curses on locations that function as traps. Political authority within Thornbound Circles is absolute. |

**Identity:** The Curseweaver does not fight enemies. They make enemies into someone else's problem.

---

### Path 2: Veil Seer

*Dimensional sight, corruption navigation, and Veil intelligence.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Veil Sight | Perceive Veil energy, corruption states, and dimensional anomalies |
| Foundation | Read the Corruption | Analyze a corrupted object or location for information about its history |
| Developed | Veil Step | Enter a brief state of partial Veil-phase — reduced visibility to enemies |
| Developed | Corruption Read | Identify the specific type and strength of corruption affecting an area |
| Mastery | Dimensional Echo | Receive a vision of past events in a corrupted location |
| Mastery | Veil Navigation | Move safely through corrupted zones that would damage other characters |
| Expert | Call from the Veil | Temporarily summon a Veil entity as a distraction or controlled ally |
| Expert | Corruption Mapping | Document corruption patterns in a region — valuable intelligence for multiple factions |
| Pinnacle | Voice of the Veil | Permanent passive: this Witch can communicate with Veil entities. Has access to information no other character type can obtain. The Thornbound Circles and Tempest Accord both seek this character's intelligence. |

**Identity:** The Veil Seer goes where others run from. What they see there is power — and warning.

---

### Path 3: Ritual Binder

*Group ritual casting and powerful preparation-based abilities.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Ritual Circle | Draw a circle that enhances casting for the Witch while standing inside it |
| Foundation | Bound Reagent | Prepare ritual materials that increase ability effectiveness |
| Developed | Group Ritual | Allow other players to participate in ritual casting for amplified effects |
| Developed | Ritual Ward | A defensive circle that harms enemies who cross its boundary |
| Mastery | Greater Binding | Ritually bind an enemy, preventing them from using abilities for a duration |
| Mastery | Consecrated Ground | Create a long-duration ritual zone with continuous effects |
| Expert | Convergence | Ritual that channels the power of multiple participants into a single, devastating effect |
| Expert | Eternal Seal | Place a ritual seal on a location that persists for days in game time |
| Pinnacle | The Grand Ritual | Permanent passive: this Witch can conduct world-altering ritual events. With sufficient participants, can close Veil breaches, protect regions, or curse entire locations. Access to Thornbound senior council authority. |

**Identity:** The Ritual Binder is the reason covens exist. Their greatest work is never done alone.

---

## Pirate Ability Trees

### Path 1: Corsair

*Sea combat mastery, evasive engagement, and naval suppression.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Sea Legs | Passive: no movement penalties on moving ship decks |
| Foundation | Quick Escape | Disengage mechanic that breaks pursuit briefly |
| Developed | Boarding Rush | Charge ability designed for ship-to-ship transitions |
| Developed | Wind Gauge | Passive: read wind conditions to optimize ship speed |
| Mastery | Evasive Maneuver | Ship-level ability: dodge an incoming attack by rapid course change |
| Mastery | Suppress Fire | Ranged suppression that reduces enemy ship crew effectiveness |
| Expert | Ghost Ship Run | Run a ship without lights in nighttime conditions — nearly undetectable at range |
| Expert | Reef Navigation | Navigate shallow reef passages that damage larger ships |
| Pinnacle | Captain of the Free Sea | Permanent passive: this Pirate is recognized across all Corsair territory. Can negotiate safe passage for any ship under their protection. Access to the Pirate Lord political title path. |

**Identity:** The Corsair owns the sea. Or at least, they make everyone else believe they do.

---

### Path 2: Gunslinger

*Firearms expertise, quick-draw mechanics, and ranged naval superiority.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Quick Draw | Draw and fire a pistol before opponents can react |
| Foundation | Gunpowder Expert | Passive: firearms deal increased damage; reduced misfire chance |
| Developed | Fan the Hammer | Rapid-fire multiple shots in quick succession at reduced accuracy |
| Developed | Aimed Shot | Take time to aim for a guaranteed critical hit with a firearm |
| Mastery | Trick Shot | Ricochet a shot off a surface to hit targets around cover |
| Mastery | Explosive Round | Loaded special ammunition that deals area damage |
| Expert | Double Tap | Two instant shots at the same target with no recovery time between |
| Expert | Legendary Aim | Passive: all firearms attacks automatically calculate optimal trajectory |
| Pinnacle | The Gun They Fear | Permanent passive: this Pirate's reputation with firearms precedes them. Enemies in range have reduced combat effectiveness due to psychological intimidation. Access to unique legendary weapons. |

**Identity:** The Gunslinger wins before the fight starts. Their reputation is the first shot.

---

### Path 3: Raider Captain

*Boarding leadership, crew command, and ship assault coordination.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Boarding Order | Command nearby allied crew to board an enemy ship simultaneously |
| Foundation | Crew Morale | Passive: nearby allied crew members have increased effectiveness |
| Developed | Rally | Restore morale to depleted crew members in a short area |
| Developed | Breach and Clear | Coordinated breaching maneuver that opens ship access points |
| Mastery | Captain's Authority | Passive: crew members under this captain's command have significantly enhanced stats |
| Mastery | Priority Target | Mark an enemy captain or officer — all crew focus fire on the mark |
| Expert | Overwhelming Boarding | Coordinated assault that disables enemy deck crew simultaneously |
| Expert | Commandeer | After successful boarding, claim an enemy ship as a prize |
| Pinnacle | Pirate Fleet Admiral | Permanent passive: this Raider Captain can command multiple ships in coordinated naval engagements. Access to the full Pirate Lord political progression. Corsair faction title: High Raider. |

**Identity:** The Raider Captain is the reason the crew is willing to go over the side. They make impossible boarding actions feel like certainty.

---

## Non-Human Specialization Trees

### Dwarf: Defender/Engineer Paths

#### Hold Defender Path

*Maximum physical defense and underground combat.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Stone Stance | Defensive posture that maximizes block and physical defense |
| Developed | Tunnel Fighter | Bonus to all combat stats in underground and cave environments |
| Mastery | Immovable Wall | Temporary state of absolute physical damage immunity |
| Expert | Dragon Resilience | Passive: resistance to fire, pressure, and dragon-specific attacks |
| Pinnacle | Hold's Last Defense | The Dwarf can single-handedly hold a chokepoint against overwhelming numbers for a short but decisive duration |

#### Siege Engineer Path

*Destructive engineering, cannon operations, and structural demolition.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Structural Analysis | Identify weak points in walls, ships, and fortifications |
| Developed | Demolish | Place explosive charges on structural targets |
| Mastery | Artillery Direction | Improve cannon and siege weapon accuracy for nearby allies |
| Expert | Forge Bomb | Deploy a powerful engineering explosive with wide area damage |
| Pinnacle | Master Demolitions | Can destroy fortified structures, sealed ruins, and Ward-sealed passages that no other class can breach |

#### Runesmith Path

*Forge-magic integration, weapon enhancement, and rune inscription.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Rune Inscription | Add basic rune bonuses to crafted weapons or armor |
| Developed | Bind Rune | Permanently enchant equipment with a chosen elemental property |
| Mastery | Master Inscription | Create multi-rune weapons with layered effects |
| Expert | Ancestral Rune | Channel ancient Dwarven rune knowledge for unique equipment properties |
| Pinnacle | Grand Runesmith | Become the foremost rune authority in the Isles — can create items that no other craftsperson can replicate |

---

### Elf: Mystic Ranger Paths

#### Enclave Scout Path

*Stealth mastery, environmental navigation, and intelligence gathering.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Forest Veil | Stealth in forested and natural environments |
| Developed | Silent Path | Move through any environment without triggering detection |
| Mastery | Witness | Observe distant events and report them with perfect accuracy |
| Expert | Ghost Walk | Move through Witchwood in a state of near-total concealment |
| Pinnacle | The Watching Eye | This character is the Enclave's eyes across the Isles — their intelligence is the most accurate available to any faction |

#### Ward Keeper Path

*Ward infrastructure interaction and Veil field maintenance.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Ward Link | Connect to a nearby Ward installation and sense its operational state |
| Developed | Repair Node | Restore a damaged Ward node with materials |
| Mastery | Field Tuning | Adjust Ward output to create specific defensive or detection effects |
| Expert | Network Override | Temporarily redirect Ward energy across a local network |
| Pinnacle | Keeper of the Old Network | Can restore and maintain Ward infrastructure across an entire island region |

#### Moonroot Mystic Path

*Deep magic, forest ritual, and dimensional energy manipulation.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Moonroot Attune | Connect to the dimensional energy flowing through Witchwood |
| Developed | Spirit Burst | Release stored dimensional energy as a ranged attack |
| Mastery | Forest Ritual | Channel a ritual through natural growth for amplified magical effects |
| Expert | Dimensional Weave | Manipulate local dimensional energy to reshape terrain effects |
| Pinnacle | Voice of the Ancient Wood | This Elf speaks with the authority of the oldest living system in the Isles — the forest itself |

---

### Gnome: Engineer/Relic Specialist Paths

#### Field Technician Path

*Gadget combat mastery and deployable device optimization.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Deploy Turret | Place a basic automated defense device |
| Developed | Advanced Gadget | Craft and deploy enhanced utility devices |
| Mastery | Overcharge | Temporarily boost all deployed gadgets to maximum effectiveness |
| Expert | Synchronized Systems | All deployed devices coordinate as a network |
| Pinnacle | Living Armory | This character's field installations are the equivalent of a small garrison — fully autonomous, highly effective, and terrifying to anyone who doesn't know they're there |

#### Relic Architect Path

*Ancient system reconstruction and Ward-tech interface.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Relic Scan | Identify relic type, age, and function |
| Developed | Component Recovery | Extract intact components from damaged relics |
| Mastery | System Reconstruction | Rebuild a damaged pre-Fracturing device to partial function |
| Expert | Full Restoration | Restore a pre-Fracturing system to complete operational status |
| Pinnacle | Architect of the Old World | This Gnome can reactivate systems that have been dormant since the Fracturing — changing the strategic landscape of entire island regions |

#### Artificer Path

*Item creation mastery, enchanting, and crafted power systems.*

| Tier | Ability | Description |
| --- | --- | --- |
| Foundation | Enhanced Crafting | Create items with one additional property slot |
| Developed | Arcane Integration | Combine mechanical and magical properties in crafted items |
| Mastery | Masterwork | Create items of exceptional quality that cannot be produced by other crafters |
| Expert | Unique Commission | Design and build one-of-a-kind items for specific requests |
| Pinnacle | Grand Artificer | The only craftsperson in the Isles who can create certain legendary items. Factions actively seek this character's commissions and will negotiate significant political concessions for priority access. |

---

## Cross-Tree Synergies

Some ability combinations across different trees create enhanced effects. These synergies reward deliberate character design without penalizing focused builds.

| Synergy | Trees Involved | Effect |
| --- | --- | --- |
| Ward & Veil | Paladin Ward Keeper + Witch Veil Seer | Can jointly close major Veil breaches that neither could address alone |
| Naval Command | Pirate Raider Captain + Fighter Vanguard | Combined boarding operations have dramatically enhanced effectiveness |
| Exploration Network | Ranger Wayfinder + Rogue Spymaster | Discovered routes can be integrated into intelligence networks |
| Forge & Rune | Dwarf Siege Engineer + Dwarf Runesmith | Explosive devices can be rune-inscribed for unique combined effects |
| Storm & Ward | Mage Stormcaller + Elf Ward Keeper | Weather manipulation can be channeled through Ward installations for regional-level effects |
| Relic & Magic | Gnome Relic Architect + Mage Rift Scholar | Joint ability to reactivate and operate the most complex pre-Fracturing systems |

---

## Related Documents


## Suggested Reading
- Previous: [Abilities System] (abilities_system.md)
- Next: [📊 Stats System] (stats_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/effects_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Effects System

---

# Effects System
## Overview

Effects are the atomic units of gameplay change in Mystical Isles. Every ability applies one or more effects. Effects are the mechanism through which skill investment, ability use, and world interaction produce tangible results.

Understanding the effects system means understanding the building blocks of all combat, crafting, exploration, and political gameplay in the Isles.

---

## Related Documents

- [Skills System] (./skills_system.md)
- [Abilities System] (./abilities_system.md)
- [Mastery & Progression] (./mastery_progression.md)
- [Starting Character Templates] (./starting_templates.md)

---

## Core Design Philosophy

| Principle | Implementation |
| --- | --- |
| Effects are stackable | Multiple abilities can apply multiple effects simultaneously |
| Effects interact | Some effects amplify, negate, or transform other effects |
| Effects have world context | The same effect behaves differently in different environments |
| Effects tie to narrative | Corruption effects change NPC reactions; world effects alter the political landscape |
| Effects drive cooperation | Some effects can only be countered by players with specific skills |

---

## Effect Structure (Atavism X 9)

Each effect in the Atavism X 9 framework is defined by:

| Field | Description |
| --- | --- |
| Name | Unique identifier |
| Description | What the effect does |
| Effect Category | Damage / Restoration / Stat / Control / Special |
| Duration | Seconds; 0 = instant; -1 = permanent until cleansed |
| Magnitude | Numeric value of the effect |
| Tick Rate | For over-time effects: how often the effect applies in seconds |
| Stack Behavior | Does not stack / Stacks to X / Refreshes duration |
| Resistible | Whether targets can resist or reduce the effect |
| Resistance Stat | Which stat resists this effect |
| Cleansable | Whether the effect can be removed by abilities |
| Cleanse Method | Specific ability or item type required to cleanse |
| Visual Indicator | On-character visual feedback |
| World Behavior | Special environmental rules |

---

## Damage Effects

Damage effects reduce Health, Stamina, Mana, Hull Integrity, or Crew capacity directly.

### Physical Damage

| Effect | Description | Duration | Stack Behavior | Resistance Stat | Visual Indicator |
| --- | --- | --- | --- | --- | --- |
| Slash Damage | Cutting damage from bladed weapons | Instant | Does not stack | Slash Resistance | Blood particle on hit |
| Pierce Damage | Penetrating damage from thrusts, arrows, firearms | Instant | Does not stack | Pierce Resistance | Puncture indicator |
| Crush Damage | Blunt trauma from hammers, shields, ship collisions | Instant | Does not stack | Crush Resistance | Impact shockwave |
| Bleeding | Ongoing damage from open wounds | 10s (default) | Stacks to 5 | Endurance (partial) | Red overlay trickle |
| Poison | Ongoing damage from toxic substances | 15s (default) | Stacks to 3 | Willpower (partial) | Green tinge overlay |
| Burning | Ongoing fire damage; spreads to nearby flammable objects | 8s (default) | Refreshes duration | Endurance (partial) | Flame particle overlay |

### Magical Damage

| Effect | Description | Duration | Stack Behavior | Resistance Stat | Visual Indicator |
| --- | --- | --- | --- | --- | --- |
| Arcane Damage | Raw dimensional energy impact | Instant | Does not stack | Magical Resistance | Arcane particle burst |
| Fire Damage | Concentrated thermal energy release | Instant + Burning chance | Does not stack | Magical Resistance | Flame expansion |
| Frost Damage | Thermal reduction; also applies Slow | Instant + Slow | Does not stack | Magical Resistance | Ice crystal burst |
| Lightning Damage | Electrical chain damage; jumps to nearby targets | Instant | Does not stack | Magical Resistance | Arc lightning visual |
| Veil Corruption Damage | Dimensional energy assault; builds Corruption on target | Instant + Corruption buildup | Stacks to 10 | Corruption Resistance | Purple-black energy pulse |
| Curse Damage | Ongoing entropy from applied curse effect | Duration of curse | Stack adds duration | Willpower | Dark shimmer on target |

### Naval Damage

| Effect | Description | Duration | Stack Behavior | Resistance Stat | Visual Indicator |
| --- | --- | --- | --- | --- | --- |
| Hull Damage | Direct structural damage to ship | Instant | Does not stack | Ship Class (armor) | Splinter/smoke effect |
| Fire Spread | Burning hull effect expanding over time | 30s | Refreshes | Fire Resistance (ship equipment) | Ship fire visual |
| Rigging Damage | Destroys or damages sail rigging | Instant | Stacks (cumulative) | Ship Class | Sail tear visual |
| Crew Damage | Direct damage to crew population | Instant | Does not stack | Crew Armor (equipment) | Crew scattering visual |
| Hull Breach | Flooding begins; takes water over time | Until repaired | Does not stack | Ship Repair (active counter) | Water flooding visual |

---

## Restoration Effects

Restoration effects increase Health, Stamina, Mana, Hull Integrity, or reduce negative states.

| Effect | Description | Duration | Tick Rate | Stack Behavior | Cleansable |
| --- | --- | --- | --- | --- | --- |
| Heal | Instant Health restoration | Instant | — | Does not stack | No |
| Heal Over Time | Gradual Health restoration | 10–30s | 2s | Stacks to 3 | No (beneficial) |
| Mana Restore | Instant Mana restoration | Instant | — | Does not stack | No |
| Mana Flow | Gradual Mana restoration | 15s | 3s | Stacks to 2 | No (beneficial) |
| Stamina Restore | Instant Stamina restoration | Instant | — | Does not stack | No |
| Endurance Surge | Brief Stamina regeneration accelerator | 8s | 1s | Does not stack | No |
| Corruption Cleanse | Removes Corruption buildup | Instant | — | Does not stack | N/A (is itself a cleanse) |
| Hull Repair | Restores Ship Hull Integrity | Over repair duration | 5s | Does not stack | N/A |
| Crew Recovery | Restores crew morale and minor crew losses | Instant | — | Does not stack | No |

---

## Stat Effects

Stat effects modify combat performance, resource pools, movement, or special capabilities for a duration.

### Buffs

| Effect | Description | Duration | Stack Behavior | Stat Modified | Source Example |
| --- | --- | --- | --- | --- | --- |
| Strength Boost | Increases Strength | 30–120s | Does not stack | Strength | Power Buff potion, Leadership ability |
| Dexterity Boost | Increases Dexterity | 30–120s | Does not stack | Dexterity | Swift Step potion |
| Endurance Boost | Increases Endurance | 30–300s | Does not stack | Endurance | Dwarf Fortress Ale, Defensive Stance |
| Damage Dealt Boost | Increases outgoing damage | 20–60s | Does not stack | Damage Dealt | Berserker Rage, War Horn |
| Speed Boost | Increases Movement Speed | 10–30s | Does not stack | Movement Speed | Sprint ability, Eagle's Grace potion |
| Defense Boost | Increases Physical Defense | 30–120s | Does not stack | Physical Defense | Shield Wall, Fortress Stance |
| Magic Resistance Boost | Increases Magical Resistance | 30–120s | Does not stack | Magical Resistance | Ward Barrier, Veil Cloak potion |
| Cooldown Reduction | Reduces ability cooldown durations | 30–60s | Does not stack | Cooldown | Focus potion, Mage Mastery passive |
| Range Boost | Increases range of ranged attacks | Passive (item/ability) | Does not stack | Range | Eagle Eye stance |
| Stealth Boost | Increases Stealth stat | 20–60s | Does not stack | Stealth | Shadow Cloak, Rogue passive |
| Perception Boost | Increases Perception-Stealth (detection) | 30–60s | Does not stack | Perception-Stealth | Ranger tracking stance |
| Naval Speed Boost | Increases Ship Speed | 30s–5 min | Does not stack | Ship Speed | Full Sail, Ghost Wind |
| Cannon Accuracy Boost | Increases cannon hit chance | 60s | Does not stack | Cannon Accuracy | Dead Eye Gunner passive |
| Crafting Quality Boost | Increases crafted item quality chance | Per craft attempt | Does not stack | Crafting Quality | Masterwork Attempt |
| XP Gain Boost | Increases XP gained from activities | 30–120 min | Does not stack | XP Rate | Well-Rested state, faction contract |

### Debuffs

| Effect | Description | Duration | Stack Behavior | Stat Modified | Resistance |
| --- | --- | --- | --- | --- | --- |
| Strength Reduction | Reduces Strength | 10–30s | Does not stack | Strength | Endurance (partial) |
| Speed Slow | Reduces Movement Speed | 3–10s | Refreshes | Movement Speed | Endurance |
| Defense Reduction | Reduces Physical Defense | 10–30s | Stacks to 3 | Physical Defense | Endurance |
| Accuracy Reduction | Reduces hit chance | 10–20s | Does not stack | Attack accuracy | Dexterity |
| Mana Drain | Reduces current Mana | Instant | Does not stack | Mana | Willpower |
| Stamina Drain | Reduces current Stamina | Instant | Does not stack | Stamina | Endurance |
| Attack Speed Reduction | Slows attack cycle | 10–20s | Does not stack | Attack Speed | Dexterity |
| Vision Reduction | Reduces detection radius | 10–30s | Does not stack | Perception | Willpower |
| Weight Penalty | Increases encumbrance effects | Until removed | Does not stack | Weight-Max | Strength |
| Morale Break | Reduces crew or group effectiveness | 30–120s | Does not stack | Leadership output | Willpower |
| Ship Slow | Reduces Ship Speed | 15–60s | Stacks to 3 | Ship Speed | Ship Class |

---

## Control Effects

Control effects limit or eliminate a target's ability to act.

| Effect | Description | Duration | Stack Behavior | Resistance Stat | Cleansable | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| Stun | Target cannot act or move | 1–3s | Does not stack | Stun Resistance / Endurance | Yes (instant cleanse) | Interrupted by strong damage |
| Sleep | Target is unconscious; any damage breaks it | 5–15s | Does not stack | Sleep Resistance / Willpower | Yes | Fragile — any damage wakes |
| Fear | Target flees in random direction | 2–5s | Does not stack | Willpower | Yes | Breaks on high-damage hit |
| Root | Target cannot move but can still act | 3–8s | Does not stack | Endurance | Yes | Can still use abilities |
| Silence | Target cannot use Mana-based abilities | 4–10s | Does not stack | Willpower | Yes | Physical abilities unaffected |
| Disarm | Target cannot use their equipped weapon | 4–8s | Does not stack | Strength / Endurance | Yes | Forces unarmed or ability-only combat |
| Knockback | Target is launched away from attacker | Instant (repositioning) | Does not stack | Endurance | No | Positional disruption |
| Interrupt | Cancels a currently casting ability | Instant | — | Cast completion speed | No | Requires specific abilities to apply |
| Taunt | Forces target to attack the taunter | 3–8s | Does not stack | Willpower | No | Standard group mechanic |
| Panic | Reduces target accuracy and defense, brief random movement | 3–5s | Does not stack | Willpower | Yes | Area versions spread panic |

---

## Special Effects

Special effects alter world state, reveal hidden information, or apply unique mechanics tied to Mystical Isles systems.

### Corruption Effects

| Effect | Description | Duration | Stack Behavior | Cleansable | World Consequence |
| --- | --- | --- | --- | --- | --- |
| Corruption Buildup | Increases character Corruption counter | Persistent | Stacks (cumulative) | Yes (ritual cleanse) | NPC reactions shift; faction standing penalties |
| Veil Mark | Character is tagged as Veil-touched; affects NPC and world interactions | Until cleansed | Does not stack | Yes (Purge Corruption) | Entry denied to Ward-aligned areas |
| Corruption Aura | Active corruption radiates from character to nearby entities | While toggled | N/A | No (toggle off) | NPCs fear and flee; hostile creature attraction |
| Dimensional Scar | Area permanently marked as corrupted | -1 (permanent until cleansed) | Does not stack | Yes (Sacred Ground ritual) | Area changes ambient hostility level |

### Detection & Reveal Effects

| Effect | Description | Duration | Application |
| --- | --- | --- | --- |
| Visibility Reveal | Hidden target becomes visible | Until re-stealth | Counters Stealth, Veil entities, hidden traps |
| Relic Detection | Pre-Fracturing materials highlighted in environment | 30s | Used by Relic Scan, Archaeology abilities |
| Corruption Mapping | Shows corruption spread in area | 60s | Veil Sight ability |
| Ward State Reveal | Shows Ward function status and damage | 30s | Ward Read ability |
| Treasure Marker | Hidden cache location highlighted | 300s | Treasure Sense, Treasure Hunting abilities |
| Route Visualization | Charts navigable route on map | Session | Navigation abilities |
| Hazard Warning | Environmental hazards highlighted | Active (stance) | Hazard Sense, Navigation abilities |

### Environmental Effects

| Effect | Description | Duration | World Impact |
| --- | --- | --- | --- |
| Storm Weather | Local storm spawned; navigation penalties applied | 5–15 min | Ship speed reduced for non-Storm Survival characters; lightning strikes |
| Storm Resistance | Character resists weather penalties | Duration of storm | Allows full function during Stormcall |
| Ward Stability | Area's Ward network stabilized; Veil suppressed | Until disturbed | Veil creatures cannot enter area |
| Ward Disruption | Area's Ward function is reduced | Until repaired | Veil pressure increases; defensive bonuses lost |
| Portal Stabilization | A portal gateway is activated or held open | Duration of effect | Cross-island travel access; temporal exploration access |
| Anomaly Creation | A dimensional anomaly is generated | Until resolved | Navigation hazard; potential resource spawn; political event trigger |
| Anomaly Resolution | An active anomaly is suppressed or closed | Permanent | Route cleared; Ward integrity restored; faction reward potential |

### Naval Special Effects

| Effect | Description | Duration | Application |
| --- | --- | --- | --- |
| Ship Tether | Two ships locked in proximity | Until broken | Enables extended boarding; prevents escape |
| Hull Breach | Ship is taking water; flooding progresses | Until repaired | Ship loses speed; crew loses morale; eventual sinking |
| Sail Destroyed | Ship cannot use wind propulsion | Until repaired | Speed severely reduced; no storm sailing |
| Captain's Fear | Enemy crew has reduced morale | 30s | Effectiveness reduced; potential surrender |
| Crew Abandon | Enemy crew begins jumping ship | 10–30s | Ship effectiveness collapses |

### Crafting Special Effects

| Effect | Description | Duration | Application |
| --- | --- | --- | --- |
| Masterwork Quality | Item receives elevated quality tier | Permanent | Bonus stats; special properties |
| Rare Trait | Item receives a randomly rolled special trait | Permanent | Unique item properties based on material and skill |
| Enchantment | Dimensional property applied to item | Permanent | Stat bonus, special ability, or Ward property |
| Ward Property | Item can interact with Ward systems | Permanent | Required for certain Paladin and exploration content |
| Relic Activation | Pre-Fracturing artifact becomes functional | Permanent | Unlocks ancient technology capabilities |

### Social & Political Effects

| Effect | Description | Duration | Consequence |
| --- | --- | --- | --- |
| Faction Impression | Positive standing shift with a faction | Permanent (incremental) | Better prices, access, contracts |
| Faction Hostility | Negative standing shift with a faction | Permanent (incremental) | Restricted access, NPC hostility, price gouging |
| Reputation Event | Notable deed recognized by world systems | Session (record) | NPC dialogue changes; world recognition |
| Political Consequence | A world-scale political event is triggered | Permanent (world state) | Server-wide political awareness; faction responses |
| NPC Compliance | An NPC is forced or convinced to cooperate | One interaction | Quest progression, information access |
| Morale Break | Organizational morale reduced | Until rebuilt | Faction effectiveness in dynamic events reduced |

---

## Effect Interaction Rules

Some effects interact in important ways:

| Interaction | Rule |
| --- | --- |
| Burning + Frost Damage | Frost Damage applied to a Burning target cancels both effects; applies brief Stun (thermal shock) |
| Stun + Sleep | Cannot both be applied simultaneously; higher-duration effect takes precedence |
| Corruption Buildup + Ward Stability | Ward Stability actively suppresses Corruption Buildup speed in its radius |
| Root + Knockback | Knockback breaks Root effects |
| Silence + Ward Magic | Ward Magic is mana-based; Silence prevents its use |
| Corruption Aura + Sacred Ground | Sacred Ground suppresses Corruption Aura in its radius |
| Hull Breach + Emergency Patch | Ship Repair ability applies partial Hull Breach reversal; full repair requires docking |
| Morale Break + Rally | Rally ability cancels Morale Break and applies Morale Buff |

---

## Resistance & Mitigation

All damage and control effects can be partially or fully resisted through stats, gear, skills, and abilities:

| Resist Type | Primary Stat | Secondary Stat | Max Reduction |
| --- | --- | --- | --- |
| Physical Damage Resistance | Physical Defense | Endurance | 75% |
| Magical Damage Resistance | Magical Resistance | Willpower | 75% |
| Veil Corruption Resistance | Corruption Resistance (skill) | Willpower | 90% |
| Stun Resistance | Stun Resistance | Endurance | 80% |
| Sleep Resistance | Sleep Resistance | Willpower | 100% |
| Fear Resistance | Willpower | Leadership | 100% |
| Root Resistance | Endurance | — | 60% |
| Silence Resistance | Willpower | — | 70% |
| Disarm Resistance | Strength + Endurance | — | 50% |

---

## Related Documents


## Suggested Reading
- Previous: [Damage Types & Resistances] (damage_types_and_resistances.md)
- Next: [Currency System] (currency_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/mastery_progression.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Mastery & Progression

---

# Mastery & Progression
## Overview

Mastery is the system through which players evolve from capable adventurers into legendary figures recognized across the Isles. It is not a stat system. It is a world-reputation system expressed through skill depth, specialization identity, political influence, and the marks a player leaves on the world around them.

Mystical Isles has no traditional endgame. There is no point at which the world stops reacting to what a player does. Mastery is the engine that keeps the game meaningful for years.

---

## Related Documents

- [Skills System] (./skills_system.md)
- [Abilities System] (./abilities_system.md)
- [Effects System] (./effects_system.md)
- [Starting Character Templates] (./starting_templates.md)
- [Races & Classes] (./races_and_classes.md)
- [Factions] (../factions/factions.md)

---

## Core Design Philosophy

| Principle | Implementation |
| --- | --- |
| Mastery creates identity | A character at Swordsmanship 100 is recognizably different from one at 50, not just statistically but behaviorally and socially |
| Specialization creates value | Specializing deeply makes you the person others need, not just the person who wins more fights |
| Mastery earns recognition | World systems track mastery; NPCs, factions, and other players respond to known masters |
| Hybrid builds are valid | Deep investment in two or three areas creates unique identities that pure specialists do not cover |
| Mastery is never finished | Even at maximum level, mastery systems continue through world contribution, political engagement, and historical achievement |

---

## Mastery Thresholds

Each skill has four mastery thresholds beyond its base leveling system:

| Threshold | Level Range | Name | World Effect |
| --- | --- | --- | --- |
| Novice | 1–24 | Novice | Access to basic abilities; basic NPC awareness |
| Practitioner | 25–49 | Practitioner | Advanced abilities unlock; trainers acknowledge competence |
| Expert | 50–74 | Expert | Expert abilities available; faction contracts open; world recognition begins |
| Master | 75–99 | Master | Hidden abilities unlock; major world recognition; political leverage gained |
| Grand Master | 100 | Grand Master | Pinnacle abilities available; legendary status; world-level access and influence |

---

## Mastery by Category

### Combat Mastery

| Mastery Stage | What Changes |
| --- | --- |
| Novice | Basic attack abilities; access to first-tier trainer |
| Practitioner | Combo abilities unlock; minor NPC duel challenges appear; mercenary contracts available |
| Expert | Signature combat abilities unlock; faction commanders offer named contracts; arena titles available |
| Master | Combat mastery abilities unlock; NPC duelists seek you out; faction military leadership becomes possible |
| Grand Master | Pinnacle abilities (Grand Master's Edge, Berserker's Apotheosis, etc.) unlock; recognized by all factions as a combat authority; founding a mercenary company or taking military command is a realistic path |

**World Recognition Examples:**
- A Grand Master Swordfighter is challenged by other fighters across the Isles — their reputation precedes them
- A Grand Master Archer is known by name in hunting circles and hired by factions for critical military operations
- A Grand Master Stealth Combat practitioner is feared; their presence changes NPC patrol behavior

---

### Crafting Mastery

| Mastery Stage | What Changes |
| --- | --- |
| Novice | Basic recipes; access to beginner materials; crafting stall license available |
| Practitioner | Advanced recipes unlock; crafting quality improves consistently; faction supply contracts open |
| Expert | Rare recipes unlocked through trainer access and exploration; commission system opens; faction workshop license available |
| Master | Legendary recipe access (requires materials from dangerous content); reputation in crafting circles is established; unique item traits roll at higher frequency |
| Grand Master | True Legendary items possible; Hold Master recognition for Dwarves; Workshop Guild rights available; apprenticeship system opens; factions compete for your services |

**World Recognition Examples:**
- A Grand Master Blacksmith receives requests from faction leaders personally; their named items become known across the Isles
- A Grand Master Shipbuilder can construct vessel classes unavailable from any other source
- A Grand Master Relic Restorer is sought by every faction with an ancient technology agenda

---

### Naval Mastery

| Mastery Stage | What Changes |
| --- | --- |
| Novice | Basic coastal routes; single-mast vessels manageable |
| Practitioner | Open water routes accessible; larger vessel management; storm warning detection |
| Expert | Deep sea routes accessible; multi-crew ship management; storm navigation possible |
| Master | Veil-affected sea routes accessible; fleet management opens; route charting creates persistent map contributions |
| Grand Master | Legendary navigator status; access to unmapped routes in the deep Isles; fleet admiral position possible; named routes can be registered and owned |

**World Recognition Examples:**
- A Grand Master Navigator is the only person who can reliably chart a new route through a storm zone — factions bid for their guidance
- A Grand Master Cannon Operation expert is a battlefield force multiplier that pirate fleets and naval commands both recruit aggressively
- A Grand Master Boarding Combat specialist becomes known by name among naval factions — enemies take precautions against them

---

### Social & Political Mastery

Political mastery operates differently from other mastery tracks. It is not measured only in skill levels — it is measured in accumulated world actions, political decisions, reputation events, and governance investments.

| Mastery Stage | What Changes |
| --- | --- |
| Novice Social | Basic reputation management; access to faction vendors |
| Practitioner Social | Cross-faction introductions; faction contract access; diplomatic quest participation |
| Expert Social | Multi-faction negotiations open; espionage networks can be built; trade authority recognized |
| Master Social | Formal political roles available (Advisor, Ambassador, Harbormaster, Fleet Commander) |
| Grand Master Social | Top political positions accessible: Governor, Admiral, High Diplomat, Faction Leader (elected/seized) |

**Political Titles Available at Grand Master Social:**

| Title | Faction | Requirements |
| --- | --- | --- |
| Crown Governor | Crown Compact | Leadership 100, Diplomacy 75, Governance 75, Loyalty standing |
| Corsair Captain-of-Captains | Free Reef Corsairs | Leadership 100, Intimidation 75, Boarding Combat Master, Reputation in Corsair circles |
| Hold Master | Frostpeak Holds | Blacksmithing 100 or Engineering 100, Leadership 75, Dwarf race or maximum Hold standing |
| Ward Commander | Ward Command | Paladin class, Ward Magic 100, Governance 50, Corruption Resistance Master |
| Accord Director | Tempest Accord | Dimensional Resonance 75, Archaeology 75, Leadership 50, consistent expedition record |
| Enclave Elder | Moonroot Enclaves | Elf race, Ward Magic 100, Diplomacy 75, Stealth Master, decades of Enclave contribution |

---

### Forbidden Mastery

Forbidden mastery is the rarest and most consequential progression track. Players who pursue it are committing to a different kind of identity.

| Mastery Stage | What Changes |
| --- | --- |
| Entry | Veil Attunement unlocked through quest; early corruption signs appear |
| Practitioner | Curse abilities unlock; NPCs with perception begin to notice; Veil-creature behavior shifts |
| Expert | Advanced Veil manipulation; certain Thornbound factions open relationships; Ward-aligned factions become hostile |
| Master | Corruption is visible to all; world reacts openly; Forbidden Ritual access; unique political paths open in corruption-aligned factions |
| Grand Master | Full Veil mastery; world-state abilities possible; character is a legend — feared, sought, dangerous; major political consequences active |

**World Consequences at Forbidden Grand Master:**
- Crown Compact issues a standing bounty
- Ward Command classifies the character as a threat priority
- Thornbound Circles (Forbidden path) may offer unique alliance access
- Veil-corrupted territories become navigable where others cannot go
- New quests, events, and world content unlock that is invisible to non-Forbidden practitioners

---

## Hidden Abilities at Mastery

Each skill at Grand Master level unlocks one or more hidden abilities not listed in standard skill trees. These are discovered through:

| Discovery Method | Description |
| --- | --- |
| Automatic unlock | Grand Master level grants the hidden ability directly |
| World event participation | A specific world event at Grand Master tier reveals the ability |
| Legendary trainer | A rare NPC only accessible to Grand Masters teaches the ability |
| Relic discovery | A specific pre-Fracturing artifact teaches the ability when examined |

**Examples of Hidden Grand Master Abilities:**

| Skill | Hidden Ability | Description |
| --- | --- | --- |
| Swordsmanship 100 | Legendary Blade Form | A personal fighting style that becomes the character's signature — unique animation set, slight stat bonus, social recognition effect |
| Navigation 100 | The Lost Chart | Access to one unmapped route not available to any other player; can be shared with crew but not sold |
| Blacksmithing 100 | Ancestral Forge | One item per month can be crafted with an heirloom trait — a property that persists through item upgrades and carries a story identifier |
| Veil Attunement 100 | Veil Walking | Brief dimensional step — movement through a dimensional fold, covering distance instantly at significant corruption cost |
| Leadership 100 | Living Legend | Passive: nearby players and NPCs receive morale and effectiveness bonuses simply from the character's presence |
| Archaeology 100 | The Memory | Ability to visualize and briefly enter a ruin's past state — a narrative experience unlocking lore content invisible to other players |

---

## Hybrid Build Identities

Mystical Isles explicitly supports hybrid specialization. Players who invest across two or three skill categories create identities that pure specialists cannot replicate.

| Hybrid Build | Core Skills | Unique Identity |
| --- | --- | --- |
| The Sea Duelist | Swordsmanship + Boarding Combat + Navigation | A naval fighter who combines combat excellence with seamanship; the ultimate boarding party leader and individual duelist in sea conflicts |
| The Ward Witch | Veil Attunement + Ward Magic + Curse Mastery | A practitioner who walks the line between forbidden power and protective duty; sought by both sides and trusted by neither |
| The Relic Soldier | Swordsmanship + Archaeology + Relic Restoration | A fighter who combines martial excellence with ancient technology knowledge; the ideal escort for deep-ruin expeditions |
| The Shadow Diplomat | Espionage + Diplomacy + Intimidation | A political operative with both formal and covert tools; indispensable to any faction running complex long-term agendas |
| The Storm Engineer | Engineering + Cannon Operation + Storm Survival | A technical naval specialist who optimizes ships in combat and keeps them functional in storms; the anchor of any fleet |
| The Ancient Smith | Blacksmithing + Relic Restoration + Enchanting | The rarest and most sought-after crafter in the Isles; can produce items no one else can and repair technology no one else understands |
| The Deep Captain | Navigation + Leadership + Sailing + Storm Survival | The quintessential legendary captain; commands respect from every naval faction and can go where others cannot follow |

---

## World Reputation System

Mastery does not exist in isolation. The world tracks what players have done and responds accordingly.

### Reputation Triggers

| Action | Reputation Effect |
| --- | --- |
| Reaching Expert in a skill | Nearby NPC experts acknowledge the character by tier |
| Reaching Master in a skill | Faction recruiters approach the character; reputation title becomes active in faction interactions |
| Reaching Grand Master | World-recognized; NPC dialogue changes globally; faction political positions open; rival factions develop responses |
| Completing a named legendary quest | Historical record created; world lore updated to include the character's deed |
| Registering a discovered route | Route named after discoverer; ongoing minor reputation gain as others use the route |
| Crafting a legendary item | Item carries creator's name in its description; creator gains reputation each time item is seen by others |
| Political appointment | World-scale title carries NPC reaction changes across all regions |

### Reputation Decay

Reputation is maintained through continued engagement. Abandoning a specialty for extended periods will not erase Grand Master status, but:
- Faction-specific reputation can decay if political standing lapses
- Active political titles may be contested if the holder is absent from political events
- Reputation for dangerous specializations (Forbidden skills) can shift as the character's behavior changes

### Examples of World-Recognized Figures

These are examples of the kind of characters the mastery system is designed to produce:

**The Legendary Captain**
A Human Pirate with Grand Master Navigation, Sailing, and Leadership. Every port knows their name. Free Reef Corsairs argue about whether they are a legend or a threat. Crown Compact has a standing file on them. They have registered three previously unmapped routes. Their ship has a name that smaller vessels give way to.

**The Master Smith**
A Dwarf with Grand Master Blacksmithing and Expert Relic Restoration. Factions bid for their seasonal production capacity. Weapons bearing their maker's mark command premium prices. They have reconstructed two functional pre-Fracturing systems that other characters could not even identify.

**The Veil Walker**
A Human Witch with Grand Master Veil Attunement and Master Curse Mastery. Visibly corrupted. Crown bounty active. Thornbound Circles send cautious emissaries. They can navigate Veil-collapsed ruins that kill anyone else. Three factions pretend to want them dead while quietly negotiating for their services.

**The Archive**
A Gnome with Grand Master Archaeology, Master Ancient Recovery, and Expert Relic Restoration. Every major faction has attempted to recruit, bribe, or capture them. They have discovered more pre-Fracturing sites than any other living character. Their field notes are worth more than most fortunes.

**The Iron Diplomat**
A Human with Grand Master Diplomacy, Master Leadership, and Expert Governance. Currently serving as Harbormaster of the Crown Compact's largest free port. Unofficially, they are the person three factions call when formal negotiations have broken down. Their political network spans every major faction in the Isles.

---

## Long-Term Identity

A character's legacy in Mystical Isles is measured by:

- **What they mastered** — their skill profile is their signature
- **What they discovered** — registered routes, found ruins, recovered relics carry their name
- **What they built** — legendary items, ships, and installations mark their contribution to the world
- **What they ruled** — political titles and territorial influence leave permanent marks on faction histories
- **What they changed** — world-scale actions (Stormcall, Forbidden Rituals, Ward repairs) alter the map

This is what replaces the traditional endgame. A player who has been in Mystical Isles for three years has not simply gained gear score. They have a biography. Other players know their name, their specialty, their political allegiances, and their history — because the world recorded it as it happened.

---

## Related Documents


## Suggested Reading
- Previous: [Leveling & XP] (leveling_and_xp.md)
- Next: [Abilities System] (abilities_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/magic_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / Magic System

---

# Magic System
## System Identity

Magic should feel mystical to players while remaining internally consistent for design. It is the practical manipulation of post-Fracturing dimensional energy through living adaptation, ritual methods, learned techniques, and specialized relics.

## Core Rules

- magic is strongest where reality is weakest or where ancient systems still channel power
- different cultures interpret the same energy through different traditions
- casters pay costs through fatigue, instability, corruption risk, or ritual dependency
- relics, wards, and environmental conditions can amplify or suppress spell use
- uncontrolled magic should reinforce the setting's danger rather than trivialize it

## Cultural Expressions

| Tradition | Public View | Internal Explanation | Gameplay Identity |
| --- | --- | --- | --- |
| Kingdom rites | sanctioned battlemagic and blessings | disciplined use of controlled aether techniques | support, defense, regulation |
| Witchwood practices | coven ritualism and forest bargains | environmental resonance and symbolic control | curses, healing, terrain play |
| Frostpeak rune craft | ancestral forge magic | encoded energy shaping through crafted media | weapon buffs, barriers, utility |
| Deadlands corruption arts | forbidden blood and ash sorcery | unstable Veil manipulation | high risk, affliction, summon pressure |
| Stormreach field work | anomaly tuning and ward calibration | technical interaction with breaches and nodes | control, disruption, portal utility |

## Design Implications

- low-level magic should solve tactical problems, not erase world hazards
- powerful spells should often require setup, positioning, or scarce resources
- corrupted zones can change spell behavior to create regional variety
- non-casters still engage with magic through relics, gear, wards, and environmental systems

---

## Related Documents


## Suggested Reading
- Previous: [Titles & Reputation] (titles_and_reputation.md)
- Next: [🚢 Naval System] (naval_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/crafting_system.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / 🛠 Crafting System

---

# 🛠 Crafting System
## Overview
Crafting transforms gathered resources into player power, market flow, and settlement utility.

## Gameplay Purpose
Create non-combat progression routes and interdependence between gatherers, crafters, and explorers.

## Player Experience Goals
- clear recipe progression
- strong utility at low tiers
- meaningful specialization at higher tiers

## Technical Notes
Crafting tables, station requirements, and recipe unlocks must be synchronized with skill and merchant systems.

## Implementation Notes
MVP includes core loops: basic weapon/armor repair, consumables, and simple profession crafting.

## Examples
- gathered ore → bars → weapon component
- herbal nodes → potions for dungeon sustain

## Production Priority
**P0 basic loop, P1 profession expansion.**

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles Vendor Locations] (vendor_locations.md)
- Next: [📈 Economy System] (economy_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/damage_types_and_resistances.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

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
- Previous: [🛡 Damage and Resistances] (damage_and_resistances.md)
- Next: [Effects System] (effects_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---

### Source: `docs/systems/damage_and_resistances.md`

[⬅ Back to Mystical Isles README] (../../README.md)
[⬆ Back to ⚔ Systems Index] (README.md)

**Breadcrumbs:** Home / Systems / 🛡 Damage and Resistances

---

# 🛡 Damage and Resistances
## Overview
Damage types and resistance categories shape encounter strategy, build planning, and equipment value.

## Gameplay Purpose
Encourage preparation and role cooperation over one-size-fits-all loadouts.

## Player Experience Goals
- clear cause/effect in combat outcomes
- meaningful pre-fight planning
- regional encounter identity

## Technical Notes
Maintain consistent damage taxonomy across skills, creatures, and item modifiers.

## Implementation Notes
MVP damage profile should prioritize readability over large type counts.

## Examples
- Frost-resistant gear for Frostpeak encounters.
- Corruption resistance for Veil anomalies.

## Production Priority
**P0 core types, P2 advanced elemental layering.**

---

## Related Documents


## Suggested Reading
- Previous: [📊 Stats System] (stats_system.md)
- Next: [Damage Types & Resistances] (damage_types_and_resistances.md)

## Navigation
- [⬆ Back to ⚔ Systems Index] (README.md)
- [⬅ Back to Mystical Isles README] (../../README.md)

---
