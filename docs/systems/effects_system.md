[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Effects System

---

# Effects System
## Overview

Effects are the atomic units of gameplay change in Mystical Isles. Every ability applies one or more effects. Effects are the mechanism through which skill investment, ability use, and world interaction produce tangible results.

Understanding the effects system means understanding the building blocks of all combat, crafting, exploration, and political gameplay in the Isles.

---

## Related Documents

- [Skills System](./skills_system.md)
- [Abilities System](./abilities_system.md)
- [Mastery & Progression](./mastery_progression.md)
- [Starting Character Templates](./starting_templates.md)

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
- Previous: [Damage Types & Resistances](damage_types_and_resistances.md)
- Next: [Currency System](currency_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
