# 00_project — Project Governance

Purpose: documents that control what the project is, what is authoritative, how decisions are classified, and how work advances.

Belongs here after a future migration or when new package-oriented governance is added:
- authority/read-order guides;
- project scope and identity;
- design quality gates;
- decision classification;
- global dependency/ownership maps;
- bounded documentation plan;
- project-wide change protocol;
- build-readiness dependency gates.

Does **not** belong here:
- one region's terrain layout;
- one monster's anatomy;
- one weapon's stats;
- engine-specific source documentation;
- art reference images.

## Mandatory pre-work operating contract

Root authority:
`/EVOLVE_ALIGNMENT.md`

**Read the current repository copy of `EVOLVE_ALIGNMENT.md` before every bounded design, documentation, asset, implementation, debugging or verification pass.**

Do not rely on a remembered EVOLVE state. It records current authorization, source boundary, verification gate and exact next action.

After EVOLVE:
1. read the current handoff;
2. verify the relevant current source/package;
3. identify exactly one bounded piece;
4. execute the EVOLVE loop;
5. read back saved state before advancing.

Current EVOLVE state allows Stage 1 implementation but does not permit skipping readiness gates.

## Current package-local governance authority

`BUILD_READINESS_GATE_MATRIX.md`

This classifies design/documentation requirements into:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely consumes its answer.**

Current readiness:
- engine probe: source created / execution verification pending;
- domain implementation: blocked by engine-phone verification;
- combat: partial;
- vertical slice: partial;
- expansion decisions: intentionally open.

Current root authorities remain authoritative, especially:
- `/README.md`;
- `/START_HERE_NEW_CHAT.md`;
- `/DOCUMENTATION_INDEX.md`;
- `/DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`;
- `/EVOLVE_ALIGNMENT.md`.

Engine/device implementation authorization authority:
`../50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

Current isolated probe source:
`/probes/android_stage1/`.

Current implementation boundary:
- source created/read back;
- Godot parse/editor smoke pending;
- APK/device/performance verification pending.

Do not duplicate or migrate root authorities here until a dedicated link-safe migration pass is approved.
