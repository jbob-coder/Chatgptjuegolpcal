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
- first Hunter `POLEBLADE_MEASURED_CUT` through target acquisition/body fallback, hit quality, and local protection routing.

The current attack result stops at `PENDING_ANATOMY_DAMAGE_RUNTIME`. Anatomy integrity loss, break/sever, status consequences, Monster reactions/attacks, defeat/escape and harvest are not yet implemented.

## Current verified baseline

Source head before documentation reconciliation:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Production workflow:
`33851145446` — SUCCESS.

Passed:
- manifest / production projection;
- Godot 4.7.2 parse/import;
- AppShell smoke;
- Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- first Hunter attack headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore the implemented combat foundation is STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking phone validation remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Exact next action

`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`.

Read before implementing:
- `game/scripts/gameplay/combat/README.md`;
- `game/scripts/gameplay/combat/hunt01_hunter_attack_runtime.gd`;
- `game/tests/hunt01_hunter_attack_runtime_test.gd`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`.

Species-specific integrity state belongs to the Monster-01 production owner. Preserve the committed combat action/contact trace; do not reroll it. Final damage arithmetic, break/sever thresholds and status tuning remain open, so any first-slice numeric fixture must be deterministic, reversible and explicitly provisional rather than presented as final design authority.
