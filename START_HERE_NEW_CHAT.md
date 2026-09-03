# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

This is the new Android-targeted monster-hunting tactical RPG. WorldLife is abandoned and must not be resumed unless a current repository authority explicitly preserves something.

Working name: `Unnamed Hunt RPG`.

## Mandatory first read

Before every bounded pass:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. this file;
4. `DOCUMENTATION_INDEX.md`;
5. root `README.md`;
6. `docs/README.md`;
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
8. newest relevant `docs/70_handoff/`;
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Main working rule

The game is the objective.

Documentation must preserve:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

## Current engine/Android phase

Stage-1 automated foundation is advanced, but direct Galaxy A03s evidence remains required.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Phone regression + 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Combat/gameplay foundation

Eight generic first-slice contracts are recorded:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative / Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set;
8. Solo / Party Baseline.

## Solo / party baseline

Read:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Selected:
- first slice is fully solo-capable with optional companions;
- maximum active hunting party = 3 hunters total;
- player + zero to two companions;
- no party-required core hunt;
- player directly controls only own hunter;
- no mid-combat body switching;
- each hunter owns independent AP/RP/Stamina/Health/status/position/equipment;
- all use same deterministic Initiative/RoundRoster;
- companions use authored deterministic behavior, not runtime generative AI;
- player can spend `1 AP` to issue one successful companion order per own activation;
- commands: Standard / Focus Part / Hold Position / Close Distance;
- companion reactions use their own RP/Stamina;
- absent companions do not teleport into combat;
- late entrants wait for next round.

Pass record:
`docs/70_handoff/SOLO_PARTY_BASELINE_PASS_2026-09-03.md`.

No party runtime is claimed.

## Monster 01 — Mudcrest Raker

Read in this order when relevant:
1. `docs/30_content/monsters/MONSTER_01/README.md`;
2. `ANATOMY_AND_DAMAGE.md`;
3. `COMBAT_ATTACK_PACKET.md`;
4. `BERSERK_PROTOTYPE_CONTRACT.md`;
5. `BEHAVIOR_AND_REGION.md`;
6. `CRYSTAL_AND_MUTATION.md`.

Normal attacks:
Horn Charge / Head Sweep-Gore / Shoulder Ram / Foreleg Stomp / Tail Sweep.

Berserk:
- deterministic desperation entry;
- Core Energy/strain costs;
- no extra turns/second damaging attack/anatomy restoration;
- critical exit/death rules.

No combat runtime is claimed.

## Current planned sequence

Completed:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet → Monster 01 Berserk Prototype → Solo/Party Baseline`.

Next:
`DEFEAT_RETREAT_BASELINE_CONTRACT`
→ implementation after prerequisite engine/domain gates.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`DEFEAT_RETREAT_BASELINE_CONTRACT`.

That pass must define only first-slice player/party defeat, monster defeat, voluntary retreat/escape, encounter termination, hunt continuation/failure and scheduler/persistence boundaries.

Do not combine it with reward/economy expansion, companion relationship systems or production implementation.
