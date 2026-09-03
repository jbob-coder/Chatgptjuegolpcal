# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / COMBAT DESIGN BASELINE RECORDED / HARVEST BASELINE NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

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

For the next harvest pass additionally read:
- current anatomy/damage/harvest root authorities;
- Monster 01 `ANATOMY_AND_DAMAGE.md`;
- Combat Resolution and Defeat/Retreat outcome handoff;
- content/data/stats/effects ownership;
- any existing inventory/harvest/crafting authorities needed to preserve boundaries.

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
`FINAL_ENGINE_SELECTED = NO`.

## Generic combat foundation — nine contracts

1. Action Economy — 4 AP / 1 RP / persistent Stamina.
2. Combat Resolution — deterministic legality/contact/defense/hit quality.
3. First Weapon — Field Poleblade.
4. Stamina — normalized 100-point reference / +10 passive / Catch Breath / explicit costs.
5. Initiative — deterministic snapshot/no random opener/one normal activation max.
6. Status Set — Bleeding / Staggered / Off-Balance / Braced / Guarded.
7. Terrain Set — Stable / Rough / Shallow Water / Mud + Brush / High Ground / Narrow.
8. Solo / Party Baseline — solo-capable optional companions, max three active Hunters, deterministic companion control under same scheduler.
9. Defeat / Retreat Baseline — Downed/defeat, spatial withdrawal, Monster escape/death, terminal encounter/hunt-state ownership.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.

No combat runtime is claimed.

## Solo / party baseline — RECORDED

Authority:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Selected:
- solo-capable with optional companions;
- max three active Hunters;
- player directly controls own Hunter only;
- each Hunter owns separate resources/state;
- same deterministic scheduler;
- deterministic companion behavior/orders;
- no body switching or runtime generative AI.

## Defeat / retreat baseline — RECORDED

Authority:
`docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

Specialized handoff:
`docs/70_handoff/DEFEAT_RETREAT_BASELINE_PASS_2026-09-03.md`.

Selected Hunter rules:
- Health <=0 -> Downed, not permanent death;
- no in-combat revive;
- Downed actor cannot activate/react and loses future encounter slots;
- player Downed -> Hunter defeat after current resolution;
- companion Downed alone does not end encounter.

Selected retreat rules:
- escape is spatial/deterministic, not a random roll;
- `WITHDRAW_FROM_ENCOUNTER` = 1 AP from a legal world-connected escape node;
- party retreat declaration = player 1 AP;
- companions withdraw on their own scheduler turns/resources;
- player exits last after every non-Downed companion withdrew;
- successful Hunter withdrawal -> `HUNT_ACTIVE_DISENGAGED`.

Selected Monster rules:
- behavior owns retreat selection/route;
- Defeat/Retreat owns final Monster withdrawal completion;
- Monster escape -> `HUNT_ACTIVE_REACQUIRE`;
- same Monster instance/injuries/anatomy/Core/Berserk state persist;
- Monster death remains Crystal/body-terminal owned;
- final anatomy/part state is preserved for harvest;
- simultaneous Monster death + player Downed -> `MUTUAL_TERMINAL`.

Terminal encounter state stops scheduler advancement and cannot be reopened by UI/save reload.

`DEFEAT_RETREAT_BASELINE_RECORDED = YES`
`DEFEAT_RETREAT_RUNTIME_IMPLEMENTED = NO`
`DEFEAT_RETREAT_RUNTIME_VERIFIED = NO`.

## Monster 01 combat content — RECORDED

Normal attack authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Berserk authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Behavior/Region authority:
`docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`.

The Behavior file now explicitly hands final escape/outcome resolution to the generic Defeat/Retreat owner.

## Current game-development sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status Set -> Terrain Set -> Monster 01 Normal Attacks -> Monster 01 Berserk -> Solo/Party -> Defeat/Retreat`.

Next independent gameplay layer:
`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

Reason:
combat now records what physically happened to Monster anatomy; the next core-loop dependency must convert that surviving anatomy into bounded recoverable material without duplicating mass or loot.

## Documentation/navigation discipline

The repository must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

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
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`DEFEAT_RETREAT_BASELINE_RECORDED = YES`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.