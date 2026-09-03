# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / MONSTER 01 NORMAL ATTACK + BERSERK PACKETS RECORDED / SOLO-PARTY BASELINE NEXT
Last reconciled: 2026-09-03

This repository area belongs to the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. walkable settlement/hub for preparation, services, crafting, research and recovery;
2. elevated angled aerial wilderness exploration for tracking and persistent monster hunting;
3. first-person turn-based tactical combat from the same physical encounter, with explicit movement, cover, defense, attack and anatomy-targeting decisions.

Core hunt loop:
`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN → PROCESS → CRAFT/EQUIP/RESEARCH`.

Primary law:
**documentation exists to keep the game coherent; the game is the objective.**

## 2. Mandatory read order

Before bounded work read:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. this README;
6. `docs/README.md`;
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
8. newest relevant `docs/70_handoff/`;
9. owning package/README/source/tests.

## 3. Where is what

```text
docs/
├── 00_project/   governance/readiness
├── 10_world/     world/regions/spatial packages
├── 20_gameplay/  reusable gameplay/combat/progression rules
├── 30_content/   hunters/monsters/content packages
├── 40_art/       reference/model/runtime asset pipeline
├── 50_technical/ engine/Android/architecture
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity records
```

Global map: `DOCUMENTATION_INDEX.md`.
Documentation placement rules: `docs/README.md`.
Combat front door: `docs/20_gameplay/combat/README.md`.
Monster 01 front door: `docs/30_content/monsters/MONSTER_01/README.md`.

Every substantial pass must answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

## 4. Current Stage-1 engine/device state

Candidate:
- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Verified automated gates:
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

Direct Galaxy A03s regression and 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## 5. Generic combat foundation

Seven reusable contracts are recorded:
1. Action Economy;
2. Combat Resolution / Hit Quality / Defense;
3. Field Poleblade;
4. Stamina;
5. Initiative / Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set.

Reusable baseline:
- 4 AP / 1 RP / persistent Stamina;
- deterministic contact/defense/hit-quality pipeline;
- no random Initiative opener;
- one normal activation max per eligible actor/round;
- Bleeding/Staggered/Off-Balance/Braced/Guarded;
- Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow;
- no independent terrain/status RNG layers.

## 6. Monster 01 — normal combat + Berserk

Monster 01: Mudcrest Raker.

Normal attack authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Berserk authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Normal attacks:
- Horn Charge — 4 AP / 30 Stamina;
- Head Sweep/Gore — 2 / 14;
- Shoulder Ram — 3 / 22;
- Foreleg Stomp — 2 / 12;
- Tail Sweep — 3 / 18.

Normal-combat laws:
- one normal activation/round;
- internal 4-AP budget;
- max one damaging attack/activation;
- anatomy loss disables/changes dependent attacks;
- authoritative telegraph/reaction windows;
- no separate status-proc RNG;
- normal attacks do not spend Crystal Energy by default.

### Berserk first-slice rules

Entry requires:
- Core Energy ratio `>20%` and `<=60%`;
- Berserk not already active/used in this hunt;
- at least one deterministic desperation pressure: Retreat Denied, Nest Defense, or Severe Anatomy;
- Severe Anatomy = at least two major capability-loss facts.

Entry transition:
- consumes full 4-AP activation;
- no attack same activation;
- costs 10% Max Core Energy;
- adds +20 Core Strain;
- visibly telegraphed.

Every later active Berserk activation:
- costs 5% Max Core Energy;
- adds +10 strain.

Berserk attack Core surcharges:
- Charge 5%; Head 2%; Ram 4%; Stomp 2%; Tail 3%.

Berserk AP:
- Charge 3; Head 2; Ram 2; Stomp 2; Tail 2.

Existing Stamina costs remain unchanged.

Berserk does not:
- grant a second damaging attack;
- grant extra turns or reroll Initiative;
- remove reaction windows;
- restore broken/severed anatomy;
- bypass cover/terrain/range/bearing/status legality.

Critical state:
`Energy <=12% OR Core Strain >=80`.

If critical + legal retreat + no active Nest Defense, Berserk ends to `EXHAUSTED_CRITICAL`. Otherwise it may continue spending life force until zero Energy, which means immediate death.

Berserk pass handoff:
`docs/70_handoff/MONSTER_01_BERSERK_PROTOTYPE_PASS_2026-09-03.md`.

No combat runtime is claimed.

## 7. World/content anchors

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale: `1 world unit = 1 meter`.

Region 01 proof footprints:
Riverbank Ford / Meadow Edge / Root-Boulder Hollow / Deep Nest Shelf.

Monster 01 prototype:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs; severable distal tail; internal Crystal core.

## 8. Planned bounded sequence

Completed:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet → Monster 01 Berserk Prototype`.

Next:
`SOLO_PARTY_BASELINE_CONTRACT`
→ `DEFEAT_RETREAT_BASELINE_CONTRACT`
→ production implementation only after prerequisite engine/domain gates.

## 9. Exact continuation

Implementation action when device evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`SOLO_PARTY_BASELINE_CONTRACT`.

Keep it limited to first-slice solo-vs-party participation, control authority, party-size assumptions and turn/scheduler ownership. Do not combine it with defeat/retreat resolution or production implementation.