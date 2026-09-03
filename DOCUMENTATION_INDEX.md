# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / MONSTER 01 NORMAL ATTACK PACKET RECORDED / BERSERK NEXT
Last reconciled: 2026-09-03

## Purpose

Map authority, ownership, readiness, verification lineage and read order so the project can be reconstructed from repository evidence instead of chat memory.

The repository must answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

# 1. Mandatory read order

1. `EVOLVE_ALIGNMENT.md` — operating contract + exact next actions.
2. `PROJECT_HANDOFF.md` — current project snapshot.
3. `START_HERE_NEW_CHAT.md` — reconstruction guide.
4. `DOCUMENTATION_INDEX.md` — this global map.
5. root `README.md` — game/main-goal front door.
6. `docs/README.md` — placement/package rules.
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md` — readiness gates.
8. newest relevant `docs/70_handoff/` record.
9. exact owning package/README/source/tests.

Mandatory law: read current EVOLVE before every bounded pass.

# 2. Stage-1 engine/Android authorities

Primary:
- `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`;
- `probes/android_stage1/README.md`;
- `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`;
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
- `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- Stage-1 handoffs in `docs/70_handoff/`.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Current automated protocol revision:
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

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

# 3. World/spatial authorities

- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- `docs/10_world/README.md`;
- `docs/10_world/regions/REGION_01/README.md`;
- Region 01 topology/tracking/terrain/encounter/streaming/reference/acceptance files.

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale: `1 world unit = 1 meter`.

Region 01 first combat footprints:
- Riverbank Ford;
- Meadow Edge;
- Root/Boulder Hollow;
- Deep Nest Shelf.

# 4. Generic gameplay/combat authorities

Gameplay front door:
`docs/20_gameplay/README.md`.

Combat front door:
`docs/20_gameplay/combat/README.md`.

Seven generic combat contracts:
1. `ACTION_ECONOMY_CONTRACT.md`;
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Generic baseline:
- 4 AP / 1 RP / persistent Stamina;
- deterministic contact/defense/hit quality;
- Field Poleblade;
- normalized 100-point Stamina reference;
- deterministic Initiative/no random opener;
- one normal activation max per eligible actor/round;
- Bleeding/Staggered/Off-Balance/Braced/Guarded;
- Stable/Rough/Shallow Water/Mud;
- Brush/High Ground/Narrow;
- no independent terrain/status RNG layers.

These files own reusable mechanics, not one monster's attack list.

# 5. Content authorities

Content front door:
`docs/30_content/README.md`.

## Hunter Base 01
`docs/30_content/hunters/HUNTER_BASE_01/README.md` and package files.

## Monster 01 — Mudcrest Raker
Front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Current authorities:
- `ANATOMY_AND_DAMAGE.md`;
- `COMBAT_ATTACK_PACKET.md` — newest Monster 01 content authority;
- `BEHAVIOR_AND_REGION.md`;
- `CRYSTAL_AND_MUTATION.md`.

Normal attacks:
- `M01_HORN_CHARGE` — 4 AP / 30 Stamina;
- `M01_HEAD_SWEEP_GORE` — 2 / 14;
- `M01_SHOULDER_RAM` — 3 / 22;
- `M01_FORELEG_STOMP` — 2 / 12;
- `M01_TAIL_SWEEP` — 3 / 18.

Monster 01 attack laws:
- internal 4-AP budget;
- max one damaging attack per activation;
- anatomy gates attack legality;
- no separate status-proc RNG;
- normal attacks do not consume Crystal Energy by default;
- behavior may select only legal packet attacks;
- physical cover/clearance remains authoritative.

Specialized handoff:
`docs/70_handoff/MONSTER_01_COMBAT_ATTACK_PACKET_PASS_2026-09-03.md`.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`

# 6. Architecture/code authorities

- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`;
- `CODE_GUIDE.md`;
- `CONTENT_DATA_GUIDE.md`;
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `BEHAVIOR_PATTERN_SYSTEM.md`;
- `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `docs/50_technical/README.md`.

# 7. Art/asset authorities

- `docs/40_art/README.md`;
- `docs/40_art/asset_pipeline/README.md`;
- lineage/approval, raster/zoom, runtime asset, PNG→3D, QA and Hunter blockout standards;
- `docs/40_art/reviews/README.md`.

# 8. Quality/performance authorities

- `TESTING_VERIFICATION_PLAN.md`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `ADMIN_CREATOR_SYSTEM.md`;
- `docs/60_quality/README.md`;
- Stage-1 test/performance protocols.

# 9. Continuity/handoff authorities

Newest relevant game-design records:
- `docs/70_handoff/MONSTER_01_COMBAT_ATTACK_PACKET_PASS_2026-09-03.md`;
- `docs/70_handoff/FIRST_SLICE_TERRAIN_EFFECT_SET_PASS_2026-09-03.md`;
- `docs/70_handoff/FIRST_SLICE_STATUS_SET_PASS_2026-09-03.md`;
- `docs/70_handoff/INITIATIVE_AND_TURN_ORDER_PASS_2026-09-03.md`.

Stage-1 handoffs remain under the same folder and are separate from content design verification.

# 10. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Completed design sequence:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet`.

Current active non-phone action:
`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`.

Then:
`SOLO/PARTY BASELINE → DEFEAT/RETREAT BASELINE → production implementation after prerequisite gates`.

# 11. Documentation placement law

- root README — main game/front door;
- `docs/README.md` — placement/package rules;
- package README — local file map;
- generic mechanics — owning gameplay contracts;
- species-specific attack/behavior/Crystal configuration — species content package;
- `docs/70_handoff/` — bounded-pass records;
- this index — global discovery/read order;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.

An important authority not discoverable from its local README or this index is incompletely integrated documentation.