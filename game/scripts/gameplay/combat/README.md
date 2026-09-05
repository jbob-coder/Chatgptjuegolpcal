# Hunt-01 Combat Runtime

Status: STATUS TIMING ANDROID BUILD VERIFIED / HUNTER DOWNED OUTCOME NEXT
Last reconciled: 2026-09-05

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

Stable combatants: encounter `enc_r01_ef02_m01_0001`; Hunter `hunter_player_0001`; Monster `monster_r01_m01_0001`.

## Generic status timing evidence

Schema `uhr.hunt01.status_timing.v1`.
Verified source head `57c205e1b2fb1fc69219f44033ef527ea756a353`.
Production workflow `33937504389`: SUCCESS; job `101228175010`: SUCCESS.
Artifact `9960678247`: `UnnamedHuntRPG-Hunt01-StatusTiming-debug`, SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

Bleeding stays capped at intensity 3. Timing may emit `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` at eligible ROUND_END but does not select/apply HP magnitude. Off-Balance is armed only when active at target TURN_START_PRE_RECOVERY and naturally removed at the matching completed activation TURN_END. Duplicate hooks/events are idempotent.

## Explicitly not implemented yet

- Bleeding periodic Health magnitude/application;
- Staggered/Braced/Guarded producers and full action restrictions;
- final Hunter Max Health/damage/armor balance;
- forced movement/final Block balance;
- structural crack/break/sever/tail detachment; thresholds remain open;
- Dodge/Parry/Brace resolution;
- Horn Charge / Shoulder Ram / Foreleg Stomp / Tail Sweep;
- deterministic multi-attack Monster behavior and Berserk;
- Hunter Downed encounter-terminal execution;
- voluntary withdrawal / Monster escape/death outcome execution;
- harvest/inventory/crafting/settlement/persistence;
- Sprint/Dodge/forced-displacement movement.

## Current bounded piece

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

Authority: `docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md` plus the existing health owner's `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` boundary. Add one generic outcome owner, terminate the current scheduler through its owner, and preserve the living Monster state. Keep recovery/respawn and other outcome paths outside this slice.
