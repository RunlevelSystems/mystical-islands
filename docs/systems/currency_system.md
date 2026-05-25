[⬅ Back to Mystical Isles README](../../README.md)
[⬆ Back to ⚔ Systems Index](README.md)

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
- Previous: [Effects System](effects_system.md)
- Next: [Mystical Isles Items System (Atavism X 9)](items_system.md)

## Navigation
- [⬆ Back to ⚔ Systems Index](README.md)
- [⬅ Back to Mystical Isles README](../../README.md)
