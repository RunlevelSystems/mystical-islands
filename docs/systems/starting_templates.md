[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Starting Character Templates

---

# Starting Character Templates
## Overview

Starting templates define the complete beginning state for each playable race and class combination in Mystical Isles. Every template specifies the character's race, class, starting region, faction alignment, starting gear, starter abilities, initial stats, profession exposure, and tutorial path.

Templates are not rigid scripts. They are the foundation from which player identity begins to diverge. By the time a character has been in the world for twenty hours, no two players of the same template will look the same — because the skills they chose to invest in, the factions they approached, and the decisions they made have already started defining who they are.

This document is the authoritative reference for character creation configuration in Atavism X 9 for Mystical Isles.

---

## Related Documents

- [Races & Classes](./races_and_classes.md)
- [Skills System](./skills_system.md)
- [Abilities System](./abilities_system.md)
- [Mastery & Progression](./mastery_progression.md)
- [Factions](../factions/factions.md)

---

## Template Format

Each template defines the following fields:

| Field | Description |
| --- | --- |
| Race | Character's playable race |
| Class | Character's chosen class or racial specialization |
| Gender Models | Available model variants |
| Starting Region | World region where character spawns |
| Spawn Location | Specific named spawn point |
| Faction | Starting faction alignment |
| Starter Gear | Complete equipment at spawn |
| Starter Weapon | Primary weapon at spawn |
| Starter Consumables | Usable items at spawn |
| Starting Skills | Skills active at spawn with starting level |
| Starting Abilities | Abilities unlocked at spawn |
| Starting Stats | Stat values at spawn (using racial base + class modifiers) |
| Profession Exposure | Crafting or gathering skill introductions at start |
| Tutorial Path | First quest chain structure and goals |
| Starting Identity | The narrative self that the character begins as |

---

## Human Templates

### Human Fighter

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Fighter |
| Gender Models | Male Fighter (muscular build, battle-worn), Female Fighter (lean build, scarred) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Garrison barracks — eastern gate district of the Kingdom capital |
| Faction | Crown Compact (Neutral Conscript standing) |
| Starter Gear | Standard-issue iron chainmail (torso), leather arm guards, iron leg greaves, leather boots |
| Starter Weapon | Iron longsword (one-handed), wooden shield |
| Starter Consumables | 3× Soldier's Ration, 2× Basic Bandage, 1× Minor Stamina Potion |
| Starting Skills | Swordsmanship 1, Shield Mastery 1, Survival 1 |
| Starting Abilities | Precision Thrust (Swordsmanship 5 — to be earned), Shield Bash (Shield Mastery 5 — to be earned), basic attack |
| Starting Stats | STR 12, DEX 10, END 12, INT 9, WIL 9, STA 12 — HP 105, Mana 90, Stamina 105 |
| Profession Exposure | Blacksmithing basics introduced through garrison forge quest |
| Tutorial Path | 1. Garrison training drill (introduces combat and Shield Bash). 2. Patrol escort outside walls (introduces exploration and survival). 3. Ruins encounter — first Ward and Veil introduction. 4. Report to garrison commander — faction introduction. |
| Starting Identity | A soldier at the beginning of a career — loyal to the Crown for now, capable of becoming much more than a rank in someone else's army. |

---

### Human Knight

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Knight |
| Gender Models | Male Knight (broad, armored, formal bearing), Female Knight (composed, disciplined, ceremonially armored) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Crown Compact Templar barracks — inner district fortress |
| Faction | Crown Compact (Sworn Initiate standing) |
| Starter Gear | Full iron plate armor (torso, arms, legs), iron knight helmet, heavy boots |
| Starter Weapon | Iron longsword, iron kite shield |
| Starter Consumables | 2× Knight's Ration, 2× Basic Bandage, 1× Defense Salve |
| Starting Skills | Swordsmanship 1, Shield Mastery 3, Defensive Combat 1, Leadership 1 |
| Starting Abilities | Shield Bash (unlocked at Shield Mastery 5), Cover Ally (Shield Mastery 15 — to be earned) |
| Starting Stats | STR 11, DEX 8, END 14, INT 9, WIL 10, STA 13 — HP 115, Mana 90, Stamina 110 |
| Profession Exposure | None at start; armor maintenance introduced through early quest |
| Tutorial Path | 1. Formation drill — introduces Shield Wall and group combat mechanics. 2. Escort mission for a Crown official — introduces political and faction systems. 3. Ward site defense — introduces Paladin/Templar alliance and Veil mechanics. 4. Oath ceremony — formalizes Crown Compact alignment. |
| Starting Identity | A sworn defender — bound by oath, respected by institution, and carrying the weight of what the Crown represents. |

---

### Human Paladin

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Paladin |
| Gender Models | Male Paladin (weathered, devoted, glowing ward-marks visible), Female Paladin (calm authority, ceremonial armor with Ward inscriptions) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Ward Command chapel — near the capital's ancient Ward installation |
| Faction | Ward Command (Acolyte standing), Crown Compact (Affiliated) |
| Starter Gear | Ward-inscribed iron plate (torso, arms), ceremonial white cloth underlayer, iron boots |
| Starter Weapon | Iron mace, Ward-emblazoned heater shield |
| Starter Consumables | 2× Healing Draught, 1× Corruption Cleanse (small), 2× Ration |
| Starting Skills | Shield Mastery 2, Ward Magic 1, Elemental Magic 1, Corruption Resistance 1 |
| Starting Abilities | Purge Corruption (Ward Magic 20 — to be earned), Ward Barrier (Ward Magic 10 — to be earned) |
| Starting Stats | STR 10, DEX 8, END 13, INT 11, WIL 14, STA 11 — HP 108, Mana 115, Stamina 105 |
| Profession Exposure | Ward repair basics introduced through chapel maintenance quest |
| Tutorial Path | 1. Ward site visit — demonstrates Ward function and Veil suppression. 2. Corruption encounter — introduces Purge Corruption mechanic. 3. Group defense scenario — introduces group healing and Ward Barrier. 4. Ward Command formal introduction — establishes anti-Veil identity. |
| Starting Identity | An acolyte who has seen what the Veil actually is — and chosen to stand between it and everything else. |

---

### Human Mage

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Mage |
| Gender Models | Male Mage (intellectual bearing, long robes, focus crystal visible), Female Mage (precise, focused, layered enchanted garments) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Tempest Accord research hall — near the capital's scholarly district |
| Faction | Tempest Accord (Junior Scholar standing), Crown Compact (Registered) |
| Starter Gear | Scholar's robes (enchanted light cloth), leather satchel, arcane focus crystal |
| Starter Weapon | Iron-tipped staff |
| Starter Consumables | 3× Mana Potion (small), 1× Spell Focus Talisman, 2× Scholar's Ration |
| Starting Skills | Elemental Magic 1, Survival 1, Archaeology 1 |
| Starting Abilities | Force Bolt (Elemental Magic 5 — starter), Frost Shards (Elemental Magic 10 — to be earned) |
| Starting Stats | STR 8, DEX 10, END 9, INT 14, WIL 13, STA 8 — HP 88, Mana 125, Stamina 85 |
| Profession Exposure | Alchemy basics introduced through scholar's experiment quest |
| Tutorial Path | 1. Research hall — introduces magical mechanics and Force Bolt. 2. Field survey — ruins outside the capital introduce Archaeology and Relic Scan basics. 3. Anomaly encounter — a minor dimensional anomaly introduces Ward and Veil concepts. 4. Accord orientation — establishes research identity and Tempest Accord connections. |
| Starting Identity | A scholar at the threshold of understanding — the world is full of forces they can describe but not yet command. |

---

### Human Ranger

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Ranger |
| Gender Models | Male Ranger (lean, sun-weathered, practical travel gear), Female Ranger (precise, quiet, layered travel clothing) |
| Starting Region | Mainland Kingdom frontier |
| Spawn Location | Frontier waystation — eastern edge of Kingdom territory, overlooking uncharted forest |
| Faction | Crown Compact (Frontier Agent, Neutral) |
| Starter Gear | Leather vest, leather arm guards, travel boots, travel cloak |
| Starter Weapon | Short bow (32 arrows), hunting knife |
| Starter Consumables | 3× Field Ration, 2× Basic Bandage, 1× Herbal Remedy |
| Starting Skills | Archery 1, Survival 3, Treasure Hunting 1, Herbalism 1 |
| Starting Abilities | Pinning Shot (Archery 5 — to be earned), Hazard Sense (Survival 20 — to be earned) |
| Starting Stats | STR 9, DEX 13, END 11, INT 10, WIL 9, STA 10 — HP 100, Mana 90, Stamina 100 |
| Profession Exposure | Cooking basics from field survival; Herbalism from starting skill |
| Tutorial Path | 1. Waystation patrol — introduces exploration and survival mechanics. 2. Creature hunt — introduces Archery and tracking. 3. Ruin discovery — introduces Archaeology basics and the wonder of exploration. 4. Route report — introduces navigation and the value of frontier knowledge to factions. |
| Starting Identity | Someone the settled world hasn't quite claimed — a person more comfortable at the edge of the map than at the center of any city. |

---

### Human Rogue

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Rogue |
| Gender Models | Male Rogue (slim, hooded, nondescript clothing), Female Rogue (precise, layered shadow gear, minimal reflection) |
| Starting Region | Mainland Kingdom |
| Spawn Location | Dockside district — lower city, near the harbor black market |
| Faction | Neutral (no formal faction; Crown Compact Negative standing possible) |
| Starter Gear | Light leather jacket, shadow-dyed cloth wrap, soft-soled boots, pick kit |
| Starter Weapon | Iron dagger (main), iron dagger (off-hand) |
| Starter Consumables | 2× Smoke Pouch, 2× Field Ration, 1× Lockpick Set (5 uses) |
| Starting Skills | Swordsmanship 1 (dagger focus), Stealth Combat 1, Treasure Hunting 1, Espionage 1 |
| Starting Abilities | Ambush Strike (Stealth Combat 20 — to be earned), Warning Shot available if Firearms purchased |
| Starting Stats | STR 9, DEX 14, END 9, INT 11, WIL 10, STA 9 — HP 90, Mana 95, Stamina 92 |
| Profession Exposure | Smuggling basics through early dockside contact quest; light Merchant Negotiation |
| Tutorial Path | 1. Dockside contract — introduces stealth, pickpocket, and evasion mechanics. 2. Warehouse infiltration — introduces lock-picking and trap-detection systems. 3. Deliver a package — first smuggling exposure; introduces black market contacts. 4. Choice moment — decide to align with Corsair contact, stay neutral, or attempt Crown contact. |
| Starting Identity | A person who lives by advantage — information, timing, and access. The world of power is visible from the shadows, and they intend to understand it before anyone understands them. |

---

### Human Witch

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Witch |
| Gender Models | Male Witch (ritualist clothing, dark dyes, partially concealed ward-marks), Female Witch (layered robes, bone and herb accessories, unsettling stillness) |
| Starting Region | Mainland Kingdom — Witchwood border zone |
| Spawn Location | Hidden hamlet near the Witchwood treeline — a frontier settlement outside Crown Compact jurisdiction |
| Faction | Thornbound Circles (Hedge Practitioner standing); Crown Compact Negative |
| Starter Gear | Layered ritual robes, herb pouch, bone-clasp belt, soft boots |
| Starter Weapon | Carved ritual staff, iron athame (ritual dagger) |
| Starter Consumables | 3× Herbal Brew, 1× Corruption Ward (single use), 2× Field Ration |
| Starting Skills | Elemental Magic 1, Veil Attunement 1, Herbalism 2, Curse Mastery 0 (locked, unlockable via quest) |
| Starting Abilities | Veil Sight (Veil Attunement 20 — to be earned), Curse Brand (Curse Mastery 20 — later path) |
| Starting Stats | STR 8, DEX 10, END 9, INT 13, WIL 15, STA 8 — HP 88, Mana 130, Stamina 82 |
| Profession Exposure | Alchemy through herb preparation; Herbalism from starting skill |
| Tutorial Path | 1. Hedge practitioner introduction — basic ritual mechanics. 2. Veil exposure event — introduces Corruption mechanic and stakes. 3. Thornbound contact — introduction to the Circles and Witchwood politics. 4. First choice — pursue deeper Veil study (Forbidden path) or stay in hedge practice (safer social path). |
| Starting Identity | A practitioner of something the Crown doesn't name. Not a villain — but someone who has decided that understanding the Veil is more important than the comfort of pretending it isn't there. |

---

### Human Pirate

| Field | Value |
| --- | --- |
| Race | Human |
| Class | Pirate |
| Gender Models | Male Pirate (weathered, sun-worn, rope-scarred hands), Female Pirate (sharp-eyed, fast, salt-stiffened travel gear) |
| Starting Region | Shattered Reefs |
| Spawn Location | Corsair docks — outer reef port, Free Reef Corsairs territory |
| Faction | Free Reef Corsairs (New Blood standing) |
| Starter Gear | Leather coat, cloth shirt, sturdy sea boots, belt rigging |
| Starter Weapon | Iron cutlass, flintlock pistol (6 shots) |
| Starter Consumables | 3× Sea Ration, 2× Bandage, 1× Rum Flask (morale restore) |
| Starting Skills | Swordsmanship 1, Firearms 1, Sailing 1, Navigation 1 |
| Starting Abilities | Grappling Hook (Boarding Combat 5 — to be earned), Boarding Strike (Boarding Combat 10 — to be earned) |
| Starting Stats | STR 11, DEX 13, END 11, INT 10, WIL 8, STA 11 — HP 100, Mana 80, Stamina 102 |
| Profession Exposure | Smuggling basics through Corsair contact; Ship Repair introduction on tutorial vessel |
| Tutorial Path | 1. Deck assignment on a Corsair vessel — introduces sailing mechanics and crew role. 2. Reef run — introduces Navigation and hazard avoidance. 3. Boarding scenario (tutorial ship encounter) — introduces Boarding Combat. 4. Corsair integration — formal introduction to faction standing and reputation system. |
| Starting Identity | Someone who has chosen the sea over the shore — and is starting to realize that was the right decision. |

---

## Non-Human Templates

### Dwarf Defender/Engineer

| Field | Value |
| --- | --- |
| Race | Dwarf |
| Class | Defender/Engineer (Racial Specialization) |
| Gender Models | Male Dwarf (broad, heavily tattooed, forge-blackened hair), Female Dwarf (braided, stocky, precision tools visible) |
| Starting Region | Frostpeak Isle |
| Spawn Location | Outer ring fortress — Frostpeak Hold main gates, training yard |
| Faction | Frostpeak Holds (Young Clanmember standing) |
| Starter Gear | Dwarven iron plate (chest and legs), reinforced arm guards, iron-capped boots, clan-marked helm |
| Starter Weapon | Iron warhammer, iron kite shield |
| Starter Consumables | 3× Hold Ration, 2× Bandage, 1× Dwarf Ale (endurance restore), 1× Repair Kit (basic) |
| Starting Skills | Shield Mastery 3, Heavy Weapons 1, Mining 3, Engineering 1 |
| Starting Abilities | Shield Bash (Shield Mastery 5 — close), Counter Shield (Shield Mastery 35 — later) |
| Starting Stats | STR 15, DEX 7, END 17, INT 10, WIL 8, STA 14 — HP 135, Mana 70, Stamina 118 |
| Profession Exposure | Blacksmithing basics through forge introduction quest; Mining from starting skill |
| Tutorial Path | 1. Forge introduction — basic crafting mechanics; first Blacksmithing XP. 2. Surface patrol — introduces combat and Hold defense mechanics. 3. Deep mine descent — introduces underground navigation, Mining, and dragon encounter warning system. 4. Clan council meeting — introduces faction politics and Hold political structure. |
| Starting Identity | A dwarf who carries their clan's history in their hands and the Hold's future in every decision they make underground. |

---

### Elf Mystic Ranger

| Field | Value |
| --- | --- |
| Race | Elf |
| Class | Mystic Ranger (Racial Specialization) |
| Gender Models | Male Elf (tall, forest-adapted, bioluminescent markings), Female Elf (precise, layered nature-garments, Ward-mark tattoos) |
| Starting Region | Witchwood Isle |
| Spawn Location | Forest Enclave settlement — hidden in the canopy interior, Ward installation nearby |
| Faction | Moonroot Enclaves (Young Wanderer standing) |
| Starter Gear | Woven forest armor (Ward-fiber vest), cloth underlayer, thorn-craft boots, hide cloak |
| Starter Weapon | Elf-crafted short bow (30 arrows), short blade |
| Starter Consumables | 3× Enclave Ration, 2× Herbal Remedy, 1× Ward-ward Powder (corruption ward) |
| Starting Skills | Archery 3, Stealth 2, Ward Magic 1, Herbalism 2 |
| Starting Abilities | Pinning Shot (Archery 5 — close), Ward Read (Relic Detection 25 — later), Veil Sight (Veil Attunement 20 — later path) |
| Starting Stats | STR 8, DEX 16, END 7, INT 12, WIL 14, STA 9 — HP 82, Mana 135, Stamina 88 |
| Profession Exposure | Herbalism from starting skill; Enchanting basics through Enclave workshop quest |
| Tutorial Path | 1. Forest patrol — stealth and navigation in Witchwood terrain. 2. Ward site visit — introduces Ward system and basic Ward Magic interaction. 3. Corruption event at a corrupted grove — introduces Veil Sight and anti-corruption mechanics. 4. Enclave elder meeting — faction politics and long-term identity in the Moonroot network. |
| Starting Identity | An elf who grew up listening to the Ward network hum — and is beginning to understand that what they hear isn't just machinery. |

---

### Gnome Engineer

| Field | Value |
| --- | --- |
| Race | Gnome |
| Class | Engineer/Relic Specialist (Racial Specialization) |
| Gender Models | Male Gnome (quick-moving, tool-laden, modular gear), Female Gnome (precise, goggled, adaptable layered equipment) |
| Starting Region | Hidden Enclave (concealed coastal facility) |
| Spawn Location | Workshop level of the engineering enclave — prototype testing area |
| Faction | Independent (Enclave Network standing); Tempest Accord (Registered) |
| Starter Gear | Modular engineer's suit (light, pocketed), tool belt, work goggles, lightweight boots |
| Starter Weapon | Arc-shock gadget (ranged stun tool), wrench (melee tool) |
| Starter Consumables | 3× Ration Pack, 2× Repair Kit (basic), 1× Prototype Grenade (1 use), 1× Relic Scanner (5 uses) |
| Starting Skills | Engineering 3, Relic Detection 2, Archaeology 1, Fishing 1 |
| Starting Abilities | Relic Scan (Archaeology 15 — close), Ward Read (Relic Detection 25 — later) |
| Starting Stats | STR 6, DEX 11, END 7, INT 17, WIL 12, STA 8 — HP 76, Mana 128, Stamina 82 |
| Profession Exposure | Engineering from starting skill; Jewelcrafting basics through component work quest |
| Tutorial Path | 1. Workshop project — introduces Engineering mechanics and first crafting loop. 2. Nearby ruin investigation — introduces Relic Detection and Relic Scan. 3. Component recovery — a pre-Fracturing part must be extracted from a ruin; introduces Ancient Recovery concept. 4. Enclave network briefing — introduces independent political identity and Tempest Accord research connections. |
| Starting Identity | A researcher who knows that the old world left behind more answers than anyone has bothered to look for — and intends to be the one who finds them. |

---

## Template Comparison Tables

### Starting Stat Summary

| Template | STR | DEX | END | INT | WIL | STA | HP | Mana | Stamina |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Human Fighter | 12 | 10 | 12 | 9 | 9 | 12 | 105 | 90 | 105 |
| Human Knight | 11 | 8 | 14 | 9 | 10 | 13 | 115 | 90 | 110 |
| Human Paladin | 10 | 8 | 13 | 11 | 14 | 11 | 108 | 115 | 105 |
| Human Mage | 8 | 10 | 9 | 14 | 13 | 8 | 88 | 125 | 85 |
| Human Ranger | 9 | 13 | 11 | 10 | 9 | 10 | 100 | 90 | 100 |
| Human Rogue | 9 | 14 | 9 | 11 | 10 | 9 | 90 | 95 | 92 |
| Human Witch | 8 | 10 | 9 | 13 | 15 | 8 | 88 | 130 | 82 |
| Human Pirate | 11 | 13 | 11 | 10 | 8 | 11 | 100 | 80 | 102 |
| Dwarf Defender/Engineer | 15 | 7 | 17 | 10 | 8 | 14 | 135 | 70 | 118 |
| Elf Mystic Ranger | 8 | 16 | 7 | 12 | 14 | 9 | 82 | 135 | 88 |
| Gnome Engineer | 6 | 11 | 7 | 17 | 12 | 8 | 76 | 128 | 82 |

---

### Starting Skills Summary

| Template | Primary Skills | Supporting Skills |
| --- | --- | --- |
| Human Fighter | Swordsmanship 1, Shield Mastery 1 | Survival 1 |
| Human Knight | Shield Mastery 3, Swordsmanship 1 | Defensive Combat 1, Leadership 1 |
| Human Paladin | Shield Mastery 2, Ward Magic 1 | Elemental Magic 1, Corruption Resistance 1 |
| Human Mage | Elemental Magic 1 | Survival 1, Archaeology 1 |
| Human Ranger | Archery 1, Survival 3 | Treasure Hunting 1, Herbalism 1 |
| Human Rogue | Stealth Combat 1, Treasure Hunting 1 | Swordsmanship 1 (dagger), Espionage 1 |
| Human Witch | Veil Attunement 1, Elemental Magic 1 | Herbalism 2 |
| Human Pirate | Swordsmanship 1, Firearms 1 | Sailing 1, Navigation 1 |
| Dwarf Defender/Engineer | Shield Mastery 3, Mining 3 | Heavy Weapons 1, Engineering 1 |
| Elf Mystic Ranger | Archery 3, Stealth 2 | Ward Magic 1, Herbalism 2 |
| Gnome Engineer | Engineering 3, Relic Detection 2 | Archaeology 1, Fishing 1 |

---

### Starting Region & Faction Summary

| Template | Starting Region | Spawn Location | Starting Faction | Standing |
| --- | --- | --- | --- | --- |
| Human Fighter | Mainland Kingdom | Garrison barracks | Crown Compact | Neutral Conscript |
| Human Knight | Mainland Kingdom | Inner fortress | Crown Compact | Sworn Initiate |
| Human Paladin | Mainland Kingdom | Ward Command chapel | Ward Command / Crown | Acolyte |
| Human Mage | Mainland Kingdom | Tempest Accord hall | Tempest Accord | Junior Scholar |
| Human Ranger | Mainland Kingdom frontier | Frontier waystation | Crown Compact | Frontier Agent |
| Human Rogue | Mainland Kingdom | Dockside district | None | Neutral |
| Human Witch | Witchwood border | Frontier hamlet | Thornbound Circles | Hedge Practitioner |
| Human Pirate | Shattered Reefs | Corsair docks | Free Reef Corsairs | New Blood |
| Dwarf Defender/Engineer | Frostpeak Isle | Outer ring fortress | Frostpeak Holds | Young Clanmember |
| Elf Mystic Ranger | Witchwood Isle | Forest Enclave | Moonroot Enclaves | Young Wanderer |
| Gnome Engineer | Hidden Enclave | Workshop level | Independent (Enclave) | Registered |

---

## Identity Trajectories

Each starting template has a natural long-term identity trajectory. These are not mandatory — player choices will always diverge. But these are the narrative arcs the template is designed to make available:

| Template | Short-Term Identity | Medium-Term Arc | Long-Term Potential |
| --- | --- | --- | --- |
| Human Fighter | Garrison soldier | Independent blade-for-hire | Duelist champion, mercenary captain, faction military commander |
| Human Knight | Sworn defender | Templar officer | Warden of territory, noble knight commander, Crown political figure |
| Human Paladin | Ward acolyte | Anti-corruption field agent | Ward Commander, political authority in Veil-threatened regions |
| Human Mage | Junior researcher | Field expedition mage | Tempest Accord director, legendary scholar, Rift navigator |
| Human Ranger | Frontier scout | Route pioneer | Legendary Pathfinder, frontier political authority, exploration legend |
| Human Rogue | Street operative | Information broker | Spymaster, Corsair shadow, the most dangerous person in any room |
| Human Witch | Hedge practitioner | Veil explorer | Feared Veil master, hidden political power, Thornbound leader |
| Human Pirate | Deckhand | Ship captain | Pirate Lord, Corsair council member, sea legend |
| Dwarf Defender/Engineer | Clan apprentice | Hold engineer | Hold Master, forge economy controller, legendary smith |
| Elf Mystic Ranger | Enclave scout | Ward keeper | Enclave Elder, Ward authority, keeper of hidden routes |
| Gnome Engineer | Enclave researcher | Relic investigator | Relic Architect, indispensable advisor, builder of the impossible |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Race & Class Building Identity](race_class_building_identity.md)
- Next: [Races & Classes](races_and_classes.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
