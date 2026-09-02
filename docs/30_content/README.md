# 30_content — Reusable Content Packages

Purpose: reusable authored definitions and entity-specific packages that are not tied to one physical map.

Future child areas can include:
- `monsters/` — species packages, anatomy, attacks, behavior configuration, harvest sources;
- `equipment/` — weapon/armor/tool families;
- `materials/` — material definitions and properties;
- `recipes/` — crafting recipes;
- `statuses/` — content instances using the shared status/effect framework;
- `terrain/` — reusable terrain definitions/tags;
- `contracts/` — reusable contract definitions where appropriate.

A content package must separate:
- reusable definition;
- runtime instance state;
- presentation references;
- tests/validation expectations.

Current root authority:
- `/CONTENT_DATA_GUIDE.md`.

Content packages must use stable IDs and validated references. Display names are never identity.

Do not put Region 01's physical sector layout here; that belongs in `docs/10_world/regions/REGION_01/`.
