# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH PERSISTENCE RECORDED / WORLD COORDINATES + DIMENSIONS NEXT
Last reconciled: 2026-09-03

This repository area belongs to the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## Main game goal

The game connects three playable layers:
1. walkable Settlement 01 for preparation, services, crafting, research and recovery;
2. elevated angled aerial wilderness exploration for tracking one persistent Monster through Region 01;
3. first-person turn-based tactical combat at the same physical encounter, with movement, cover, defense, attack and anatomy-targeting choices.

Core loop:
`PREPARE -> LEAVE SETTLEMENT -> ENTER REGION -> TRACK -> OBSERVE -> ENGAGE -> POSITION -> TARGET ANATOMY -> BREAK/SEVER -> MONSTER ESCAPES OR FALLS -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> PHYSICAL SMITH -> CRAFT/EQUIP -> SAVE/RELOAD -> PREPARE AGAIN`.

Primary law:
**documentation exists to keep the game coherent; the game is the objective.**

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. this README
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Where is what

```text
docs/
├── 00_project/   governance/readiness
├── 10_world/     world/settlements/regions/spatial packages
├── 20_gameplay/  combat/harvest/inventory/crafting/progression
├── 30_content/   hunters/monsters/content packets
├── 40_art/       reference/model/runtime asset pipeline
├── 50_technical/ engine/Android/architecture/persistence
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity records
```

Global map: `DOCUMENTATION_INDEX.md`.
Documentation placement rules: `docs/README.md`.
Settlement 01 front door: `docs/10_world/settlements/SETTLEMENT_01/README.md`.
Region 01 front door: `docs/10_world/regions/REGION_01/README.md`.
Combat front door: `docs/20_gameplay/combat/README.md`.
Harvest front door: `docs/20_gameplay/harvest/README.md`.
Inventory front door: `docs/20_gameplay/inventory/README.md`.
Crafting front door: `docs/20_gameplay/crafting/README.md`.
Persistence front door: `docs/50_technical/persistence/README.md`.
Monster 01 front door: `docs/30_content/monsters/MONSTER_01/README.md`.

Every substantial pass must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Current Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Verified automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct Galaxy A03s regression + sustained 24-minute run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Recorded first-slice game chain

Combat baseline: nine reusable contracts through Defeat/Retreat.

Monster 01: Mudcrest Raker anatomy, attacks, Berserk, deterministic Region use/escape and finite material packet.

Harvest: finite anatomy-derived capacity, deterministic condition/quality/extraction, persistent source depletion.

Inventory: Recovery Bundles, player material stacks, quality/provenance conservation and idempotent transfers.

Craft/equip:
`recipe_field_poleblade_raker_tendon_grip`
consumes 2 HIGH tail tendon + 2 STANDARD-or-better hide and applies `refinement_field_poleblade_raker_tendon_grip` to a compatible Field Poleblade.

Effect:
Placed Hew Stamina `18 -> 16` through one typed `COST_MODIFIER`; no AP/damage/Initiative/extra-turn bonus.

Settlement Smith:
physical workbench in Settlement 01 Craft/Processing Quarter on the Hunter Service Loop; future graybox target `Hunter Gate -> Smith <=25 seconds` normal walk; normal essential service does not depend on one NPC schedule.

Persistence:
`docs/50_technical/persistence/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md`.

Selected save model:
- `UHR_SAVE_SCHEMA_1`, version 1;
- one first-slice slot `save_slot_01`;
- committed generation snapshots at persistence-safe boundaries;
- active combat save at stable decision/reaction points;
- exact scheduler/Monster/anatomy/Core/harvest/Inventory/craft/refinement state survives reload;
- transaction replay/duplicate actors/materials/refinements are forbidden;
- presentation reconstructs from domain truth.

No production combat/harvest/inventory/crafting/Smith/persistence implementation is claimed.

## World scale and next spatial build step

Current world authority already selects:
`1 world unit = 1 meter` as the preferred measurement convention.

Existing prototype ranges include:
- baseline Hunter ~1.75–1.80 m;
- Monster 01 ~6.6 m long / ~3.0 m shoulder-body height;
- Settlement 01 roughly 180–320 m characteristic extent in global guidance, with its more specific blueprint targeting approximately 220–280 m by 160–230 m;
- Region 01 sectors roughly 100–180 m characteristic spans in the local package;
- first-person encounter footprints generally tens of meters, roughly 30–90 m across as a starting range;
- workshop/smith building guide roughly 10–20 m × 12–28 m.

These are not yet a coherent coordinate map.

The exact next bounded game-design action is therefore:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.

That pass will assign a documented axis/origin convention, prototype Settlement/Region bounds and stable coordinates/anchors while marking them as prototype graybox targets until engine/phone evidence validates them.

## Saved finished-game visual concept

Google Drive project folder:
`Unnamed Hunt RPG`.

Saved reference:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive file ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics, dimensions, coordinates, collision and runtime evidence remain authoritative.

## Planned bounded sequence

Completed through:
`Combat -> Monster 01 -> Defeat/Retreat -> Harvest -> Inventory -> Craft/Equip -> Physical Smith -> Persistence`.

Current next independent game-design action:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.