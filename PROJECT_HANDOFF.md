# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / MONSTER 01 NORMAL ATTACK + BERSERK PACKETS RECORDED / SOLO-PARTY BASELINE NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`SOLO_PARTY_BASELINE_CONTRACT`.

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

For current combat/content work additionally read:
- `docs/20_gameplay/combat/README.md`;
- the seven generic combat contracts;
- `docs/30_content/monsters/MONSTER_01/README.md`;
- Monster 01 anatomy/attack/Berserk/behavior/Crystal authorities when relevant.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
- walkable settlement/hub;
- aerial wilderness tracking/exploration;
- first-person turn-based combat from the same physical encounter;
- explicit movement/cover/defense/attack/body-part choices;
- anatomy, terrain, preparation, break/sever and harvest quality matter;
- deterministic authored creature/NPC behavior.

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

## Generic combat foundation — seven contracts

1. Action Economy — 4 AP / 1 RP / persistent Stamina.
2. Combat Resolution — deterministic legality/contact/defense/hit quality.
3. First Weapon — Field Poleblade.
4. Stamina — normalized 100-point reference / +10 passive / Catch Breath / explicit costs.
5. Initiative — deterministic snapshot/no random opener/one normal activation max.
6. Status Set — Bleeding / Staggered / Off-Balance / Braced / Guarded.
7. Terrain Set — Stable / Rough / Shallow Water / Mud + Brush / High Ground / Narrow.

These are reusable system authorities.

## Monster 01 normal attack packet — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Selected attacks:
- Horn Charge 4 AP / 30 Stamina;
- Head Sweep/Gore 2 / 14;
- Shoulder Ram 3 / 22;
- Foreleg Stomp 2 / 12;
- Tail Sweep 3 / 18.

Hard laws:
- internal 4-AP budget;
- max one damaging attack/activation;
- anatomy/range/bearing/terrain/cover are hard legality;
- normal attacks do not spend Crystal Energy by default;
- no independent status RNG;
- behavior selects only currently legal attacks.

## Monster 01 Berserk prototype — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Specialized handoff:
`docs/70_handoff/MONSTER_01_BERSERK_PROTOTYPE_PASS_2026-09-03.md`.

Selected entry:
- one episode per hunt until explicit ecological recovery reset;
- Core Energy ratio `>20%` and `<=60%`;
- plus Retreat Denied, Nest Defense, or Severe Anatomy pressure;
- Severe Anatomy requires at least two major capability-loss facts;
- no HP-only/random trigger.

Entry transition:
- full 4-AP activation;
- no attack same activation;
- 10% Max Core Energy;
- +20 strain;
- visible telegraph.

Active cadence:
- each later Berserk activation: 5% Max Core Energy +10 strain;
- attack Core surcharge: Charge 5%, Head 2%, Ram 4%, Stomp 2%, Tail 3%;
- Berserk AP: Charge 3 / Head 2 / Ram 2 / Stomp 2 / Tail 2;
- existing Stamina costs unchanged.

Hard invariants:
- one normal activation/round;
- one damaging attack max/activation;
- no Initiative reroll/extra turn;
- attack reaction windows preserved;
- no anatomy repair;
- cover/terrain/status/range legality preserved;
- zero Core Energy means immediate death.

Critical exit:
`core_energy_ratio <= 0.12 OR core_strain >= 80`.

Critical + legal retreat + no active Nest Defense exits Berserk to `EXHAUSTED_CRITICAL`; otherwise the Raker may continue burning Core Energy toward death.

`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`MONSTER_01_BERSERK_RUNTIME_IMPLEMENTED = NO`
`MONSTER_01_BERSERK_RUNTIME_VERIFIED = NO`

## Behavior ownership

- `COMBAT_ATTACK_PACKET.md` owns normal attack legality/profile.
- `BERSERK_PROTOTYPE_CONTRACT.md` owns Berserk entry/drain/action modifiers/exit/death.
- `BEHAVIOR_AND_REGION.md` owns deterministic selection from legal candidates and Region 01 state/route use.

No runtime generative AI is used.

## Current game-development sequence

Completed:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet → Monster 01 Berserk Prototype`.

Next:
`SOLO_PARTY_BASELINE_CONTRACT`
→ `DEFEAT_RETREAT_BASELINE_CONTRACT`
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
`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = SOLO_PARTY_BASELINE_CONTRACT`