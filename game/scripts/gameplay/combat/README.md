# Hunt-01 Combat Runtime

Status: HUNTER DOWNED OUTCOME STATIC/HEADLESS/ANDROID BUILD VERIFIED / TAIL SWEEP NEXT
Last reconciled: 2026-09-06

Purpose: own the generic production combat-domain runtime stack after explicit same-location ENGAGE while delegating species-specific anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, AP/RP/Stamina, Monster activation handshake and terminal-scheduler commit authority.
- `hunt01_tactical_movement_runtime.gd` — adjacent tactical-node movement over authored links with terrain Stamina surcharge.
- `hunt01_reaction_window_runtime.gd` — hostile-action reaction lifecycle, including out-of-turn Field Poleblade Block commitment and explicit decline.
- `hunt01_hunter_attack_runtime.gd` — Field Poleblade `POLEBLADE_MEASURED_CUT` legality/contact/protection/anatomy handoff.
- `hunt01_hunter_defense_consequence_runtime.gd` — no-contact/Block consequence, guard impact Stamina and health/injury handoff.
- `hunt01_hunter_health_injury_runtime.gd` — normalized first-slice Hunter health/injury state, stable injury transactions and pending defeat boundary.
- `hunt01_status_application_runtime.gd` — generic status application owner for valid-request consumption, actor-level Bleeding/Off-Balance state, stack/refresh policy, idempotency and persistence snapshot boundary.
- `hunt01_status_timing_runtime.gd` — TURN_START_PRE_RECOVERY / TURN_END / ROUND_END lifecycle timing, Off-Balance natural recovery and pending Bleeding periodic-event cadence.
- `hunt01_encounter_outcome_runtime.gd` — exactly-once Hunter zero-Health defeat consumption, `DOWNED`, `HUNTERS_DEFEATED`, and terminal handoff to the existing scheduler.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species anatomy consequence owner; generic combat does not absorb it.
- Monster normal attacks remain species-owned under `game/scripts/gameplay/monsters/monster_01/`.

Stable combatants: encounter `enc_r01_ef02_m01_0001`; Hunter `hunter_player_0001`; Monster `monster_r01_m01_0001`.

## Verified Hunter Downed outcome boundary

Schema `uhr.hunt01.encounter_outcome.v1`.
Verified source head `f363998334bb752b037ed524cb909ad12634b71f`.
Implementation commit `a6476483c7f187f5e4904d7901c28e1abe0f9996`.
Production workflow `33985410020`: SUCCESS; job `101357889357`: SUCCESS.
Artifact `9975014310`: `UnnamedHuntRPG-Hunt01-HunterDownedOutcome-debug`, SHA-256 `ab431361b3be3b325300d7d2242cd622afdb376f6426d8d2228fab0388cae196`.

Selected path:
`hunter_health <= 0 → DOWNED → HUNTERS_DEFEATED`.

The outcome owner consumes the stable pending defeat handoff exactly once. The shell remains the only scheduler: terminal commitment ends the current authoritative activation/status boundary, removes still-pending slots, stops round advancement and blocks new normal/reaction commitments. The living Mudcrest remains persistent and is not reset by Hunter defeat.

## Explicitly not implemented yet

- forced recovery/respawn destination, costs or penalties;
- voluntary Hunter withdrawal / authored Hunter escape node;
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

## Next production slice

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Tail Sweep remains species-owned. Reuse the existing scheduler/reaction/Block/status owners and preserve the current attached-tail capability fact without inventing structural thresholds. Phone/user acceptance remains deferred-batch; sustained performance remains unverified.
