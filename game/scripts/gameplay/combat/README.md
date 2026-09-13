# Hunt-01 Combat Runtime

Status: STACK THROUGH MUDCREST TAIL SWEEP STATIC/HEADLESS/ANDROID BUILD VERIFIED / GENERIC STAGGERED STATUS NEXT
Last reconciled: 2026-09-13

Purpose: own the generic production combat-domain runtime after same-location ENGAGE while delegating species anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — initiative/round/slot state, AP/RP/Stamina, Monster activation handshake and terminal scheduler authority.
- `hunt01_tactical_movement_runtime.gd` — authored-link tactical movement.
- `hunt01_reaction_window_runtime.gd` — out-of-turn reaction lifecycle.
- `hunt01_hunter_attack_runtime.gd` — Hunter Field Poleblade Measured Cut.
- `hunt01_hunter_defense_consequence_runtime.gd` — Block/no-contact consequence and impact drain.
- `hunt01_hunter_health_injury_runtime.gd` — normalized first-slice Hunter health/injury and pending defeat boundary.
- `hunt01_status_application_runtime.gd` — current generic Bleeding/Off-Balance application, refresh/stack/idempotency/persistence owner.
- `hunt01_status_timing_runtime.gd` — current TURN_START_PRE_RECOVERY / TURN_END / ROUND_END lifecycle, Off-Balance recovery and pending Bleeding periodic cadence.
- `hunt01_encounter_outcome_runtime.gd` — Hunter zero-Health Downed/defeat and terminal handoff.
- Monster anatomy/attacks remain species-owned under `game/scripts/gameplay/monsters/monster_01/`.

Stable combatants: encounter `enc_r01_ef02_m01_0001`; Hunter `hunter_player_0001`; Monster `monster_r01_m01_0001`.

## Ownership boundaries preserved by the combat shell

Species anatomy remains delegated to `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`.

The generic turn shell deliberately does not own final damage/health arithmetic, species crack/break/sever transitions, status consequences, or Monster normal attack runtime selection/resolution. Those layers remain in their documented consequence/content owners. Adjacent tactical-node movement is explicitly owned by `hunt01_tactical_movement_runtime.gd` and spends resources through the shell.

Current initiative attributes are the reversible `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; they exist to make deterministic ordering executable and are not final character/Monster balance.

## Verified Tail Sweep boundary

`M01_TAIL_SWEEP` is verified in the existing species-owned Mudcrest attack driver and reuses the shared shell/reaction/defense/health/status/outcome owners. Verified source head `91f554d5ad53b69436f5ee4eb84aad2caa409a23`; workflow `34759688551` SUCCESS; job `103730201523` SUCCESS; artifact `10317819786` `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`.

The Tail Sweep CLEAN path remains `TAIL_SWEEP_CLEAN_IMPACT_STAGGERED_PENDING`; it does not fabricate Staggered or silently substitute Off-Balance.

## Explicitly not implemented yet

Forced recovery/respawn; voluntary Hunter withdrawal; Monster escape/death; Bleeding periodic Health magnitude; generic Staggered/Braced/Guarded coverage; final health/damage/armor balance; forced movement/final Block balance; structural crack/break/sever/tail detachment; Dodge/Parry/Brace resolution; remaining Mudcrest attacks; Berserk; harvest/inventory/crafting/settlement/persistence; sustained performance.

## Current production slice

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

The next piece extends the existing generic status application/timing owners with one refreshable Staggered instance and deterministic next-turn-start conversion to Off-Balance. It does not add a parallel status system or wire Tail Sweep CLEAN as producer yet.
