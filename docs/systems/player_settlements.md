[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Player Settlements

---

# Mystical Isles — Player Settlements
This document covers the design rules for three major settlement types: **City Building**, **Fortresses**, and **Mystical Sites**. Each represents a different scale and function of player-built civilization in the Isles.

---

## Table of Contents

1. [City Building System](#city-building-system)
2. [Fortress System](#fortress-system)
3. [Mystical Site System](#mystical-site-system)
4. [Settlement Progression Overview](#settlement-progression-overview)
5. [Settlement Conflict and Control](#settlement-conflict-and-control)
6. [Ruin Restoration System](#ruin-restoration-system)
7. [Related Documents](#related-documents)

---

## City Building System

### Overview

Cities in Mystical Isles are not entirely pre-built by the developers. They contain **predefined empty plots** that players may acquire, develop, and lose over time. Players physically shape the visible look, commerce, and politics of every city.

### City Plot Types

| Plot Type | Description |
|---|---|
| **Residential Plot** | Player home within a city neighborhood |
| **Shop Plot** | Storefront or stall for player-run commerce |
| **Guild Office Plot** | Small guild presence within a city |
| **Civic Plot** | Structures like meeting halls, training areas, and shrines |
| **Harbor Plot** | Dock and naval service lots in coastal cities |
| **Market Plot** | Open market areas with multiple stall slots |

### Acquiring a City Plot

Players acquire city plots through one of these methods:

1. **Purchase**: Pay gold or currency to a City Deed NPC or via an auction system.
2. **Quest Reward**: Complete city faction quests to earn a free or discounted plot.
3. **Reputation Unlock**: Reach a required reputation tier with the city's ruling faction.
4. **Guild Assignment**: Guild leader assigns a plot to a member within a guild-owned city district.

### City Plot Requirements

- **Lawful Cities (Kingdom)**: Require Kingdom faction reputation (Tier 2+)
- **Pirate Cities**: Require Pirate faction reputation (Tier 2+)
- **Neutral Cities**: Open to all players above minimum level
- **Restored Cities** (Ruin Restoration): Unlock progressively as restoration completes

### City Taxes

City plots are subject to ongoing tax obligations:

| Tax Type | Description |
|---|---|
| **Weekly Plot Tax** | Fixed periodic payment to maintain the plot |
| **Commerce Tax** | Percentage of NPC merchant sales |
| **Guild Office Tax** | Flat fee for guild presence in city |
| **Expansion Tax** | Additional cost when upgrading from basic to extended plot |

**Tax failure consequences:**
- 3-day grace period after missed payment
- Building permissions suspended after grace period
- NPC services disabled after 7 days
- Plot returned to unclaimed status after 14 days
- Former owner has first right of repurchase for 7 days

### City Plot Limits

Each city has a finite number of each plot type. Established, high-reputation cities have more plots. Frontier cities may have as few as 6–10 total plots. Players compete for desirable plots in high-traffic locations.

### Special City Rules

- **Protected NPC areas**: Core city buildings (main tavern, guild hall, city guard post) cannot be replaced by player buildings.
- **Aesthetic restrictions**: Certain city factions may restrict which building styles are permitted in their city.
- **Plot abandonment**: Plots abandoned for 30+ days without payment revert to the city and can be reclaimed.
- **City expansion**: Players may collectively invest in a city to unlock new plot rows or expand the city's footprint into adjacent unclaimed land.

---

## Fortress System

### Overview

Fortresses are the largest and most politically significant player structures. They are constructed over weeks of coordinated effort and can be contested during faction conflict events.

### Fortress Claim Sizes

| Tier | Size | Description |
|---|---|---|
| **Frontier Outpost** | 20×20 | Basic forward position, minimal defenses |
| **Established Outpost** | 30×30 | Reinforced position with garrison |
| **Frontier Fortress** | 60×60 | Major defensive installation |
| **Grand Fortress** | 80×80 | Regional capital-level stronghold |

### What Can Be Built in a Fortress

| Category | Examples |
|---|---|
| **Walls** | Stone walls, reinforced walls, battlemented walls |
| **Towers** | Standard watchtowers, ballista towers, mage towers |
| **Gates** | Reinforced gates, portcullis gates, hidden postern doors |
| **Barracks** | Guard barracks, officer quarters, war huts |
| **Siege Weapons** | Ballista platforms, cannon emplacements |
| **Support** | Forges, supply storage, resource nodes |
| **Political** | Throne room, war room, governor's desk, council table |
| **Services** | Merchant stalls, banker counters, trainer posts |

### Fortress Requirements

Building a full Frontier Fortress requires:
- **Guild**: Guild Claim ownership, minimum guild level 8
- **Materials**: Hundreds of stone blocks, iron ingots, timber, and specialized materials
- **Skills**: Masonry 20+, Blacksmithing 20+, Siegecraft 30+ (at least one guild member each)
- **Time**: Weeks of coordinated construction
- **Political**: Regional faction standing in contested territory may require political approval

### Fortress Maintenance

Active fortresses require ongoing maintenance:
- **Weekly supply cost**: Iron, timber, and stone for upkeep
- **NPC guard cost**: Currency per guard NPC active
- **Siege weapon maintenance**: Periodic repair materials
- Neglected fortresses begin to decay in health; walls weaken over time

### Fortress Conflict

Fortresses in contested territory can be attacked:

| Phase | Description |
|---|---|
| **Declaration** | Attacking faction declares siege, triggering a timed event |
| **Siege** | Attackers attempt to breach walls and disable key structures |
| **Victory Condition** | Capture the throne/war room, or destroy the guild hall |
| **Aftermath** | Winning side may claim the fortress or raze it |
| **Reconstruction** | Losing guild may rebuild over time if not fully expelled |

Fortress defenders receive:
- Advance notice of siege declaration
- Ability to reinforce walls and position siege weapons
- NPC guard spawns from barracks
- Buff effects from shrines and Ward objects

### Fortress Political Influence

A functioning Grand Fortress grants its controlling guild:
- Regional political title and governance access
- Tax income from nearby settlements
- Control of regional spawn tables (influence on NPC density)
- Territory markers on the world map
- NPC faction alignment in the surrounding region

---

## Mystical Site System

### Overview

Mystical Sites are dimensional or Ward-magic structures that affect the world around them. They can be built by Wardkeepers, witches, elves, gnomes, or players specializing in relic restoration and dimensional engineering.

### Who Can Build Mystical Sites

| Race / Class | Skill Focus | Site Type |
|---|---|---|
| Wardkeeper | Ward Construction | Ward Shrines, Veil Containment Stones, Healing Sanctuaries |
| Witch | Alchemy, Enchanting | Curse Circles, Bone Altars, Shadow Shrines, Corrupted Gardens |
| Elf | Elven Grovecraft | Moon Wells, Ward Groves, Living Bridges |
| Gnome | Gnomish Machinery, Relic Restoration | Ancient Power Nodes, Portal Stabilizers, Automation Stations |
| Relic Specialist (any) | Relic Restoration | Portal Anchors, Aether Stabilizers, Ancient Machines |

### Mystical Site Object Types

| Object | Effect | Notes |
|---|---|---|
| **Ward Shrine** | Ward Protection Aura in claim radius | Requires Ward Essence to maintain |
| **Healing Shrine** | Periodic healing pulse to claim members | Powerful in defended settlements |
| **Curse Circle** | Debuff field; damages or weakens enemies in radius | Dangerous; may affect friendly players |
| **Ritual Fire** | Tribal buff to combat stats | Limited duration per activation |
| **Moon Well** | Healing and magical power source | Elven Grove only; long cooldown |
| **Veil Containment Stone** | Suppresses active Veil corruption events | Rare; politically significant target |
| **Portal Anchor** | Dimensional portal to linked location | Extremely expensive; requires ancient materials |
| **Ancient Power Node** | Buffs nearby crafting stations | Powers adjacent machines |
| **Aether Stabilizer** | Stabilizes nearby portals and Ward network | Required near Portal Anchors for stability |
| **Shadow Shrine** | Stealth buff in area | Witch-built; debuffs non-stealth players |
| **Bone Altar** | Corruption ritual site | Witch; dangerous to nearby non-allied players |

### Mystical Site Rules

**Effect zones:**
- Mystical objects project effect zones of varying radius.
- Friendly effects apply to claim members and allied players.
- Hostile effects (Curse Circle, Bone Altar) can affect any player.
- Effects may stack with multiple objects, up to defined limits.

**Political targets:**
- Active Ward Shrines and Veil Containment Stones are high-value targets.
- Destroying a Ward Shrine removes its protection effect.
- Factions aligned with the Veil may actively target Ward Shrines.
- Guild claims with active Ward Shrines are harder to siege.

**Maintenance:**
- Most mystical objects require periodic material feeding (Ward Essence, Aether Shards, etc.).
- Objects without maintenance gradually lose effectiveness.
- Neglected shrines become inactive but retain their structure.
- Inactive objects may attract hostile supernatural entities.

**Corruption risk:**
- Building certain dark objects (Curse Circle, Bone Altar, Shadow Shrine) near Veil-weakened terrain may attract corruption events.
- Witch-path players accept this risk as part of their power.

### Example Mystical Site Configurations

**Ward Sanctuary (Wardkeeper/Kingdom)**
- Ward Shrine (central)
- Healing Shrine (adjacent)
- Ward Barrier Posts (perimeter)
- Veil Containment Stone (if Tier 2+ site)

**Elven Moon Grove**
- Moon Well (central)
- Ward Grove (surrounding trees)
- Nature Shrine (east)
- Living Bridge (connecting canopy platforms)

**Gnomish Research Node**
- Ancient Power Node (central)
- Aether Stabilizer (adjacent)
- Portal Anchor (connected)
- Relic Restoration Table (nearby)

**Witch's Dark Garden**
- Curse Circle (entry perimeter)
- Bone Altar (center)
- Shadow Shrine (hidden)
- Corrupted Gardens (perimeter)

---

## Settlement Progression Overview

Settlements in Mystical Isles can evolve from small camps to major cities over time.

```
Personal Homestead
        ↓
    Small Outpost / Workshop
        ↓
    Settlement Cluster (multiple claims)
        ↓
    Village / Camp (NPC services unlock)
        ↓
    Town (guild hall, markets)
        ↓
    City (political structures, full services)
        ↓
    Capital / Fortress City (regional control)
```

**Key milestone unlocks:**
- First merchant stall: enables commerce
- First guard barracks: enables NPC defense
- Guild Hall completion: unlocks Instance interior and guild governance
- Throne Seat placement: enables faction leadership title
- Fortress completion: grants regional political influence
- Ruin Restoration complete: unlocks NPC population and expansion plots

---

## Settlement Conflict and Control

### Contested Territory

Certain islands and regions are designated as contested territory. Settlements built here may be attacked during:
- Declared sieges by enemy guilds
- Faction invasion events (NPC armies + player coordination)
- Veil corruption events (if Ward objects are insufficient)

### Uncontested Territory

Most residential and civilian claims exist in uncontested territory where PvP building conflict is not possible. These areas are safe for solo and small-group players.

### Political Control Effects

Controlling a fortress or city grants the owning faction:
- Tax income from territory
- NPC spawn influence
- Travel point control (safe landing zones)
- Trade route bonuses
- World map presence

---

## Ruin Restoration System

### Overview

Many islands contain ruined settlements — remnants of pre-Fracturing civilization or abandoned towns. Players can undertake **Ruin Restoration** projects to rebuild these sites into functional settlements.

### How Ruin Restoration Works

1. **Discover the Ruin**: Players find an eligible ruined site (flagged with Ruin Restoration Claim type).
2. **Acquire Restoration Rights**: Purchase a Ruin Restoration Deed from a faction quest, reputation vendor, or rare drop.
3. **Place the Claim**: Use the deed to establish a Ruin Restoration Claim on the site.
4. **Stage 1 Restoration**: Clear debris, rebuild foundations, meet stage 1 build requirements.
5. **Quest Integration**: Each restoration stage may require completing associated lore quests.
6. **Stage 2 Restoration**: Interior structures, NPC slots, services.
7. **Full Restoration**: The site becomes a fully functional settlement with NPC population.

### Ruin Restoration Rewards

| Stage | Reward |
|---|---|
| Stage 1 Complete | Expanded claim area, first NPCs unlock |
| Stage 2 Complete | Full NPC population, market access |
| Full Restoration | Faction reputation gain, possible city-tier designation, regional map presence |

### Ruin Types

| Ruin Type | Restored Into |
|---|---|
| Ancient Ward Station | Mystical Site or Ward Sanctuary |
| Abandoned Trade Port | Player Harbor Town |
| Collapsed Canyon Village | Tribal Village |
| Ruined Kingdom Keep | Kingdom Outpost or Fortress |
| Overgrown Elven Sanctuary | Elven Grove Settlement |
| Flooded Dwarven Hall | Dwarven Stronghold |

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Claim Profiles](claim_profiles.md)
- Next: [Mystical Isles — Race & Class Building Identity](race_class_building_identity.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
