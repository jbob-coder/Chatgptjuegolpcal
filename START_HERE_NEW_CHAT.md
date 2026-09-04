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
The Stage-1 probe remains evidence/testing infrastructure only.

Stage-1 shooter-style controls were previously accepted by the user: PASS 100%. Preserve that control architecture; do not infer later-layer phone acceptance from it.

Implemented production stack:
- Layer 1 continuous themed Hunt-01 world/exploration foundation;
- Layer 2 physical tracking/evidence runtime through `OBSERVATION_READY`;
- Layer 3 observation + explicit same-location ENGAGE / aerial-to-first-person encounter transition;
- deterministic combat turn shell;
- adjacent tactical-node movement;
- first Hunter `POLEBLADE_MEASURED_CUT` through target acquisition/body fallback, hit quality and local protection;
- species-owned Mudcrest anatomy-integrity runtime consuming that committed attack exactly once.

The current anatomy slice tracks deterministic per-part normalized integrity with strict identity/protection validation and idempotent resolution replay. Its numeric integrity fixture is explicitly provisional. Break/sever, detached parts, status consequences, Monster reactions/attacks, defeat/escape and harvest remain later runtime layers.

## Current verified baseline

Current verified source head:
`a70b7680f3a7d552a08fc9080a04bc40617c916b`.

Anatomy implementation:
`da664deaa88a04cd2d2c5ca3ddd11953f897c7f2`.

Production workflow:
`33853607287` — SUCCESS.

Static manifest workflow:
`33853607294` — SUCCESS.

Passed:
- manifest / production projection;
- anatomy source preflight;
- Godot 4.7.2 parse/import;
- AppShell smoke;
- Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- Mudcrest anatomy integrity headless;
- first Hunter attack + anatomy integration headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore the implemented stack through anatomy integrity is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking phone validation remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Exact next action

`FIRST_SLICE_HUNTER_REACTION_WINDOW_RUNTIME_IMPLEMENTATION`.

Read before implementing:
- `game/scripts/gameplay/combat/README.md`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/tests/hunt01_combat_turn_shell_runtime_test.gd`;
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

The bounded prerequisite must create an authoritative reaction-window identity and an out-of-turn RP/Stamina commitment path without granting the Hunter another normal activation. One normal reaction maximum per window, no recursive windows, no double spend on replay/readback. Use only currently closed costs; the selected Monster packet records the Field Poleblade Block commitment as 6 Stamina. Do not invent final Dodge/Parry/Brace tuning or Hunter damage.
