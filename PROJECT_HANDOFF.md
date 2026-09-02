# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PROBE SOURCE CREATED / GODOT PARSE + PHONE VERIFICATION PENDING / COMBAT RESOLUTION RECORDED
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

1. `EVOLVE_ALIGNMENT.md`
2. `START_HERE_NEW_CHAT.md`
3. `README.md`
4. `PROJECT_HANDOFF.md`
5. `DOCUMENTATION_INDEX.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
9. `docs/70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`
10. `probes/android_stage1/README.md`
11. owning package for any independent design task.

Mandatory law:
**read the current repository copy of EVOLVE before every bounded pass.**

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
- Engine probe: `SOURCE CREATED / EXECUTION PENDING`;
- Domain implementation: `BLOCKED_BY_ENGINE_PHONE_PROBE`;
- Combat design: `PARTIAL / TWO CORE CONTRACTS RECORDED`;
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
- Stage 1 source files created;
- GitHub source readback;
- engine/Android documentation cross-check;
- repository hygiene rules;
- Galaxy A03s test protocol.

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

The execution environment used for the source pass does not contain Godot. Do not infer engine success from static source readback.

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

Use Godot 4.7-family tooling to verify only the existing skeleton:
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

## COMBAT DESIGN — CURRENT RECORDED STATE

Combat package:
`docs/20_gameplay/combat/`.

### Action economy
Authority:
`ACTION_ECONOMY_CONTRACT.md`.

Selected first-slice prototype:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- explicit reaction windows;
- reaction recursion blocked.

### Combat resolution / hit quality / defense
Authority:
`COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.

Recorded decisions:
- hard legality is separate from contested resolution;
- resolution uses one frozen authoritative context snapshot;
- attack control and defense control are separate from raw damage/protection;
- body contact is distinct from selected-part contact;
- target parts use exposure states;
- cover is directional/physical rather than a universal percentage buff;
- Dodge, Block, Parry and Brace have different mechanical roles;
- one reproducible bounded seeded variance source is used per committed attack resolution;
- no independent random critical-hit roll;
- hit-quality classes: `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- protection resolves from cover/guard to local armor/anatomy after actual contact location is known;
- off-target body contact is supported when the technique allows it;
- development resolution traces are mandatory.

Numeric thresholds remain balance-open until combat prototype evidence.

`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`

---

## INDEPENDENT DESIGN LANE

Exact next bounded combat-design dependency:
**First Weapon Family Contract**.

It should define one family only and instantiate the existing action-economy + resolution architecture with:
- damage channels;
- handling/control profile;
- reach/range;
- normal/precision/heavy techniques;
- 4 AP economy mapping;
- stamina costs;
- hit-quality ceilings;
- body-fallback policy;
- break/sever identity;
- guard/parry support where applicable.

Do not create a broad weapon roster in that pass.

Other combat blockers remain after the first weapon:
- Stamina prototype scale/recovery;
- Initiative/tie rule;
- first status set;
- first terrain-effect numbers;
- Monster 01 attack packet;
- first berserk prototype;
- solo/party baseline;
- defeat/retreat baseline.

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

Current explicit user instruction > current verified source/tests > current owning repository authorities/packages > verified build/runtime/device evidence > older documents > chat memory/summaries.

This handoff records state and next work; it does not override owning gameplay/content authorities.
