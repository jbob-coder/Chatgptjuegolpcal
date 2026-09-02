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
- engine probe: READY / AUTHORIZED;
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

Do not duplicate or migrate root authorities here until a dedicated link-safe migration pass is approved.
