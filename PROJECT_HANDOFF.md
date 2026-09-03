# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 CAMERA-FOLLOW REPAIR BUILT / GALAXY A03s RETEST PENDING / MONSTER COLLISION NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the starting/foundation elements before broad game construction.

Immediate objective:
**phone-test the revised camera-follow APK on the Samsung Galaxy A03s.**

If that passes, the next implementation piece is:
**repair solid collision for the brown Monster placeholder.**

Implementation is authorized, but Stage 2/domain/combat implementation remains behind readiness gates and EVOLVE.

Current probe source:
`probes/android_stage1/`

Latest target-device/camera/collision handoff:
`docs/70_handoff/STAGE1_TARGET_DEVICE_FEEDBACK_CAMERA_COLLISION_2026-09-03.md`.

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
8. `docs/70_handoff/STAGE1_TARGET_DEVICE_FEEDBACK_CAMERA_COLLISION_2026-09-03.md`
9. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
10. `probes/android_stage1/README.md`
11. owning package/source for the exact bounded task.

Use current repository files and direct device evidence rather than old WorldLife source or stale conversation state.

---

## BUILD READINESS

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
- `MUST_EXIST_BEFORE_ENGINE_PROBE`;
- `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
- `MUST_EXIST_BEFORE_COMBAT`;
- `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
- `CAN_WAIT_UNTIL_EXPANSION`.

Current gates:
- Engine probe: `APK BUILT / TARGET DEVICE RUNNING / FOUNDATION DEFECTS UNDER BOUNDED REPAIR`;
- Domain implementation: `BLOCKED_BY_ENGINE_PHONE_PROBE`;
- Combat design: `PARTIAL / FOUR CORE CONTRACTS RECORDED`;
- Vertical slice: `PARTIAL`;
- Expansion decisions: `INTENTIONALLY_OPEN`.

Rule:
**an open question blocks only the earliest implementation gate that genuinely consumes its answer.**

---

## ENGINE / DEVICE

Stage 1 candidate:
- Godot 4.7 family;
- build verification currently using Godot 4.7.2 stable;
- GDScript;
- GL Compatibility;
- Android;
- Samsung Galaxy A03s baseline phone;
- stable 30 FPS representative-scene target.

Godot remains `PROBE_PENDING`, not final production-engine truth.

---

## VERIFIED STAGE 1 BUILD CHAIN

Completed:
- Stage 1 source created;
- source readback;
- real-checkout static preflight `123 / 123 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK archive integrity PASS;
- APK installed on Galaxy A03s;
- target-device 3D ProbeWorld visual runtime smoke PASS.

Previously observed on device:
- landscape mode;
- GL Compatibility / OpenGL3;
- instantaneous `60 FPS / ~16.7 ms/frame`;
- `40.9 MiB` debug static memory;
- Hunter, Monster, ground, shadows, touch controls and view toggle visible.

The instantaneous FPS sample is not sustained-performance verification.

---

## LATEST GALAXY A03s USER FEEDBACK

Direct user feedback establishes:
- probe runs well;
- all four directional touch controls provide basic movement;
- basic first-person entry works;
- invisible outer boundary containment works well;
- aerial camera was visually stuck to one world-forward direction rather than following Hunter heading;
- Hunter could move inside/through the brown Monster placeholder.

Current evidence classifications:
`BASIC_TOUCH_DIRECTIONAL_MOVEMENT = PASS_EVIDENCE`
`FIRST_PERSON_BASIC_ENTRY = PASS_EVIDENCE`
`OUTER_BOUNDARY_CONTAINMENT = PASS_EVIDENCE`
`AERIAL_CAMERA_HEADING_FOLLOW_ON_PRIOR_APK = FAIL_EVIDENCE`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE`

Still open:
- rapid direction-change/stuck-input test;
- repeated aerial/first-person position-drift test;
- sustained performance/thermal behavior;
- background/resume and lock/unlock lifecycle.

---

## CURRENT CAMERA REPAIR

Root cause:
old camera target was hard-coded toward world `-Z`, and the Hunter had no movement-facing rotation.

Source repair commit:
`af83b5451996fba46f584a7fd8091cdee6d49b47`

Repair:
- Hunter rotates toward movement direction;
- camera derives forward from Hunter transform;
- aerial camera trails Hunter heading;
- look target uses forward look-ahead;
- camera follow is smoothed;
- first-person camera inherits Hunter heading.

