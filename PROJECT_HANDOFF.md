# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 HEADING-RESET JOYSTICK APK VERIFIED / GALAXY A03s RETEST PENDING
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the starting/foundation elements before broad game construction.

Immediate objective:
**phone-test the current heading-reset analog-joystick APK on the Samsung Galaxy A03s.**

The joystick now resets its forward reference to the Hunter's current heading on each new touch gesture.

After this control behavior passes on phone, the next bounded implementation repair is:
**solid collision for the brown Monster placeholder.**

Implementation is authorized, but Stage 2/domain/combat source remains behind readiness gates and EVOLVE.

Current probe root:
`probes/android_stage1/`

Protected control-camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Current specialized handoff:
`docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md`

Mandatory law:
**read the current repository copy of `EVOLVE_ALIGNMENT.md` before every bounded pass.**

---

## READ ORDER

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `README.md`
5. `DOCUMENTATION_INDEX.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. `docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md`
9. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`
10. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
11. `probes/android_stage1/README.md`
12. owning package/source for the exact bounded task.

Use current source and direct phone evidence rather than old WorldLife source or stale chat summaries.

---

## ENGINE / DEVICE

Stage 1 candidate:
- Godot 4.7 family;
- current build verification: Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Godot remains `PROBE_PENDING`, not final production-engine truth.

---

## VERIFIED STAGE 1 BUILD CHAIN

Previously completed:
- Stage 1 source created/read back;
- real-checkout static preflight;
- Godot import/parse;
- Boot/ProbeWorld headless smoke;
- Android debug export;
- APK integrity;
- Galaxy A03s installation;
- target-device 3D runtime smoke.

Previously observed on Galaxy A03s:
- landscape;
- GL Compatibility / OpenGL3;
- instantaneous `60 FPS / ~16.7 ms/frame`;
- `40.9 MiB` debug static memory;
- basic movement worked;
- first-person entry worked;
- outer invisible boundary containment worked well.

The instantaneous FPS sample is not sustained-performance verification.

---

## DIRECT USER CONTROL/CAMERA FEEDBACK

Confirmed through phone testing:
- heading-follow camera direction is preferred over fixed world-forward framing;
- the original heading-follow response was too aggressive;
- analog joystick is preferred to four arrow buttons;
- Settings button/tabbed overlay/Look Speed are desired;
- Look Speed must persist;
- after turning east, the prior analog control still required holding an absolute east direction to continue walking straight;
- user wants joystick direction to reset/alignment to the Hunter's current heading;
- Hunter can still move through the brown Monster placeholder on the earlier phone build.

---

## PROTECTED CONTROL-CAMERA BASELINE

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Protected behavior now includes:
- lower-left analog movement joystick;
- analog magnitude/deadzone (`0.12` prototype deadzone);
- release resets movement/knob;
- partial + diagonal movement;
- desktop WASD development fallback;
- Hunter faces resolved world movement;
- aerial camera follows/trails Hunter heading;
- camera remains synchronized while first person is active;
- top-right Settings button;
- tabbed Settings overlay;
- Controls tab with Look Speed;
- default Look Speed `35%`;
- persistence through `user://stage1_settings.cfg`, key `controls/look_speed`;
- opening Settings resets movement;
- **each new joystick touch captures the Hunter's current forward/right basis**;
- that basis remains stable during the active gesture;
- release/re-touch resets the joystick forward reference to the Hunter's latest heading.

Example protected behavior:
`face north → push right → turn/move east → release → touch again → push up → continue east/forward`.

No-silent-change law:
**do not silently remove, replace or materially retune the joystick/settings/look-speed/heading-reset/camera contract. Read the protected README and explicitly document/warn about any future reason for changing it.**

Static preflight enforces the protected baseline.

---

## CURRENT CONTROL BUILD VERIFICATION

Heading-reset source commit:
`9d9e83898616e16c902d0d3caf8e9c82253bf8a7`

Exact build revision:
`2e112210c60b62335f94adfd1a1573afb81426f6`

Workflow run:
`33783404093`

Results:
- static preflight `151 / 151 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK archive integrity PASS.

Phone retest APK:
`UnnamedHuntRPG-Stage1Probe-heading-reset.apk`

Size:
`57,570,361 bytes`

SHA-256:
`1727750c3fc1f8385ed8c9bf1e4ccc3c559cede156e750380a1ff462c2bcfa8c`

Current APK is build-verified, not yet phone-control-verified.

---

## EXACT NEXT IMPLEMENTATION PIECE

Test the current APK on the Galaxy A03s:
1. face initial direction;
2. push joystick right until Hunter turns/moves east;
3. release;
4. touch again and push joystick up;
5. verify Hunter continues east/forward;
6. repeat for other headings;
7. verify held input does not curve into continuous circling;
8. verify partial/diagonal movement still works;
9. verify Settings + Look Speed persistence still work;
10. verify aerial ↔ first-person preserves physical position.

Only after that bounded retest is green should the next repair begin unless the user explicitly supersedes the sequence.

Next separate repair:
**MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR**.

Do not expand that repair into combat, Monster AI, damage, navigation, harvesting, or production physics.

---

## FOUNDATION-FIRST BUILD SEQUENCE

Before making the game broadly:
1. joystick/input reliability;
2. movement/facing/reference-frame coherence;
3. camera/look-speed coherence;
4. solid obstacle collision;
5. world-boundary regression;
6. aerial ↔ first-person state continuity;
7. lifecycle stability;
8. sustained target-phone frame pacing/thermal evidence.

Only then consider `ENGINE_PHONE_PROBE_VERIFIED = YES` and Stage 2 production-domain implementation.

---

## COMBAT DESIGN FOUNDATION

Recorded authorities under `docs/20_gameplay/combat/`:
1. `ACTION_ECONOMY_CONTRACT.md` — 4 AP / 1 RP / persistent Stamina;
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md` — deterministic/explainable hit/defense pipeline;
3. `FIRST_WEAPON_FAMILY_CONTRACT.md` — `WEAPON_FAMILY_FIELD_POLEBLADE`;
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` — first-slice Max Stamina `100` and bounded recovery/exertion model.

Combat implementation remains blocked by readiness gates.

Next independent design packet:
**Initiative and Turn-Order Prototype Contract**.

Do not combine it with statuses, terrain values, Monster 01 attacks, berserk, party design, or defeat/retreat behavior.

---

## CURRENT CONTENT REFERENCES

World scale:
`1 world unit = 1 meter`.

Settlement 01:
compact defensible frontier settlement with Hunter Service Loop.

Region 01:
seven planned sectors S00–S06 with physical tracking and persistent monster escape/reacquisition.

Hunter Base 01:
1.75 m reusable humanoid base.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted feet; legal distal tail sever; internal life crystal; deterministic behavior contract.

---

## CURRENT GATE TRUTH

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES / 151_OF_151_CURRENT_CONTROL_BUILD`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
`PHONE_RUNTIME_VERIFIED = PARTIAL`
`ANALOG_JOYSTICK_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / RETEST_PENDING`
`LOOK_SPEED_SETTING_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_PERSISTENCE_IMPLEMENTED = YES`
`CONTROL_CAMERA_PROTECTED_README = RECORDED`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = PHONE_RETEST_HEADING_RESET_JOYSTICK_APK`
`NEXT_IMPLEMENTATION_AFTER_PASS = MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`

---

## AUTHORITY

Current explicit user instruction > current verified source/tests > direct target-device evidence > current owning repository authorities > build evidence > older documents > chat memory/summaries.
