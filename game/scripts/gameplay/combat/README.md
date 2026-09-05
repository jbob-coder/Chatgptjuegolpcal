# Hunt-01 Combat Runtime

Status: GENERIC STATUS APPLICATION ANDROID BUILD VERIFIED / STATUS TIMING NEXT
Last reconciled: 2026-09-04

Purpose: own the generic production combat-domain runtime stack after explicit same-location ENGAGE while delegating species-specific anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, AP/RP/Stamina and Monster activation handshake.
- `hunt01_tactical_movement_runtime.gd` — adjacent tactical-node movement over authored links with terrain Stamina surcharge.
- `hunt01_reaction_window_runtime.gd` — hostile-action reaction lifecycle, including out-of-turn Field Poleblade Block commitment and explicit decline.
- `hunt01_hunter_attack_runtime.gd` — Field Poleblade `POLEBLADE_MEASURED_CUT` legality/contact/protection/anatomy handoff.
- `hunt01_hunter_defense_consequence_runtime.gd` — no-contact/Block consequence, guard impact Stamina and health/injury handoff.
- `hunt01_hunter_health_injury_runtime.gd` — normalized first-slice Hunter health/injury state, stable injury transactions and pending defeat boundary.
- `hunt01_status_application_runtime.gd` — generic valid-request consumption, actor-level Bleeding/Off-Balance state, stack/refresh policy, idempotency and persistence snapshot boundary.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species anatomy consequence owner; generic combat does not absorb it.
- Monster normal attack runtime remains species-owned under `game/scripts/gameplay/monsters/monster_01/`.

Structural `crack/break/sever`, status consequences beyond application-state ownership/timing, and final damage/health arithmetic remain outside the turn shell/tactical movement owners and are resolved only by their dedicated downstream layers.

Stable combatants: encounter `enc_r01_ef02_m01_0001`; Hunter `hunter_player_0001`; Monster `monster_r01_m01_0001`.

## Existing verified combat laws

Hunter 4 AP / 1 RP, normalized first-slice Stamina 100, +10 passive Stamina once at Hunter activation start, authored 10-node/14-link tactical movement, `POLEBLADE_BLOCK = 1 RP + 6 Stamina`, Measured Cut `2 AP / 12 Stamina`, and Head Sweep `2 AP / 14 Stamina` remain unchanged.

Initiative currently uses the explicit design-contract tie example under `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; it is not final character-stat balance.

Head Sweep Block impact drain remains `10 Stamina`, applied separately through shell authority. The reversible Block fixture remains `PROVISIONAL_FIRST_SLICE_POLEBLADE_BLOCK_OUTCOME_FIXTURE`.

## Generic status application

Schema `uhr.hunt01.status_application.v1`.

Mudcrest wound/contact qualification remains species-owned. Generic status application consumes only valid requests and never re-decides penetration/impact dominance.

Verified first status scope supports actor-level `status_bleeding` with `STACK_INTENSITY_CAPPED`, max 3 and first-tick metadata, plus actor-level `status_off_balance` with `REFRESH_DURATION` and pending completed-activation expiry metadata. Request replay is idempotent and in-memory state rehydration does not replay ON_APPLY.

## Explicitly not implemented yet

- status lifecycle/timing hook execution and Bleeding periodic Health consequence;
- final Hunter Max Health/damage/armor balance;
- forced movement/final Block balance;
- structural crack/break/sever/tail detachment;
- Dodge/Parry/Brace resolution;
- Horn Charge / Shoulder Ram / Foreleg Stomp / Tail Sweep;
- deterministic multi-attack Monster behavior and Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence;
- Sprint/Dodge/forced-displacement movement.

## Current automated evidence

Status application implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.
Production workflow `33936580266`: SUCCESS.
Artifact `9960395435`: `UnnamedHuntRPG-Hunt01-StatusApplication-debug`.

Phone/user acceptance remains deferred-batch.
