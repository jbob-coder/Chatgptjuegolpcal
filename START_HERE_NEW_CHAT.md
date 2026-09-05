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

Implemented and automated-build verified production stack:
- continuous themed Hunt-01 world/exploration foundation;
- physical tracking/evidence runtime through `OBSERVATION_READY`;
- physical observation + explicit same-location ENGAGE;
- deterministic combat turn shell and adjacent tactical movement;
- Hunter `POLEBLADE_MEASURED_CUT` through contact/protection/anatomy;
- species-owned Mudcrest anatomy-integrity runtime;
- generic Hunter reaction window with `POLEBLADE_BLOCK = 1 RP + 6 Stamina`;
- Mudcrest `M01_HEAD_SWEEP_GORE` at `2 AP / 14 Stamina`;
- Head Sweep legality/telegraph/reaction/contact trace and stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff.

Verified source head:
`f7fe9d347921289ca104824e61fd82a2efc73fed`.

Production workflow `33932945947`: SUCCESS.
Job `101215138444`: SUCCESS.

Artifact:
`9959201882` — `UnnamedHuntRPG-Hunt01-MudcrestHeadSweep-debug`, SHA-256 `b56070a42a9abd5ef534443750c441385b1f5f8327a48f7ea1080e490abe0ca8`.

The stack through Head Sweep is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_2026-09-04.md`.

## Exact next action

`FIRST_SLICE_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTATION`.

Read before implementation:
- `game/scripts/gameplay/combat/README.md`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `game/scripts/gameplay/encounter/hunt01_encounter_trigger_runtime.gd`;
- `game/docs/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- relevant current tests/static preflights.

Do not invent final Hunter HP or combine this pass with other Mudcrest attacks, Dodge/Parry/Brace implementation, structural break/sever, statuses, defeat/escape or harvest.