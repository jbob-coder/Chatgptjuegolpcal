# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / HUNT-01 MANIFEST STATIC VERIFIED / STAGE-1 ADAPTIVE JOYSTICK PHONE RETEST NEXT
Last reconciled: 2026-09-04

## Mandatory rule

The game is the objective. Documentation/data/tests exist to preserve ownership, dimensions, coordinates, evidence, continuity and exact next action.

Before every bounded pass read:
1. this file;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. newest relevant `docs/70_handoff/`;
6. exact owning package/source/tests.

Current repository/source/build/device evidence outranks chat memory.

## Mandatory loop

`READ -> VERIFY -> ONE BOUNDED PIECE -> IDENTIFY OWNER/GATE -> IMPLEMENT/DOCUMENT -> TEST -> FIX SAME-PIECE FAILURES -> UPDATE OWNER/HANDOFF/README/INDEX -> SAVE/COMMIT -> READ BACK -> MARK EXACT STATUS -> RECORD NEXT PIECE`.

Never begin unrelated next work before closing the current boundary.

## Current Android / phone state

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s.

`probes/android_stage1/` remains disposable evidence-gathering source, not production architecture.

### Direct phone evidence

Prior Stage-1 user test reported:
- general runtime worked correctly;
- no clipping/general problem;
- aerial camera behavior acceptable.

Latest user direction supersedes both prior joystick recenter models:
- do not require finger release;
- do not require return to center/0/deadzone;
- automatically adapt after sustained movement into a new heading;
- allow the same finger to straighten the stick toward UP while preserving that established world direction;
- enlarge the test arena.

### Adaptive implementation

Implementation commit:
`be38c84ff5951a7fa3826a9f7aaed5a78eed91cc`.

Final tested source head:
`e9b89912f1c80e90114a68a6de9de4ffbcdd6777`.

Protected owner:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Current steering law:
1. touch captures a starting Hunter-relative frame;
2. current world movement is latched while held;
3. after Hunter facing aligns with sustained non-forward movement, the joystick frame rebases to that heading without altering current movement;
4. the same finger may slide from the old side direction toward screen-UP;
5. movement remains on the committed world heading during that straightening gesture;
6. once inside the forward cone, normal rebased heading-relative mapping resumes;
7. no release/deadzone entry is required;
8. unchanged off-center input cannot continuously rotate into a circle;
9. deliberate non-straightening stick motion remains a new steering request.

Prototype adaptive values:
- hold `0.18 s`;
- alignment dot `0.985`;
- raw-change dot `0.985`;
- strength-change threshold `0.12`;
- forward completion dot `0.90`.

First person:
- FOV `115°`;
- Hunter turn response scale `0.55`;
- aerial response unchanged.

### Enlarged test arena

- floor `120×120 m`;
- Hunter-center horizontal bound `±56 m`;
- usable bounded span `~112×112 m`;
- outer floor margin `4 m` each side.

This is Stage-1 test geometry only and does not override Region 01/Hunt-01 production coordinates.

### Automated adaptive evidence

Dedicated workflow:
`33833083005` SUCCESS.

Verified:
- enlarged arena/boundary source;
- Godot parse;
- 115° FOV;
- first-person damping;
- right/east sustained movement rebase without release;
- world intent unchanged by rebase;
- RIGHT -> diagonal-up -> UP retains east heading without deadzone entry;
- same touch owner persists;
- second adaptive turn succeeds in same touch gesture;
- reset clears input.

Gate:
`STAGE1_ADAPTIVE_JOYSTICK_RUNTIME_VERIFIED` — headless only.

Full Android workflow:
`33833083007` SUCCESS.

Passed:
static preflight / Monster collision / enlarged world boundary / Godot parse / Boot smoke / ProbeWorld smoke / aerial-first-person continuity / lifecycle / telemetry / Android export / APK integrity / upload.

Fresh APK:
`UnnamedHuntRPG-Stage1-AdaptiveJoystick-Retest.apk`
`57,574,457 bytes`
SHA-256 `88b53cb20cac97751f30cc79033ed0e715544e8e26446b06e887e8ea894a5cf1`.

