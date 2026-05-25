[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

**Breadcrumbs:** Home / Systems / Mystical Isles — Claim Profiles

---

# Mystical Isles — Claim Profiles
Claim profiles define the size, upgrade path, and object limits for each claim. Every claim placed in the world — whether by an admin or a player using a Claim Deed — references a profile that determines what can be built inside it and how many objects of each category are allowed.

---

## Table of Contents

1. [How Claim Profiles Work](#how-claim-profiles-work)
2. [Claim Object Category Limits](#claim-object-category-limits)
3. [Claim Profile Reference Table](#claim-profile-reference-table)
4. [Profile Descriptions](#profile-descriptions)
5. [Upgrade Paths](#upgrade-paths)
6. [Tax and Maintenance](#tax-and-maintenance)
7. [Related Documents](#related-documents)

---

## How Claim Profiles Work

A claim profile is assigned to a claim when it is created. It controls:

- **Claim Type**: which build object categories and valid types are permitted
- **Size**: the footprint of the claim area
- **Upgrade Path**: which profile this claim can be upgraded to, and at what cost
- **Object Limits**: how many objects of each category may exist inside the claim simultaneously
- **Intended Use**: the design purpose of this claim configuration

Profiles are created and managed in the **Atavism Editor** and are referenced by name when configuring claim regions or Claim Deed items.

---

## Claim Object Category Limits

The following categories are tracked per-claim. Each profile defines a maximum count for each applicable category.

| Category | Notes |
|---|---|
| Housing | Sleeping areas, livable structures |
| Storage | Chests, vaults, caches |
| Crafting Station | Forges, benches, tables |
| Defense | Walls, towers, gates, barricades |
| Farm | Crop plots, animal pens, resource nodes |
| NPC Service | Merchants, guards, trainers, bankers |
| Decoration | Banners, furniture, lighting, statues |
| Shrine | Mystical, Ward, and ritual objects |
| Portal | Instance entrances and anchors |
| Dock | Naval infrastructure |
| Guild Structure | Guild halls, council tables, civic objects |
| Political Structure | Thrones, governor desks, voting stones |

---

## Claim Profile Reference Table

| Claim Profile | Claim Type | Size | Upgrade Path | Object Limits (Key) | Intended Use |
|---|---|---|---|---|---|
| **Small Homestead** | Residential Claim | 10×10 | → Medium Homestead | Housing: 1, Storage: 2, Crafting: 1, Decoration: 10, Farm: 2 | Basic solo player home and small garden |
| **Medium Homestead** | Residential Claim | 20×20 | → Large Homestead | Housing: 2, Storage: 4, Crafting: 2, Decoration: 20, Farm: 4 | Comfortable player home with workshop space |
| **Large Homestead** | Residential Claim | 30×30 | → City Plot | Housing: 3, Storage: 6, Crafting: 3, Decoration: 30, Farm: 6 | Full homestead with crafting and storage |
| **City Plot — Residential** | City Plot | 10×10 | → City Plot — Extended | Housing: 1, Storage: 2, Crafting: 1, Decoration: 15 | Empty city lot for player home |
| **City Plot — Shop** | City Plot | 10×10 | → City Plot — Extended | NPC Service: 2, Storage: 3, Decoration: 10 | Shop or stall in a player city |
| **City Plot — Guild Office** | City Plot | 15×15 | → City Plot — Extended | Guild Structure: 1, Storage: 2, NPC Service: 1, Decoration: 10 | Small guild presence in a city |
| **City Plot — Extended** | City Plot | 20×20 | — | All categories increased | Larger city lot for established players |
| **Guild Settlement** | Guild Claim | 30×30 | → Guild Town | Housing: 4, Storage: 6, Crafting: 4, Defense: 6, Guild Structure: 2, Decoration: 20 | Core guild base with hall, storage, and defenses |
| **Guild Town** | Guild Claim | 50×50 | → Guild Fortress | Housing: 10, Storage: 10, Crafting: 8, Defense: 12, NPC Service: 4, Guild Structure: 4, Political Structure: 2 | Established guild town with full infrastructure |
| **Frontier Fortress** | Fortress Claim | 60×60 | → Grand Fortress | Defense: 30, Housing: 8, Storage: 8, Crafting: 4, NPC Service: 4, Political Structure: 2 | Major defensive installation for faction control |
| **Grand Fortress** | Fortress Claim | 80×80 | — | Defense: 50, Housing: 16, Storage: 12, Crafting: 6, NPC Service: 6, Political Structure: 4 | Regional capital-tier fortress |
| **Frontier Farm** | Farm Claim | 20×20 | → Established Farm | Farm: 8, Storage: 4, Housing: 1, Decoration: 6 | Agricultural production and resource gathering |
| **Established Farm** | Farm Claim | 30×30 | — | Farm: 14, Storage: 6, Housing: 2, NPC Service: 1, Decoration: 8 | Full farming settlement with NPC workers |
| **Workshop** | Workshop Claim | 20×20 | → Master Workshop | Crafting: 6, Storage: 4, Housing: 1, Decoration: 6 | Dedicated crafting facility |
| **Master Workshop** | Workshop Claim | 30×30 | — | Crafting: 10, Storage: 8, Housing: 2, NPC Service: 2, Decoration: 10 | Advanced production facility |
| **Small Dock** | Dock Claim | 20×20 | → Harbor | Dock: 4, Storage: 4, NPC Service: 1, Decoration: 6 | Coastal dock and ship services |
| **Harbor** | Dock Claim | 40×40 | — | Dock: 10, Storage: 8, NPC Service: 4, Crafting: 2, Decoration: 12 | Full naval port with commerce and repair |
| **Pirate Cove** | Pirate Hideout Claim | 30×30 | → Pirate Port | Housing: 4, Dock: 4, Storage: 6, NPC Service: 3, Decoration: 12 | Hidden outlaw base with black market |
| **Pirate Port** | Pirate Hideout Claim | 50×50 | — | Housing: 8, Dock: 8, Storage: 10, NPC Service: 6, Decoration: 20 | Major pirate harbor with full outlaw economy |
| **Canyon Tribal Camp** | Tribal Camp Claim | 30×30 | → Canyon Village | Housing: 4, Shrine: 2, Farm: 4, Decoration: 14 | Desert tribal settlement |
| **Canyon Village** | Tribal Camp Claim | 50×50 | — | Housing: 10, Shrine: 4, Farm: 8, NPC Service: 3, Decoration: 24 | Full tribal canyon village |
| **Dwarven Hall** | Dwarven Hall Claim | 40×40 | → Dwarven Fortress | Housing: 6, Crafting: 8, Defense: 8, Storage: 8, Decoration: 12 | Underground hall with forge and defenses |
| **Dwarven Fortress** | Dwarven Hall Claim | 60×60 | — | Housing: 12, Crafting: 12, Defense: 16, Storage: 12, NPC Service: 4, Decoration: 20 | Major dwarven stronghold |
| **Elven Grove** | Elven Grove Claim | 40×40 | → Elder Grove | Housing: 6, Shrine: 4, Farm: 4, Decoration: 16 | Forest grove with nature structures |
| **Elder Grove** | Elven Grove Claim | 60×60 | — | Housing: 12, Shrine: 8, Farm: 8, Portal: 2, NPC Service: 3, Decoration: 24 | Major elven sanctuary |
| **Gnome Workshop** | Gnome Workshop Claim | 30×30 | → Gnome Complex | Crafting: 8, Storage: 6, Housing: 2, Decoration: 10 | Engineering and relic workshop |
| **Gnome Complex** | Gnome Workshop Claim | 50×50 | — | Crafting: 14, Storage: 10, Housing: 4, Portal: 2, NPC Service: 3, Decoration: 16 | Advanced engineering complex |
| **Mystical Site** | Mystical Site Claim | 20×20 | → Major Mystical Site | Shrine: 4, Portal: 1, Decoration: 8 | Arcane ritual site or Ward anchor |
| **Major Mystical Site** | Mystical Site Claim | 40×40 | — | Shrine: 8, Portal: 3, NPC Service: 2, Decoration: 14 | Major dimensional site or Ward network node |
| **Frontier Outpost** | Outpost Claim | 20×20 | → Established Outpost | Defense: 8, Housing: 2, Storage: 2, NPC Service: 1 | Small forward military or faction post |
| **Established Outpost** | Outpost Claim | 30×30 | — | Defense: 14, Housing: 6, Storage: 4, NPC Service: 3, Crafting: 2 | Reinforced outpost with garrison |
| **Ruin Restoration — Stage 1** | Ruin Restoration Claim | 30×30 | → Stage 2 | Housing: 4, Crafting: 2, Storage: 2, Decoration: 8 | First stage of ruin rebuilding |
| **Ruin Restoration — Stage 2** | Ruin Restoration Claim | 40×40 | → Stage 3 | Housing: 8, Crafting: 4, Storage: 4, NPC Service: 2, Decoration: 14 | Partial restoration with NPC inhabitants |
| **Ruin Restoration — Complete** | Ruin Restoration Claim | 50×50 | — | All categories at settlement levels | Fully restored settlement |

---

## Profile Descriptions

### Small Homestead

A basic personal claim suitable for a single player's home. Supports:
- A simple dwelling (Housing: 1)
- Basic storage containers (Storage: 2)
- One crafting station (Crafting: 1)
- A small garden or farm plot (Farm: 2)
- Decorative items for personalization (Decoration: 10)

**Upgrade path:** Small Homestead → Medium Homestead → Large Homestead → City Plot (purchase required)

---

### City Plot

City plots are predefined empty lots within established cities. They come in several sub-types:

- **Residential**: player home within the city
- **Shop**: storefront for player merchants
- **Guild Office**: small guild presence
- **Extended**: larger version for established city inhabitants

City plots require city reputation and may involve purchase costs, taxes, and NPC council approval depending on the city's political configuration.

---

### Guild Settlement

The core claim for a guild's home base. Supports a full range of guild infrastructure:
- Guild hall and civic structures
- Storage and crafting
- Defensive walls and towers
- NPC service providers
- Decorative and political objects

**Upgrade path:** Guild Settlement → Guild Town → Guild Fortress

---

### Frontier Fortress

A large, politically significant claim designed for faction conflict scenarios. Requires substantial guild investment. Supports:
- High wall and tower count
- Barracks and garrison housing
- Siege weapon emplacements
- Political structures (throne, war room)
- Merchant and service NPCs for a self-sustaining garrison

**Upgrade path:** Frontier Fortress → Grand Fortress

---

### Pirate Cove

A hidden outlaw base supporting the black market and naval economy. Requires pirate reputation. Supports:
- Rough pirate housing
- Docks and ship repair slips
- Smuggler storage
- Black market merchants and tavern NPCs

**Upgrade path:** Pirate Cove → Pirate Port

---

### Canyon Tribal Camp

A desert and canyon tribal settlement supporting the Canyon Tribes. Supports:
- Cliff homes and tribal tents
- Ritual fires and bone totems
- Oasis gardens and animal pens
- Storm-reading towers and desert watch posts

**Upgrade path:** Canyon Tribal Camp → Canyon Village

---

### Dwarven Hall

An underground or mountainside dwarven claim. Supports:
- Stone halls and forge rooms
- Mine entrances and smelters
- Heavy defensive gates and reinforced walls
- Underground storage and dwarven strongboxes

**Upgrade path:** Dwarven Hall → Dwarven Fortress

---

### Elven Grove

A forest or elevated elven settlement. Supports:
- Tree platforms and elevated homes
- Nature shrines and moon wells
- Hidden gardens and Ward groves
- Living bridges and archery platforms

**Upgrade path:** Elven Grove → Elder Grove

---

### Gnome Workshop

A compact engineering and relic workshop. Supports:
- Workbenches, machines, and relic labs
- Clockwork devices and automation stations
- Power nodes and portal stabilizers
- Engineering-focused storage and housing

**Upgrade path:** Gnome Workshop → Gnome Complex

---

### Mystical Site

A claim dedicated to dimensional and Ward magic. Supports:
- Ward shrines and ritual circles
- Portal anchors and Veil containment stones
- Ancient power nodes and aether stabilizers
- Mystical NPC guardians and attendants

**Upgrade path:** Mystical Site → Major Mystical Site

---

## Upgrade Paths

Upgrading a claim increases its area and object limits. Upgrades require:

| Upgrade Type | Requirements |
|---|---|
| Residential → Medium | Currency + Building Materials |
| Residential → Large | Currency + Materials + Time |
| Guild Settlement → Town | Guild Level 5+ + Materials + Currency |
| Guild Town → Fortress | Guild Level 10+ + Political approval + Large material cost |
| Frontier Fortress → Grand | Multi-guild coordination + Regional political approval |
| Pirate Cove → Port | Pirate Reputation Tier 3+ + Materials |
| Tribal Camp → Village | Tribal Reputation Tier 3+ + Materials |
| Dwarven Hall → Fortress | Dwarven Stonework Skill 40+ + Materials |
| Elven Grove → Elder | Elven Grovecraft Skill 40+ + Materials |
| Gnome Workshop → Complex | Gnomish Machinery Skill 40+ + Materials |
| Ruin Stage 1 → 2 | Quest completion + Materials + Time |
| Ruin Stage 2 → Complete | Quest completion + Materials + Faction unlock |

---

## Tax and Maintenance

Many claim types involve ongoing tax obligations:

- **City Plots**: subject to city tax paid to the city NPC treasury
- **Fortress Claims**: require ongoing supply costs (materials, currency)
- **Guild Claims**: optional internal guild tax system
- **Pirate Claims**: may involve protection fees to pirate faction

Claims that fall behind on taxes may:
- Lose building permissions
- Become claimable by other players
- Have NPC services disabled
- Eventually enter decay and be returned to unclaimed status

Tax rates and intervals are configured per claim in the Atavism Editor.

---

## Related Documents


## Suggested Reading
- Previous: [Mystical Isles — Build Object Templates](build_object_templates.md)
- Next: [Mystical Isles — Player Settlements](player_settlements.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
