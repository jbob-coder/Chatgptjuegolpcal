# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PROBE SOURCE CREATED / GODOT PARSE + PHONE VERIFICATION PENDING / STAMINA PROTOTYPE RECORDED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Verify the existing isolated Godot Stage 1 probe before adding more probe features.

Implementation is authorized, but later implementation systems remain controlled by readiness gates and EVOLVE.

Current probe source:
`probes/android_stage1/`

Current specialized implementation handoff:
`docs/70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`.

Exact next implementation gate:
**Godot 4.7-family parse/editor smoke verification of the existing source.**

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
- Combat design: `PARTIAL / FOUR CORE CONTRACTS RECORDED`;
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

Do not infer engine success from static source readback.

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

# COMBAT DESIGN — CURRENT RECORDED STATE

Package:
`docs/20_gameplay/combat/`.

## 1. Action Economy
Authority:
`ACTION_ECONOMY_CONTRACT.md`.

Selected:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- explicit reaction windows;
- reaction recursion blocked.

## 2. Combat Resolution / Hit Quality / Defense
Authority:
`COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.

Recorded:
- hard legality separate from contested resolution;
- one frozen authoritative resolution context;
- AttackControl vs DefenseControl;
- body contact distinct from selected-part contact;
- explicit exposure states;
- directional physical cover;
- distinct Dodge/Block/Parry/Brace roles;
- one reproducible bounded seeded variance source per committed attack;
- no independent random critical-hit roll;
- hit quality `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- local cover/guard/armor/anatomy ordering;
- off-target body contact when technique permits;
- mandatory development resolution traces.

## 3. First Weapon Family
Authority:
`FIRST_WEAPON_FAMILY_CONTRACT.md`.

Selected:
- `WEAPON_FAMILY_FIELD_POLEBLADE`;
- working name Field Poleblade;
- two-handed long-hafted hunting blade;
- cutting/sever primary;
- piercing/control secondary;
- limited impact;
- medium-melee reach advantage;
- directional Guard;
- restricted Parry;
- deliberately weaker at hard-structure break, cramped combat, shield defense and sustained high exertion.

Technique packet:
- `MEASURED_CUT` — 2 AP;
- `DRIVING_THRUST` — 2 AP;
- `PLACED_HEW` — 3 AP / selected part required / Precision allowed;
- `COMMITTED_CLEAVE` — 4 AP / full-turn commitment;
- `HAFT_CHECK` — bounded close-range spacing/control;
- weapon-supported Guard/Parry under generic defense rules.

## 4. Stamina Prototype Scale / Recovery
Authority:
`STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

Selected neutral test profile:
- `MAX_STAMINA = 100`;
- `PASSIVE_RECOVERY = +10` once at normal activation start;
- reserve bands: `READY 50–100 / LOW 25–49 / CRITICAL 1–24 / EMPTY 0`;
- LOW/CRITICAL do not automatically reduce accuracy/evasion/damage;
- positive-cost action/reaction requires enough Stamina to commit;
- no first-slice negative-Stamina overexertion;
- normal stable-ground reposition = `0 Stamina`;
- Sprint `8`;
- Brace `6`;
- reactive Brace `10`;
- Dodge `14`;
- compatible Parry baseline `10`;
- Guard preparation `4`;
- Block commitment `6 + resolved impact drain`;
- ordinary positive-cost reduction floor = `max(1, ceil(base × 0.50))`.

`CATCH_BREATH`:
- 1 AP;
- +20 delayed Stamina at turn end when valid;
- once per activation;
- illegal after a damaging attack in that activation;
- later damaging/sprint/high-exertion action cancels pending recovery;
- recovery is not immediate, preventing `3 AP attack + 1 AP battery` loops.

Field Poleblade Stamina:
- Measured Cut `12`;
- Driving Thrust `10`;
- Placed Hew `18`;
- Committed Cleave `30`;
- Haft Check `8`;
- Guard preparation `4`;
- Block `6 + impact drain`;
- Parry `10`.

Specificity rule:
where older Action Economy/Field Poleblade text says exact Stamina values were open, this Stamina contract now owns the first-slice prototype values. Final production tuning remains test-dependent.

Current combat gates:
`COMBAT_ACTION_ECONOMY = RECORDED`
`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY = FIELD_POLEBLADE`
`STAMINA_PROTOTYPE_CONTRACT = RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`

---

## INDEPENDENT DESIGN LANE

Exact next bounded combat-design dependency:
**Initiative and Turn-Order Prototype Contract**.

It should define only:
- Initiative inputs;
- deterministic ordering;
- tie resolution;
- start/round participation;
- late encounter entry if relevant;
- incapacitated/dead/escaped removal;
- no-extra-turn invariant;
- reproducible trace/testing.

Do not combine that pass with:
- status definitions;
- Region 01 terrain numbers;
- Monster 01 attack packet;
- berserk design;
- solo/party design;
- defeat/retreat behavior.

Remaining combat blockers after Initiative:
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
1.75 m reusable humanoid base; final story identity remains open. First-slice Field Poleblade design exists, but final weapon geometry is not yet produced.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height, horn crest, dorsal plates, mud-adapted feet, severable distal tail, internal life crystal, deterministic Region 01 behavior.

These content packages do not require final production assets for Stage 1.

---

## AUTHORITY

Current explicit user instruction > current verified source/tests > current owning repository authorities/packages > verified build/runtime/device evidence > older documents > chat memory/summaries.

This handoff records state and next work; it does not override owning gameplay/content authorities.
