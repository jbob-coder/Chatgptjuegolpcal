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

Automated-build verified production stack now includes continuous world/tracking/ENGAGE, deterministic combat/tactical movement, Hunter Measured Cut, Mudcrest anatomy, the generic reaction window, real `M01_HEAD_SWEEP_GORE`, and the generic Hunter defense-consequence runtime.

Defense consequence:
- consumes `PENDING_HUNTER_DAMAGE_RUNTIME` idempotently;
- no-contact = zero consequence;
- `POLEBLADE_BLOCK` commitment remains `1 RP + 6 Stamina`;
- Head Sweep impact drain is separately `10 Stamina` through shell authority;
- Stamina cannot become debt;
- provisional Block outcome fixture exposes Strong/Partial/Broken;
- residual contact becomes `PENDING_HUNTER_HEALTH_INJURY_RUNTIME`.

Verified source head:
`598abcd66ba3333808fc2fe54c873c8cb5df01f9`.

Production workflow `33933869555`: SUCCESS.
Job `101217865434`: SUCCESS.
Artifact `9959508072`: `UnnamedHuntRPG-Hunt01-HunterDefense-debug`.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_2026-09-04.md`.

## Exact next action

`FIRST_SLICE_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTATION`.

Read before implementation:
- `game/scripts/gameplay/combat/README.md`;
- `game/scripts/gameplay/combat/hunt01_hunter_defense_consequence_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/docs/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME.md`;
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`;
- relevant current tests/static preflights.

Do not infer gameplay armor from the visual Hunter model. Do not silently freeze candidate Max Health/damage values. Do not bundle status application, structural break/sever, other Mudcrest attacks, defeat/escape or harvest.