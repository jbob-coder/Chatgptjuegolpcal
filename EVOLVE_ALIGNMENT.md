# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / COMBAT DESIGN BASELINE RECORDED / HARVEST BASELINE NEXT
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

Never begin the next unrelated piece before closing the current boundary.

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

Authority: `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Law: an open question blocks only the earliest implementation gate that genuinely consumes it.

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`.

## Stage-1 engine/device candidate

- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

`probes/android_stage1/` is disposable evidence-gathering source and must not silently become production architecture.

Protected control/camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

## Phone-evidence rule

Development must not stop waiting for phone reports.

Therefore:
- record phone-only tests for later;
- never infer phone PASS from CI/source;
- continue independent non-phone work;
- do not close Stage 1 without direct Galaxy A03s evidence.

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

Prepared sustained phone run:
24 minutes with checkpoints T+02/T+07/T+09/T+14/T+19/T+24.

`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Generic combat package

Nine reusable first-slice authorities are recorded:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative/Turn Order;
6. Status Set;
7. Terrain Set;
8. Solo / Party Baseline;
9. Defeat / Retreat Baseline.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.

This is a design baseline only. Production combat source/runtime tests remain absent.

## Solo / Party Baseline — RECORDED

Authority:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Selected:
- solo-capable with optional companions;
- maximum three active Hunters;
- player directly controls own Hunter only;
- each actor owns independent resources/state;
- same deterministic Initiative/RoundRoster;
- deterministic companion behavior/orders;
- no body switching/runtime generative AI.

`SOLO_PARTY_BASELINE_RECORDED = YES`.

## Defeat / Retreat Baseline — RECORDED

Authority:
`docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

Handoff:
`docs/70_handoff/DEFEAT_RETREAT_BASELINE_PASS_2026-09-03.md`.

### Hunter defeat/downed

Selected:
- `hunter_health <= 0 -> DOWNED`;
- Downed is not permanent death in first slice;
- no in-combat revive;
- Downed actor cannot normal-activate/react/command;
- pending Downed slot -> `SKIPPED_INELIGIBLE`;
- Downed actor excluded from later round rosters;
- player Hunter Downed -> `HUNTERS_DEFEATED` after current authoritative resolution;
- companion Downed alone does not end encounter while player remains Active.

### Voluntary Hunter withdrawal

Selected:
- escape is spatial/deterministic, not a random roll;
- actor must reach a legal world-connected Hunter escape node;
- `WITHDRAW_FROM_ENCOUNTER` = `1 AP`;
- successful withdrawal removes actor from encounter scheduler without resource refund/refresh.

Solo:
- player withdraws from legal escape node;
- outcome `HUNTERS_WITHDREW`;
- hunt state `HUNT_ACTIVE_DISENGAGED`.

Party:
- `DECLARE_PARTY_RETREAT` = player `1 AP`;
- sets emergency retreat intent;
- companions withdraw using their own scheduler slots/AP/RP/Stamina;
- player exits last after all non-Downed companions withdrew;
- Downed companions do not deadlock first-slice withdrawal; exact rescue penalties are deferred.

### Monster escape/death

Monster 01 behavior owns retreat selection/route.
Defeat/Retreat owns final escape completion.

`MONSTER_WITHDRAW_FROM_ENCOUNTER`:
- requires legal current escape boundary/route;
- consumes the Monster's remaining/full normal activation opportunity;
- no damaging attack after successful withdrawal in that activation.

Success:
- outcome `MONSTER_ESCAPED`;
- hunt state `HUNT_ACTIVE_REACQUIRE`;
- same Monster instance, injuries, anatomy, Core/Berserk/status/route intent persist.

Monster death remains Crystal/body-terminal owned.
Current hard example:
`core_energy_current <= 0 -> creature death`.

Monster death:
- stops further action;
- preserves final anatomy/detached-part state;
- outcome `MONSTER_DEAD`;
- hunt state `HUNT_COMPLETE_MONSTER_DEAD`;
- next harvest layer consumes physical state rather than generating disconnected loot.

### Simultaneous terminal

Same authoritative resolution boundary causing both Monster death and player Hunter Downed commits:
`MUTUAL_TERMINAL`.

Meaning:
- Monster objective complete;
- party forced into recovery;
- carcass/part state persists;
- immediate harvest is not auto-granted by this contract.

### Scheduler/persistence invariants

Terminal encounter:
- stops new activations/reaction windows/round advance;
- closes remaining pending slots with encounter-termination removal reason;
- cannot be reopened by UI/animation/save reload.

Save/load preserves:
- terminal/outcome/hunt state;
- Downed/withdrawn actor states;
- party retreat intent;
- scheduler state;
- Monster persistent identity/route/anatomy/Core/Berserk/status;
- outcome sequence ID.

No reload may duplicate withdrawal costs, death, carcasses, severed parts or escaped Monsters.

`DEFEAT_RETREAT_BASELINE_RECORDED = YES`
`DEFEAT_RETREAT_RUNTIME_IMPLEMENTED = NO`
`DEFEAT_RETREAT_RUNTIME_VERIFIED = NO`.

## Monster 01 content — RECORDED

Normal attack authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Berserk authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Behavior authority:
`docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`.

Behavior now explicitly hands final Monster escape/encounter outcome to Defeat/Retreat.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`MONSTER_01_COMBAT_RUNTIME_IMPLEMENTED = NO`.

## Exact current active non-phone gate

`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`

Bounded scope:
1. reread current anatomy/damage/harvest root authorities, Monster 01 anatomy, Combat Resolution and Defeat/Retreat outcome ownership;
2. create a local `docs/20_gameplay/harvest/` package/front door if none exists;
3. define per-anatomy harvest capacity as finite physical capacity, not random loot-table quantity;
4. define remaining usable mass/condition from actual wounded/broken/severed/destroyed state;
5. define clean sever versus crushed/shattered/damaged consequences;
6. define carcass and detached-part harvest containers/remaining capacity;
7. define tool/knowledge/skill modifiers that improve recovery but cannot exceed surviving capacity;
8. define unique-part anti-duplication and persistence/save-load boundaries;
9. define deterministic yield trace/future tests;
10. do not bundle crafting recipes, economy prices, reward sharing or production implementation.

## After harvest baseline

Select the next smallest vertical-slice prerequisite from current repository evidence—likely inventory/material ownership or one-recipe crafting linkage—without preempting the phone implementation gate.

## Current gate truth

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`PERFORMANCE_TELEMETRY_HEADLESS = YES / 20_OF_20`
`SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

`ACTION_ECONOMY_CONTRACT = RECORDED`
`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`
`STAMINA_PROTOTYPE_CONTRACT = RECORDED`
`INITIATIVE_TURN_ORDER_PROTOTYPE = RECORDED`
`FIRST_SLICE_STATUS_SET_PROTOTYPE = RECORDED`
`FIRST_SLICE_TERRAIN_EFFECT_SET = RECORDED`
`SOLO_PARTY_BASELINE_RECORDED = YES`
`DEFEAT_RETREAT_BASELINE_RECORDED = YES`
`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.