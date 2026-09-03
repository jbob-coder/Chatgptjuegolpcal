# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

This is the new Android-targeted monster-hunting tactical RPG. WorldLife is abandoned and must not be resumed unless a current repository authority explicitly preserves a specific item.

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
8. newest relevant `docs/70_handoff/` record;
9. owning package/README/source/tests.

Do not reconstruct current state from old chat memory when current repository evidence exists.

## Main working rule

The game is the objective.

Documentation exists to preserve:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

## Current engine/Android phase

Stage 1 automated foundation is advanced, but direct Galaxy A03s evidence is still required.

Candidate:
- Godot 4.7 family;
- CI Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s;
- stable 30 FPS representative-scene minimum target.

Current automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow `33811355891`: SUCCESS.

Automated gates:
`154/154 static`, `8/8 Monster collision`, `12/12 boundary`, `17/17 view continuity`, `47/47 lifecycle`, `20/20 performance telemetry`, Godot parse/smoke PASS, Android export/APK integrity/artifact upload PASS.

Current inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct phone regression + 24-minute sustained run remain unexecuted.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Combat design package

Read `docs/20_gameplay/combat/README.md`.

Seven recorded authorities:
1. Action Economy;
2. Combat Resolution / Hit Quality / Defense;
3. Field Poleblade;
4. Stamina Prototype;
5. Initiative / Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set.

### Terrain prototype now recorded

Authority:
`docs/20_gameplay/combat/FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Pass record:
`docs/70_handoff/FIRST_SLICE_TERRAIN_EFFECT_SET_PASS_2026-09-03.md`.

Primary surfaces:
- Stable Ground;
- Rough Ground;
- Shallow Water;
- Mud.

Context tags:
- Brush;
- High Ground;
- Narrow.

Terrain Stamina surcharges:
- Stable: move +0 / Sprint +0 / Dodge +0;
- Rough: +1 / +2 / +2;
- Shallow Water: +2 / +4 / +3;
- Mud: +3 / +5 / +4.

Hard rules:
- one effective primary surface controls movement surcharge;
- Dodge uses max(origin,destination) terrain surcharge;
- no terrain random-slip roll;
- forced displacement does not charge voluntary terrain movement Stamina;
- Brush affects visibility, not physical cover/armor;
- High Ground has no generic damage or Initiative bonus;
- Narrow controls physical clearance/adjacency;
- terrain does not auto-apply status or reorder Initiative.

No combat runtime is claimed.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`.

## Region/content anchors

Region 01 footprint proof mapping:
- Riverbank Ford → Stable/Mud/Shallow Water;
- Meadow Edge → Stable + Brush;
- Root/Boulder Hollow → Rough + Brush + Narrow;
- Deep Nest Shelf → Stable/Rough + High Ground/Narrow where geometry warrants.

Physical boulders/roots/logs/banks remain Combat Resolution cover, not invisible terrain cover.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs; severable distal tail; internal crystal.

## Planned design sequence

`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Attack Packet → Berserk → Solo/Party → Defeat/Retreat`.

Completed through Terrain Set.

## Exact continuation

Implementation action when phone exists:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`.

That pass must define only Monster 01's minimum legal attack packet: required anatomy/capabilities, range/bearing, commitments, telegraphs, legal reactions, status consequences, terrain/cover constraints and guard-impact behavior.

Do not combine it with berserk, party design, defeat/retreat behavior or production implementation.