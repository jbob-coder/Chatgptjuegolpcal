# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project identity

This is the Android-targeted monster-hunting RPG using the repository area that previously contained WorldLife RPG.

WorldLife is not active and must not be resumed.

`Unnamed Hunt RPG` remains a temporary working name.

## Mandatory first read

**Read `EVOLVE_ALIGNMENT.md` before every bounded pass.**

Do not rely on remembered EVOLVE state.

Then read the current handoff and the owning package/source for the exact task.

## Current phase

**STAGE 1 ENGINE/ANDROID PHONE FOUNDATION — JOYSTICK + SETTINGS/LOOK SPEED BUILD VERIFIED / GALAXY A03s RETEST PENDING**

Implementation authorization is active, but later stages remain controlled by readiness gates.

## Read order

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
11. owning package/source for the bounded task.

## Current Stage-1 engine/device truth

Candidate:
- Godot 4.7 family;
- current build tooling Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Verified to date:
- static preflight;
- Godot import/parse;
- Boot + ProbeWorld headless smoke;
- Android debug APK export/integrity;
- Galaxy A03s installation/runtime smoke on earlier probe builds;
- GL Compatibility/OpenGL3 on target phone;
- prior instantaneous sample `60 FPS / ~16.7 ms` and `40.9 MiB` debug static memory;
- basic movement, first-person entry and outer world-boundary behavior received positive phone evidence.

Godot remains a probe candidate until the full phone-foundation gate closes.

## Current protected control-camera baseline

Direct user feedback found the first heading-follow camera too aggressive and requested:
- analog movement joystick instead of four arrow keys;
- Settings button;
- tabbed Settings;
- `Look Speed` in Controls;
- saved Look Speed;
- durable warning/documentation so these choices are not changed silently later.

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Current implementation:
- lower-left analog movement joystick;
- joystick analog magnitude + deadzone;
- Hunter faces movement heading;
- aerial camera follows/trails Hunter heading;
- camera remains synchronized through first-person mode;
- Settings button + tabbed overlay;
- Controls → Look Speed;
- default Look Speed `35%`;
- setting persisted at `user://stage1_settings.cfg`, key `controls/look_speed`;
- opening Settings resets movement;
- static preflight rejects silent restoration of old arrow Button controls or removal of protected settings behavior.

No-silent-change law:
**do not remove, replace or materially retune this joystick/settings/look-speed/camera contract without reading the protected README and explicitly documenting/warning about the reason.**

## Current exact build

Source/build revision tested:
`1a90569e4b625c929274dffbeaf4f9ede368fe43`

Workflow:
`33781148418`

Build evidence:
- static preflight `147 / 147 PASS`;
- Godot 4.7.2 parse PASS;
- Boot smoke PASS;
- ProbeWorld smoke PASS;
- Android export PASS;
- APK integrity PASS.

APK:
`UnnamedHuntRPG-Stage1Probe-joystick-settings.apk`

SHA-256:
`afb007424b9abfc6108b5759b2bbe974ae1db754b45b71fab58ca927a227a3cd`

## Exact next implementation action

Phone-test that exact APK on the Galaxy A03s:
1. partial/full joystick travel;
2. diagonal movement;
3. release → immediate stop/no stuck input;
4. Settings opens and zeros movement;
5. Look Speed visibly changes turn/camera response;
6. chosen Look Speed persists after restart;
7. camera feels controlled at the chosen value;
8. aerial ↔ first-person continues preserving position.

After that passes, next separate bounded repair:
**MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR**.

The brown Monster placeholder currently has direct phone fail evidence because the Hunter can move through it.

Do not combine that collision repair with combat, Monster AI, damage, navigation, harvesting or production physics.

## Build readiness classes

Every open requirement belongs to:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely needs its answer.**

Current state:
- engine probe: active target-device foundation verification;
- domain implementation: blocked by engine-phone foundation gate;
- combat design: partial/advanced;
- vertical slice: partial;
- expansion: intentionally open.

## Recorded gameplay authorities

Combat package:
`docs/20_gameplay/combat/`

Recorded:
- Action Economy — 4 AP / 1 RP / persistent Stamina;
- Combat Resolution / Hit Quality / Defense;
- First Weapon Family — `WEAPON_FAMILY_FIELD_POLEBLADE`;
- Stamina Prototype — Max `100` with bounded recovery/exertion.

Next independent design packet:
**Initiative and Turn-Order Prototype Contract**.

Do not combine that design pass with statuses, terrain numbers, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

## Locked game direction summary

- walkable settlement/hub;
- elevated angled aerial wilderness exploration;
- first-person turn-based tactical combat derived from the same physical encounter;
- world atlas → settlement → hunter gate → continuous hunting region → local encounter;
- `1 world unit = 1 meter`;
- deterministic authored NPC/creature behavior, not an AI behavior system;
- six core attributes: Might / Finesse / Agility / Endurance / Perception / Resolve;
- hybrid progression weighted toward equipment, mastery and knowledge;
- anatomy, terrain and preparation remain mechanically relevant;
- crystal Energy is life force and berserk spends that same reserve.

## Current content anchors

Hunter Base 01:
- 1.75 m reusable humanoid base.

Monster 01 — Mudcrest Raker:
- ~6.6 m long / ~3.0 m shoulder-body height;
- horn crest;
- dorsal plates;
- mud-adapted feet;
- legal distal tail sever;
- internal life crystal;
- deterministic Region 01 behavior.

Region 01:
S00–S06 physical hunting sectors with tracking and persistent escape/reacquisition.

## Current verification truth

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`STATIC_PREFLIGHT_VERIFIED = YES / 147_OF_147_CURRENT_CONTROL_BUILD`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
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

Current explicit user instruction > current verified source/tests > direct device evidence > current owning repository authority > older documents > chat memory.
