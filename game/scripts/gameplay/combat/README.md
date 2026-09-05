# Hunt-01 Combat Runtime

Status: HUNTER DOWNED OUTCOME IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-05

Purpose: own the generic production combat-domain runtime stack after explicit same-location ENGAGE while delegating species-specific anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, AP/RP/Stamina, Monster activation handshake and terminal-scheduler commit authority.
- `hunt01_tactical_movement_runtime.gd` — adjacent tactical-node movement over authored links with terrain Stamina surcharge.
- `hunt01_reaction_window_runtime.gd` — hostile-action reaction lifecycle, including out-of-turn Field Poleblade Block commitment and explicit decline.
- `hunt01_hunter_attack_runtime.gd` — Field Poleblade `POLEBLADE_MEASURED_CUT` legality/contact/protection/anatomy handoff.
- `hunt01_hunter_defense_consequence_runtime.gd` — no-contact/Block consequence, guard impact Stamina and health/injury handoff.
- `hunt01_hunter_health_injury_runtime.gd` — normalized first-slice Hunter health/injury state, stable injury transactions and pending defeat boundary.
- `hunt01_status_application_runtime.gd` — generic valid-request consumption, actor-level Bleeding/Off-Balance state, stack/refresh policy, idempotency and persistence snapshot boundary.
- `hunt01_status_timing_runtime.gd` — TURN_START_PRE_RECOVERY / TURN_END / ROUND_END lifecycle timing, Off-Balance natural recovery and pending Bleeding periodic-event cadence.
- `hunt01_encounter_outcome_runtime.gd` — exactly-once Hunter zero-Health defeat consumption, `DOWNED`, `HUNTERS_DEFEATED`, and terminal handoff to the existing scheduler.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species anatomy consequence owner; generic combat does not absorb it.
- Monster normal attack runtime remains species-owned under `game/scripts/gameplay/monsters/monster_01/`.

Species anatomy remains delegated. final damage/health arithmetic, structural crack/break/sever, broader status consequences, and Monster normal attack runtime remain owned by their dedicated layers rather than being absorbed into the turn shell.

The current deterministic initiative example remains the explicit reversible fixture `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; it is not final character balance.

Stable combatants: encounter `enc_r01_ef02_m01_0001`; Hunter `hunter_player_0001`; Monster `monster_r01_m01_0001`.

## Current first-slice outcome boundary

The verified health owner already emits `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` at zero Health. The new generic outcome owner consumes only that stable handoff after the current attack/reaction/status resolution boundary has completed.

Selected path:
`hunter_health <= 0 → DOWNED → HUNTERS_DEFEATED`.

The shell remains the only scheduler. Terminal commitment ends the current activation, removes any still-pending slots, stops round advancement and blocks new gameplay commitments. The living Mudcrest remains persistent and is not reset by Hunter defeat.

## Generic status timing evidence

Schema `uhr.hunt01.status_timing.v1`.
Verified source head `57c205e1b2fb1fc69219f44033ef527ea756a353`.
Production workflow `33937504389`: SUCCESS; job `101228175010`: SUCCESS.
Artifact `9960678247`: `UnnamedHuntRPG-Hunt01-StatusTiming-debug`, SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

Bleeding stays capped at intensity 3. Timing may emit `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` at eligible ROUND_END but does not select/apply HP magnitude. Off-Balance is armed only when active at target TURN_START_PRE_RECOVERY and naturally removed at the matching completed activation TURN_END. Duplicate hooks/events are idempotent.

## Explicitly not implemented yet

- forced recovery/respawn destination, costs or penalties;
- voluntary Hunter withdrawal;
- Monster escape/death and mutual-terminal execution;
- Bleeding periodic Health magnitude/application;
- Staggered/Braced/Guarded producers and full action restrictions;
- final Hunter Max Health/damage/armor balance;
- forced movement/final Block balance;
- structural crack/break/sever/tail detachment; thresholds remain open;
- Dodge/Parry/Brace resolution;
- Horn Charge / Shoulder Ram / Foreleg Stomp / Tail Sweep;
- deterministic multi-attack Monster behavior and Berserk;
- harvest/inventory/crafting/settlement/persistence;
- Sprint/Dodge/forced-displacement movement.

## Verification boundary

Outcome source/headless/Android-build gates must pass before this layer is promoted to the verified baseline. Phone/user acceptance remains deferred-batch; sustained performance remains unverified.
