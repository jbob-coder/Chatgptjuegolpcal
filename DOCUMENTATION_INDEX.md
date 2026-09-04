# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH MUDCREST ANATOMY INTEGRITY BUILD VERIFIED / REACTION WINDOW NEXT
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
- `game/scripts/gameplay/combat/hunt01_hunter_attack_runtime.gd`
- `game/scripts/gameplay/monsters/monster_01/README.md`
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`
- `game/content/regions/region_01/hunt01_graybox_build_manifest.json`
- `game/content/regions/region_01/hunt01_tracking_evidence.json`
- `game/tests/region01_hunt01_graybox_runtime_test.gd`
- `game/tests/hunt01_combat_turn_shell_runtime_test.gd`
- `game/tests/hunt01_hunter_attack_runtime_test.gd`
- `game/tests/hunt01_mudcrest_anatomy_runtime_test.gd`
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime/source QA lives under `tests/quality/hunt01/`, including `hunt01_mudcrest_anatomy_preflight.py`.

## Current verified baseline

Current verified source head:
`a70b7680f3a7d552a08fc9080a04bc40617c916b`.

Anatomy implementation commit:
`da664deaa88a04cd2d2c5ca3ddd11953f897c7f2`.

Production workflow `33853607287`: SUCCESS.
Static manifest workflow `33853607294`: SUCCESS.

Godot parse/AppShell/Region smoke, production integration headless, combat turn shell + tactical movement headless, Mudcrest anatomy integrity headless, first Hunter attack + anatomy integration headless, Android debug export and artifact upload all PASS.

The older tracking-only head `0df278eba2d9265ed84483265957d9f8c2d7f415` remains historical evidence only and is not the current implementation state.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_2026-09-04.md`.

## Layer ownership

Layer 1 — world foundation/presentation:
- `game/scripts/presentation/exploration/region_01_hunt01_graybox.gd`;
- `game/scenes/regions/region_01_hunt01_graybox.tscn`;
- Region/world authorities under `docs/10_world/regions/REGION_01/`.

Layer 2 — tracking/evidence runtime:
- `game/scripts/gameplay/tracking/`;
- `game/content/regions/region_01/hunt01_tracking_evidence.json`;
- tracking/escape world authority under `docs/10_world/regions/REGION_01/TRACKING_AND_ESCAPE.md`.

Layer 3 — observation / same-location encounter entry:
- `game/scripts/gameplay/encounter/`;
- consumes Layer-2 `OBSERVATION_READY`;
- preserves physical Hunter/Monster encounter location and explicit ENGAGE authority.

Generic combat foundation:
- `game/scripts/gameplay/combat/`;
- deterministic turn shell;
- authored tactical-node movement;
- first Hunter `POLEBLADE_MEASURED_CUT` through committed contact/protection resolution.

Monster-01 anatomy runtime owner:
- `game/scripts/gameplay/monsters/monster_01/`;
- consumes committed generic combat handoff once;
- owns species-specific per-part integrity state;
- does not own generic attack contact or scheduler rules.

Monster-01 design authority:
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`.

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
`HUNT01_MUDCREST_ANATOMY_INTEGRITY_HEADLESS_VERIFIED = YES`
`HUNT01_MUDCREST_ANATOMY_INTEGRITY_ANDROID_BUILD_VERIFIED = YES`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_HUNTER_REACTION_WINDOW_RUNTIME_IMPLEMENTATION`.

Generic combat must gain stable reaction-window state and an out-of-turn Hunter RP/Stamina commitment path before the Mudcrest attack packet can replace `WAIT_NO_ATTACK_RUNTIME`. The prerequisite must not fabricate unresolved final reaction tuning or Hunter damage.
