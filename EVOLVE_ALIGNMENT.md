# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH PERSISTENCE RECORDED / WORLD COORDINATES + DIMENSIONS NEXT
Last reconciled: 2026-09-03

## Mandatory pre-work rule

Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build or verification pass.

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. newest relevant `docs/70_handoff/`;
5. owning package/README/source/tests.

Current repository/source/build/device evidence outranks chat memory.

## Main-goal rule

The game is the objective.

Documentation exists to preserve intent, ownership, dependencies, implementation readiness, verification evidence, continuity and exact next action. Do not create documentation with no game/design/implementation/QA/continuity consumer.

## Authority order

For intended changes:
1. current explicit user instruction;
2. current verified source/tests;
3. current owning repository authorities;
4. direct build/runtime/device evidence;
5. external research/documentation;
6. chat summaries/memory.

For runtime claims:
1. direct target-device evidence;
2. logs/screenshots/video;
3. build/package evidence;
4. source/static expectations;
5. planning documents.

## Mandatory loop

`READ EVOLVE`
-> `READ CURRENT STATE/HANDOFF`
-> `VERIFY STATE`
-> `IDENTIFY EXACTLY ONE SMALL PIECE`
-> `IDENTIFY OWNER + READINESS GATE`
-> `STATE EXACT BOUNDED ACTION`
-> `RESEARCH IF REQUIRED`
-> `IMPLEMENT OR DOCUMENT`
-> `TEST/REVIEW AT HIGHEST AVAILABLE LEVEL`
-> `INSPECT REGRESSION`
-> `FIX SAME-PIECE FAILURES`
-> `UPDATE OWNER/HANDOFF/README/INDEX AS REQUIRED`
-> `SAVE/COMMIT`
-> `READ BACK`
-> `MARK EXACT STATUS`
-> `SELECT EXACT NEXT PIECE`
-> `WRITE NEXT PIECE INTO EVOLVE`
-> `STATE SAME NEXT ACTION TO USER`.

Never begin an unrelated next piece before closing the current boundary.

## Documentation/navigation law

Every substantial durable piece must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

Use:
- root `README.md` — human game/front door;
- `docs/README.md` — placement/package rules;
- local package README — local map;
- `DOCUMENTATION_INDEX.md` — global map/read order;
- `docs/70_handoff/` — bounded-pass continuity;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- this file — operating contract + exact next actions.

## Build-readiness taxonomy

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`.

## Stage-1 engine/device candidate

- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

`probes/android_stage1/` remains disposable evidence-gathering source and must not silently become production architecture.

Protected control/camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

## Phone-evidence rule

Development must not stop waiting for phone reports.

Record phone-only tests for later, never infer phone PASS from CI/source, continue independent work, and do not close Stage 1 without direct Galaxy A03s evidence.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## Current automated Stage-1 lineage

Protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Performance telemetry source:
`89394067971120df43b184a8509934f5458185f2`.
Workflow `33811355891`: SUCCESS.

Verified automated gates:
- protected static 154/154;
- Monster collision 8/8;
- world boundary 12/12;
- Godot parse/smoke PASS;
- aerial<->first-person 17/17;
- lifecycle 47/47;
- performance telemetry 20/20;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Recorded first-slice game-design chain

Combat baseline:
nine reusable first-slice authorities through Defeat/Retreat.

Monster 01:
Mudcrest Raker anatomy/attacks/Berserk/deterministic behavior/Region escape-reacquisition/harvest packet.

Harvest:
finite authored capacity; condition/quality; deterministic extraction; clean-sever lineage transfer; persistent depletion.

Inventory:
Recovery Bundles; `PLAYER_FIELD_INVENTORY`; quality/provenance stacks; conserved idempotent transfers.

Craft/equip:
`recipe_field_poleblade_raker_tendon_grip`
consumes 2 HIGH `material_m01_tail_tendon` + 2 STANDARD-or-better `material_m01_hide` and applies `refinement_field_poleblade_raker_tendon_grip` to a compatible Field Poleblade.

Typed effect:
Placed Hew Stamina 18 -> 16 through one `COST_MODIFIER` only.

Settlement Smith:
physical workbench in Settlement 01 Craft/Processing Quarter on Hunter Service Loop; normal essential service independent of one Smith NPC schedule; gate-return-to-workbench future graybox target <=25 seconds.

## Persistence baseline — RECORDED

Front door:
`docs/50_technical/persistence/README.md`.

Authority:
`docs/50_technical/persistence/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_PASS_2026-09-03.md`.

Selected model:
- `save_schema_id = UHR_SAVE_SCHEMA_1`;
- `schema_version = 1`;
- first-slice slot `save_slot_01`;
- monotonically increasing committed save generations;
- state snapshot, not event sourcing;
- save request may happen anytime but new snapshot commits only at a persistence-safe domain boundary;
- active encounter save is allowed at stable combat decision/reaction points;
- exact round/InitiativeSnapshots/RoundRoster/current actor/resources/late-entry state persists;
- same Monster ID/sector/route/anatomy/status/Core Energy/Core Strain/Berserk episode state persists;
- encounter outcome/retreat state persists;
- carcass/detached harvest lineages/capacity/depletion persists;
- Recovery Bundles/Inventory stacks/provenance/transfer ledgers persist;
- Craft ledger + Raker-Tendon Grip refinement persists exactly once;
- Smith service state persists while transient Smith overlay reloads closed;
- transaction/sequence counters survive reload and cannot collide/replay;
- incomplete new write never invalidates previous committed generation;
- load validates invariants before state activation;
- presentation/UI/animation reconstruct from domain truth instead of replaying gameplay consequences.

Spatial persistence interface stores:
- stable spatial-context ID;
- sector/local-area ID;
- position `[x,y,z]` in meters;
- orientation;
- stable transition/service/escape anchors as needed.

`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`
`PERSISTENCE_RUNTIME_VERIFIED = NO`.

## User-directed world dimensions and coordinates

The user explicitly requested that development begin building and documenting dimensions and coordinates for game objects/areas.

Existing world authority already selects:
`1 world unit = 1 meter` as the preferred measurement standard.

Current dimensional evidence includes:
- Hunter baseline reference about 1.75–1.80 m;
- Monster 01 about 6.6 m long / ~3.0 m shoulder-body height;
- Settlement 01 blueprint about 220–280 m long axis × 160–230 m short axis;
- Region 01 sectors about 100–180 m characteristic span;
- standard large-monster combat footprint generally tens of meters, global starting range about 30–90 m;
- Smith/workshop guide about 10–20 m × 12–28 m;
- streets/doors/walls/gates already have prototype dimensional bands in `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`.

These are ranges and are not yet one coherent coordinate map.

## Exact current active non-phone gate

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`

