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

## Generic combat foundation

Seven reusable contracts are recorded:
Action Economy / Combat Resolution / Field Poleblade / Stamina / Initiative / Status Set / Terrain Set.

They define shared mechanics. Monster-specific attacks and Berserk values belong in Monster 01's content package.

## Monster 01 — Mudcrest Raker

Read in this order when relevant:
1. `docs/30_content/monsters/MONSTER_01/README.md`;
2. `ANATOMY_AND_DAMAGE.md`;
3. `COMBAT_ATTACK_PACKET.md`;
4. `BERSERK_PROTOTYPE_CONTRACT.md`;
5. `BEHAVIOR_AND_REGION.md`;
6. `CRYSTAL_AND_MUTATION.md`.

Normal attacks:
- Horn Charge 4 AP / 30 Stamina;
- Head Sweep/Gore 2 / 14;
- Shoulder Ram 3 / 22;
- Foreleg Stomp 2 / 12;
- Tail Sweep 3 / 18.

Normal laws:
- internal 4 AP;
- max one damaging attack;
- anatomy/terrain/cover legality authoritative;
- normal attacks do not spend Crystal Energy;
- behavior chooses only legal attacks.

### Berserk now recorded

Authority:
`BERSERK_PROTOTYPE_CONTRACT.md`.

Entry:
- one episode/hunt until explicit ecological reset;
- Energy >20% and <=60%;
- plus Retreat Denied, Nest Defense or Severe Anatomy;
- Severe Anatomy requires at least two major capability losses;
- no HP-only/random trigger.

Transition:
- full activation;
- no attack same activation;
- 10% Max Core Energy;
- +20 strain;
- visible telegraph.

Active:
- each later activation 5% Max Core Energy +10 strain;
- attack Core surcharges 5/2/4/2/3% for Charge/Head/Ram/Stomp/Tail;
- Berserk AP 3/2/2/2/2;
- Stamina unchanged;
- still max one damaging attack;
- no extra turns/reaction removal/anatomy restoration.

Critical:
`Energy <=12% OR strain >=80`.

Critical + legal retreat + no active Nest Defense exits to `EXHAUSTED_CRITICAL`; otherwise the monster may continue burning life force. Zero Core Energy means death.

Pass record:
`docs/70_handoff/MONSTER_01_BERSERK_PROTOTYPE_PASS_2026-09-03.md`.

No combat runtime is claimed.

## Current planned sequence

Completed:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet → Monster 01 Berserk Prototype`.

Next:
`SOLO_PARTY_BASELINE_CONTRACT`
→ `DEFEAT_RETREAT_BASELINE_CONTRACT`
→ implementation after prerequisite engine/domain gates.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`SOLO_PARTY_BASELINE_CONTRACT`.

That pass must define only first-slice solo-vs-party participation, control authority, party-size assumptions and scheduler/turn ownership.

Do not combine it with defeat/retreat resolution or production implementation.