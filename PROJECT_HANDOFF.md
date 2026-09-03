# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / MONSTER 01 NORMAL ATTACK PACKET RECORDED / BERSERK NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`.

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

For the next berserk pass additionally read:
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `COMBAT_ATTACK_PACKET.md`;
- `CRYSTAL_AND_MUTATION.md`;
- `BEHAVIOR_AND_REGION.md`;
- `ANATOMY_AND_DAMAGE.md`;
- generic Crystal/behavior/combat authorities required by the bounded piece.

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
- static `154/154`;
- Monster collision `8/8`;
- boundary `12/12`;
- view continuity `17/17`;
- lifecycle `47/47`;
- performance telemetry `20/20`;
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

Package:
`docs/30_content/monsters/MONSTER_01/`.

Authority:
`COMBAT_ATTACK_PACKET.md`.

Specialized handoff:
`docs/70_handoff/MONSTER_01_COMBAT_ATTACK_PACKET_PASS_2026-09-03.md`.

Selected normal attacks:
- `M01_HORN_CHARGE` — 4 AP / 30 Stamina;
- `M01_HEAD_SWEEP_GORE` — 2 / 14;
- `M01_SHOULDER_RAM` — 3 / 22;
- `M01_FORELEG_STOMP` — 2 / 12;
- `M01_TAIL_SWEEP` — 3 / 18.

Selected first-slice Monster 01 attack invariants:
- one normal activation per round;
- internal 4-AP budget;
- max one damaging attack per activation;
- all five attacks telegraphed/reactable;
- attack legality uses current anatomy/range/bearing/clearance/cover;
- no animation/UI can re-enable an illegal attack;
- no separate random status-proc roll;
- normal attacks do not spend Crystal Energy by default;
- same authoritative state/seed/action sequence must reproduce resolution.

Anatomy effects:
- full Horn Charge requires intact full horn/forequarter capability;
- both horns broken convert Head Sweep/Gore to impact-only Head Sweep;
- severe forequarter support loss removes full Charge/Ram as defined;
- damaged selected foreleg removes that side's Stomp;
- distal tail sever removes Tail Sweep.

Reaction highlights:
- Horn Charge: Dodge/Reactive Brace; normal Poleblade Block/Parry incompatible;
- Head Sweep/Gore: compatible Block, limited compatible Parry; impact drain 10;
- Shoulder Ram: Dodge/Brace; only conditional Braced+Guarded Block; impact drain 18;
- Foreleg Stomp: Dodge/Brace; normal Block/Parry incompatible;
- Tail Sweep: compatible Dodge/Block/Parry/Brace; impact drain 14.

Status requests are deterministic consequences after contact/protection/anatomy resolution and remain owned by the generic status system.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`
`MONSTER_01_ATTACK_RUNTIME_VERIFIED = NO`

## Behavior ownership

`COMBAT_ATTACK_PACKET.md` owns legal attack definitions.
`BEHAVIOR_AND_REGION.md` owns deterministic selection from the legal candidate set.

Behavior cannot select a disabled attack and no runtime generative AI is used.

## Current game-development sequence

Completed:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet`.

Next:
`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`
→ `SOLO/PARTY BASELINE`
→ `DEFEAT/RETREAT BASELINE`
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
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS + MONSTER_01_ATTACK_PACKET_RECORDED`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`