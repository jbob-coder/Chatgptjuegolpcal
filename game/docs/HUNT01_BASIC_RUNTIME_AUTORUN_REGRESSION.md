# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / REAL STATUS LIFECYCLE STATIC+HEADLESS+ANDROID BUILD VERIFIED
Last reconciled: 2026-09-13

## Purpose

Provide a deterministic development/CI fresh-instance repeatability gate around the already-implemented Hunt-01 basics. This is not player-facing autoplay and does not alter normal player movement, camera control, combat decisions or runtime ownership.

## Covered path

Each autorun cycle uses the real production `region_01_hunt01_graybox.tscn` and existing owners to prove:
- fresh world identity, zero tracking state, seven-clue `OBSERVATION_READY`, physical engagement and explicit same-location ENGAGE;
- the existing combat shell, tactical movement, reaction, Hunter attack, Mudcrest anatomy/attack, wound/contact, health and generic status owners attach correctly;
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
- teardown removes the world and Hunt-01 groups before the next cycle.

The test executes two fresh scene lifecycles in one Godot process and compares one stable signature containing the Monster exchange, Hunter attack/anatomy exchange and real Bleeding lifecycle. Both cycles reproduce the same result without detected Hunt-01 state leakage.

## Safety boundary

Test helpers position the Hunter only at the existing pre-combat engagement boundary. Once combat is staged, existing test APIs drive authored tactical movement, reaction decisions, attacks and scheduler progression. Status application and timing are not synthesized: the autorun consumes the real Mudcrest wound/contact producer and reads the existing generic application/timing owners after normal scheduler hooks execute.

Normal production input is not synthesized. Protected analog left-stick/right-look controls are unchanged. No player-facing autoplay, new RNG, final balance, Bleeding HP magnitude, structural threshold, withdrawal/recovery rule or Monster terminal semantic is introduced.

`PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` remains a downstream handoff only. This gate explicitly verifies that it cannot mutate Health while its magnitude authority remains unresolved.

## Verification gates

- `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_VERIFIED`
- `HUNT01_BASIC_RUNTIME_AUTORUN_REAL_STATUS_LIFECYCLE_VERIFIED`

The production Android workflow executes the autorun test and its static preflight as part of the same mandatory production gate.

## Verified evidence

Real-status lifecycle implementation commit: `9e854599780301e3e9c045b1bac73de9e27b5238`.
Production workflow `34779190819`: SUCCESS.
Job `103782938270`: SUCCESS.
Artifact `10324690130`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,526,652 bytes, SHA-256 `5eda52a2aa21afb6777880a6c62bfd8205fe0b2116b945b7cf13b724737b4aa9`.

Run 81 passed static/manifest gates, Godot 4.7.2 import/parse, production smokes, both fresh-instance integrated cycles including the real Bleeding lifecycle, every current combat/anatomy/status/outcome regression, Android debug export and artifact upload.

## Next bounded verification extension

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_REGRESSION`.

Next, extend this verification-only loop through the already-implemented Hunter Downed/defeat terminal chain. Use the existing health/outcome/scheduler owners, test-only preparation only where necessary, and require a real hostile final contact to commit `HUNTERS_DEFEATED`. Preserve all existing exchanges/lifecycle evidence. Do not invent recovery/respawn costs or destination, voluntary withdrawal, Monster terminal rules, Bleeding HP magnitude, structural thresholds, new RNG or balance values.
