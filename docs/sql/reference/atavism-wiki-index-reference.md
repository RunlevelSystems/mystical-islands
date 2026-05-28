# Atavism Wiki Index Reference

## Purpose
The official Atavism documentation wiki is located at:
- https://unity.wiki.atavismonline.com/

Use the wiki as a primary functional reference when SQL docs in this repository do not fully explain editor behavior, enum meaning, or runtime plugin rules.

## AI and Developer Guidance
- Copilot, ChatGPT, and human developers should consult the official wiki whenever local references are incomplete.
- Wiki plugin pages can change after repository docs are created.
- Re-verify plugin behavior against the current wiki page before generating production SQL.
- SQL schema remains the source of truth for exact table names and column names.
- Demo SQL rows are examples only and must not be treated as guaranteed production defaults.

## Current SQL Source-of-Truth for Mystical Islands
- docs/sql/10.13/core/
- docs/sql/10.13/demo/

## Recommended Verification Order
1. Confirm target version is Atavism 10.13.
2. Confirm exact table/column names from core schema SQL.
3. Check demo SQL rows for practical examples.
4. Cross-check with relevant wiki plugin page.
5. Confirm IDs and relationships before generating inserts.