Bounded scope:
1. reread `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`, `MAP_WORLD_SETTLEMENT_STRUCTURE.md`, `FIRST_SETTLEMENT_BLUEPRINT.md`, world/Settlement/Region front doors, persistence package, Region 01 topology/encounter/streaming authorities, Hunter/Monster dimensional authorities;
2. preserve `1 world unit = 1 meter`;
3. select one engine-neutral right-handed axis convention and orientation vocabulary that can map cleanly to the eventual engine;
4. select major-area origin policy so Settlement 01 and Region 01 can use stable local coordinates without huge-world precision problems;
5. choose one prototype Settlement 01 outer bound/extent inside existing accepted ranges;
6. assign documented prototype coordinates/bounds for Hunter Gate, Smith/workbench, processing yard, storage/loadout, Hunter Lodge, market/civic, recovery/residential and transition anchors;
7. ensure the Hunter Gate -> Smith path geometry can plausibly satisfy the <=25-second target without asserting runtime PASS;
8. define Hunter Gate/frontier transition corridor length/width/elevation targets and source/destination anchor coordinates;
9. map Region 01's seven sectors into coordinates while preserving its existing topology and ecological identity; sector technical bounds may overlap visually/streaming-wise only by explicit rule and must not become visible boxed arenas;
10. assign sector centers, approximate extents and connection/transition anchor coordinates;
11. anchor selected first-slice encounter footprints to real Region 01 locations and size them within current combat-footprint guidance;
12. create a dimension reference table for Hunter, Monster 01, doors, Smith/workshop, streets, gate/walls and combat footprint;
13. classify every spatial value as `LOCKED/CURRENT`, `PROTOTYPE TARGET` or `OPEN`;
14. define coordinate-documentation/ID format so later assets/scenes/tests can reference the same anchors;
15. record future graybox/path-length/overlap/streaming tests;
16. do not claim final art, final collision, final camera/FOV, target-phone performance or production coordinates.

## After coordinate/dimension framework

Reread current vertical-slice readiness and select the smallest remaining playable integration dependency, likely Region 01 graybox/tracking-to-encounter integration using the new coordinates unless current evidence changes.

## Saved visual concept

Google Drive folder `Unnamed Hunt RPG`.
File `Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/runtime/dimensions/coordinates remain authoritative.

## Current gate truth

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`PERFORMANCE_TELEMETRY_HEADLESS = YES / 20_OF_20`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

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

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.