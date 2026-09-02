# 30_content — Reusable Content Packages

Purpose: reusable authored definitions and entity-specific packages that are not tied to one physical map.

Current child areas:
- `hunters/` — hunter/player body/content packages and visual/model targets;
- `monsters/` — species packages, anatomy, crystal/mutation, deterministic behavior, harvest/attack relationships.

Future child areas can include:
- `equipment/` — weapon/armor/tool families;
- `materials/` — material definitions and properties;
- `recipes/` — crafting recipes;
- `statuses/` — content instances using the shared status/effect framework;
- `terrain/` — reusable terrain definitions/tags;
- `contracts/` — reusable contract definitions where appropriate.

## Current entity packages

### Hunter
- `hunters/HUNTER_BASE_01/README.md` — neutral production hunter base for scale, rig and modular-gear/reference generation. It is not yet the final story protagonist.

### Monster
- `monsters/MONSTER_01/README.md` — Mudcrest Raker first-monster identity/body plan;
- `monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md` — target groups, horn/plate break, leg impairment and tail sever;
- `monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md` — provisional mineral/earth expression, berserk and mutation variants;
- `monsters/MONSTER_01/BEHAVIOR_AND_REGION.md` — deterministic Region 01 activity/engagement/escape patterns.

## Content-package law

A content package must separate:
- reusable definition;
- runtime instance state;
- presentation references;
- tests/validation expectations.

Current root authority:
- `/CONTENT_DATA_GUIDE.md`.

Content packages must use stable IDs and validated references. Display names are never identity.

Entity packages may reference Region 01 but must not redefine its physical sector graph. Region 01 topology remains in `docs/10_world/regions/REGION_01/`.

Entity packages may describe what an attribute/effect/behavior/crystal rule needs, but global formulas/semantics remain in the owning root gameplay authorities.
