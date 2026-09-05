# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH HUNTER DEFENSE CONSEQUENCE ANDROID BUILD VERIFIED / HUNTER HEALTH-INJURY NEXT
Last reconciled: 2026-09-04

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. `game/README.md`
10. exact owning package/source/data/tests.

## Production runtime map

Core production:
- `game/project.godot` / `game/export_presets.cfg`;
- `game/scenes/app_shell.tscn`;
- `game/scenes/regions/region_01_hunt01_graybox.tscn`;
- `game/scripts/presentation/exploration/region_01_hunt01_graybox.gd`;
- `game/scripts/gameplay/tracking/`;
- `game/scripts/gameplay/encounter/hunt01_encounter_trigger_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_tactical_movement_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_hunter_attack_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_hunter_defense_consequence_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `game/assets/effects/mudcrest_head_sweep_telegraph.tscn`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime QA includes dedicated tests for production integration, combat shell/tactical movement, reaction, Hunter attack, Mudcrest anatomy, Head Sweep and Hunter defense consequence under `game/tests/`, plus source gates under `tests/quality/hunt01/`.

Runtime notes:
- `game/docs/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`;
- `game/docs/HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME.md`.

## Current verified baseline

Source head `598abcd66ba3333808fc2fe54c873c8cb5df01f9`.
Production workflow `33933869555`: SUCCESS.
Job `101217865434`: SUCCESS.
Artifact `9959508072`: `UnnamedHuntRPG-Hunt01-HunterDefense-debug`.

The full current automated pipeline through Hunter defense consequence passes Godot parse/smoke, production integration/regressions, dedicated defense headless, Android export and artifact upload.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_2026-09-04.md`.

## Layer ownership

World foundation/presentation: `game/scripts/presentation/exploration/` plus Region-01 authorities under `docs/10_world/regions/REGION_01/`.

Tracking/evidence: `game/scripts/gameplay/tracking/`.

Observation/ENGAGE: `game/scripts/gameplay/encounter/`.

Generic combat: `game/scripts/gameplay/combat/` — turn shell, tactical movement, reaction, Hunter attack/contact, defense consequence, and next the Hunter health/injury owner.

Monster-01 runtime: `game/scripts/gameplay/monsters/monster_01/` — anatomy plus species attack driver/transactions.

Relevant next-layer authorities:
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`.

## Verification boundary

`HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTED = YES`
`HUNT01_HUNTER_DEFENSE_CONSEQUENCE_HEADLESS_VERIFIED = YES`
`HUNT01_HUNTER_DEFENSE_CONSEQUENCE_ANDROID_BUILD_VERIFIED = YES`
`HUNT01_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTATION`.

Consume the stable pending health/injury transaction once. Use a named reversible normalized fixture because final Max Health/armor/damage numbers remain balance-open, preserve the full hostile trace, clamp health at zero, emit only already-authorized status requests, and leave status application/defeat to downstream owners.