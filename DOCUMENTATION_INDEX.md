# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / TRACKING + OBSERVATION + COMBAT FOUNDATION BUILD VERIFIED / ANATOMY NEXT
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
- `game/content/regions/region_01/hunt01_graybox_build_manifest.json`
- `game/content/regions/region_01/hunt01_tracking_evidence.json`
- `game/tests/region01_hunt01_graybox_runtime_test.gd`
- `game/tests/hunt01_combat_turn_shell_runtime_test.gd`
- `game/tests/hunt01_hunter_attack_runtime_test.gd`
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime/source QA lives under `tests/quality/hunt01/`.

## Current verified baseline

Source head before this documentation reconciliation:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Workflow `33851145446`: SUCCESS.

Godot parse/AppShell/Region smoke, production integration headless, combat turn shell + tactical movement headless, first Hunter attack headless, Android debug export and artifact upload all PASS.

The older tracking-only head `0df278eba2d9265ed84483265957d9f8c2d7f415` remains historical evidence only and is not the current implementation state.

Latest handoff after reconciliation:
`docs/70_handoff/HUNT01_COMBAT_FOUNDATION_RECONCILIATION_2026-09-04.md`.

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

Combat foundation:
- generic turn/action/contact runtime under `game/scripts/gameplay/combat/`;
- deterministic turn shell;
- authored tactical-node movement;
- first Hunter `POLEBLADE_MEASURED_CUT` through `PENDING_ANATOMY_DAMAGE_RUNTIME`.

Monster-01 anatomy design authority:
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`.

Species-specific runtime consequences must live under a Monster-01 production owner rather than being embedded in the generic combat shell.

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
`CURRENT_COMBAT_FOUNDATION_HEADLESS_VERIFIED = YES`
`CURRENT_COMBAT_FOUNDATION_ANDROID_BUILD_VERIFIED = YES`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`.

Consume the existing committed attack `damage_handoff` once, preserve deterministic combat trace and stable anatomy IDs, prevent duplicate application, and keep unresolved final damage/break/sever/status tuning explicitly provisional or unimplemented.
