# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 IMPLEMENTATION + BOUNDED DESIGN
Last reconciled: 2026-09-02

## Mandatory pre-work rule

**Read this file before every bounded design, documentation, asset, implementation, debugging or verification pass.**

Do not rely on a remembered version of EVOLVE. Read the current repository copy first because authorization, source state, gates and next actions can change.

After reading EVOLVE, read the current handoff and the owning package/source for the exact bounded task.

## Authority order

For intended changes:
1. Current explicit user instruction.
2. Current verified source and tests where implementation already exists.
3. Current owning project documentation and locked decisions not superseded by the user.
4. Verified build/runtime/device evidence relevant to the change.
5. External documentation/research.
6. Conversation summaries/memory.

For implementation facts:
1. Current verified project source/tests.
2. Current durable project documentation.
3. Verified build/runtime evidence.
4. External documentation/research.
5. Conversation summaries/memory.

For runtime claims:
1. Direct target-device evidence.
2. Logs/screenshots/video.
3. Build/package evidence.
4. Source/static expectations.
5. Documentation summaries.

Current repository/source evidence outranks stale planning language.

## Mandatory loop

`READ EVOLVE`
→ `READ CURRENT STATE/HANDOFF`
→ `VERIFY STATE`
→ `IDENTIFY EXACTLY ONE SMALL PIECE`
→ `IDENTIFY OWNER + READINESS GATE`
→ `RESEARCH IF REQUIRED`
→ `IMPLEMENT OR DOCUMENT`
→ `TEST/VERIFY AT THE HIGHEST AVAILABLE LEVEL`
→ `INSPECT FOR REGRESSION`
→ `FIX FAILURES WITHIN THE SAME BOUNDED PIECE`
→ `UPDATE OWNING DOCUMENTATION`
→ `SAVE/COMMIT`
→ `READ BACK SAVED STATE`
→ `MARK EXACT STATUS`
→ `SELECT NEXT PIECE`

Never begin the next unrelated piece before closing the current verification/documentation boundary.

If the highest required verification is unavailable, stop at the highest level actually achieved and record the missing gate rather than claiming success.

## Build-readiness rule

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Every unresolved requirement belongs to one of:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely consumes its answer.**

Do not hold Stage 1 because expansion-level lore or content breadth remains open.
Do not advance into a later implementation stage if its own gate is still blocked.

## Current implementation authorization

User authorization was explicitly granted on 2026-09-02.

Current state:
- `IMPLEMENTATION_AUTHORIZED = YES`;
- `STAGE_1_ENGINE_ANDROID_PROBE_AUTHORIZED = YES`;
- `ENGINE_PROBE_CANDIDATE = GODOT_4_7_GDSCRIPT_GL_COMPATIBILITY`;
- `TARGET_BASELINE_DEVICE = SAMSUNG_GALAXY_A03S`;
- `BASELINE_DEVICE_FRAME_TARGET = STABLE_30_FPS_PROBE_TARGET`;
- `FINAL_ENGINE_SELECTED = NO / PROBE_PENDING`.

Authorization is bounded by readiness gates. It does not authorize skipping directly to combat, the full vertical slice or mass content production.

## Current source boundary

Current isolated Stage 1 source:
`probes/android_stage1/`.

Recorded current truth:
- Stage 1 probe source exists;
- source readback has been performed;
- Godot parse/editor execution is not yet verified;
- Android export preset is not yet verified;
- APK build is not verified;
- Galaxy A03s install/runtime/performance are not verified.

The probe is disposable evidence-gathering source. It must not silently become the production domain project.

## Exact current implementation gate

Before adding more Stage 1 features, verify the existing probe with Godot 4.7-family tooling:
1. open/import the existing project;
2. resolve project/scene/GDScript parse errors;
3. run Boot;
4. enter ProbeWorld;
5. verify movement and camera toggle;
6. verify runtime renderer/driver and metrics readout;
7. record warnings/errors.

Only after editor/runtime smoke passes:
- create/verify Android export preset;
- build debug APK;
- install on Galaxy A03s;
- execute the recorded phone protocol;
- measure frame pacing/memory/thermal behavior;
- decide whether the engine-phone gate passes.

Do not add real combat to the probe before this gate closes.

## Independent design lane — current state

