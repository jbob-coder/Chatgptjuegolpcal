# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / FIVE CORE COMBAT CONTRACTS RECORDED / STATUS-SET DESIGN NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the Stage-1 Android engine/device foundation without blocking independent non-phone design work on unavailable Galaxy A03s evidence.

Current implementation-lane gate:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Current active non-phone action:
`FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT`.

Operating contract:
`EVOLVE_ALIGNMENT.md`.

Probe root:
`probes/android_stage1/`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/` record
9. local package README/owning authorities/source/tests for the exact bounded task.

For combat design now read:
- `docs/20_gameplay/combat/README.md`;
- the five recorded combat contracts;
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md` and other specifically referenced owners as required.

For Stage-1 Android work additionally read:
- `probes/android_stage1/README.md`;
- `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md` before control/camera changes;
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
- `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Use current repository/source/build/device evidence rather than old WorldLife material or chat memory.

## Project identity

This is the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

Working name:
`Unnamed Hunt RPG`.

Playable direction:
- walkable settlement/hub;
- elevated angled aerial wilderness exploration;
- first-person turn-based tactical combat from the same physical encounter;
- anatomy, positioning, terrain, preparation, break/sever and harvest matter;
- deterministic authored creature/NPC behavior rather than generative runtime AI.

## Engine/device candidate and current build evidence

Candidate:
- Godot 4.7 family;
- CI/build tooling Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Samsung Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

Godot remains `PROBE_PENDING`.

Current protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Performance telemetry source:
`89394067971120df43b184a8509934f5458185f2`.

Workflow:
`33811355891` — `SUCCESS`.

Verified automated gates:
- protected static `154 / 154 PASS`;
- Monster collision `8 / 8 PASS`;
- world boundary `12 / 12 PASS`;
- Godot parse + Boot/ProbeWorld smoke PASS;
- aerial↔first-person `17 / 17 PASS`;
- lifecycle transient input `47 / 47 PASS`;
- performance telemetry `20 / 20 PASS`;
- Android export/APK integrity/artifact upload PASS.

Current exact inner APK:
- `UnnamedHuntRPG-Stage1Probe-debug.apk`;
- `57,570,361 bytes`;
- SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Current workflow artifact ZIP:
- artifact ID `9914945271`;
- `57,124,301 bytes`;
- SHA-256 `a02d8a1b79f3d0b87f4694c72f897beaf925016f86495a264bd72303563a6188`.

Do not confuse the APK and artifact ZIP identities.

## Completed Stage-1 automated foundation

- protected controls/camera/heading reset — source/build verified; current phone regression deferred;
- representative Monster collision — `8/8` static/build verified; phone deferred;
- world boundary — `12/12` static/build verified; phone deferred;
- aerial↔first-person continuity — `17/17` headless/build verified; phone visual/input/clipping deferred;
- lifecycle transient-input reset — `47/47` headless/build verified; Android background/resume/lock deferred;
- performance telemetry — `20/20` headless/build verified;
- fixed 24-minute Galaxy A03s sustained-performance procedure — prepared, not executed.

Performance authority:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Performance-preparation handoff:
`docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md`.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

## Combat design foundation — five recorded contracts

Combat package:
`docs/20_gameplay/combat/`.

### 1. Action Economy
`ACTION_ECONOMY_CONTRACT.md`

Selected first-slice foundation:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- one normal activation max per eligible actor/round;
- explicit bounded reactions.

### 2. Combat Resolution / Hit Quality / Defense
`COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`

Selected:
- deterministic legality/context;
- AttackControl vs DefenseControl;
- selected-part/body fallback distinctions;
- directional cover;
- one bounded seeded variance source;
- `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- explainable protection/anatomy trace.

### 3. First Weapon Family
`FIRST_WEAPON_FAMILY_CONTRACT.md`

Selected:
`WEAPON_FAMILY_FIELD_POLEBLADE` with cutting/sever primary identity, piercing/control secondary identity, directional Guard/restricted Parry and explicit weaknesses.

### 4. Stamina Prototype
`STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`

Selected:
- neutral Max Stamina `100`;
- passive recovery `+10` once at activation start;
- delayed `CATCH_BREATH` anti-loop recovery;
- explicit first-slice exertion/Field Poleblade costs.

### 5. Initiative and Turn Order
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`

Selected formula:

```text
InitiativeRating = (2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier
```

Selected scheduler laws:
- no Initiative/random opener roll;
- snapshot on encounter entry;
- no ordinary mid-encounter resorting;
- ties: `Rating DESC → Agility DESC → Perception DESC → stable combatant ID ASC`;
- one normal activation max per eligible actor/round;
- reactions/counters are not normal activations;
- late entrant acts next round earliest;
- actor ineligible at its slot skips that round;
- dead/escaped actor removed from pending/future schedule;
- save/reload cannot duplicate consumed slots or turn-start recovery/resource refresh;
- UI/animation cannot advance schedule.

Initiative pass handoff:
`docs/70_handoff/INITIATIVE_AND_TURN_ORDER_PASS_2026-09-03.md`.

No combat runtime verification is claimed because combat source is not implemented.

`COMBAT_DESIGN_READINESS = PARTIAL / FIVE_CORE_CONTRACTS_RECORDED`.
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`.

## Remaining combat-design dependencies

Still required before real combat implementation:
1. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT` — current next non-phone piece;
2. concrete first-slice terrain-effect values;
3. Monster 01 combat attack packet;
4. first berserk prototype;
5. solo/party baseline;
6. defeat/retreat baseline;
7. prior production implementation/testing gates.

The next status pass must not be combined with terrain values, Monster 01 attacks, berserk, party or defeat/retreat design.

## Documentation/navigation discipline

The project must always answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

Navigation ownership:
- `README.md` — human project front door;
- `docs/README.md` — documentation/package placement rules;
- local package `README.md` — local map/front door;
- `DOCUMENTATION_INDEX.md` — global authority/read-order map;
- `docs/70_handoff/` — bounded-pass continuity records;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — operating contract + exact next actions.

## Current gate truth

`IMPLEMENTATION_AUTHORIZED = YES`
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
`FINAL_ENGINE_SELECTED = NO`

`INITIATIVE_TURN_ORDER_PROTOTYPE = RECORDED`
`COMBAT_DESIGN_READINESS = PARTIAL / FIVE_CORE_CONTRACTS_RECORDED`

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT`
