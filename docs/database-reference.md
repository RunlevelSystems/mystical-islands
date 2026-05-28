# Database Reference

Technical Atavism plugin and SQL reference for field meanings, plugin relationships, data dependencies, and automation-ready schema conventions.

This is the primary future source for SQL insert generation, balancing workflows, NPC/item/merchant/quest generation, and AI-assisted content tooling.

This reference targets **Atavism 10.9** and is derived from the live `world_content` database schema in `docs/sql/world_content.sql`. It covers the Damage Plugin and all tables that participate in the combat damage pipeline.

---

## Table of Contents

1. [Damage Plugin Overview](#damage-plugin-overview)
2. [damage_type](#damage_type)
3. [stat](#stat)
4. [stat_link](#stat_link)
5. [stat_thresholds](#stat_thresholds)
6. [abilities](#abilities)
7. [ability_effects](#ability_effects)
8. [ability_abilities](#ability_abilities)
9. [ability_combos](#ability_combos)
10. [abilities_coordeffects](#abilities_coordeffects)
11. [abilities_powerup_settings](#abilities_powerup_settings)
12. [abilities_triggers_profile](#abilities_triggers_profile)
13. [abilities_triggers](#abilities_triggers)
14. [abilities_triggers_actions](#abilities_triggers_actions)
15. [effects](#effects)
16. [effects_triggers](#effects_triggers)
17. [effects_triggers_actions](#effects_triggers_actions)
18. [skills](#skills)
19. [skill_profile](#skill_profile)
20. [skill_profile_levels](#skill_profile_levels)
21. [mob_stat](#mob_stat)
22. [mob_templates (combat columns)](#mob_templates)
23. [weapon_templates_profile](#weapon_templates_profile)
24. [weapon_action_settings](#weapon_action_settings)
25. [coordinated_effects](#coordinated_effects)
26. [bonuses_settings](#bonuses_settings)

---

## Damage Plugin Overview

The Atavism Damage Plugin governs all combat math: how damage is calculated, what stats influence it, how abilities trigger effects, and how the results are animated. The core data flow is:

```
damage_type
  └─ references stat columns (resistance_stat, power_stat, accuracy_stat, evasion_stat, critic_chance_stat, critic_power_stat)

abilities
  ├─ references damage_type.name via damageType
  ├─ links to effects via activationEffect1-6 (→ effects.id)
  ├─ links to skills via skill (→ skills.id)
  └─ links to coordinated_effects via coordEffect1-5

effects
  ├─ effectMainType = 'Damage' → direct or DoT damage using intValue/floatValue for amounts
  ├─ effectMainType = 'Stat'   → stat buff or debuff
  └─ effectMainType = 'Stun'/'Sleep'/etc. → crowd control

mob_templates
  ├─ references damage_type.name via dmgType
  └─ references abilities.id via ability0-2 and autoAttack

mob_stat
  └─ per-mob stat value overrides (references mob_templates.id and stat.name)
```

All `tinyint(1)` fields are boolean: `1` = true / enabled, `0` = false / disabled.  
All `isactive` fields gate whether the row is loaded by the server: `1` = active, `0` = ignored.  
`creationtimestamp` and `updatetimestamp` are managed automatically by MySQL triggers; do not set them manually in INSERTs.

---

## damage_type

**Purpose:** Defines every damage type in the game and maps it to the six stats that govern combat resolution for that type. Every ability and auto-attack references a damage type by name.

**Primary key:** `name` (varchar, unique string identifier)

| Column | Type | Description |
|--------|------|-------------|
| `name` | varchar(45) NOT NULL | Unique identifier for the damage type. Matched by string value (not a formal SQL foreign key constraint) in `abilities.damageType` and `mob_templates.dmgType`. Examples: `crush`, `slash`, `pierce`, `magical`. |
| `resistance_stat` | varchar(45) NOT NULL | Name of the `stat` row that reduces incoming damage of this type. The defending mob/player's value in this stat is subtracted from raw damage. Example: `crush_resistance`. |
| `power_stat` | varchar(256) NOT NULL | Comma-separated list of `stat` names that scale outgoing damage. Higher values increase damage dealt. Example: `strength`. Multiple stats can contribute (e.g., `strength,weapon_damage`). |
| `accuracy_stat` | varchar(256) NOT NULL | Stat(s) that determine hit chance. Compared against the target's `evasion_stat` to resolve whether the attack lands. Example: `dexterity`. |
| `evasion_stat` | varchar(256) NOT NULL | Stat(s) on the target that counter accuracy, allowing the defender to dodge attacks of this type. Example: `physical_evasion`. |
| `critic_chance_stat` | varchar(256) NOT NULL | Stat(s) that control the probability of a critical hit with this damage type. Example: `physical_critic`. |
| `critic_power_stat` | varchar(64) NOT NULL | Stat that scales the magnitude of a critical hit (the critical damage multiplier). Example: `physical_crit_power`. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = this damage type is loaded and usable; `0` = disabled. |
| `creationtimestamp` | timestamp | Auto-set on INSERT. Do not include in INSERT statements. |
| `updatetimestamp` | datetime | Auto-updated by trigger on UPDATE. Do not include in INSERT statements. |

**Example INSERT:**
```sql
INSERT INTO `damage_type` (`name`, `resistance_stat`, `power_stat`, `accuracy_stat`, `evasion_stat`, `critic_chance_stat`, `critic_power_stat`, `isactive`)
VALUES ('fire', 'fire_resistance', 'intelligence', 'intelligence', 'magical_evasion', 'magical_critic', 'magical_crit_power', 1);
```

---

## stat

**Purpose:** Defines every numeric attribute used by players, mobs, abilities, and effects. Stats referenced by `damage_type` columns must exist here. Stats are identified by their `name` field.

**Primary key:** `name` (varchar)

| Column | Type | Description |
|--------|------|-------------|
| `name` | varchar(45) NOT NULL | Unique stat identifier. Referenced by `damage_type`, `mob_stat`, `skill`, `effects`, and many other tables. Examples: `health`, `strength`, `crush_resistance`. |
| `type` | int DEFAULT 0 | Stat category. `0` = regular stat (most stats); `1` = resistance/defensive stat. Informs how the Atavism Editor categorises it. |
| `stat_function` | varchar(45) | Display label shown in the Atavism Editor and optionally in-game UI. This column is nullable; however, for consistency always provide a value: use `'~ none ~'` for stats that need no display label rather than leaving it NULL. Example: `'Attack Speed'`. |
| `mob_base` | int | Base value assigned to this stat when a new mob is created. Scales with `mob_level_increase` and `mob_level_percent_increase`. |
| `mob_level_increase` | int | Flat amount added to the stat per mob level. Example: a mob at level 5 with `mob_base=10` and `mob_level_increase=2` has a base value of 20. |
| `mob_level_percent_increase` | float | Percent multiplier added per mob level on top of the flat increase. Use `0` if not needed. |
| `min` | int NOT NULL DEFAULT 0 | Minimum value the stat can reach (floor). The stat is clamped to this value if it would go lower. |
| `maxstat` | varchar(45) | Name of another stat that acts as the maximum cap for this stat. Leave empty `''` for uncapped stats. Example: `health` is capped by `health_max`. |
| `canExceedMax` | tinyint(1) DEFAULT 0 | `1` = allows the stat to temporarily exceed the value of `maxstat` (e.g., through overheal buffs). |
| `sharedWithGroup` | tinyint(1) DEFAULT 0 | `1` = the stat pool is shared across all members of the player's group (used for shared resources). |
| `shiftTarget` | smallint DEFAULT 0 | ID of a related stat that shifts in the opposite direction when this stat shifts. Used for paired resource stats (e.g., health/mana dual bar). `0` = no linked shift. |
| `shiftValue` | int | Amount by which this stat shifts per `shiftInterval` tick when conditions for shifting are met. Positive = regen/increase; negative = drain. |
| `shiftReverseValue` | int | Amount applied when the shift conditions are reversed (e.g., out-of-combat regen vs in-combat drain). |
| `shiftInterval` | int | Milliseconds between each application of `shiftValue`. Example: `1000` = shift every 1 second. |
| `isShiftPercent` | tinyint(1) DEFAULT 0 | `1` = `shiftValue` is interpreted as a percentage of `maxstat` rather than a flat amount. |
| `onMaxHit` | varchar(45) | Name of a stat to trigger when this stat reaches its maximum. Used for special event callbacks. Leave empty for no callback. |
| `onMinHit` | varchar(45) | Name of a stat to trigger when this stat reaches its minimum (`min` value). Common use: trigger death when `health` reaches `0`. |
| `shiftReq1` / `shiftReq2` / `shiftReq3` | varchar(45) | Names of stats that must be above zero for the shift to occur. Leave empty if no requirement. |
| `shiftReq1State` / `shiftReq2State` / `shiftReq3State` | tinyint(1) DEFAULT 0 | `0` = the requirement stat must be greater than zero for shifting to proceed; `1` = must be at zero. |
| `shiftReq1SetReverse` / `shiftReq2SetReverse` / `shiftReq3SetReverse` | tinyint(1) DEFAULT 0 | `1` = when the requirement is not met, use `shiftReverseValue` instead of `shiftValue`. |
| `startPercent` | int NOT NULL DEFAULT 50 | Starting value of the stat expressed as a percentage of `maxstat`. `100` = full, `0` = empty, `50` = half. |
| `deathResetPercent` | int DEFAULT -1 | Value (as % of max) to which the stat is reset when the character dies. `-1` = no reset on death. |
| `releaseResetPercent` | int DEFAULT -1 | Value (as % of max) to which the stat is reset when the character releases from death/respawns. `-1` = no reset. |
| `sendToClient` | smallint NOT NULL DEFAULT 1 | Controls which clients receive stat updates. `0` = server only (hidden stat); `1` = broadcast to all nearby clients; `2` = sent only to the owning player. |
| `onThreshold` through `onThreshold5` | varchar(45) | Name of another stat to trigger when this stat crosses the corresponding `threshold` value. Used for phase transitions, special buffs at low health, etc. |
| `threshold` through `threshold4` | float NOT NULL DEFAULT -1 | The value at which the corresponding `onThreshold` stat is triggered. `-1` = inactive. Values are typically expressed as a percentage (e.g., `25` for 25% health). |
| `shiftModStat` | varchar(45) NOT NULL DEFAULT '' | Name of a stat that modifies the `shiftValue` amount. Allows regeneration to scale with a secondary stat. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = loaded and used; `0` = disabled. |

**Example INSERT:**
```sql
INSERT INTO `stat` (`name`, `type`, `stat_function`, `mob_base`, `mob_level_increase`, `mob_level_percent_increase`, `min`, `maxstat`, `canExceedMax`, `sharedWithGroup`, `shiftTarget`, `shiftValue`, `shiftReverseValue`, `shiftInterval`, `isShiftPercent`, `onMaxHit`, `onMinHit`, `shiftReq1`, `shiftReq1State`, `shiftReq1SetReverse`, `shiftReq2`, `shiftReq2State`, `shiftReq2SetReverse`, `shiftReq3`, `shiftReq3State`, `shiftReq3SetReverse`, `startPercent`, `deathResetPercent`, `releaseResetPercent`, `sendToClient`, `onThreshold`, `onThreshold2`, `onThreshold3`, `onThreshold4`, `onThreshold5`, `threshold`, `threshold2`, `threshold3`, `threshold4`, `shiftModStat`, `isactive`)
VALUES ('fire_resistance', 1, '~ none ~', 2, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 1);
```

---

## stat_link

**Purpose:** Creates a directional link between two stats so that changing one stat also changes another. Used to implement derived stats (e.g., increasing `strength` also raises `attack_power` by a fixed ratio).

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Internal row identifier. |
| `stat` | varchar(45) NOT NULL | The source stat. When this stat changes, the linked stat also changes. |
| `statTo` | varchar(45) NOT NULL | The destination stat that receives the derived change. |
| `changePerPoint` | float NOT NULL | How much `statTo` changes for every 1-point change in `stat`. Example: `0.5` means each point of `strength` adds 0.5 to `attack_power`. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = link is active; `0` = disabled. |

---

## stat_thresholds

**Purpose:** Defines a diminishing-returns curve for a named stat function. Many defensive stats (resistance, evasion) use threshold functions so that raw stat points provide less benefit the more you have.

**Primary key:** `stat_function` + `threshold` (composite)

| Column | Type | Description |
|--------|------|-------------|
| `stat_function` | varchar(64) NOT NULL | The name of the stat function to which this threshold applies. Must match `stat.stat_function` for the relevant stat. |
| `threshold` | int NOT NULL | The stat value at which this tier's curve begins. The Atavism server evaluates tiers in ascending order by this value; the insertion order of rows does not matter, but if inserting multiple tiers for the same function, ascending order is a good convention. |
| `num_per_point` | int NOT NULL | How many raw stat points are needed to gain 1 effective point at this threshold tier. Higher values = diminishing returns. |

---

## abilities

**Purpose:** Defines every active and passive ability available to players and mobs. This is the central table of the combat system. An ability fires effects, plays visuals, checks requirements, and drives the cooldown system.

**Primary key:** `id` (auto-increment)

### Identification & Display

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Unique ability ID referenced by `mob_templates`, `ability_effects`, `ability_abilities`, `weapon_action_settings`. |
| `name` | varchar(64) NOT NULL | Internal name. Must be unique for editor clarity. |
| `icon` | varchar(256) | Asset path for the ability icon in the Atavism Editor. Example: `Assets/Dragonsan/AtavismObjects/Icons/Custom/Skills/Skills_124.png`. |
| `icon2` | mediumtext NOT NULL | Base64-encoded PNG icon used at runtime by the UI. Do not edit manually; the Atavism Editor encodes this automatically when you select an icon. |
| `tooltip` | varchar(256) | Description shown to the player in the ability tooltip UI panel. |
| `abilityType` | varchar(64) | Categorises the ability for editor filtering and server-side logic. Common values: `AttackAbility`, `SupportAbility`, `PassiveAbility`, `BuffAbility`. |
| `tags` | text NOT NULL | Space-separated tags on the caster. Used by trigger conditions and combo gating. Example: `'melee ranged stealth'`. |
| `tags_on_caster` | text NOT NULL | Tags the ability requires to be present on the caster before activation. |
| `tags_on_target` | text NOT NULL | Tags required on the target for the ability to fire. |
| `tags_not_on_caster` | text NOT NULL | Tags that must NOT be present on the caster. |
| `tags_not_on_target` | text NOT NULL | Tags that must NOT be present on the target. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = ability is loaded; `0` = disabled. |

### Activation Cost & Timing

| Column | Type | Description |
|--------|------|-------------|
| `skill` | int | ID from `skills.id`. Determines which skill this ability is associated with for skill-up chances and progression gating. |
| `passive` | tinyint(1) | `1` = passive ability (always active, no manual cast). `0` = active ability. |
| `activationCost` | int | Flat resource cost to activate. The resource type is set in `activationCostType`. |
| `activationCostType` | varchar(32) | The stat (resource) consumed on activation. Example: `mana`, `energy`, `rage`. Must match a `stat.name`. |
| `activationCostPercentage` | float NOT NULL DEFAULT 0 | Percentage of the caster's maximum resource spent instead of a flat cost. `0` = use flat `activationCost` only. |
| `activationLength` | float | Cast time in seconds. `0` = instant cast. |
| `attack_time` | float NOT NULL DEFAULT 0 | Animation attack time in seconds. Synchronises ability timing with the attack animation. |
| `activationDelay` | float NOT NULL DEFAULT 0 | Delay in seconds between ability activation and the effect being applied. |
| `activationAnimation` | varchar(32) | Animation state name to play on cast. Must match an animation state defined in the character's Animator. |
| `activationParticles` | varchar(32) | Particle system name to play on cast. Leave empty for no particles. |
| `globalCooldown` | tinyint(1) | `1` = triggers the global cooldown (GCD) shared across all abilities; `0` = bypasses GCD. |
| `cooldown1Type` | varchar(32) | Cooldown group name. Abilities sharing the same group share a cooldown timer. Example: `'sword_attacks'`. |
| `cooldown1Duration` | float | Duration in seconds for `cooldown1Type`. |
| `weaponCooldown` | tinyint(1) | `1` = triggers the weapon's attack speed cooldown when this ability fires. |
| `startCooldownsOnActivation` | tinyint(1) DEFAULT 0 | `1` = cooldowns start when the ability begins casting; `0` = cooldowns start when effects land. |
| `exp` | int NOT NULL DEFAULT 0 | Experience points awarded to the caster when this ability is successfully used. |
| `skill_up_chance` | int NOT NULL DEFAULT 0 | Percentage chance (0–100) that using this ability grants a skill-up to the associated `skill`. |

### Channelling

| Column | Type | Description |
|--------|------|-------------|
| `channelling` | tinyint(1) NOT NULL DEFAULT 0 | `1` = the ability is a channelled ability (fires multiple pulses over time). |
| `channelling_pulse_num` | int NOT NULL DEFAULT 1 | Number of pulses fired during the channel. |
| `channelling_pulse_time` | float NOT NULL DEFAULT 0.25 | Seconds between each channel pulse. |
| `channelling_cost` | int NOT NULL DEFAULT 0 | Resource cost per channel tick (in addition to or instead of `activationCost`). |
| `channelling_in_run` | tinyint(1) NOT NULL DEFAULT 0 | `1` = channel can continue while the caster is moving. |
| `pulseCost` | int DEFAULT 0 | Flat resource drained per pulse. |
| `pulseCostType` | varchar(32) DEFAULT '' | Resource stat for pulse cost. |
| `pulseCostPercentage` | float NOT NULL DEFAULT 0 | Percentage-based pulse cost. |
| `pulseCasterEffectRequired` | int DEFAULT 0 | Effect ID that must be on the caster for each pulse to fire. `0` = no requirement. |
| `pulseCasterEffectConsumed` | tinyint(1) DEFAULT 0 | `1` = the required caster effect is removed after each pulse. |
| `pulseTargetEffectRequired` | int DEFAULT 0 | Effect ID that must be on the target for each pulse to fire. |
| `pulseTargetEffectConsumed` | tinyint(1) DEFAULT 0 | `1` = the required target effect is removed after each pulse. |
| `pulseReagentRequired` | int NOT NULL DEFAULT -1 | Item ID required per pulse. `-1` = none. |
| `pulseReagentCount` | int DEFAULT 1 | Quantity of `pulseReagentRequired` consumed per pulse. |
| `pulseReagentConsumed` | tinyint(1) DEFAULT 0 | `1` = the pulse reagent is consumed; `0` = checked but not removed. |
| `pulseReagent2Required` / `pulseReagent3Required` | int DEFAULT -1 | Secondary and tertiary pulse reagent item IDs. `-1` = none. |
| `pulseReagent2Count` / `pulseReagent3Count` | int DEFAULT 1 | Quantities for secondary/tertiary pulse reagents. |
| `pulseReagent2Consumed` / `pulseReagent3Consumed` | tinyint(1) DEFAULT 1 | Whether secondary/tertiary pulse reagents are consumed. |
| `pulseAmmoUsed` | int DEFAULT 0 | Ammo item ID spent per pulse. `0` = none. |
| `pulse_tags_on_caster` | text NOT NULL | Tags required on caster for each pulse to fire. |
| `pulse_tags_on_target` | text NOT NULL | Tags required on target for each pulse to fire. |
| `pulse_tags_not_on_caster` | text NOT NULL | Tags that must not be on the caster during each pulse. |
| `pulse_tags_not_on_target` | text NOT NULL | Tags that must not be on the target during each pulse. |

### Targeting

| Column | Type | Description |
|--------|------|-------------|
| `reqTarget` | tinyint(1) DEFAULT 1 | `1` = a target must be selected to use this ability. `0` = no target required (self or AoE). |
| `reqFacingTarget` | tinyint(1) DEFAULT 0 | `1` = the caster must be facing the target. |
| `autoRotateToTarget` | tinyint(1) DEFAULT 0 | `1` = the server automatically rotates the caster toward the target before firing. |
| `relativePositionReq` | int DEFAULT 0 | Requires the caster to be in a specific position relative to the target. `0` = no requirement. Check Atavism editor for enum values (e.g., behind target). |
| `targetType` | varchar(32) | Who can be targeted. Values: `Enemy`, `Friendly`, `Self`, `None`. |
| `targetSubType` | varchar(64) NOT NULL DEFAULT '' | Narrows `targetType`. The column has a NOT NULL constraint with a default of `''` (empty string). An empty string means no sub-type filter (targets any sub-type). Example values: `'player'`, `'mob'`. |
| `targetState` | int | Effect ID that must be active on the target. Acts as a targeting requirement. `NULL` = no state required. |
| `casterState` | int NOT NULL DEFAULT 1 | Effect ID that must be active on the caster. `1` = base combat state (always available). |
| `speciesTargetReq` | varchar(32) | Restricts the ability to targets of a specific species string (matches `mob_templates.species`). |
| `specificTargetReq` | varchar(64) | Restricts the ability to a specific named target (by name string). |
| `maxRange` | int | Maximum distance in units for the ability to fire. |
| `minRange` | int | Minimum distance required. Melee abilities typically use `0`; some abilities require a minimum distance to prevent point-blank use. |
| `line_of_sight` | tinyint(1) NOT NULL DEFAULT 0 | `1` = requires clear line of sight between caster and target. |

### Area of Effect (AoE)

| Column | Type | Description |
|--------|------|-------------|
| `aoeRadius` | int NOT NULL DEFAULT 0 | Radius of the AoE in units. `0` = single target. |
| `aoeAngle` | float NOT NULL DEFAULT 360 | Cone angle in degrees for directional AoE. `360` = full sphere (standard AoE). `90` = frontal cone. |
| `aoeType` | varchar(45) | AoE shape/trigger. Common values: `Target` (AoE around target), `Location` (placed at ground), `Self` (around caster), `Cone`. |
| `aoePrefab` | varchar(200) NOT NULL DEFAULT '' | Unity prefab path for the AoE ground indicator visual. Leave empty for no visual indicator. |
| `aoe_target_count_type` | int NOT NULL DEFAULT 0 | `0` = unlimited targets in AoE radius; `1` = limited to `aoe_target_count` targets. |
| `aoe_target_count` | int NOT NULL DEFAULT 5 | Maximum number of targets hit when `aoe_target_count_type` is `1`. |
| `attack_building` | tinyint(1) NOT NULL DEFAULT 0 | `1` = this ability can target and damage player-built structures. |

### Requirements

| Column | Type | Description |
|--------|------|-------------|
| `weaponRequired` | varchar(2048) | Comma-separated list of weapon type names the caster must be wielding. Leave empty or `NULL` for any weapon. |
| `reagentRequired` | int NOT NULL DEFAULT -1 | Item ID of the first required reagent (consumed material). `-1` = none. |
| `reagentCount` | int DEFAULT 1 | Stack count of `reagentRequired` needed. |
| `reagentConsumed` | tinyint(1) | `1` = reagent is consumed on use; `0` = checked for presence but not removed. |
| `reagent2Required` / `reagent3Required` | int DEFAULT -1 | Second and third reagent item IDs. `-1` = none. |
| `reagent2Count` / `reagent3Count` | int DEFAULT 1 | Required counts for the second and third reagents. |
| `reagent2Consumed` / `reagent3Consumed` | tinyint(1) DEFAULT 1 | Whether second/third reagents are consumed. |
| `ammoUsed` | int DEFAULT 0 | Item ID of the ammo type consumed per activation (e.g., arrows). `0` = no ammo required. |
| `casterEffectRequired` | int | Effect ID that must be present on the caster. `NULL` = no requirement. |
| `casterEffectConsumed` | tinyint(1) | `1` = the required caster effect is removed on successful activation. |
| `targetEffectRequired` | int | Effect ID that must be present on the target. `NULL` = no requirement. |
| `targetEffectConsumed` | tinyint(1) | `1` = the required target effect is removed on successful activation. |
| `skipChecks` | tinyint(1) NOT NULL DEFAULT 0 | `1` = bypass all requirement checks (used for system/server-triggered abilities). |

### Damage & Combat

| Column | Type | Description |
|--------|------|-------------|
| `damageType` | varchar(256) NOT NULL DEFAULT '' | Name of the damage type from `damage_type.name`. Determines which stat chain governs hit calculation and critical hits for this ability. Example: `'slash'`, `'magical'`. |
| `miss_chance` | float NOT NULL DEFAULT 0.05 | Base miss probability (0.0–1.0). `0.05` = 5% miss chance before accuracy/evasion modifiers. |
| `combatState` | int NOT NULL DEFAULT 2 | Whether using this ability sets the caster into combat state. `2` = enters combat; other values may define specific states. |
| `interceptType` | int | Determines whether the ability can be intercepted. `NULL` = uses server default. |
| `consumeOnActivation` | tinyint(1) NOT NULL DEFAULT 0 | `1` = the ability is removed from the caster's ability bar after one use (single-use abilities). |

### Stealth Interaction

| Column | Type | Description |
|--------|------|-------------|
| `stealth_reduce` | tinyint(1) NOT NULL DEFAULT 0 | `1` = using this ability reduces or breaks stealth. |
| `stealth_reduction_amount` | int NOT NULL DEFAULT 0 | Flat amount by which the caster's stealth stat is reduced on use. |
| `stealth_reduction_percentage` | float NOT NULL DEFAULT 0 | Percentage of the stealth stat removed on use. |
| `stealth_reduction_timeout` | bigint NOT NULL DEFAULT 0 | Milliseconds before stealth reduction wears off and stealth can be re-entered. |

### Interruption

| Column | Type | Description |
|--------|------|-------------|
| `interruptible` | tinyint(1) NOT NULL DEFAULT 0 | `1` = this ability can be interrupted by crowd-control effects or incoming damage. |
| `interruption_chance` | float NOT NULL DEFAULT 0 | Minimum chance (0.0–100.0) that an interrupt attempt succeeds. |

### Movement & Positioning

| Column | Type | Description |
|--------|------|-------------|
| `castingInRun` | tinyint(1) NOT NULL DEFAULT 0 | `1` = the ability can be cast while the caster is moving. `0` = requires the caster to be stationary. |
| `speed` | float NOT NULL DEFAULT 0 | Movement speed applied to the caster during the ability animation. |
| `chunk_length` | float NOT NULL DEFAULT 1 | Spatial chunk size used for AoE server-side processing. |
| `prediction` | int NOT NULL DEFAULT 0 | Client-side prediction mode for the ability animation. `0` = no prediction. |

### Projectile

| Column | Type | Description |
|--------|------|-------------|
| `projectile` | tinyint(1) NOT NULL DEFAULT 0 | `1` = the ability fires a projectile prefab toward the target. |
| `projectile_speed` | int NOT NULL DEFAULT 0 | Speed of the projectile in units per second. |

### Power-Up

| Column | Type | Description |
|--------|------|-------------|
| `powerUpCoordEffect` | varchar(128) NOT NULL DEFAULT '' | Name of a `coordinated_effects` entry to play while the ability is charging/powering up. |

### Effects Applied on Activation

| Column | Type | Description |
|--------|------|-------------|
| `activationEffect1` through `activationEffect6` | int DEFAULT NULL | IDs from `effects.id` applied when the ability fires. Effects 4–6 default to `0` (none). |
| `activationTarget1` through `activationTarget6` | varchar(32) | Who receives the corresponding activation effect. Values: `Self` (caster), `Target`, `Party`, `Raid`, `Enemy`. Effects 4–6 default to `'0'` (none). |

### Coordinated Visual Effects

| Column | Type | Description |
|--------|------|-------------|
| `coordEffect1event` through `coordEffect5event` | varchar(32) | The event that triggers each coordinated effect. Common values: `'Cast'`, `'Pulse'`, `'Launch'`, `'Impact'`, `'Death'`. |
| `coordEffect1` through `coordEffect5` | varchar(64) | Name of the `coordinated_effects` entry to play on the corresponding event. |

### Tag Gating

| Column | Type | Description |
|--------|------|-------------|
| `tag_disable` | int NOT NULL DEFAULT -1 | Tag group ID that disables this ability when present. `-1` = no tag disabling. |
| `tag_count` | int NOT NULL DEFAULT 1 | Minimum number of tags from `tags` field required for the ability to activate. |

### Behaviour Flags

| Column | Type | Description |
|--------|------|-------------|
| `toggle` | tinyint(1) NOT NULL DEFAULT 0 | `1` = ability toggles on/off. Activating it again deactivates it. |
| `is_child` | tinyint(1) NOT NULL DEFAULT 0 | `1` = this ability is a child ability triggered by a parent; not directly placed on hotbars. |
| `makeBusy` | tinyint(1) NOT NULL DEFAULT 1 | `1` = activating this ability sets the caster to "busy" (blocks other abilities during cast time). |
| `checkBusy` | tinyint(1) NOT NULL DEFAULT 1 | `1` = the ability will not fire if the caster is currently busy. |
| `weaponMustBeDrawn` | tinyint(1) NOT NULL DEFAULT 0 | `1` = the caster's weapon must be in drawn state for this ability to activate. |
| `drawnWeaponBefore` | tinyint(1) NOT NULL DEFAULT 0 | `1` = automatically draws the weapon before casting. |
| `enemyTargetChangeToSelf` | tinyint(1) NOT NULL DEFAULT 0 | `1` = if the current target is an enemy and the ability is self-only, retarget to self automatically. |

---

## ability_effects

**Purpose:** Links a specific `effects` row to an `abilities` row with configurable targeting, delay, and chance. A single ability can apply multiple effects; add one row per effect.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `ability_power_id` | int NOT NULL | ID from `abilities.id`. The ability that fires this effect. |
| `target` | varchar(64) NOT NULL | Who receives the effect. Values: `Self`, `Target`, `Party`, `Raid`, `AoE`. |
| `effect` | int NOT NULL | ID from `effects.id`. The effect to apply. |
| `delay` | int NOT NULL | Milliseconds after ability activation before this effect is applied. `0` = immediate. |
| `chance_min` | float NOT NULL | Minimum percentage chance (0–100) that this effect is applied. Use `0` with `chance_max=100` for always-applies. |
| `chance_max` | float NOT NULL | Maximum percentage chance (0–100). The actual chance is rolled between `chance_min` and `chance_max`. |

---

## ability_abilities

**Purpose:** Allows one ability to trigger another ability on a target with a delay and chance. Used for chained abilities, combo starters, and proc abilities.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `ability_power_id` | int NOT NULL | ID from `abilities.id`. The parent ability that fires the sub-ability. |
| `target` | varchar(64) NOT NULL | Target of the triggered sub-ability. Values: `Self`, `Target`, `Party`, `Raid`. |
| `ability` | int NOT NULL | ID from `abilities.id`. The sub-ability to trigger. |
| `delay` | int NOT NULL | Milliseconds after activation before the sub-ability fires. |
| `chance_min` | float NOT NULL | Minimum trigger chance (0–100). |
| `chance_max` | float NOT NULL | Maximum trigger chance (0–100). |

---

## ability_combos

**Purpose:** Chains two abilities so that using the parent ability makes the sub-ability available (and optionally replaces it in the hotbar slot) for a limited window.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `ability_parent_id` | int NOT NULL | ID from `abilities.id`. The ability that opens the combo window. |
| `ability_sub_id` | int NOT NULL | ID from `abilities.id`. The ability that becomes available after the parent fires. |
| `chance_min` | float NOT NULL DEFAULT 0 | Minimum chance (0–100) that the combo is offered. |
| `chance_max` | float NOT NULL DEFAULT 100 | Maximum chance (0–100). |
| `show_in_center_ui` | tinyint(1) NOT NULL DEFAULT 1 | `1` = the combo ability is shown in the centre-screen combo indicator UI. |
| `replace_in_slot` | tinyint(1) NOT NULL DEFAULT 1 | `1` = the sub-ability replaces the parent on the hotbar while the combo window is open. |
| `check_cooldown` | tinyint(1) NOT NULL DEFAULT 1 | `1` = the sub-ability's cooldown is checked before allowing the combo. |
| `time` | int NOT NULL | Milliseconds the combo window stays open. After this, the combo expires. |

---

## abilities_coordeffects

**Purpose:** Additional coordinated visual effects attached to a specific ability powerup stage. Supplements the `coordEffect1-5` columns in `abilities` for powerup-phase-specific visuals.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `ability_power_id` | int | ID from `abilities.id`. The parent ability this visual belongs to. |
| `coordEffectEvent` | varchar(64) NOT NULL DEFAULT '' | Event name that triggers this effect. Common values: `Cast`, `Pulse`, `Launch`, `Impact`. |
| `coordEffect` | varchar(128) NOT NULL DEFAULT '' | Name of the entry in `coordinated_effects` to play. |

---

## abilities_powerup_settings

**Purpose:** Defines charge/powerup thresholds for an ability. At each threshold the ability gains enhanced effects. Rows are ordered by `thresholdMaxTime` ascending.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `ability_id` | int | ID from `abilities.id`. The ability these powerup settings belong to. |
| `thresholdMaxTime` | float NOT NULL | Time in seconds the player must hold the ability key to reach this powerup tier. The first tier is the base, each subsequent row is a higher tier. |

---

## abilities_triggers_profile

**Purpose:** Defines a trigger profile that can fire abilities or effects in response to combat events. Profiles are reusable and can be attached to multiple ability rows via `abilities_triggers`.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Profile identifier. Referenced by `abilities_triggers.trigger_id`. |
| `name` | varchar(64) NOT NULL | Display name for the trigger profile. |
| `event_type` | int NOT NULL | The combat event that fires this trigger. Known values in this project: `1` = on hit (ability lands on target). The Atavism editor exposes the full enum; other values typically include on-damage-received, on-kill, on-heal, on-death, and on-ability-miss. Consult the Atavism Editor trigger event dropdown for the complete list for version 10.9. |
| `tags` | text NOT NULL | Space-separated tags. The trigger only fires if the ability/effect that caused the event has matching tags. Empty = fires on all events of this type. |
| `race` | int NOT NULL DEFAULT -1 | Race ID restriction. `-1` = applies to all races. |
| `class` | int NOT NULL DEFAULT -1 | Class ID restriction. `-1` = applies to all classes. |
| `action_type` | tinyint NOT NULL | How the triggered action is applied. Check Atavism editor for enum mapping (e.g., apply effect, fire ability). |
| `chance_min` | float NOT NULL DEFAULT 0 | Minimum trigger chance (0–100). |
| `chance_max` | float NOT NULL DEFAULT 100 | Maximum trigger chance (0–100). |
| `isactive` | tinyint(1) NOT NULL DEFAULT 1 | `1` = profile is active. |

---

## abilities_triggers

**Purpose:** Junction table linking an ability to a trigger profile. When the ability fires, the associated trigger profile is evaluated.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `ability_power_id` | int NOT NULL DEFAULT -1 | ID from `abilities.id`. The ability being monitored. |
| `trigger_id` | int NOT NULL DEFAULT -1 | ID from `abilities_triggers_profile.id`. The trigger profile to evaluate. |

---

## abilities_triggers_actions

**Purpose:** Defines what happens when an `abilities_triggers_profile` fires. One profile can have multiple action rows.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `abilities_triggers_id` | int NOT NULL | ID from `abilities_triggers.id`. The trigger association this action belongs to. |
| `target` | int NOT NULL | Target for the action. `0` = caster; `1` = target of the triggering ability; other values may apply to group/raid. |
| `ability` | int NOT NULL | ID from `abilities.id` to fire. `0` = no ability, use effect instead. |
| `effect` | int NOT NULL | ID from `effects.id` to apply. `0` = no effect, use ability instead. |
| `mod_v` | int NOT NULL DEFAULT 0 | Flat modifier applied to the triggered effect or ability value. |
| `mod_p` | float NOT NULL DEFAULT 0 | Percentage modifier applied to the triggered effect or ability value. |
| `chance_min` | float NOT NULL | Minimum chance this specific action fires (0–100). |
| `chance_max` | float NOT NULL | Maximum chance (0–100). |

---

## effects

**Purpose:** Defines every effect in the game: direct damage, damage over time, heals, stat buffs/debuffs, stuns, mounts, teleports, and more. Effects are applied by abilities via `activationEffect1-6` and `ability_effects`, or directly by items.

**Primary key:** `id` (auto-increment)

### Identification & Display

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Unique effect ID. Referenced by `abilities.activationEffect1-6` and `ability_effects.effect`. |
| `name` | varchar(64) NOT NULL | Internal identifier. |
| `displayName` | varchar(64) | Player-visible name shown in the buff/debuff bar. `NULL` = use `name`. |
| `icon` | varchar(256) | Asset path for the effect icon in the editor. |
| `icon2` | mediumtext NOT NULL | Base64-encoded runtime icon. Set automatically by the editor. |
| `tooltip` | varchar(255) | Tooltip text displayed to the player. |
| `isBuff` | tinyint(1) NOT NULL DEFAULT 0 | `1` = shows as a buff (positive); `0` = shows as a debuff (negative). Used for UI sorting. |
| `show_effect` | tinyint(1) NOT NULL DEFAULT 1 | `1` = the effect icon is shown in the player's buff/debuff bar; `0` = hidden (server-side only). |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = effect is loaded. |

### Type Classification

| Column | Type | Description |
|--------|------|-------------|
| `effectMainType` | varchar(64) | The primary category of the effect. **This column is nullable but must be set for an effect to function** — a NULL or unrecognised value means the server has no handler and the effect does nothing. Common values in this project: `Damage` (direct or DoT damage), `Restore` (healing), `Stat` (stat modification), `Stun`, `Sleep`, `Mount`, `Teleport`, `Spawn`, `Threat`, `Trap`, `Trigger`, `Teach Skill`, `ChangeClass`, `CreateItemFromLoot`. |
| `effectType` | varchar(64) | Sub-type within `effectMainType`. Maps to a specific C# handler class. Examples: `AttackEffect` (for Damage), `HealInstantEffect` (for Restore), `StatEffect` (for Stat), `StunEffect`, `SleepEffect`, `MountEffect`, `TeleportEffect`. |

### Skill Integration

| Column | Type | Description |
|--------|------|-------------|
| `skillType` | int | ID from `skills.id`. If set, the damage or heal amount is scaled by the caster's level in this skill. |
| `skillLevelMod` | float DEFAULT 0 | Multiplier applied per skill level when `skillType` is set. Example: `0.1` = +10% damage per skill level. |

### Duration & Stacking

| Column | Type | Description |
|--------|------|-------------|
| `passive` | tinyint(1) | `1` = permanent passive effect (no duration); `0` = timed effect. |
| `duration` | float | Duration in seconds. `NULL` or `0` for instant effects. For DoT/buff, this is the total time the effect persists. |
| `pulseCount` | int | Number of times the effect pulses during its duration. For DoT, this defines how many damage ticks occur. Time between pulses = `duration / pulseCount`. |
| `stackLimit` | int | Maximum number of stacks of this effect that can be active simultaneously on a single target. `1` = no stacking (refresh only). |
| `stackTime` | tinyint(1) NOT NULL DEFAULT 0 | `1` = stacking the effect refreshes its duration; `0` = each stack has an independent timer. |
| `allowMultiple` | tinyint(1) | `1` = multiple instances from different sources can coexist; `0` = only one instance at a time. |

### Linked Effects

| Column | Type | Description |
|--------|------|-------------|
| `bonusEffectReq` | int NOT NULL DEFAULT -1 | Effect ID that must be active on the target for the `bonusEffect` to be applied. `-1` = no requirement. |
| `bonusEffectReqConsumed` | tinyint(1) | `1` = the `bonusEffectReq` is consumed (removed) when the bonus triggers. |
| `bonusEffect` | int NOT NULL DEFAULT -1 | Effect ID applied as a bonus when `bonusEffectReq` is satisfied. `-1` = none. |
| `removeBonusWhenEffectRemoved` | tinyint(1) NOT NULL DEFAULT 0 | `1` = when this effect expires, the `bonusEffect` is also removed. |

### Visual Effects

| Column | Type | Description |
|--------|------|-------------|
| `pulseCoordEffect` | varchar(256) | Name of a `coordinated_effects` entry played on each pulse (for DoT/channel tick visuals). |

### Interruption

| Column | Type | Description |
|--------|------|-------------|
| `interruption_chance` | float NOT NULL DEFAULT 0 | Minimum chance (0–100) that applying this effect interrupts the target's current cast. |
| `interruption_chance_max` | float NOT NULL DEFAULT 0 | Maximum interruption chance. Rolled between `interruption_chance` and `interruption_chance_max`. |
| `interruption_all` | tinyint(1) NOT NULL DEFAULT 0 | `1` = interrupts all ongoing casts; `0` = interrupts only the active cast. |

### Effect Values

These generic value fields hold the parameters specific to `effectMainType`/`effectType`. Their meaning depends entirely on the effect type; the Atavism server reads these by position. All `intValue` and `floatValue` columns have `NOT NULL DEFAULT 0`; all `stringValue` columns have `NOT NULL DEFAULT ''`; all `boolValue` columns have `NOT NULL DEFAULT 0`. None of these fields are nullable despite the abbreviated Type column below.

| Column | Type | Default | Common Usage |
|--------|------|---------|--------------|
| `intValue1` | int | 0 | For `Damage`/`AttackEffect`: minimum damage value. For `Stat`/`StatEffect`: flat stat modifier amount. For `Restore`/`HealInstantEffect`: minimum heal amount. |
| `intValue2` | int | 0 | For `Damage`/`AttackEffect`: maximum damage value. For `Stat`/`StatEffect`: duration override or secondary modifier. |
| `intValue3` | int | 0 | Varies by type. Often a secondary quantity (e.g., DoT tick count override, threat amount). |
| `intValue4` | int | 0 | Varies by type. |
| `intValue5` | int | 0 | Varies by type. |
| `floatValue1` | float | 0 | For `Damage`: damage multiplier or percentage modifier. For `Stat`: percentage-based stat modifier. |
| `floatValue2` | float | 0 | Varies by type. |
| `floatValue3` | float | 0 | Varies by type. |
| `floatValue4` | float | 0 | Varies by type. |
| `floatValue5` | float | 0 | Varies by type. |
| `stringValue1` | varchar(256) | '' | For `Stat`/`StatEffect`: the `stat.name` to modify. For `Teleport`: destination coordinates or region name. For `Teach Skill`: skill name. |
| `stringValue2` | varchar(256) | '' | Varies by type. Often a secondary stat name or configuration string. |
| `stringValue3` | varchar(256) | '' | Varies by type. |
| `stringValue4` | varchar(256) | '' | Varies by type. |
| `stringValue5` | varchar(256) | '' | Varies by type. |
| `boolValue1` | tinyint(1) | 0 | Varies by type. For `Damage`: `1` = ignore resistances. |
| `boolValue2` | tinyint(1) | 0 | Varies by type. |
| `boolValue3` | tinyint(1) | 0 | Varies by type. |
| `boolValue4` | tinyint(1) | 0 | Varies by type. |
| `boolValue5` | tinyint(1) | 0 | Varies by type. |

### Tagging & Grouping

| Column | Type | Description |
|--------|------|-------------|
| `chance` | float NOT NULL DEFAULT 0 | Global application chance for this effect (0–100). `0` = always applied (100%). Values > 0 are a percentage roll. |
| `group_tags` | text NOT NULL | Space-separated tags that categorise this effect. Used by trigger conditions to react to effects of a specific tag group. |

---

## effects_triggers

**Purpose:** Identical in structure and purpose to `abilities_triggers_profile` but attached to effects rather than abilities. Defines a trigger profile that fires when an effect event occurs (e.g., when the effect is applied, when it pulses, when it expires).

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Profile identifier. |
| `name` | varchar(64) NOT NULL | Display name. |
| `event_type` | int NOT NULL | Combat event that fires this trigger (same enum as `abilities_triggers_profile.event_type`). |
| `tags` | text NOT NULL | Tag filter for the triggering event. |
| `race` | int NOT NULL DEFAULT -1 | Race restriction. `-1` = all. |
| `class` | int NOT NULL DEFAULT -1 | Class restriction. `-1` = all. |
| `action_type` | tinyint NOT NULL | Action category (same enum as `abilities_triggers_profile.action_type`). |
| `chance_min` | float NOT NULL DEFAULT 0 | Minimum trigger chance. |
| `chance_max` | float NOT NULL DEFAULT 100 | Maximum trigger chance. |
| `isactive` | tinyint(1) NOT NULL DEFAULT 1 | `1` = active. |

---

## effects_triggers_actions

**Purpose:** Defines what happens when an `effects_triggers` profile fires. Mirrors `abilities_triggers_actions`.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `effects_triggers_id` | int NOT NULL | ID from `effects_triggers.id`. |
| `target` | int NOT NULL | Target for the action. `0` = caster; `1` = target. |
| `ability` | int NOT NULL | Ability to fire (`abilities.id`). `0` = use effect instead. |
| `effect` | int NOT NULL | Effect to apply (`effects.id`). `0` = use ability instead. |
| `mod_v` | int NOT NULL DEFAULT 0 | Flat value modifier on the triggered effect/ability. |
| `mod_p` | float NOT NULL DEFAULT 0 | Percentage modifier on the triggered effect/ability. |
| `chance_min` | float NOT NULL | Minimum action trigger chance. |
| `chance_max` | float NOT NULL | Maximum action trigger chance. |

---

## skills

**Purpose:** Defines player skills that level up through use. Skills are linked to abilities (an ability can require and grant XP to a skill) and provide stat bonuses per level.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Skill identifier. Referenced by `abilities.skill`. |
| `name` | varchar(64) NOT NULL | Skill name (display and internal). |
| `icon` | varchar(256) | Asset path for the skill icon. |
| `icon2` | mediumtext NOT NULL | Base64-encoded runtime icon. |
| `aspect` | int DEFAULT -1 | Aspect/archetype ID this skill belongs to. `-1` = no aspect restriction. |
| `oppositeAspect` | int DEFAULT -1 | Aspect ID that is blocked if this skill is learned. `-1` = no conflict. |
| `mainAspectOnly` | tinyint(1) NOT NULL DEFAULT 0 | `1` = only characters whose main aspect matches `aspect` can learn this skill. |
| `primaryStat` | varchar(45) NOT NULL | Name of the primary stat granted per level-up in this skill. References `stat.name`. |
| `primaryStatValue` | int NOT NULL DEFAULT 0 | Flat amount added to `primaryStat` per skill level. |
| `primaryStatInterval` | int NOT NULL DEFAULT 0 | Level interval at which `primaryStat` increases. `0` = every level. |
| `secondaryStat` | varchar(45) NOT NULL | Name of the secondary stat granted per level-up. |
| `secondaryStatValue` | int NOT NULL DEFAULT 0 | Amount added to `secondaryStat` per level. |
| `secondaryStatInterval` | int NOT NULL DEFAULT 0 | Level interval for `secondaryStat` gain. |
| `thirdStat` / `fourthStat` | varchar(45) NOT NULL | Third and fourth stats gained per level. |
| `thirdStatValue` / `fourthStatValue` | int NOT NULL DEFAULT 0 | Amounts for third/fourth stats. |
| `thirdStatInterval` / `fourthStatInterval` | int NOT NULL DEFAULT 0 | Intervals for third/fourth stats. |
| `maxLevel` | int DEFAULT 1 | Maximum level this skill can reach. |
| `automaticallyLearn` | tinyint(1) DEFAULT 1 | `1` = all new characters start with this skill automatically. |
| `skillPointCost` | int DEFAULT 0 | Skill points required to learn or level this skill. `0` = free. |
| `parentSkill` | int DEFAULT 0 | ID of a prerequisite skill from `skills.id`. `0` = no parent. |
| `parentSkillLevelReq` | int DEFAULT 1 | Level the parent skill must be at before this skill can be learned. |
| `prereqSkill1` / `prereqSkill2` / `prereqSkill3` | int DEFAULT 0 | Additional prerequisite skill IDs. `0` = none. |
| `prereqSkill1Level` / `prereqSkill2Level` / `prereqSkill3Level` | int DEFAULT 1 | Required levels for each prerequisite skill. |
| `playerLevelReq` | int DEFAULT 1 | Minimum player level required to learn this skill. |
| `skill_profile_id` | int NOT NULL | ID from `skill_profile.id`. Determines the XP curve for levelling this skill. |
| `type` | int NOT NULL DEFAULT 1 | Skill category type. `1` = standard combat skill. Check Atavism editor for full enum. |
| `talent` | tinyint(1) NOT NULL DEFAULT 0 | `1` = this skill is a talent (passive permanent bonus); `0` = active skill with levels. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = active. |

---

## skill_profile

**Purpose:** Defines a progression profile that sets the XP curve type for one or more skills. Skills reference a profile via `skills.skill_profile_id`.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Profile identifier. |
| `type` | int NOT NULL | Profile type. `1` = per-level XP table (uses `skill_profile_levels`). Other values may use formula-based curves. |
| `profile_name` | varchar(64) NOT NULL | Display name of the profile. |
| `level_diff` | text NOT NULL | JSON or serialised string describing level-difference modifiers (how XP gain scales when fighting enemies above/below your level). |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = active. |

---

## skill_profile_levels

**Purpose:** Per-level XP requirements for a skill profile. Each row defines how much XP is needed to advance from `level` to `level+1`.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `profile_id` | int NOT NULL | ID from `skill_profile.id`. |
| `level` | int NOT NULL | The skill level this row governs. |
| `required_xp` | int NOT NULL | Total XP required to reach `level+1` from `level`. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = active. |

---

## mob_stat

**Purpose:** Overrides or assigns specific stat values to a mob template. One row per stat per mob. Stats not listed here fall back to the formula-based values in `stat.mob_base` + `stat.mob_level_increase`.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `mobTemplate` | int NOT NULL | ID from `mob_templates.id`. The mob this stat override applies to. |
| `stat` | varchar(45) NOT NULL | Name of the stat to set. References `stat.name`. |
| `value` | int NOT NULL | Explicit value for this stat on this mob template. This overrides the global formula. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = override is active. |

---

## mob_templates

**Purpose:** Defines every mob (NPC, monster, boss). The combat-relevant columns that interact with the damage plugin are listed below. Full non-combat columns (pathing, display, loot) are omitted here for brevity.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Mob template identifier. Referenced by `mob_stat.mobTemplate`, `mob_loot.mobTemplate`, `spawn_data`. |
| `name` | varchar(64) NOT NULL | Internal name. |
| `minLevel` / `maxLevel` | int | Level range. A spawned mob's level is randomly selected within this range. Stats scale accordingly. |
| `faction` | int NOT NULL DEFAULT 0 | Faction ID from `factions.id`. Determines which players/mobs it attacks. |
| `attackable` | tinyint(1) NOT NULL | `1` = players can target and attack this mob. |
| `species` | varchar(64) NOT NULL | Species string (e.g., `undead`, `beast`, `humanoid`). Matched by `abilities.speciesTargetReq`. |
| `subSpecies` | varchar(64) NOT NULL | Sub-species for finer-grained targeting restrictions. |
| `minDmg` / `maxDmg` | int | Base damage range for auto-attacks. The actual damage roll is between these two values before stat modifiers. |
| `attackSpeed` | float | Auto-attack speed in seconds per swing. Lower = faster. |
| `dmgType` | varchar(20) | Damage type name for auto-attacks. References `damage_type.name`. Example: `crush`, `slash`. |
| `primaryWeapon` / `secondaryWeapon` | int | Item template IDs for the mob's equipped weapons. Used for visual and weapon-stat calculations. |
| `autoAttack` | int NOT NULL DEFAULT -1 | Ability ID from `abilities.id` used as the mob's auto-attack. `-1` = use default melee auto-attack. |
| `attackDistance` | float DEFAULT 0 | Maximum range for the mob's auto-attack. |
| `ability0` / `ability1` / `ability2` | int DEFAULT -1 | Ability IDs the mob can use in combat. `-1` = unused slot. |
| `abilityStatReq0/1/2` | varchar(45) | Name of a stat that must be above a threshold for the mob to use the corresponding ability. Empty = no requirement. |
| `abilityStatPercent0/1/2` | int DEFAULT 0 | Percentage threshold (0–100) of the stat's maximum below which the mob will use the corresponding ability. Example: `25` = mob uses the ability when the stat drops below 25%. |
| `aggro_radius` | int NOT NULL DEFAULT 17 | Distance in units at which the mob detects and attacks enemies. |
| `chasing_distance` | int NOT NULL DEFAULT 60 | Maximum distance the mob will chase before resetting to spawn. |
| `send_link_aggro` | tinyint(1) NOT NULL DEFAULT 0 | `1` = when this mob is attacked, it signals nearby mobs to also aggro the attacker. |
| `get_link_aggro` | tinyint(1) NOT NULL DEFAULT 0 | `1` = this mob responds to link-aggro signals from nearby mobs. |
| `link_aggro_range` | int NOT NULL DEFAULT 0 | Range in units for link-aggro signals. |
| `tags` | text NOT NULL | Space-separated tags on the mob. Used by ability targeting conditions and trigger systems. |
| `exp` | int NOT NULL DEFAULT 0 | Base experience awarded to the killing player. |

---

## weapon_templates_profile

**Purpose:** Named container for a set of weapon action settings. An item template references a weapon profile to inherit its attack actions.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Profile identifier. Referenced by `weapon_action_settings.profile_id` and item templates. |
| `name` | varchar(86) | Display name of the weapon profile. Example: `Sword`, `Bow`, `Staff`. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = active. |

---

## weapon_action_settings

**Purpose:** Maps input actions (auto-attack, skill slots) to specific abilities for a given weapon profile. When a player equips a weapon matching a profile, these actions determine which abilities fire on each input.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `profile_id` | int NOT NULL DEFAULT 1 | ID from `weapon_templates_profile.id`. |
| `action_id` | int | Numeric identifier of the input action slot (auto-attack = 0, skill slots = 1+). |
| `slot` | varchar(256) DEFAULT '' | Name of the action slot (matches the client-side input binding). |
| `ability_id` | int DEFAULT -1 | ID from `abilities.id`. The ability fired when this action is triggered. `-1` = none. |
| `action_type` | int DEFAULT 1 | Type of action. `1` = standard ability activation. Other values may represent special actions. |
| `coordeffect` | varchar(256) | Name of a `coordinated_effects` entry played on this action. Leave `NULL` for none. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = active. |

---

## coordinated_effects

**Purpose:** A library of named Unity prefab visual effects. Abilities and effects reference these by name in their `coordEffect` columns. The server spawns the prefab at the appropriate world position during combat.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `name` | varchar(64) NOT NULL | Unique name. Used as the reference string in `abilities.coordEffect1-5`, `effects.pulseCoordEffect`, etc. |
| `prefab` | varchar(256) NOT NULL | Unity asset path to the prefab. Example: `Assets/Effects/Combat/SwordSlash.prefab`. |
| `isactive` | tinyint(1) DEFAULT 1 | `1` = active. |

---

## bonuses_settings

**Purpose:** Registry of all available bonus types that can be applied through the global events, VIP levels, and other bonus-granting systems. Each row defines a specific bonus modifier that the server understands.

**Primary key:** `id` (auto-increment)

| Column | Type | Description |
|--------|------|-------------|
| `id` | int AUTO_INCREMENT | Row identifier. |
| `name` | varchar(65) NOT NULL | Human-readable display name for the bonus. Example: `Experience Bonus`, `Damage Bonus`. |
| `code` | varchar(20) NOT NULL | Internal code string recognised by the server to apply this bonus type. |
| `param` | varchar(100) NOT NULL | Configuration parameter for the bonus (value, percentage, stat name, etc.). Format depends on `code`. |
| `isactive` | tinyint(1) NOT NULL DEFAULT 1 | `1` = active. |

---

## AI / Automation Notes

The following conventions apply when generating SQL INSERT rows for this database:

1. **Never include `creationtimestamp` or `updatetimestamp`** in INSERT statements. MySQL triggers manage these automatically.
2. **`isactive = 1`** on all new rows unless intentionally creating a disabled entry.
3. **`damage_type.name`** is matched by string value (no SQL FK constraint). The database uses `utf8mb3_general_ci` collation, which is case-insensitive at the database level, but treat matches as case-sensitive at the application level to avoid subtle bugs when collation changes or when data is migrated.
4. **Effect values (`intValue1-5`, `floatValue1-5`, `stringValue1-5`, `boolValue1-5`)** are positional and type-specific. Always check `effectMainType` and `effectType` before setting these.
5. **Base64 `icon2` fields** must be set by the Atavism Editor or copied from an existing row. Do not attempt to generate them manually in SQL.
6. **`activationEffect1-6` in abilities** store `effects.id` values (integers). `activationTarget1-6` store string target types (`Self`, `Target`, `Party`).
7. **`mob_stat` rows** are additive overrides; they do not replace the formula — they supplement it. If precise control is needed, also set `stat.mob_base = 0` for that stat.
8. **Ability chains** require rows in both `ability_effects` (for effects) and/or `ability_abilities` (for sub-abilities). The `abilities` table alone does not define what the ability does — it only defines metadata and requirements.
9. **All IDs are integers and auto-generated**; never hardcode IDs unless referencing a known seeded row (like default game states).
