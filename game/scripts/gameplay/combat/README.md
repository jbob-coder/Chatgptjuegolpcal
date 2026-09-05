# Hunt-01 Combat Runtime

Status: GENERIC STATUS APPLICATION IMPLEMENTED / AUTOMATED VERIFICATION PENDING
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

Stable combatants:
- encounter `enc_r01_ef02_m01_0001`;
- Hunter `hunter_player_0001`;
- Monster `monster_r01_m01_0001`.

## Existing verified combat laws

Hunter 4 AP / 1 RP, normalized first-slice Stamina 100, +10 passive Stamina once at Hunter activation start, authored 10-node/14-link tactical movement, `POLEBLADE_BLOCK = 1 RP + 6 Stamina`, Measured Cut `2 AP / 12 Stamina`, and Head Sweep `2 AP / 14 Stamina` remain unchanged.

Initiative currently uses the explicit design-contract tie example under `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; it is not final character-stat balance.

Head Sweep Block impact drain remains `10 Stamina`, applied separately through shell authority. The reversible Block fixture remains `PROVISIONAL_FIRST_SLICE_POLEBLADE_BLOCK_OUTCOME_FIXTURE`.

## Hunter health/injury

Schema `uhr.hunt01.hunter_health_injury.v1`. Fixture `PROVISIONAL_FIRST_SLICE_HUNTER_HEALTH_INJURY_FIXTURE`.

Normalized prototype Max Health 100; GRAZE/SOLID/CLEAN base injury loads 4/8/12; Strong/Partial/Broken/No-Guard residual percentages 25/60/90/100. Health mutation is idempotent and clamps at zero. These values are not final balance.

No gameplay armor profile is authored for the Hunter. The health owner records that absence instead of inferring protection from visuals.

## Species qualification and generic status application

Mudcrest Head Sweep wound/contact qualification remains species-owned. Generic status application consumes only a valid `PENDING_GENERIC_STATUS_APPLICATION_RUNTIME` request and never re-decides penetration/impact dominance.

First status-application scope supports `status_bleeding` with capped intensity 3 and `status_off_balance` with refresh-duration semantics. Timing hooks are recorded but not executed in this layer.

## Explicitly not implemented yet

- final Hunter Max Health/damage/armor balance;
- status timing/periodic consequence runtime;
- forced movement;
- final Block balance;
- structural crack/break/sever/tail detachment;
- Dodge/Parry/Brace resolution;
- Horn Charge / Shoulder Ram / Foreleg Stomp / Tail Sweep;
- deterministic multi-attack Monster behavior and Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence;
- Sprint/Dodge/forced-displacement movement.

## Current automated evidence

Verified baseline before this new status slice: wound/contact implementation `6012235a958c0d4a73ff7c36201e2eff20715b70`, production workflow `33935813877`: SUCCESS, artifact `9960134957` `UnnamedHuntRPG-Hunt01-WoundContact-debug`.

The generic status-application implementation must pass its source/headless/Android-build gates before promotion. Phone/user acceptance remains deferred-batch.
