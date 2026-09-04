# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / HUNT-01 MANIFEST STATIC VERIFIED / STAGE-1 SHOOTER-STYLE CONTROLS PHONE RETEST NEXT
Last reconciled: 2026-09-04

## Mandatory rule

The game is the objective. Documentation/data/tests preserve ownership, dimensions, coordinates, evidence, continuity, and the exact next action.

Before every bounded pass read:
1. this file;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. newest relevant `docs/70_handoff/`;
6. exact owning package/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

Mandatory loop:
`READ -> VERIFY -> ONE BOUNDED PIECE -> IDENTIFY OWNER/GATE -> IMPLEMENT/DOCUMENT -> TEST -> FIX SAME-PIECE FAILURES -> UPDATE OWNER/HANDOFF/README/INDEX -> SAVE/COMMIT -> READ BACK -> MARK EXACT STATUS -> RECORD NEXT PIECE`.

## Current Stage-1 Android state

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Samsung Galaxy A03s.

`probes/android_stage1/` remains disposable evidence-gathering source, not production architecture.

### Latest direct phone direction

The previous adaptive/latching joystick remained too janky because timers, alignment thresholds, latch flags, and rebasing affected feel.

User clarification:
- an unchanged held direction means the desired direction has already been reached;
- unchanged input must not keep accumulating turn;
- use a control structure similar to Apex Legends Mobile.

All earlier recenter/adaptive models are superseded.

### Current protected control architecture

Owner:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Implementation commit:
`6079c95f90a6329b2685f4c078527ae4a0dc1523`.

Control law:
1. left fixed joystick is movement only;
2. stick angle/magnitude map directly to a camera-relative movement vector;
3. holding a fixed stick direction does not change view yaw or accumulate turn;
4. right-side drag owns view yaw;
5. first-person vertical right-drag owns pitch, clamped ±80°;
6. movement and look use independent touch IDs and can operate simultaneously;
7. no release/deadzone recenter is required to establish a new movement direction;
8. no adaptive hold timer, alignment dot, latch, forward cone, or rebase state exists;
9. Settings/lifecycle transitions clear both transient touch owners;
10. right-side UI buttons cannot be stolen by look input.

First person:
- FOV `115°`;
- direct right-side look;
- prior `0.55` movement-driven turn multiplier removed because movement no longer rotates view.

Look Speed:
- default `35%`;
- persisted in `user://stage1_settings.cfg`, `controls/look_speed`;
- prototype direct sensitivity range `0.04–0.20°/pixel`;
- default ≈ `0.096°/pixel`.

Arena:
- floor `120×120 m`;
- Hunter bound `±56 m` X/Z;
- usable span ~`112×112 m`.

### Automated shooter-style evidence

Dedicated workflow:
`33834546073` SUCCESS.

Gate:
`STAGE1_SHOOTER_STYLE_CONTROLS_RUNTIME_VERIFIED` — headless evidence only.

Full Android workflow:
`33834546084` SUCCESS.

Passed:
static preflight / Monster collision / enlarged boundary / Godot parse / Boot smoke / ProbeWorld smoke / aerial-first-person continuity / lifecycle / telemetry / Android export / APK integrity / artifact upload.

Artifact ID:
`9922844781`.

Pre-reconciliation APK:
`57,574,457 bytes`
SHA-256 `aa93221527c3a2e08543f403199144dc4611b2ac591201fdcfcc563c49a3a6b8`.

Google Drive file ID:
`1r62HYqQkZGyAj8h7zPzFm68Au31dqxzy`.

If the UI/documentation reconciliation triggers a new build, the newest build/handoff supersedes this pre-reconciliation APK identity.

Current phone truth:
`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_SHOOTER_STYLE_CONTROLS_AUTOMATED_VERIFIED = YES`
`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = NO / RETEST REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO / PENDING SHOOTER_STYLE FEEL RETEST`
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
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`HUNT01_GRAYBOX_SCENE_STATIC_VERIFIED = NO`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`.

Measured observation ramp:
`6.607 m`, segment grades `15.2%` and `15.38%`.

## World/spatial baseline

`1 unit = 1 meter`.
Axes: +X East / +Y Up / -Z North-outbound / +Z South-inbound.

Settlement 01 prototype: `200×260 m`.
Frontier: `~80 m` centerline.

Hunt-01 route:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> escape S03→S05 -> same-Monster reacquisition`.

Key targets:
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

Combat/outcome -> Monster 01 -> Berserk -> Defeat/Retreat -> Harvest -> Inventory/Recovery Bundle -> first Poleblade refinement -> Settlement Smith -> Persistence -> world coordinates/dimensions -> Hunt-01 tracking/integration -> geometry -> machine build manifest -> executable manifest-static validation.

These are not yet a complete production runtime.

## Exact current action

`STAGE1_FINAL_GALAXY_A03S_SHOOTER_STYLE_CONTROLS_RETEST`.

Minimum phone test:
1. hold LEFT/RIGHT without right-side look and confirm movement stays stable while view yaw does not keep turning;
2. sweep left-stick angle continuously and verify immediate smooth movement-vector change with no hidden transition;
3. hold movement and independently drag the right side to rotate view;
4. test simultaneous movement + look;
5. verify first-person 115° FOV and pitch control;
6. verify right-side buttons still work;
7. verify collision, boundary, Settings, view toggle, pause/resume, and no stuck movement/look.

## After successful retest

Close the Stage-1 functional phone-control gate and begin exactly one production world piece:

`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Sustained `PERFORMANCE_VERIFIED` remains separate until the required Galaxy A03s soak evidence exists.

## Full-game APK truth

A playable full-game APK does not yet exist. Current combat, harvest, inventory, crafting, Settlement, Persistence, and Hunt-01 systems are primarily design/build-spec authorities, not full production runtime.

Do not rename the Stage-1 probe as the full game.
