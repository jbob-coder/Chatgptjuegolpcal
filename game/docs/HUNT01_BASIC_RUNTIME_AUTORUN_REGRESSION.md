# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / HUNTER DEFEAT TERMINAL EXTENSION VERIFICATION PENDING
Last reconciled: 2026-09-14

## Purpose

Provide a deterministic development/CI fresh-instance repeatability gate around the already-implemented Hunt-01 basics. This is not player-facing autoplay and does not alter normal player movement, camera control, combat decisions or runtime ownership.

## Covered path

Each autorun cycle uses the real production `region_01_hunt01_graybox.tscn` and existing owners to prove:
- fresh world identity, zero tracking state, seven-clue `OBSERVATION_READY`, physical engagement and explicit same-location ENGAGE;
- the existing combat shell, tactical movement, reaction, Hunter attack, Mudcrest anatomy/attack, wound/contact, health, status and encounter-outcome owners attach correctly;
- the initial out-of-range Monster activation advances without fabricating an attack;
- authored `N01 → N02 → N05 → N08 → N10` movement reaches the real Tail Sweep flank;
- real `M01_TAIL_SWEEP` + Poleblade Block preserves existing 3 AP / 18 Stamina attack cost, 1 RP / 6 Stamina reaction cost, deterministic SOLID / `BLOCK_STRONG`, Hunter Health 100 → 98 and no strong-Block status request;
- Round 3 repositions through authored `N10 → N08 → N05 → N07 → N09` movement using all 4 AP;
- the existing Head Sweep + Block bridge returns Round-4 Hunter at N09;
- real `POLEBLADE_MEASURED_CUT` against `DORSAL_PLATES` preserves 2 AP / 12 Stamina, CLEAN selected-part contact, `MINERALIZED_DORSAL_PLATE`, anatomy integrity 100 → 95 and idempotent readback;
- ending Round 4 opens the next real Head Sweep at action sequence 3;
- explicitly declining that reaction preserves deterministic CLEAN/no-guard behavior and Hunter Health 96 → 84;
- the real Mudcrest wound/contact owner establishes provisional horn penetration and emits exactly one Bleeding +1 application request;
- the existing generic status owner stores one `status_bleeding` instance at intensity 1 with `first_tick_round = 5` and real source identity;
- Round 4 does not tick the newly applied Bleeding early;
- Round 5 closes through the existing Head Sweep + strong Block path, preserves one Bleeding stack and applies only its real attack consequence, Health 84 → 82;
- the real Round-5 status-timing hook emits exactly one `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` with `NOT_SELECTED_PENDING_AUTHORITY` and no `damage_amount`;
- that pending periodic event does not mutate Health; Bleeding remains persistent and Round 6 starts normally on Hunter with 4 AP / 1 RP;
- test-only Health preparation then uses six already-verified CLEAN health handoffs to move 82 → 10 without committing any encounter outcome;
- Round-6 Hunter end-turn opens the existing real Head Sweep action sequence 5 and an explicit decline resolves the deterministic CLEAN hostile contact;
- that real production attack supplies the final 10 → 0 Health transition and emits the existing pending Hunter-defeat handoff;
- the existing encounter-outcome owner commits Hunter `ACTIVE → DOWNED`, keeps the living Mudcrest `ACTIVE`, commits `HUNTERS_DEFEATED` and freezes the scheduler in Round 6 with no current actor;
- post-terminal Hunter turn commitment and external Monster completion are rejected, the reaction/telegraph remain closed, no synthetic Round-6 Bleeding `ROUND_END` hook occurs, and defeat-handoff replay is idempotent;
- preserved Mudcrest anatomy is not reset by Hunter defeat;
- teardown removes the world and Hunt-01 groups before the next cycle.

The test executes two fresh scene lifecycles in one Godot process and compares one stable signature containing the Monster combat exchange, Hunter attack/anatomy exchange, real status lifecycle and Hunter defeat terminal chain. Both cycles must reproduce the same result without detected Hunt-01 state leakage.

## Safety boundary

Test helpers position the Hunter only at the existing pre-combat engagement boundary. Once combat is staged, existing test APIs drive authored tactical movement, reaction decisions, attacks and scheduler progression. Status application/timing are not synthesized: the autorun consumes the real Mudcrest wound/contact producer and reads the existing generic application/timing owners after normal scheduler hooks execute.

The defeat extension uses test-only Health preparation solely to approach the already-verified zero-Health boundary. It stops at 10 Health. The final zero-Health transition, `DOWNED` state and `HUNTERS_DEFEATED` terminal commit must come from a real hostile production Head Sweep transaction through the existing defense, health, outcome and scheduler owners.

Normal production input is not synthesized. Protected analog left-stick/right-look controls are unchanged. No player-facing autoplay, new RNG, final balance, Bleeding HP magnitude, structural threshold, withdrawal rule, forced recovery/respawn rule or Monster terminal semantic is introduced.

`PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` remains a downstream handoff only. This gate explicitly verifies that it cannot mutate Health while its magnitude authority remains unresolved. Forced recovery after Hunter defeat is not defined or executed by this gate.

## Verification gates

- `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_REAL_STATUS_LIFECYCLE_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_DEFEAT_TERMINAL_VERIFIED`

The production Android workflow executes the autorun test and its static preflight as part of the same mandatory production gate.

## Previous verified evidence

Latest fully verified source before this extension: `83dc865064980eaa3d29c5928b0f59e9a4132c79`.
Production workflow `34779563368`: SUCCESS.
Job `103783955039`: SUCCESS.
Artifact `10324451154`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,526,677 bytes, SHA-256 `411bb42819510e84d0f84d8c03033a49e86d3b35ab4cdc9b3251a3f320f22c6d`.

This section remains historical until the Hunter defeat terminal extension passes the full current production workflow.

## Next bounded verification extension

Do not select the next gameplay extension from this implementation commit. First require the full production workflow to verify the integrated Hunter defeat terminal chain, then inspect the remaining already-implemented/basic gaps and promote exactly one safe next slice through current authority.
