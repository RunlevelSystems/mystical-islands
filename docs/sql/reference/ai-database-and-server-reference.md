# AI Database and Server Reference

## Purpose
This repository documents how Atavism 10.13 SQL, server configuration, and game content systems work for Mystical Islands.

## Current Version
Atavism 10.13

## Official Atavism Wiki
https://unity.wiki.atavismonline.com/

## SQL Source Folders
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## SQL Reference Library
- docs/sql/reference/README.md

## Core Reference Areas
- Server Module
- Character Module
- Items Module
- Combat Module
- Future Mob/NPC Module
- Future Quest Module
- Future Merchant Module
- Future Build/Claim Module

## Rules For AI SQL Generation
- never guess table names
- use SQL schema as source of truth
- use demo rows as examples only
- verify IDs
- verify relationships
- create inserts in dependency order
- do not generate production SQL without review
- preserve Atavism 10.13 compatibility

## How To Ask AI For SQL Later
Example prompts:
- “Using docs/sql/reference and docs/items.md, generate SQL INSERT statements for 25 starter swords targeting Atavism 10.13.”
- “Using docs/sql/reference/combat-abilities-plugin.md and docs/sql/reference/combat-effects-plugin.md, draft example non-production SQL planning inserts for a mage starter ability chain on Atavism 10.13.”
- “Using docs/sql/reference/server-instances-plugin.md, generate dependency-ordered insert planning notes for three new island instances for Atavism 10.13.”
