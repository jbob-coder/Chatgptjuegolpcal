# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / SOLO-PARTY BASELINE RECORDED / DEFEAT-RETREAT NEXT
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
8. newest relevant `docs/70_handoff/`.
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
- Stage-1 handoffs under `docs/70_handoff/`.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

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
- `docs/10_world/regions/REGION_01/README.md` and local topology/tracking/terrain/encounter/streaming/reference/acceptance files.

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale: `1 world unit = 1 meter`.

# 4. Generic gameplay/combat authorities

Gameplay front door:
`docs/20_gameplay/README.md`.

Combat front door:
`docs/20_gameplay/combat/README.md`.

Eight generic first-slice combat contracts:
1. `ACTION_ECONOMY_CONTRACT.md`;
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`;
8. `SOLO_PARTY_BASELINE_CONTRACT.md` — newest generic combat authority.

Generic baseline:
4 AP / 1 RP / persistent Stamina; deterministic contact/defense/hit quality; Field Poleblade; deterministic Initiative; one normal activation max; five-state status packet; four primary terrain surfaces + Brush/High Ground/Narrow; solo-capable optional companions with deterministic command/behavior ownership.

## Solo / party baseline

Authority:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Handoff:
`docs/70_handoff/SOLO_PARTY_BASELINE_PASS_2026-09-03.md`.

Selected:
- solo-capable with optional companions;
- first-slice active party cap = 3 hunters;
- player directly controls only their hunter;
- no shared AP/RP/Stamina;
- same Initiative scheduler for all combatants;
- no automatic allied-turn grouping;
- companions use deterministic authored behavior;
- mid-combat order action = player 1 AP, max one successful order action per player activation;
- orders = Standard / Focus Part / Hold Position / Close Distance;
- companion reactions consume their own RP/Stamina;
- absent companions do not teleport into encounter;
- late entrants wait until next round;
- defeat/retreat/revive/reward sharing remain outside this contract.

Older open `solo/party` placeholders in root planning/behavior docs are superseded within this scope by this newer specific authority.

`SOLO_PARTY_BASELINE_RECORDED = YES`
`PARTY_RUNTIME_IMPLEMENTED = NO`

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
- `COMBAT_ATTACK_PACKET.md`;
- `BERSERK_PROTOTYPE_CONTRACT.md`;
- `BEHAVIOR_AND_REGION.md`;
- `CRYSTAL_AND_MUTATION.md`.

Normal attacks:
Horn Charge / Head Sweep-Gore / Shoulder Ram / Foreleg Stomp / Tail Sweep.

Berserk:
- deterministic desperation entry;
- explicit Core Energy/strain costs;
- bounded AP discounts to existing anatomy-legal attacks;
- no extra turn/second attack/anatomy restoration;
- critical exit/zero-Energy death.

Specialized handoffs:
- `docs/70_handoff/MONSTER_01_COMBAT_ATTACK_PACKET_PASS_2026-09-03.md`;
- `docs/70_handoff/MONSTER_01_BERSERK_PROTOTYPE_PASS_2026-09-03.md`.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`MONSTER_01_COMBAT_RUNTIME_IMPLEMENTED = NO`

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

# 9. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Completed design sequence:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet → Monster 01 Berserk Prototype → Solo/Party Baseline`.

Current active non-phone action:
`DEFEAT_RETREAT_BASELINE_CONTRACT`.

Then:
`production implementation after prerequisite gates`.

# 10. Documentation placement law

- root README — main game/front door;
- `docs/README.md` — placement/package rules;
- package README — local map;
- generic mechanics — owning gameplay contracts;
- species-specific attack/Berserk/behavior/Crystal configuration — species content package;
- `docs/70_handoff/` — bounded-pass records;
- this index — global discovery/read order;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.

An important authority not discoverable from its local README or this index is incompletely integrated documentation.
