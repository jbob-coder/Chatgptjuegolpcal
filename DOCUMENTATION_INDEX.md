# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH FIRST MUDCREST HEAD SWEEP ANDROID BUILD VERIFIED / HUNTER DEFENSE CONSEQUENCE NEXT
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
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `game/assets/effects/mudcrest_head_sweep_telegraph.tscn`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime QA:
- `game/tests/region01_hunt01_graybox_runtime_test.gd`;
- `game/tests/hunt01_combat_turn_shell_runtime_test.gd`;
- `game/tests/hunt01_reaction_window_runtime_test.gd`;
- `game/tests/hunt01_hunter_attack_runtime_test.gd`;
- `game/tests/hunt01_mudcrest_anatomy_runtime_test.gd`;
- `game/tests/hunt01_mudcrest_head_sweep_runtime_test.gd`;
- `tests/quality/hunt01/`.

Runtime notes:
- `game/docs/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`;
- `game/docs/HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`.

## Current verified baseline

Source head `f7fe9d347921289ca104824e61fd82a2efc73fed`.
Production workflow `33932945947`: SUCCESS.
Job `101215138444`: SUCCESS.
Artifact `9959201882`: `UnnamedHuntRPG-Hunt01-MudcrestHeadSweep-debug`.

Godot parse/AppShell/Region smoke, production integration, combat shell/tactical movement, reaction, dedicated Head Sweep, anatomy, Hunter attack, Android export and artifact upload all PASS.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_2026-09-04.md`.

## Layer ownership

World foundation/presentation: `game/scripts/presentation/exploration/` plus Region-01 authorities under `docs/10_world/regions/REGION_01/`.

Tracking/evidence: `game/scripts/gameplay/tracking/`.

Observation/ENGAGE: `game/scripts/gameplay/encounter/`.

Generic combat: `game/scripts/gameplay/combat/` — turn shell, tactical movement, reaction, Hunter attack/contact, and next the generic Hunter defense-consequence owner.

Monster-01 runtime: `game/scripts/gameplay/monsters/monster_01/` — anatomy plus the first real species attack driver/transaction.

Monster-01 design authority:
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `ANATOMY_AND_DAMAGE.md`;
- `COMBAT_ATTACK_PACKET.md`;
- `BEHAVIOR_AND_REGION.md`.

Generic defense/resource authorities:
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`.

## Verification boundary

`HUNT01_MUDCREST_HEAD_SWEEP_IMPLEMENTED = YES`
`HUNT01_MUDCREST_HEAD_SWEEP_HEADLESS_VERIFIED = YES`
`HUNT01_MUDCREST_HEAD_SWEEP_ANDROID_BUILD_VERIFIED = YES`
`HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTATION`.

Consume the stable `PENDING_HUNTER_DAMAGE_RUNTIME` transaction once, resolve no-contact/Field-Poleblade guard consequences and Head Sweep's selected 10-Stamina impact drain through generic combat resource authority, then preserve final HP/injury as a downstream pending boundary rather than fabricating balance.