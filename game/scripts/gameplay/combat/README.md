# Hunt-01 Combat Runtime

Status: STACK THROUGH GENERIC STAGGERED STATIC/HEADLESS/ANDROID BUILD VERIFIED / TAIL SWEEP CLEAN STAGGERED PRODUCER NEXT
Last reconciled: 2026-09-13

Purpose: own the generic production combat-domain runtime after same-location ENGAGE while delegating species anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — initiative/round/slot state, AP/RP/Stamina, Monster activation handshake and terminal scheduler authority.
- `hunt01_tactical_movement_runtime.gd` — authored-link tactical movement.
- `hunt01_reaction_window_runtime.gd` — out-of-turn reaction lifecycle.
- `hunt01_hunter_attack_runtime.gd` — Hunter Field Poleblade Measured Cut.
- `hunt01_hunter_defense_consequence_runtime.gd` — Block/no-contact consequence and impact drain.
- `hunt01_hunter_health_injury_runtime.gd` — normalized first-slice Hunter health/injury and pending defeat boundary.
- `hunt01_status_application_runtime.gd` — generic Bleeding/Staggered/Off-Balance application, refresh/stack/idempotency/persistence and Staggered timing-transition mutation owner.
- `hunt01_status_timing_runtime.gd` — `TURN_START_PRE_RECOVERY` / `TURN_END` / `ROUND_END` lifecycle, exact-once Staggered→Off-Balance conversion, Off-Balance recovery and pending Bleeding periodic cadence.
- `hunt01_encounter_outcome_runtime.gd` — Hunter zero-Health Downed/defeat and terminal handoff.
- Monster anatomy/attacks remain species-owned under `game/scripts/gameplay/monsters/monster_01/`.

Stable combatants: encounter `enc_r01_ef02_m01_0001`; Hunter `hunter_player_0001`; Monster `monster_r01_m01_0001`.

## Ownership boundaries preserved

Species anatomy remains delegated to `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`.

The generic turn shell does not own final damage/health arithmetic, species crack/break/sever transitions, status consequences, or the Monster normal attack runtime. Species/content owners remain responsible for those layers. Adjacent tactical-node movement remains explicitly owned by `hunt01_tactical_movement_runtime.gd` and spends resources through the shell.

Current initiative attributes remain the reversible `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; they are executable deterministic fixtures, not final character/Monster balance.

## Verified Generic Staggered boundary

`status_staggered` is now implemented in the existing generic status application/timing owners as one `TRANSIENT_PHYSICAL_DISRUPTION` instance with `REFRESH_DURATION`, intensity fixed to 1 and no hidden skipped activation. At the target's next `TURN_START_PRE_RECOVERY`, Staggered is removed exactly once, existing Off-Balance is applied/refreshed exactly once, Off-Balance is armed for that same activation's `TURN_END`, and normal shell Stamina/AP/RP refresh continues.

Verified source head `29623181bfb758b322e47d83a1c2f652b225561a`; workflow `34761564734` SUCCESS; job `103735203468` SUCCESS; artifact `10318917250` `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`.

The Tail Sweep CLEAN path still intentionally remains `TAIL_SWEEP_CLEAN_IMPACT_STAGGERED_PENDING`; the species classifier has not yet been wired as a Staggered producer.

## Explicitly not implemented yet

Tail Sweep CLEAN→Staggered producer wiring; forced recovery/respawn; voluntary Hunter withdrawal; Monster escape/death; Bleeding periodic Health magnitude; Braced/Guarded runtime coverage; final health/damage/armor balance; forced movement/final Block balance; structural crack/break/sever/tail detachment; Dodge/Parry/Brace resolution; remaining Mudcrest attacks; Berserk; harvest/inventory/crafting/settlement/persistence; sustained performance.

## Current production slice

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_INTEGRATION`.

The next piece changes only the species-owned Tail Sweep CLEAN consequence from an explicit pending boundary into one valid generic Staggered application request. It must preserve SOLID→Off-Balance, Strong Block→no status, existing deterministic contact/attack behavior, and all unresolved structural/balance boundaries.