Completed bounded combat-design authorities:
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
- `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

Recorded first weapon family:
- `WEAPON_FAMILY_FIELD_POLEBLADE`;
- working name Field Poleblade;
- cutting/sever primary;
- piercing/control secondary;
- limited impact;
- directional Guard and restricted Parry;
- 2/3/4 AP technique packet with explicit hit-quality/fallback policies.

Recorded first-slice Stamina prototype:
- neutral test Max Stamina `100`;
- passive recovery `+10` once at normal activation start;
- reserve bands `READY / LOW / CRITICAL / EMPTY`;
- low reserve uses affordability pressure rather than automatic hidden global accuracy/evasion penalties;
- `CATCH_BREATH = 1 AP / +20 delayed / once per activation`;
- Catch Breath cannot be paired with a damaging attack in the same activation;
- no first-slice negative-Stamina overexertion;
- stable adjacent reposition `0` Stamina baseline;
- Dodge `14`, compatible Parry `10`, Brace `6`, reactive Brace `10`;
- ordinary positive-cost reduction floor `max(1, ceil(base × 0.50))`;
- Field Poleblade costs: `12 / 10 / 18 / 30 / 8` for Measured Cut / Driving Thrust / Placed Hew / Committed Cleave / Haft Check.

Specificity law:
where earlier Action Economy or Field Poleblade text says exact Stamina values were open, the dedicated Stamina contract now owns the first-slice prototype values. It does not supersede their non-Stamina rules.

The next independent gameplay-design packet is:
**Initiative and Turn-Order Prototype Contract**.

That pass must define only:
- first-slice initiative inputs;
- deterministic ordering;
- tie resolution;
- round participation/entry/removal rules;
- no-extra-turn invariant;
- reproducible trace/testing.

Do not combine it with statuses, terrain numbers, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

## Status vocabulary

Keep gates separate:
- DESIGNED
- IMPLEMENTED
- STATIC_VERIFIED
- TESTED
- COMPILED
- APK_BUILD_VERIFIED
- PHONE_RUNTIME_VERIFIED
- VISUAL_QUALITY_VERIFIED
- PERFORMANCE_VERIFIED

Additional useful Stage 1 distinctions:
- SOURCE_CREATED
- SOURCE_READBACK_VERIFIED
- GODOT_PARSE_VERIFIED
- EDITOR_RUN_VERIFIED
- ANDROID_PRESET_VERIFIED
- PHONE_INSTALL_VERIFIED
- ENGINE_PHONE_PROBE_VERIFIED

Never call a design implemented, source tested, APK phone-verified, or engine accepted without direct evidence for that exact gate.

## Continuity fields

Durable handoffs should keep current:
- CURRENT_OBJECTIVE
- CURRENT_STATE
- LAST_VERIFIED_STATE
- COMPLETED
- IN_PROGRESS
- NEXT_ACTION
- BLOCKERS
- IMPORTANT_DECISIONS
- RISKS
- FILES_CHANGED
- TESTS_RUN
- RESULTS
- ASSUMPTIONS
- UNKNOWNS

## New-game rule

This is not WorldLife. Old WorldLife source, saves, Android architecture, city coordinates, NPCs and gameplay systems are not inherited by default.

Only abstract engineering lessons may carry forward when independently useful, such as:
- authoritative domain state;
- UI is not a second engine;
- stable IDs;
- deterministic/reproducible tests;
- save migration discipline;
- explicit verification gates;
- rollback-safe small changes;
- target-device testing early.

## Architecture decision rule

For the current engine candidate evaluate:

NOW:
can it build the required aerial + first-person representative probe reliably on the Galaxy A03s?

NEXT:
can it support data-driven monsters/anatomy, animation, tools, saves and content iteration without excessive custom infrastructure?

LATER:
can it scale to additional regions/creatures/content without architectural traps or unacceptable mobile performance?

Choose the simplest robust option that passes real-device evidence.

Godot remains a probe candidate until the Stage 1 phone gate passes.

## Root-cause rule

When a bug appears:
- reproduce/collect evidence;
- classify severity;
- identify the owning system;
- fix the root cause rather than hiding the symptom;
- test the bounded change;
- regression-check adjacent contracts;
- record verified state.

Do not expand scope to unrelated cleanup while repairing one defect unless the defect proves a shared root cause.

## Performance rule

Performance is verified on the target device, not inferred from source quality or desktop behavior.

Protect in order:
1. input responsiveness;
2. gameplay correctness;
3. monster/anatomy readability;
4. telegraph/camera stability;
5. frame pacing;
6. navigation/audio readability;
7. decoration.

Measure before optimizing. Reduce optional presentation before compromising gameplay-critical state/readability.

## Destructive-operation rule

Destructive changes require explicit intent and exact scope.

Do not overwrite/remove current authoritative source or documents merely to simplify structure. Migration/removal requires link/state verification and readback.

## Current stop/next condition

`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`IMPLEMENTATION_AUTHORIZED = YES`
`STAGE_1_PROBE_SOURCE_CREATED = YES`
`SOURCE_READBACK_VERIFIED = YES`
`GODOT_PARSE_VERIFIED = NO`
`EDITOR_RUN_VERIFIED = NO`
`APK_BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`COMBAT_ACTION_ECONOMY = RECORDED`
`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY = FIELD_POLEBLADE`
`STAMINA_PROTOTYPE_CONTRACT = RECORDED`
`BASELINE_MAX_STAMINA = 100`

`NEXT_IMPLEMENTATION_ACTION = GODOT_PARSE_AND_EDITOR_SMOKE_VERIFY_EXISTING_PROBE`

`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
