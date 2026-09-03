# Unnamed Hunt RPG

Status: STAGE 1 ENGINE/ANDROID PHONE GATE DEFERRED / SEVEN CORE COMBAT CONTRACTS RECORDED / MONSTER 01 ATTACK PACKET NEXT
Last reconciled: 2026-09-03

This repository area belongs to a completely new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. **Walkable settlement / hub** — preparation, services, crafting, research, deterministic NPC schedules and recovery.
2. **Elevated angled aerial wilderness exploration** — physically traversed hunting regions with tracking and persistent monsters.
3. **First-person turn-based tactical combat** — battle starts from the same physical encounter and gives explicit movement, cover, defense, attack, anatomy-targeting and commitment choices.

Core hunt loop:
`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN → PROCESS → CRAFT/EQUIP/RESEARCH`.

Primary law:
**the game is the objective; documentation exists to keep implementation/design/QA coherent.**

## 2. Mandatory read order

Before bounded work read:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. this README;
6. `docs/README.md`;
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
8. newest relevant `docs/70_handoff/` record;
9. owning package/README/source/tests.

Do not reconstruct current state from old chat memory when repository evidence exists.

## 3. Where is what

```text
docs/
├── 00_project/   governance/readiness/dependency gates
├── 10_world/     world/settlements/regions/spatial packages
├── 20_gameplay/  reusable mechanics/progression/combat contracts
├── 30_content/   hunters/monsters/equipment/content packages
├── 40_art/       art/model/runtime asset pipeline and QA
├── 50_technical/ engine/Android/architecture/build mapping
├── 60_quality/   testing/performance/debug/admin guidance
└── 70_handoff/   bounded-pass continuity/verification records
```

Global map: `DOCUMENTATION_INDEX.md`.
Documentation rules: `docs/README.md`.
Stage-1 probe: `probes/android_stage1/README.md`.
Gameplay: `docs/20_gameplay/README.md`.
Combat: `docs/20_gameplay/combat/README.md`.

Every durable pass must answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

## 4. Current Stage-1 engine/device state

Candidate:
- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

Current automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow `33811355891`: SUCCESS.

Automated evidence:
- protected static `154/154`;
- Monster collision `8/8`;
- boundary `12/12`;
- Godot parse/smoke PASS;
- aerial↔first-person `17/17`;
- lifecycle transient input `47/47`;
- performance telemetry `20/20`;
- Android export/APK integrity/artifact upload PASS.

Current inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct Galaxy A03s regression + 24-minute sustained-performance run remain unexecuted.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Phone action when available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## 5. Combat foundation — seven recorded contracts

Package:
`docs/20_gameplay/combat/`.

1. Action Economy — 4 AP / 1 RP / persistent Stamina / no AP banking / one normal activation max per eligible actor-round.
2. Combat Resolution — deterministic legality/context, body-part contact, directional cover, bounded seeded variance, `MISS/GRAZE/SOLID/CLEAN/PRECISION`.
3. First Weapon — `WEAPON_FAMILY_FIELD_POLEBLADE`.
4. Stamina — neutral Max 100, passive +10, delayed Catch Breath, explicit exertion costs.
5. Initiative — `(2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier`, no random opener, deterministic scheduler.
6. Status Set — `Bleeding / Staggered / Off-Balance / Braced / Guarded`, no independent status-proc RNG.
7. Terrain Effect Set — `Stable / Rough / Shallow Water / Mud` plus `Brush / High Ground / Narrow`.

Terrain prototype surcharges:
- Stable: Move +0 / Sprint +0 / Dodge +0 Stamina;
- Rough: +1 / +2 / +2;
- Shallow Water: +2 / +4 / +3;
- Mud: +3 / +5 / +4.

Terrain laws:
- one effective primary surface controls cost;
- Dodge uses max(origin,destination) surcharge;
- no terrain random-slip roll;
- Brush is visibility, not invisible physical cover;
- High Ground has no generic damage/Initiative bonus;
- Narrow controls physical clearance/adjacency;
- terrain does not auto-apply status or reorder Initiative.

Terrain authority:
`docs/20_gameplay/combat/FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Terrain pass record:
`docs/70_handoff/FIRST_SLICE_TERRAIN_EFFECT_SET_PASS_2026-09-03.md`.

No combat runtime is claimed.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`.

## 6. Region/content anchors

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale: `1 world unit = 1 meter`.

Region 01 first combat footprints:
- Riverbank Ford;
- Meadow Edge;
- Root/Boulder Hollow;
- Deep Nest Shelf.

Hunter Base 01: 1.75 m reusable prototype human scale.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs; severable distal tail; internal crystal.

Primary attributes:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Progression:
equipment + mastery + knowledge weighted.

## 7. Planned bounded sequence

`TERRAIN EFFECT SET = RECORDED`
→ `MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`
→ `FIRST BERSERK PROTOTYPE`
→ `SOLO/PARTY BASELINE`
→ `DEFEAT/RETREAT BASELINE`
→ production implementation after prerequisite engine/domain gates.

The sequence changes only when verified dependency evidence justifies it.

## 8. Exact current continuation

Active non-phone action:
`MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`.

That pass must define only Monster 01's minimal legal combat attacks: required anatomy/capabilities, range/bearing, action commitment, telegraphs, legal reactions, status consequences, terrain/cover constraints and guard-impact behavior.

Do not combine it with berserk, party design, defeat/retreat behavior or production implementation.

## 9. Quality/documentation loop

`READ EVOLVE → READ CURRENT STATE → VERIFY → ONE SMALL PIECE → IDENTIFY OWNER/GATE → IMPLEMENT/DOCUMENT → TEST/REVIEW → REGRESSION CHECK → FIX → UPDATE OWNER/README/INDEX/HANDOFF → COMMIT → READ BACK → MARK STATUS → RECORD NEXT`.

Never claim phone runtime, sustained performance, combat runtime or production readiness without the evidence required by that gate.