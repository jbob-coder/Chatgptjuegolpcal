# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 JOYSTICK + SETTINGS + LOOK SPEED APK VERIFIED / GALAXY A03s RETEST PENDING
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the starting/foundation elements before broad game construction.

Immediate objective:
**phone-test the current analog-joystick + Settings/Look-Speed APK on the Samsung Galaxy A03s.**

After that passes, next bounded implementation repair:
**solid collision for the brown Monster placeholder.**

Implementation is authorized, but Stage 2/domain/combat source remains behind readiness gates and EVOLVE.

Current probe root:
`probes/android_stage1/`

Current protected control-camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Current specialized handoff:
`docs/70_handoff/STAGE1_CONTROL_CAMERA_REFINEMENT_2026-09-03.md`

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
8. `docs/70_handoff/STAGE1_CONTROL_CAMERA_REFINEMENT_2026-09-03.md`
9. `probes/android_stage1/README.md`
10. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`
11. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
12. owning package/source for the exact bounded task.

Use current repository/source and direct phone evidence rather than old WorldLife source or stale chat summaries.

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

The first heading-follow build established:
- heading-follow camera direction was conceptually correct;
- camera turned too aggressively;
- user prefers an analog joystick to the four touch arrow keys;
- user requested a Settings button;
- Settings should be tabbed;
- Controls tab should expose `Look Speed`;
- setting must be saved;
- this control/camera decision must be documented/protected from silent future change.

Separate known defect remains:
- Hunter can move through the brown Monster placeholder.

---

## CURRENT PROTECTED CONTROL-CAMERA BASELINE

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Implemented:
- lower-left analog movement joystick;
- analog magnitude/deadzone;
- release resets movement;
- diagonal/partial travel supported by source;
- desktop WASD retained for development;
- Hunter faces non-zero movement direction;
- aerial camera follows/trails Hunter heading;
- camera stays synchronized while first person is active;
- top-right Settings button;
- tabbed Settings overlay;
- Controls tab with Look Speed;
- Display placeholder tab only;
- default Look Speed `35%`;
- Look Speed changes turn/follow response rather than movement speed;
- Look Speed auto-saves through `ConfigFile`;
- settings file `user://stage1_settings.cfg`;
- key `controls/look_speed`;
- opening Settings resets movement.

Protected-behavior law:
**do not silently remove, replace or materially retune this joystick/settings/look-speed/camera contract. Read the protected README and explicitly document/warn about any future reason for changing it.**

The static preflight also enforces the protected baseline and rejects restoration of the old Up/Down/Left/Right Button nodes.

---

## CURRENT CONTROL BUILD VERIFICATION

Exact tested revision:
`1a90569e4b625c929274dffbeaf4f9ede368fe43`

Workflow run:
`33781148418`

Results:
- static preflight `147 / 147 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK archive integrity PASS.

Phone retest APK:
`UnnamedHuntRPG-Stage1Probe-joystick-settings.apk`

Size:
`57,570,361 bytes`

SHA-256:
`afb007424b9abfc6108b5759b2bbe974ae1db754b45b71fab58ca927a227a3cd`

Current control APK is build-verified, not yet phone-control-verified.

---

## EXACT NEXT IMPLEMENTATION PIECE

Use the current APK on the Galaxy A03s and test only the new control/camera refinement:
1. partial joystick travel;
2. full joystick travel;
3. diagonal movement;
4. release and verify immediate stop/no stuck state;
5. open Settings while moving and verify movement resets;
6. Controls tab → test Look Speed low/high;
7. select preferred Look Speed;
8. restart app and verify the value persisted;
9. verify camera is no longer too aggressive at the preferred value;
10. verify AERIAL ↔ FIRST PERSON still preserves physical position.

Only after that bounded retest is green should the next repair begin, unless the user explicitly supersedes the sequence.

Next separate repair:
**MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR**.

Do not expand that future repair into combat, Monster AI, damage, navigation, harvesting, or production physics.

---

## FOUNDATION-FIRST BUILD SEQUENCE

Before making the game broadly:
1. joystick/input reliability;
2. movement/facing coherence;
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

These do not require final production assets for the current Stage-1 gate.

---

## CURRENT GATE TRUTH

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES / 147_OF_147_CURRENT_CONTROL_BUILD`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
`PHONE_RUNTIME_VERIFIED = PARTIAL`
`ANALOG_JOYSTICK_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_SETTING_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_PERSISTENCE_IMPLEMENTED = YES`
`CONTROL_CAMERA_PROTECTED_README = RECORDED`
`CONTROL_CAMERA_CURRENT_APK_BUILD_VERIFIED = YES`
`CONTROL_CAMERA_PHONE_RUNTIME_VERIFIED = NO / RETEST_PENDING`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = PHONE_RETEST_JOYSTICK_SETTINGS_LOOK_SPEED_APK`
`NEXT_IMPLEMENTATION_AFTER_PASS = MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`

---

## AUTHORITY

Current explicit user instruction > current verified source/tests > direct target-device evidence > current owning repository authorities > build evidence > older documents > chat memory/summaries.
