# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PROBE SOURCE CREATED / GODOT PARSE + PHONE VERIFICATION PENDING
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Verify the existing isolated Godot Stage 1 probe before adding more probe features.

Implementation is authorized, but later systems remain controlled by readiness gates and EVOLVE.

Current probe source:
`probes/android_stage1/`

Current specialized implementation handoff:
`docs/70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`.

Exact next implementation gate:
**Godot 4.7 parse/editor smoke verification of the existing source.**

Do not recreate the skeleton and do not add real combat before this gate.

---

## READ ORDER

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
7. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
8. `docs/70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`
9. `probes/android_stage1/README.md`
10. owning package for any independent design task.

Use current repository files rather than old WorldLife source or stale chat summaries.

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
- Engine probe readiness: `READY / SOURCE STARTED`;
- Domain implementation: `BLOCKED_BY_ENGINE_PHONE_PROBE`;
- Combat design: `PARTIAL`;
- Vertical slice: `PARTIAL`;
- Expansion decisions: `INTENTIONALLY_OPEN`.

Rule:
**an open question blocks only the earliest implementation gate that genuinely consumes its answer.**

---

## ENGINE / DEVICE DECISION

Authority:
`docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

Stage 1 candidate:
- Godot 4.7 family;
- GDScript;
- GL Compatibility renderer;
- Android;
- Samsung Galaxy A03s baseline phone;
- stable 30 FPS representative-scene target.

Godot remains `PROBE_PENDING`, not final production-engine truth.

Final engine acceptance requires actual Galaxy A03s runtime evidence.

---

## IMPLEMENTED STAGE 1 SOURCE

Probe-only root:
`probes/android_stage1/`.

Created:
- `project.godot`;
- `scenes/boot.tscn`;
- `scenes/probe_world.tscn`;
- `scripts/boot.gd`;
- `scripts/probe_world.gd`;
- probe README;
- probe `.gitignore`;
- Android export setup guide;
- Galaxy A03s test protocol.

Probe behavior represented in source:
- landscape project configuration;
- GL Compatibility desktop/mobile request;
- Android frame-pacing setting;
- Boot → 3D probe transition;
- primitive ground/light scene;
- 1.75 m Hunter placeholder;
- large moving Monster placeholder;
- aerial camera;
- first-person camera toggle;
- touch directional buttons;
- desktop WASD fallback;
- runtime renderer/driver label;
- FPS/approximate frame-time display;
- debug static-memory display where available.

Intentional exclusions:
- no real combat;
- no harvest/crafting;
- no production save system;
- no final Hunter/Monster models;
- no production Region 01 or Settlement 01 scene;
- no domain architecture source yet.

Quality law:
**probe source is disposable evidence-gathering source and must not silently become the production domain/game project.**

---

## VERIFICATION TRUTH

Completed:
- source files created;
- GitHub readback of `project.godot`, `probe_world.gd`, and `probe_world.tscn`;
- current Godot documentation cross-check for renderer/orientation/runtime renderer query/performance monitor/Android export direction;
- repository hygiene rules recorded;
- phone test protocol recorded.

Not completed:
- Godot project parse/import;
- GDScript parse;
- scene import;
- editor desktop run;
- Android export preset;
- APK build;
- Galaxy A03s install;
- phone runtime;
- measured performance/thermal behavior.

The execution environment used for the source pass does not contain Godot, and external binary download was not available from that runtime. Do not infer engine success from static source readback.

Current gates:
`IMPLEMENTATION_AUTHORIZED = YES`
`STAGE_1_PROBE_SOURCE_CREATED = YES`
`SOURCE_READBACK_VERIFIED = YES`
`GODOT_PARSE_VERIFIED = NO`
`EDITOR_RUN_VERIFIED = NO`
`ANDROID_PRESET_CREATED = NO`
`APK_BUILD_VERIFIED = NO`
`GALAXY_A03S_INSTALL_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

---

## EXACT NEXT IMPLEMENTATION PIECE

Use Godot 4.7 to verify only the existing skeleton:
1. open `probes/android_stage1/project.godot`;
2. inspect project-setting warnings;
3. fix any `.tscn`/GDScript parse errors;
4. run Boot;
5. enter ProbeWorld;
6. verify WASD movement;
7. verify aerial ↔ first-person toggle;
8. verify renderer/driver label;
9. verify metrics readout;
10. record all warnings/errors.

Only after that passes:
- create Android export preset;
- build debug APK;
- install/test on Galaxy A03s according to `PROBE_TEST_PROTOCOL.md`.

Do not add further Stage 1 visual complexity until the skeleton itself passes.

---

## INDEPENDENT DESIGN LANE

Next independent design packet:
`Combat Resolution / Hit Quality and Defense Contract`.

This can proceed while Stage 1 awaits editor/device testing because it does not affect the renderer probe.

Existing combat action-economy authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

Selected first-slice prototype remains:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- explicit reaction windows;
- reaction recursion blocked.

---

## CURRENT GAME CONTENT REFERENCES

World scale:
`1 world unit = 1 meter`.

Settlement 01:
compact defensible frontier settlement with the Hunter Service Loop.

Region 01:
seven planned sectors S00–S06 with physical tracking, persistent monster escape/reacquisition, and encounter footprints derived from real terrain.

Hunter Base 01:
1.75 m reusable humanoid base; final story identity/weapon family remain open.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height, horn crest, dorsal plates, mud-adapted feet, severable distal tail, internal life crystal, deterministic Region 01 behavior.

These design packages do not require final production assets for Stage 1.

---

## AUTHORITY

Current explicit user instruction > current owning repository authorities/packages > verified source/test/device evidence > older documents > chat memory/summaries.

This handoff records state and next work; it does not override owning gameplay/content authorities.
