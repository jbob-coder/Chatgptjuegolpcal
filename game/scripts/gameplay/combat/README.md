# Hunt-01 Combat Runtime

Status: STATUS TIMING IMPLEMENTED / AUTOMATED VERIFICATION PENDING
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
- `hunt01_status_timing_runtime.gd` — TURN_START_PRE_RECOVERY / TURN_END / ROUND_END lifecycle timing, Off-Balance natural recovery and pending Bleeding periodic-event cadence.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species anatomy consequence owner; generic combat does not absorb it.
- Monster normal attack runtime remains species-owned under `game/scripts/gameplay/monsters/monster_01/`.

Structural `crack/break/sever`, status consequences beyond application-state ownership/timing, and final damage/health arithmetic remain outside the turn shell/tactical movement owners and are resolved only by their dedicated downstream layers.

Stable combatants: encounter `enc_r01_ef02_m01_0001`; Hunter `hunter_player_0001`; Monster `monster_r01_m01_0001`.

## Existing verified combat laws

Hunter 4 AP / 1 RP, normalized first-slice Stamina 100, +10 passive Stamina once at Hunter activation start, authored 10-node/14-link tactical movement, `POLEBLADE_BLOCK = 1 RP + 6 Stamina`, Measured Cut `2 AP / 12 Stamina`, and Head Sweep `2 AP / 14 Stamina` remain unchanged.

Initiative currently uses the explicit design-contract tie example under `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; it is not final character-stat balance.

Head Sweep Block impact drain remains `10 Stamina`, applied separately through shell authority. The reversible Block fixture remains `PROVISIONAL_FIRST_SLICE_POLEBLADE_BLOCK_OUTCOME_FIXTURE`.

## Generic status application/timing

Application schema `uhr.hunt01.status_application.v1`; timing schema `uhr.hunt01.status_timing.v1`.

Mudcrest Head Sweep qualification remains species-owned. Generic application consumes only valid requests. Generic timing processes already-applied state at standardized hooks.

Bleeding stays capped at intensity 3. Timing may emit a deterministic `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` at eligible ROUND_END but does not select/apply HP magnitude.

Off-Balance is armed only when active at target TURN_START_PRE_RECOVERY and naturally removed at the matching completed activation TURN_END.

## Explicitly not implemented yet

- Bleeding periodic Health magnitude/application;
- Staggered/Braced/Guarded producers and full action restrictions;
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

Verified baseline before timing: status application implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`, production workflow `33936580266`: SUCCESS, artifact `9960395435` `UnnamedHuntRPG-Hunt01-StatusApplication-debug`.

The timing implementation must pass source/headless/Android-build gates before promotion. Phone/user acceptance remains deferred-batch.
