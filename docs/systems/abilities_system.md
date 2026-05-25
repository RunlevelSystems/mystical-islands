[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Abilities System

---

# Abilities System
## Overview

Abilities are the active and passive expressions of a player's skill investment. Where skills define *what a player has learned*, abilities define *what a player can do*. Every ability is unlocked through a specific skill at a specific level threshold. Abilities apply effects. Effects change gameplay.

The Abilities System is where identity becomes action.

This document defines all ability types, their structures, the full ability catalog organized by skill category, and the design principles that make abilities feel meaningful in the world of Mystical Isles.

---

## Related Documents

- [Skills System](./skills_system.md)
- [Effects System](./effects_system.md)
- [Mastery & Progression](./mastery_progression.md)
- [Starting Character Templates](./starting_templates.md)
- [Races & Classes](./races_and_classes.md)

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
- Previous: [Mastery & Progression](mastery_progression.md)
- Next: [Abilities & Skill Trees](abilities_and_skill_trees.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