Build verification:
- workflow run `33778332943`;
- static preflight `123 / 123 PASS`;
- Godot parse PASS;
- Boot smoke PASS;
- ProbeWorld smoke PASS;
- Android export PASS;
- APK integrity PASS.

Revised APK:
`UnnamedHuntRPG-Stage1Probe-camera-follow.apk`

Size:
`57,566,265 bytes`

SHA-256:
`33b6a98063393c1916455cf3c740bc0a938d3ab9a8b2e664342b61852dbfd3a0`

Current truth:
`CAMERA_FOLLOW_SOURCE_IMPLEMENTED = YES`
`CAMERA_FOLLOW_APK_BUILD_VERIFIED = YES`
`CAMERA_FOLLOW_PHONE_RUNTIME_VERIFIED = NO / RETEST_PENDING`

---

## EXACT NEXT IMPLEMENTATION PIECE

Use the revised APK on the Galaxy A03s and verify only the camera repair:
1. move all four directions;
2. verify Hunter turns toward movement;
3. verify aerial camera moves behind/follows Hunter heading;
4. verify camera stays centered on Hunter while moving;
5. enter first person after changing direction and verify heading follows the Hunter;
6. toggle AERIAL ↔ FIRST PERSON repeatedly;
7. check for teleport, drift, clipping, snapping, or control confusion.

Do not add another Stage 1 feature until this revised camera behavior is phone-verified.

If camera retest passes, next bounded implementation piece:
**MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR**.

That future piece must remain limited to trustworthy collision. Do not add real Monster AI, combat, damage, navigation, harvesting, or production physics as part of that repair.

---

## FOUNDATION-FIRST BUILD SEQUENCE

Before making the game broadly, prove the starting elements first:
1. reliable touch input;
2. coherent Hunter movement/facing;
3. coherent camera follow/framing;
4. solid obstacle collision;
5. trustworthy world boundaries;
6. aerial ↔ first-person state continuity;
7. lifecycle stability;
8. sustained target-phone performance/thermal behavior.

Only when those starting elements are sufficiently green should `ENGINE_PHONE_PROBE_VERIFIED` be considered for PASS and Stage 2 domain source be reconsidered.

---

## COMBAT DESIGN — RECORDED FOUNDATION

Package:
`docs/20_gameplay/combat/`.

Recorded authorities:
1. `ACTION_ECONOMY_CONTRACT.md`
   - 4 AP;
   - 1 RP;
   - persistent Stamina;
   - no AP banking;
   - bounded reaction windows.

2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
   - deterministic/explainable resolution pipeline;
   - AttackControl vs DefenseControl;
   - exposure/cover/reaction ownership;
   - `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
   - one bounded seeded variance source;
   - local armor/anatomy consequences.

3. `FIRST_WEAPON_FAMILY_CONTRACT.md`
   - `WEAPON_FAMILY_FIELD_POLEBLADE`;
   - cutting/sever primary;
   - piercing/control secondary;
   - limited impact;
   - directional Guard/restricted Parry.

4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
   - neutral first-slice Max Stamina `100`;
   - passive `+10` activation-start recovery;
   - delayed `CATCH_BREATH`;
   - bounded exertion/reaction costs;
   - no negative-Stamina overexertion in first slice.

Combat implementation remains blocked by readiness gates.

Next independent gameplay-design packet remains:
**Initiative and Turn-Order Prototype Contract**.

Do not combine that design pass with statuses, terrain numbers, Monster 01 attacks, berserk, party design, or defeat/retreat behavior.

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

None of these require final production assets for the current Stage 1 foundation gate.

---

## CURRENT GATE TRUTH

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL`
`CAMERA_FOLLOW_APK_BUILD_VERIFIED = YES`
`CAMERA_FOLLOW_PHONE_RUNTIME_VERIFIED = NO`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = PHONE_RETEST_CAMERA_FOLLOW_REVISED_APK`
`NEXT_IMPLEMENTATION_AFTER_PASS = MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`

---

## AUTHORITY

Current explicit user instruction > current verified source/tests > direct target-device evidence > current owning repository authorities > build evidence > older documents > chat memory/summaries.

This handoff records current state and routing; owning gameplay/content documents remain authoritative for their specific systems.
