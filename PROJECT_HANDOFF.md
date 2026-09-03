# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / SOLO-PARTY BASELINE RECORDED / DEFEAT-RETREAT NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`DEFEAT_RETREAT_BASELINE_CONTRACT`.

Operating contract:
`EVOLVE_ALIGNMENT.md`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

For current combat work additionally read:
- `docs/20_gameplay/combat/README.md`;
- `SOLO_PARTY_BASELINE_CONTRACT.md`;
- Initiative/Action Economy/Combat Resolution/Stamina/status/terrain owners;
- Monster 01 authorities where defeat/escape consequences depend on creature state.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
- walkable settlement/hub;
- aerial wilderness tracking/exploration;
- first-person turn-based combat from the same physical encounter;
- explicit movement/cover/defense/attack/body-part choices;
- anatomy, terrain, preparation, break/sever and harvest quality matter;
- deterministic authored creature/NPC/companion behavior.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
- static 154/154;
- Monster collision 8/8;
- boundary 12/12;
- view continuity 17/17;
- lifecycle 47/47;
- performance telemetry 20/20;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct current-phone regression + sustained 24-minute run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

## Generic combat foundation — eight contracts

1. Action Economy — 4 AP / 1 RP / persistent Stamina.
2. Combat Resolution — deterministic legality/contact/defense/hit quality.
3. First Weapon — Field Poleblade.
4. Stamina — normalized 100-point reference / +10 passive / Catch Breath / explicit costs.
5. Initiative — deterministic snapshot/no random opener/one normal activation max.
6. Status Set — Bleeding / Staggered / Off-Balance / Braced / Guarded.
7. Terrain Set — Stable / Rough / Shallow Water / Mud + Brush / High Ground / Narrow.
8. Solo / Party Baseline — solo-capable optional companions, max three active hunters, deterministic companion control under same scheduler.

## Solo / party baseline — RECORDED

Authority:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Specialized handoff:
`docs/70_handoff/SOLO_PARTY_BASELINE_PASS_2026-09-03.md`.

Selected:
- `FIRST_SLICE_PARTY_MODE = SOLO_CAPABLE_WITH_OPTIONAL_COMPANIONS`;
- `MAX_ACTIVE_HUNTERS_IN_PARTY = 3`;
- player hunter + zero to two companions;
- the core hunt must be completable solo;
- no party-required first-slice hunt;
- player directly controls only their hunter;
- no mid-combat body switching;
- each hunter owns separate Health/AP/RP/Stamina/status/position/equipment;
- all actors use the same deterministic Initiative/RoundRoster;
- party affiliation does not group allied turns;
- companion behavior is authored/deterministic, not runtime generative AI.

Mid-combat command action:
`ISSUE_COMPANION_ORDER` = player `1 AP`, max one successful order action per player activation, targets one companion.

Minimal orders:
- Standard;
- Focus Part;
- Hold Position;
- Close Distance.

Orders change deterministic priority/constraints only; they cannot bypass target-part, terrain, cover, equipment, AP/Stamina or knowledge legality.

Companion reactions are deterministic and consume that companion's own RP/Stamina.

Absent companions do not teleport into combat. Late entrants use Initiative's next-round rule.

`SOLO_PARTY_BASELINE_RECORDED = YES`
`PARTY_RUNTIME_IMPLEMENTED = NO`
`PARTY_RUNTIME_VERIFIED = NO`

## Monster 01 combat content — RECORDED

Normal attack authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Berserk authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Normal attacks:
Horn Charge / Head Sweep-Gore / Shoulder Ram / Foreleg Stomp / Tail Sweep.

Berserk:
- deterministic desperation entry;
- explicit Core Energy/strain drain;
- bounded AP discounts to existing anatomy-legal attacks;
- no extra normal activation/second damaging attack/anatomy restoration;
- critical exit/death boundaries.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`

## Current game-development sequence

Completed:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet → Monster 01 Berserk Prototype → Solo/Party Baseline`.

Next:
`DEFEAT_RETREAT_BASELINE_CONTRACT`
→ production implementation after prerequisite engine/domain gates.

## Documentation/navigation discipline

The repository must answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

Navigation:
- root README — human front door;
- `docs/README.md` — placement law;
- package README — local map;
- `DOCUMENTATION_INDEX.md` — global map;
- `docs/70_handoff/` — bounded-pass records;
- this + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`SOLO_PARTY_BASELINE_RECORDED = YES`
`PARTY_RUNTIME_IMPLEMENTED = NO`
`COMBAT_DESIGN_READINESS = PARTIAL / EIGHT_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = DEFEAT_RETREAT_BASELINE_CONTRACT`
