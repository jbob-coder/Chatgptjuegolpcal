# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 APK BUILT / GALAXY A03s VISUAL RUNTIME SMOKE PASS / FULL PHONE PROTOCOL PENDING
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the existing Galaxy A03s Stage 1 phone protocol against the verified APK before adding more probe features or Stage 2 gameplay source.

Implementation is authorized, but later implementation systems remain controlled by readiness gates and EVOLVE.

Current probe source:
`probes/android_stage1/`

Current target-device evidence:
`docs/70_handoff/STAGE1_GALAXY_A03S_RUNTIME_EVIDENCE_2026-09-03.md`.

Exact next implementation gate:
**Galaxy A03s touch/camera/sustained-performance/lifecycle verification of the existing APK.**

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
9. `docs/70_handoff/STAGE1_GALAXY_A03S_RUNTIME_EVIDENCE_2026-09-03.md`
10. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
11. `probes/android_stage1/README.md`
12. owning package for any independent design task.

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
- Engine probe: `APK BUILT / TARGET-DEVICE VISUAL SMOKE PASS / FULL PHONE PROTOCOL PENDING`;
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

Final engine acceptance requires completion of the Galaxy A03s phone protocol, especially touch, camera, sustained performance/thermal and lifecycle behavior.

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
- Galaxy A03s test protocol;
- GitHub Actions Android debug build workflow.

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

Completed with build/CI evidence:
- Stage 1 source files created;
- GitHub source readback;
- real checkout static preflight `123 / 123 PASS`;
- Godot 4.7.2 import/parse gate PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android export preset exercised successfully;
- debug APK built successfully;
- APK archive integrity check PASS;
- APK delivered to the user.

Completed with target-device screenshot evidence:
- Galaxy A03s APK installation PASS;
- application reached ProbeWorld without visible black screen/crash/ANR;
- landscape rendering observed;
- aerial view observed;
- GL Compatibility / OpenGL3 observed;
- visible probe metrics observed at `60 FPS`, approximately `16.7 ms/frame`, debug static memory `40.9 MiB`;
- Hunter, Monster, ground, lighting/shadows, touch controls and view toggle visibly rendered.

Still pending:
- touch movement reliability;
- rapid direction changes / stuck-input check;
- first-person transition and repeated toggle stability;
- authoritative-position drift check;
- sustained 10+ minute performance/frame-pacing sample;
- thermal behavior;
- background/resume and lock/unlock lifecycle;
- repeatable crash/ANR check across the full phone protocol.

Current gates:
`IMPLEMENTATION_AUTHORIZED = YES`
`STAGE_1_PROBE_SOURCE_CREATED = YES`
`SOURCE_READBACK_VERIFIED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

Observed target-device snapshot:
`FPS = 60`
`FRAME_TIME_DISPLAY = ~16.7_MS`
`RENDERER = GL_COMPATIBILITY / OPENGL3`
`DEBUG_STATIC_MEMORY = 40.9_MIB`
`VIEW = AERIAL`

The snapshot is not evidence of stable 60 FPS over time.

---

## EXACT NEXT IMPLEMENTATION PIECE

Do not change probe source yet. Execute only the remaining target-device protocol against the existing APK:
1. hold each directional control and verify movement starts/stops correctly;
2. rapidly alternate directions and verify no stuck movement;
3. toggle AERIAL ↔ FIRST PERSON repeatedly;
4. verify no hunter teleport/position drift or severe first-person clipping;
5. run continuously for at least 10 minutes while watching FPS/stutter/input/heat;
6. background/resume and lock/unlock once;
7. record any repeatable defect with exact reproduction steps and screenshot/video evidence.

Only after these tests pass should the engine-phone gate be considered for closure and Stage 2 domain skeleton work be reconsidered.

Do not add further Stage 1 visual complexity merely because one phone screenshot looks good.

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
