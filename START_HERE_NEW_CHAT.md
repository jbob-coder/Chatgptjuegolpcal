# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Working name: `Unnamed Hunt RPG`.

## Mandatory first read

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Main rule

The game is the objective.

Documentation must preserve:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Engine/Android truth

Stage-1 automated foundation is advanced; direct Galaxy A03s regression + sustained performance run remain deferred.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS on automated protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Recorded first-slice design loop

Read package front doors for:
- Combat: `docs/20_gameplay/combat/README.md`;
- Harvest: `docs/20_gameplay/harvest/README.md`;
- Inventory: `docs/20_gameplay/inventory/README.md`;
- Crafting: `docs/20_gameplay/crafting/README.md`;
- Settlement 01: `docs/10_world/settlements/SETTLEMENT_01/README.md`.

Recorded chain:
`COMBAT/ANATOMY -> HARVEST -> RECOVERY BUNDLE -> PLAYER INVENTORY -> RETURN THROUGH GATE -> PHYSICAL SMITH -> RAKER-TENDON GRIP CRAFT -> POLEBLADE REFINEMENT`.

First recipe:
2 HIGH tail tendon + 2 STANDARD-or-better hide.

Refinement effect:
Placed Hew Stamina 18 -> 16; no AP/damage/Initiative/extra-turn bonus.

## Settlement 01 Smith proof

Authority:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Selected:
- physical workbench in Craft/Processing Quarter;
- normal service independent of one Smith NPC schedule;
- gate-return-to-workbench graybox target <=25 seconds normal walk;
- only one recipe exposed;
- preview/cancel mutate nothing;
- Confirm uses authoritative Craft transaction;
- stable Poleblade instance selection;
- UI/NPC/Settlement never directly consume material or write refinement.

No Smith/crafting runtime is claimed.

## Saved finished-game concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.
Visual intent only.

## Current planned sequence

Completed through:
`... -> Harvest -> Inventory -> One Recipe/Craft-Equip -> Settlement Smith Service`.

Next:
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.

That pass must unify the minimum vertical-slice save/reload boundary across player/world position, persistent Monster identity/anatomy/crystal/status, active hunt/encounter policy, harvest containers/depletion, recovery bundles, Inventory transfers, crafting transaction ledger/refinement and Settlement service state.

Do not expand into full long-term migration/corruption tooling or broad content implementation in that pass.
