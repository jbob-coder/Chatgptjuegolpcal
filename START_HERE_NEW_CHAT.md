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

Production root: `game/`. Stage-1 probe is evidence/testing infrastructure only.

Protected controls: left joystick direct continuous analog movement; right-side independent look; no forced release/center/rebase; approximately 115° first-person FOV; approximately 6.25 m/s exploration speed.

Automated-build verified stack now includes continuous Hunt-01 world/tracking/ENGAGE, deterministic combat/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction window, real Head Sweep, Hunter defense consequence, Hunter health/injury and species-owned Head Sweep wound/contact classification.

Wound/contact classifier:
- schema `uhr.hunt01.mudcrest_wound_contact.v1`;
- fixture `PROVISIONAL_FIRST_SLICE_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_FIXTURE`;
- implementation `6012235a958c0d4a73ff7c36201e2eff20715b70`;
- workflow `33935813877`: SUCCESS;
- job `101223419039`: SUCCESS;
- artifact `9960134957`: `UnnamedHuntRPG-Hunt01-WoundContact-debug`.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME_2026-09-04.md`.

## Exact next action

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTATION`.

Read before implementation:
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_wound_contact_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `game/scripts/gameplay/combat/README.md`;
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `docs/20_gameplay/combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
- current combat shell and regression/static gates.

Generic status application consumes a valid request; it does not decide whether the Head Sweep qualified. Implement Bleeding cap/first-tick metadata and Off-Balance refresh/expiry metadata, but do not bundle round-end damage or turn-hook scheduling into the application slice.
