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

Implemented production stack:
- continuous themed Hunt-01 world/exploration foundation;
- physical tracking/evidence runtime through `OBSERVATION_READY`;
- physical observation + explicit same-location ENGAGE into first-person combat;
- deterministic combat turn shell;
- adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT` through target acquisition/body fallback, hit quality and local protection;
- species-owned Mudcrest anatomy-integrity runtime;
- generic Hunter reaction-window runtime with out-of-turn RP/Stamina commitment and stable window identity.

First implemented paid reaction:
`POLEBLADE_BLOCK` = `1 RP + 6 Stamina`.

The reaction layer does not fabricate Block strength, Hunter damage, forced movement or statuses.

## Current verified baseline

Verified reaction-layer source head:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Production workflow:
`33884922855` — SUCCESS.

Passed:
- manifest / production projection;
- combat/reaction/Hunter-attack/anatomy source preflights;
- Godot 4.7.2 parse/import;
- AppShell smoke;
- Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- Hunter reaction window headless;
- Mudcrest anatomy integrity headless;
- first Hunter attack + anatomy integration headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore the stack through Hunter reactions is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking phone validation remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME_2026-09-04.md`.

## Exact next action

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Read before implementing:
- `game/scripts/gameplay/combat/README.md`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/README.md`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- relevant current tests/static preflights.

The bounded attack must use real Monster activation ownership, commit `M01_HEAD_SWEEP_GORE` at exactly `2 AP / 14 Stamina`, telegraph before resolution, open the shared reaction window, consume Block or explicit decline deterministically, and emit one stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff after hostile contact/protection resolution. Final Hunter HP arithmetic remains open and must not be invented in this piece.

Do not bundle the other four Mudcrest attacks, Berserk, break/sever, defeat/escape or harvest into the same implementation.