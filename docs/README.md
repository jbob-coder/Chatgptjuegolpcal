# Unnamed Hunt RPG — Documentation Folder Guide

Status: ACTIVE DOCUMENTATION STRUCTURE / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

This folder is the package-oriented documentation layer for the new game.

The repository currently contains many authoritative design documents at the repository root. Those root files remain valid and must **not** be moved, renamed or duplicated casually. This `/docs` structure is being introduced gradually so new work has an obvious home and future migration can happen safely in a dedicated pass.

## Primary quality rule

**Folders organize ownership. Content packages organize one playable thing. Owning system documents define rules; package documents apply those rules without redefining them.**

Example:
- the stats/effects authority defines how terrain modifiers work;
- a region package may say that a mud sector applies `terrain_mud`;
- the region package must not invent a second mud calculation formula.

## Directory map

```text
docs/
├── README.md                     # this guide
├── 00_project/                   # governance, scope, authority, decision process
├── 10_world/                     # atlas, settlements, regions, camps, spatial packages
│   └── regions/                  # one folder per hunting region
├── 20_gameplay/                  # combat, stats, effects, harvest, progression, behavior
├── 30_content/                   # reusable content definitions and content-package conventions
├── 40_art/                       # model/art/reference-image/animation/audio presentation guides
├── 50_technical/                 # architecture, code, persistence, streaming, platform mapping
├── 60_quality/                   # tests, performance, debug/admin quality gates
└── 70_handoff/                   # current-state/readback/migration/handoff material
```

Every top-level folder contains a local `README.md` that says what belongs there and what does not.

## What remains at repository root for now

Current root authorities such as `README.md`, `PROJECT_HANDOFF.md`, `DOCUMENTATION_INDEX.md`, `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`, `MAP_WORLD_SETTLEMENT_STRUCTURE.md`, `FIRST_SETTLEMENT_BLUEPRINT.md`, `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`, `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`, `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`, `CODE_GUIDE.md`, `PERFORMANCE_BUDGETS_AND_CAPS.md` and the other existing planning files remain authoritative.

Do not create a second full copy under `/docs` just to make the folder look complete.

A later bounded **documentation migration** can move selected root authorities after:
1. all inbound links are inventoried;
2. new paths are prepared;
3. references are updated in one coherent change;
4. readback confirms no stale path remains.

## Package rule

A playable content package gets its own folder when it has enough identity/state to require several coordinated documents.

Examples:
- `docs/10_world/regions/REGION_01/`
- future `docs/10_world/settlements/SETTLEMENT_02/`
- future `docs/30_content/monsters/SPECIES_001/`

Each package should have one `README.md` as the local front door.

The package README must state:
- technical ID;
- status;
- owning authorities;
- purpose/player value;
- package file map;
- selected decisions;
- prototype targets;
- open questions;
- dependencies;
- verification/acceptance gates;
- what the package explicitly does **not** own.

## Authority rule

When two documents disagree:
1. current explicit user instruction;
2. current owning root authority / later migrated equivalent;
3. package-level application of that authority;
4. prototype/reference material;
5. old/superseded notes.

A package cannot override a global invariant silently.

## Naming rules

Use stable machine-oriented package IDs and human-readable titles separately.

Recommended folder IDs:
- `REGION_01`, `REGION_02`;
- `SETTLEMENT_01`;
- `SPECIES_001`;
- `WEAPON_FAMILY_001`.

Inside files, use descriptive uppercase filenames for durable design documents, for example:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `STREAMING_AND_PERFORMANCE.md`.

Do not use filenames such as `final2.md`, `newideas.md`, `misc.md` or `stuff.md`.

## Status vocabulary

Use the project vocabulary:
- LOCKED / CURRENT;
- SELECTED ARCHITECTURE;
- PROTOTYPE TARGET;
- OPEN;
- FUTURE OPTION;
- REJECTED / NOT PREFERRED.

Implementation verification uses the separate gates:
DESIGNED → IMPLEMENTED → STATIC_VERIFIED → CONTENT_VALIDATED → UNIT_TESTED → INTEGRATION_TESTED → COMPILED → APK_BUILD_VERIFIED → PHONE_RUNTIME_VERIFIED → VISUAL_QUALITY_VERIFIED → PERFORMANCE_VERIFIED.

Never write `VERIFIED` when only design documentation exists.

## Reference-image rule

PNG/concept references belong under the art/reference workflow or are linked from a content package. They establish visual intent unless separately technically verified.

Never treat generated concept PNG text, dimensions, normal-map-looking art, collision, UVs or hit zones as technical truth without validation.

## Cross-link rule

Prefer links to the owning authority rather than copying its full rules into every package.

Package documents should contain:
- the local value selected for this package;
- why it was chosen;
- the authority being applied;
- any package-specific acceptance condition.

## Change rule

For any durable change:
1. identify the owning file;
2. classify impact using the design-quality matrix;
3. update the smallest relevant package/system document;
4. update package README if package status or file map changed;
5. update `PROJECT_HANDOFF.md` if current state/next action changed;
6. update `DOCUMENTATION_INDEX.md` if authority/navigation changed;
7. read back the saved result.

## Current bounded package

The first package being created under this structure is:

`docs/10_world/regions/REGION_01/`

It defines the first hunting region beyond Settlement 01's hunter gate without designing every future biome or the complete first monster.

## Current gate

`DOCS_FOLDER_STRUCTURE = ACTIVE`
`ROOT_AUTHORITY_MIGRATION = NOT STARTED`
`FIRST_REGION_PACKAGE = IN DESIGN`
`GAMEPLAY_IMPLEMENTATION = NOT AUTHORIZED`
