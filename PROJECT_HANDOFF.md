# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH HUNTER DOWNED OUTCOME ANDROID BUILD VERIFIED / TAIL SWEEP NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-06

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/exploration: continuous 440×440 m Hunt-01 foundation, protected mobile shooter controls, approximately 115° first-person FOV and 6.25 m/s exploration speed.

Tracking/encounter: seven physical clues, deterministic reasoning, no Monster GPS, terminal `OBSERVATION_READY`, physical observation/engagement and same-location ENGAGE.

Combat: deterministic turns/resources/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction window, real Head Sweep, defense consequence, Hunter health/injury, species wound/contact classification, generic status application/timing, and generic Hunter-defeat encounter outcome.

Hunter zero Health now follows the selected first-slice path `DOWNED → HUNTERS_DEFEATED`. The existing combat shell commits terminal state after the active resolution boundary closes, removes any remaining pending slots, freezes further scheduler advancement and rejects new gameplay commitments. The living Mudcrest remains the same persistent active instance; defeat does not reset its anatomy/status/world state.

## Current verified baseline

Verified source head:
`f363998334bb752b037ed524cb909ad12634b71f`.

Implementation commit:
`a6476483c7f187f5e4904d7901c28e1abe0f9996`.

Production workflow `33985410020`: SUCCESS.
Job `101357889357`: SUCCESS.

Artifact `9975014310`:
`UnnamedHuntRPG-Hunt01-HunterDownedOutcome-debug`, 57,446,932 bytes, SHA-256 `ab431361b3be3b325300d7d2242cd622afdb376f6426d8d2228fab0388cae196`.

Verification labels:
- stack through Hunter Downed encounter outcome: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_2026-09-06.md`.

## Explicitly incomplete

- forced recovery/respawn destination, timing, costs and penalties;
- voluntary Hunter withdrawal and authored Hunter escape-node/equivalent boundary;
- Monster escape/death/mutual-terminal execution and reacquisition transition;
- Bleeding periodic Health magnitude/application;
- Staggered/Braced/Guarded producers and full action restrictions;
- structural crack/break/sever/detachment; numeric thresholds remain open;
- remaining Mudcrest attacks/behavior/Berserk;
- harvest/inventory/crafting/settlement/persistence;
- final phone/performance validation.

## Exact next action

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Extend the existing Monster-01 attack owner with the authored intact-tail rear/flank `M01_TAIL_SWEEP` path. Reuse the existing one-driver scheduler, reaction/Block resource authority and Off-Balance status owner. Do not invent sever thresholds, Staggered behavior, forced recovery, withdrawal geometry, harvest or Bleeding HP damage.

Read before implementation:
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- current reaction/defense/status/anatomy owners and their regressions.
