# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project identity

This is the Android-targeted monster-hunting RPG using the repository area that previously contained WorldLife RPG.

WorldLife is abandoned and must not be resumed unless a current repository authority explicitly preserves a specific item.

`Unnamed Hunt RPG` remains a temporary working name.

## Mandatory first read

**Read `EVOLVE_ALIGNMENT.md` before every bounded pass.**

Then read `PROJECT_HANDOFF.md`, this file, `DOCUMENTATION_INDEX.md`, the newest relevant specialized handoff, and the owning source/tests for the exact task.

## Current phase

**STAGE 1 ENGINE/ANDROID FOUNDATION — VIEW CONTINUITY BUILD VERIFIED / PHONE EVIDENCE DEFERRED / LIFECYCLE REVIEW NEXT**

Implementation authorization is active inside the isolated probe. Later production stages remain controlled by readiness gates.

## Read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/` file
9. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`
10. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
11. `probes/android_stage1/README.md`
12. owning package/source/tests.

## Current Stage-1 engine/device truth

Candidate:
- Godot 4.7 family;
- current CI/build tooling Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Current automated build:
- source commit `c218b273a49dbdce78ce143698fd87d07bdd2643`;
- workflow `33807677829`;
- static preflight `154/154 PASS`;
- Monster collision guard `8/8 PASS`;
- world-boundary guard `12/12 PASS`;
- Godot parse PASS;
- Boot + ProbeWorld smoke PASS;
- executable aerial↔first-person continuity `17/17 PASS`;
- Android export + APK integrity PASS.

APK:
`UnnamedHuntRPG-Stage1Probe-debug.apk`

Size:
`57,570,361 bytes`

SHA-256:
`db046d03d778228e6343b5ada35f2fa9392a8c79c519d1e7cd58d632e701c6da`

Prior Galaxy A03s evidence remains useful but does not automatically verify the current APK.

Godot remains a probe candidate until the full phone-foundation gate closes.

## Protected control-camera baseline

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Protected direction:
- analog movement joystick;
- per-touch Hunter-heading movement reference;
- stable basis during active touch;
- re-touch captures latest heading;
- Hunter faces resolved movement;
- aerial camera follows/trails Hunter heading;
- aerial camera stays synchronized while first person is active;
- Settings + Controls tab + Look Speed;
- default Look Speed `35%`;
- persistence `user://stage1_settings.cfg` / `controls/look_speed`;
- opening Settings resets movement.

Do not silently remove, replace or materially retune this contract.

## Completed source/build foundation repairs

Monster placeholder:
- fixed representative solid collider source added;
- static/Godot/APK build verified;
- phone solidity still deferred.

World boundary:
- existing `±8.5 m` X/Z containment kept unchanged;
- semantic regression guard/build verified;
- current-build phone containment still deferred.

View continuity:
- executable Godot regression verifies no Hunter transform drift and no stale aerial-camera revival through first-person transitions;
- `17/17 PASS`;
- phone visual/clipping/input verification still deferred.

## Current explicit user instruction about phone testing

Do not stop development waiting for the user to test on the phone.

Record phone-only checks for later and continue with independent Stage-1 foundation work. Never convert missing evidence into PASS.

## Exact next implementation action

**ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW**

This is review-first. Inspect the lifecycle test contract, current joystick/settings/view state ownership and official Godot pause/resume notification behavior. Then select and record the smallest lifecycle source/verification piece before coding it.

## Build readiness classes

1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely needs its answer.**

Current state:
- engine probe: active Stage-1 lifecycle/performance + deferred phone evidence;
- domain implementation: blocked by engine-phone foundation gate;
- combat design: partial/advanced;
- vertical slice: partial;
- expansion: intentionally open.

## Recorded gameplay authorities

Combat package:
`docs/20_gameplay/combat/`

Recorded:
- 4 AP / 1 RP / persistent Stamina;
- deterministic hit quality/defense pipeline;
- `WEAPON_FAMILY_FIELD_POLEBLADE`;
- Max Stamina prototype `100`.

Next independent design packet:
**INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT**.

## Locked direction summary

- walkable settlement/hub;
- elevated angled aerial wilderness exploration;
- first-person turn-based tactical combat from the same physical encounter;
- world atlas → settlement → hunter gate → continuous hunting region → local encounter;
- `1 world unit = 1 meter`;
- deterministic authored NPC/creature behavior;
- six core attributes: Might / Finesse / Agility / Endurance / Perception / Resolve;
- hybrid equipment/mastery/knowledge-weighted progression;
- anatomy, terrain and preparation matter;
- crystal Energy is life force and berserk spends the same reserve.

## Current content anchors

Hunter Base 01:
1.75 m reusable humanoid base.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted feet; legal distal tail sever; internal life crystal.

Region 01:
S00–S06 physical hunting sectors with tracking and persistent escape/reacquisition.

## Current verification truth

`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`GODOT_PARSE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

Current explicit user instruction > verified source/tests > current repository authority > direct device evidence for runtime claims > older documents > chat memory.
