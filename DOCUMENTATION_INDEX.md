# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH HUNTER REACTION WINDOW BUILD VERIFIED / FIRST MUDCREST ATTACK NEXT
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

Production root:
- `game/README.md`
- `game/project.godot`
- `game/export_presets.cfg`
- `game/scenes/app_shell.tscn`
- `game/scenes/regions/region_01_hunt01_graybox.tscn`
- `game/scripts/presentation/exploration/region_01_hunt01_graybox.gd`
- `game/scripts/gameplay/tracking/README.md`
- `game/scripts/gameplay/tracking/hunt01_tracking_runtime.gd`
- `game/scripts/gameplay/encounter/`
- `game/scripts/gameplay/combat/README.md`
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`
- `game/scripts/gameplay/combat/hunt01_tactical_movement_runtime.gd`
- `game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`
- `game/scripts/gameplay/combat/hunt01_hunter_attack_runtime.gd`
- `game/scripts/gameplay/monsters/monster_01/README.md`
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`
- `game/content/regions/region_01/hunt01_graybox_build_manifest.json`
- `game/content/regions/region_01/hunt01_tracking_evidence.json`
- `game/tests/region01_hunt01_graybox_runtime_test.gd`
- `game/tests/hunt01_combat_turn_shell_runtime_test.gd`
- `game/tests/hunt01_reaction_window_runtime_test.gd`
- `game/tests/hunt01_hunter_attack_runtime_test.gd`
- `game/tests/hunt01_mudcrest_anatomy_runtime_test.gd`
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime/source QA lives under `tests/quality/hunt01/`, including reaction, Hunter-attack and Mudcrest-anatomy preflights.

Runtime notes:
- `game/docs/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`;
- `game/docs/HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`.

## Current verified baseline

Verified reaction-layer source head:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Production workflow `33884922855`: SUCCESS.

Godot parse/AppShell/Region smoke, production integration, combat turn shell + tactical movement, Hunter reaction window, Mudcrest anatomy integrity, Hunter attack/anatomy integration, Android export and artifact upload all PASS.

The older tracking/anatomy-only heads remain historical evidence and are not the current implementation state.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME_2026-09-04.md`.

## Layer ownership

World foundation/presentation:
- `game/scripts/presentation/exploration/`;
- Region/world authorities under `docs/10_world/regions/REGION_01/`.

Tracking/evidence:
- `game/scripts/gameplay/tracking/`;
- `game/content/regions/region_01/hunt01_tracking_evidence.json`.

Observation / same-location encounter entry:
- `game/scripts/gameplay/encounter/`.

Generic combat foundation:
- `game/scripts/gameplay/combat/`;
- turn shell, tactical movement, Hunter reaction-window authority and Hunter Measured Cut contact resolution.

Monster-01 runtime owner:
- `game/scripts/gameplay/monsters/monster_01/`;
- currently owns Mudcrest species anatomy integrity;
- next owns the first species attack driver/transaction without moving generic reaction laws into species code.

Monster-01 design authority:
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`.

Generic hostile-resolution authority:
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

## Stage-1 evidence map

`probes/android_stage1/` remains evidence source, not production architecture.
Primary control owner:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = YES`.

## Verification boundary

`HUNT01_WORLD_FOUNDATION_IMPLEMENTED = YES`
`HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTED = YES`
`HUNT01_OBSERVATION_ENCOUNTER_RUNTIME_IMPLEMENTED = YES`
`HUNT01_COMBAT_TURN_SHELL_IMPLEMENTED = YES`
`HUNT01_TACTICAL_MOVEMENT_IMPLEMENTED = YES`
`HUNT01_FIRST_HUNTER_ATTACK_IMPLEMENTED = YES`
`HUNT01_MUDCREST_ANATOMY_INTEGRITY_IMPLEMENTED = YES`
`HUNT01_HUNTER_REACTION_WINDOW_IMPLEMENTED = YES`
`HUNT01_HUNTER_REACTION_WINDOW_HEADLESS_VERIFIED = YES`
`HUNT01_HUNTER_REACTION_WINDOW_ANDROID_BUILD_VERIFIED = YES`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Species code must register one real Monster activation driver, execute `M01_HEAD_SWEEP_GORE` at `2 AP / 14 Stamina`, open the verified generic reaction window, produce deterministic hostile contact/protection trace, and emit a stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff without inventing final Hunter HP balance.