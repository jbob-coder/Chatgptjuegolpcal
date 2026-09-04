# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH PERSISTENCE RECORDED / WORLD COORDINATES + DIMENSIONS NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.

Operating contract:
`EVOLVE_ALIGNMENT.md`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

For current spatial work additionally read:
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- `docs/10_world/README.md`;
- Settlement 01 package/Smith contract;
- Region 01 README/topology/encounter footprints/streaming acceptance;
- Monster 01 anatomy/dimension authority;
- Hunter scale/model authorities;
- new persistence contract because saved positions must consume the same coordinate framework.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
- walkable settlement/hub;
- aerial wilderness tracking/exploration;
- first-person turn-based tactical combat from the same physical encounter;
- anatomy damage changes capability and harvest;
- deterministic authored behavior;
- physical harvest -> Inventory -> physical Smith -> equipment refinement -> save/reload -> next hunt.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct phone regression + sustained 24-minute run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Recorded gameplay/world chain

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe/Craft-Equip -> Settlement Smith Service -> Persistence`.

Key first recipe:
`recipe_field_poleblade_raker_tendon_grip`
= 2 HIGH tail tendon + 2 STANDARD-or-better hide -> Raker-Tendon Grip refinement -> Placed Hew Stamina 18 -> 16.

Settlement Smith:
physical workbench in Craft/Processing Quarter; normal essential service independent of one NPC schedule; future gate-return route target <=25 seconds normal walk.

## Persistence baseline — RECORDED

Front door:
`docs/50_technical/persistence/README.md`.

Authority:
`docs/50_technical/persistence/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_PASS_2026-09-03.md`.

Selected:
- `UHR_SAVE_SCHEMA_1`, schema version 1;
- one prototype slot `save_slot_01`;
- monotonically increasing committed generations;
- state snapshot, not event sourcing;
- safe-point-only snapshot commits;
- active encounter saves at stable combat decision/reaction points;
- exact Initiative/RoundRoster/current-actor/resource state persists;
- same Monster/anatomy/Core/Strain/Berserk/route/evidence state persists;
- harvest lineage/depletion, Recovery Bundles, Inventory/provenance, craft ledgers/refinement persist;
- Smith overlay reloads closed while domain state remains authoritative;
- transaction/ID sequences cannot replay or collide after reload;
- incomplete new write cannot destroy last committed generation;
- load validates invariants before state activation;
- presentation rebuilds from domain truth.

`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`
`PERSISTENCE_RUNTIME_VERIFIED = NO`.

## User-requested dimensions/coordinates direction

Current world authority already uses the preferred standard:
`1 world unit = 1 meter`.

Current prototype size evidence includes:
- Hunter baseline around 1.75–1.80 m;
- Mudcrest Raker ~6.6 m long / ~3.0 m shoulder-body height;
- Settlement 01 specific blueprint roughly 220–280 m long axis × 160–230 m short axis;
- Region 01 sectors roughly 100–180 m characteristic spans;
- normal first-person encounter footprints tens of meters, with 30–90 m global starting guidance;
- workshop/smith guide roughly 10–20 m × 12–28 m.

These are ranges, not yet one coordinate map.

Exact next pass:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.

That pass must select axis/origin conventions and documented prototype coordinates/bounds/anchors for Settlement 01, Hunter Gate/transition, Region 01 sectors and encounter footprints, while preserving existing topology and labeling untested geometry as prototype graybox targets.

## Saved visual concept

Google Drive folder:
`Unnamed Hunt RPG`.

File:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.
Drive file ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/runtime/dimensions/coordinates remain authoritative.

## Documentation/navigation discipline

Repository must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

Navigation:
root README / `docs/README.md` / package READMEs / `DOCUMENTATION_INDEX.md` / `docs/70_handoff/` / this + `START_HERE_NEW_CHAT.md` / `EVOLVE_ALIGNMENT.md`.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`
`SETTLEMENT_SMITH_RUNTIME_IMPLEMENTED = NO`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.