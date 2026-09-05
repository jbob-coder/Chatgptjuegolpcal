# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned.

Mandatory read order:
1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. `game/README.md`
10. exact owning package/source/data/tests for the recorded next piece.

Current repository/source/build/device evidence outranks old chat memory and stale snapshots.

## Current implementation state

Production root: `game/`.
Stage-1 probe: evidence/testing infrastructure only.

Protected Stage-1 controls:
- left joystick direct continuous analog movement;
- right side independent camera/look;
- no forced release/center/rebase logic;
- approximately 115° first-person FOV;
- approximately 6.25 m/s exploration speed.

Automated-build verified production stack includes continuous world/tracking/ENGAGE, deterministic combat/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction window, real `M01_HEAD_SWEEP_GORE`, Hunter defense consequence, and Hunter health/injury.

Hunter health/injury:
- schema `uhr.hunt01.hunter_health_injury.v1`;
- fixture `PROVISIONAL_FIRST_SLICE_HUNTER_HEALTH_INJURY_FIXTURE`;
- normalized Health 100;
- GRAZE/SOLID/CLEAN base loads 4/8/12;
- Strong/Partial/Broken/No-Guard residuals 25/60/90/100%;
- replay-idempotent and clamped at zero;
- no inferred gameplay armor from Hunter visuals;
- zero → `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` only;
- status requests remain blocked until species content establishes horn penetration or impact dominance.

Health implementation `057928b30ddef3eac83a316a62c48b5e3fa22632`.
Verified head `06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.
Production workflow `33934988066`: SUCCESS.
Job `101221044355`: SUCCESS.
Artifact `9959871663`: `UnnamedHuntRPG-Hunt01-HunterHealth-debug`.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_HEALTH_INJURY_RUNTIME_2026-09-04.md`.

## Exact next action

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_RUNTIME_IMPLEMENTATION`.

Read before implementation:
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/README.md`;
- `game/scripts/gameplay/combat/hunt01_hunter_defense_consequence_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd`;
- `game/docs/HUNT01_HUNTER_HEALTH_INJURY_RUNTIME.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- relevant current tests/static preflights.

Do not make the generic status owner decide qualification. Do not infer penetration/dominance solely from having both PIERCING and IMPACT channels. Do not bundle status ticking/stacking, defeat, structural break/sever, other Mudcrest attacks or harvest.