GitHub artifact:
ID `9922375605`; ZIP `57,127,235 bytes`; ZIP SHA-256 `56b5892ae19715ecbf03e05c356d179b1e914a3b27317b76930c219327602ea8`.

Google Drive:
folder `Unnamed Hunt RPG`; file ID `1anJ1sY4ajJuJsID62pvgNKZYBvyYi3QV`.

Current phone truth:
`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_ADAPTIVE_JOYSTICK_AUTOMATED_VERIFIED = YES`
`STAGE1_ENLARGED_ARENA_AUTOMATED_VERIFIED = YES`
`STAGE1_ADAPTIVE_JOYSTICK_PHONE_ACCEPTED = NO / FINAL RETEST REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO / PENDING ADAPTIVE FEEL RETEST`
`PERFORMANCE_VERIFIED = NO / SUSTAINED PERFORMANCE EVIDENCE SEPARATE`
`FINAL_ENGINE_SELECTED = NO`.

## Hunt-01 static geometry QA

Build manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Validator:
`tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

Workflow:
`33830978945` SUCCESS.

Result:
`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = YES`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`HUNT01_GRAYBOX_SCENE_STATIC_VERIFIED = NO`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`.

Measured observation ramp:
`6.607 m`, segment grades `15.2%` and `15.38%`.

Negative self-test produced five intended errors and passed failure-detection proof.

## Current world/spatial baseline

Measurement:
`1 unit = 1 meter`.
Axes:
+X East / +Y Up / -Z North-outbound / +Z South-inbound.

Settlement 01 prototype envelope:
`200×260 m`.

Frontier:
`~80 m` centerline.

Region 01 first proof:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> escape S03→S05 -> same-Monster reacquisition`.

Hunt-01 build targets:
- route `285–315 m`;
- Ford basin `58×54 m`;
- water `34×18 m`, depth `0.15–0.55 m`;
- wallow `16×12 m`;
- exit mud `20×12 m`;
- EF02 floor `70×54 m`;
- 10 tactical nodes / 14 links;
- boulder `5×4×3 m`;
- Charge corridor `~48 m × >=9 m`;
- Monster pivot radius `8 m`.

## Recorded game-design chain

Recorded at design/build-spec level:
Combat/outcome -> Monster 01 -> Berserk -> Defeat/Retreat -> Harvest -> Inventory/Recovery Bundle -> one Poleblade refinement recipe -> physical Settlement Smith -> Persistence -> world dimensions/coordinates -> Hunt-01 tracking/integration -> geometry -> machine build manifest -> executable manifest-static validation.

These systems are not yet a full production runtime.

## Exact current action

`STAGE1_FINAL_GALAXY_A03S_ADAPTIVE_JOYSTICK_RETEST`.

Minimum test:
1. start facing roughly north;
2. hold RIGHT until Hunter/camera stabilizes to the right/east;
3. keep the same finger down;
4. do NOT return through center/deadzone;
5. slide RIGHT -> diagonal-up -> UP;
6. movement should remain on the established right/east heading;
7. repeat a second direction change in the same touch gesture;
8. hold an unchanged off-center direction and verify no circling;
9. use the enlarged arena for long straight/repeated steering runs;
10. confirm first-person 115° FOV and damping still feel acceptable;
11. verify collision, boundary, Settings, view toggle, pause/resume and stuck-input behavior did not regress.

## After successful retest

Close the Stage-1 functional phone gate per user direction, select/finalize the production engine baseline, and begin exactly one smallest production world piece:

`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

That future piece should build only the validated first Hunt-01 primitive route/encounter geometry required to start testing the actual game. Do not jump directly to broad content expansion.

## Full-game APK truth

A playable full-game APK does not exist yet. Current combat, harvest, inventory, crafting, Settlement and Hunt-01 systems are primarily design/build-spec authorities, not production runtime code.

Do not rename the Stage-1 probe as the full game.
