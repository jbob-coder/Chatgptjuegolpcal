# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project identity

This is the Android-targeted monster-hunting RPG using the repository area that previously contained WorldLife RPG.

WorldLife is abandoned and must not be resumed unless a current repository authority explicitly preserves a specific item.

`Unnamed Hunt RPG` remains a temporary working name.

## Mandatory first read

**Read `EVOLVE_ALIGNMENT.md` before every bounded pass.**

Then read:
1. `PROJECT_HANDOFF.md`;
2. this file;
3. `DOCUMENTATION_INDEX.md`;
4. root `README.md`;
5. `docs/README.md`;
6. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
7. newest relevant `docs/70_handoff/` record;
8. owning package/README/source/tests for the exact task.

Do not reconstruct the project from old chat summaries when current repository authorities exist.

## Current phase

**STAGE 1 ENGINE/ANDROID FOUNDATION — AUTOMATED FOUNDATION + PERFORMANCE PROCEDURE PREPARED / DIRECT GALAXY A03s EVIDENCE STILL REQUIRED.**

Production domain/combat source remains behind readiness gates.

The user explicitly instructed development not to stop waiting for phone reports. Therefore the phone gate stays deferred/unverified while independent non-phone design proceeds.

## Current engine/device truth

Candidate:
- Godot 4.7 family;
- current CI/build tooling Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

Godot remains `PROBE_PENDING`, not final production-engine truth.

Current protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow:
`33811355891` — `SUCCESS`.

Automated gates:
- protected static `154/154 PASS`;
- Monster collision `8/8 PASS`;
- world boundary `12/12 PASS`;
- Godot parse/smoke PASS;
- aerial↔first-person `17/17 PASS`;
- lifecycle transient input `47/47 PASS`;
- performance telemetry `20/20 PASS`;
- Android export/APK integrity/artifact upload PASS.

Exact inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Sustained-performance authority:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

The 24-minute phone run has not executed.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

## Protected Stage-1 control/camera baseline

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Do not silently change analog joystick behavior, heading-reset basis, Hunter-facing behavior, aerial camera follow/synchronization, Settings, Look Speed default/persistence, or Settings movement reset.

## Documentation map rule

The repository must answer:
**WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT.**

Use:
- root `README.md` — human project front door;
- `docs/README.md` — documentation/package placement rules;
- local package READMEs — local file maps/front doors;
- `DOCUMENTATION_INDEX.md` — global where-is-what/read-order map;
- `docs/70_handoff/` — bounded-pass continuity records;
- `PROJECT_HANDOFF.md` — current project snapshot;
- this file — new-chat reconstruction;
- `EVOLVE_ALIGNMENT.md` — operating contract + exact next actions.

## Build readiness

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Current:
- engine probe — automated foundation prepared; direct current-phone bundle remains;
- domain implementation — blocked by engine-phone gate;
- combat design — partial/advanced with five core contracts recorded;
- vertical slice — partial/later;
- expansion — intentionally open.

## Combat design package

Read:
`docs/20_gameplay/combat/README.md`.

Recorded authorities:
1. `ACTION_ECONOMY_CONTRACT.md`;
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`.

### Current Initiative / turn-order prototype

Selected:

```text
InitiativeRating = (2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier
```

Laws:
- no Initiative/random opener roll;
- snapshot on encounter entry;
- deterministic tie order `Rating DESC → Agility DESC → Perception DESC → stable combatant ID ASC`;
- no ordinary mid-encounter resorting;
- one normal activation maximum per eligible actor per round;
- reactions/counters are not normal activations;
- late entrants wait until next round for a normal activation;
- ineligible actor at its slot skips that round;
- dead/escaped actors leave pending/future schedule;
- save/reload may not duplicate consumed slots or turn-start recovery/resource refresh;
- UI/animation cannot advance turn order.

Specialized record:
`docs/70_handoff/INITIATIVE_AND_TURN_ORDER_PASS_2026-09-03.md`.

This is design-recorded only. No combat runtime is claimed.

## Current content anchors

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale:
`1 world unit = 1 meter`.

Hunter Base 01:
1.75 m reusable humanoid base.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs/feet; severable distal tail; internal crystal.

Primary attributes:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Progression:
equipment + mastery + knowledge weighted.

Combat baseline:
4 AP / 1 RP / persistent Stamina / Max Stamina prototype 100 / deterministic hit resolution / Field Poleblade first family / deterministic turn order.

## Exact continuation state

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active action that can proceed now:
`FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT`.

That pass must remain limited to the smallest reusable first-slice statuses/tactical states and their ownership/timing/stacking/removal/trace rules. Do not combine it with terrain values, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

Current explicit user instruction > current verified source/tests > current owning repository authorities > direct target-device evidence for runtime claims > build evidence > old notes/chat memory.
