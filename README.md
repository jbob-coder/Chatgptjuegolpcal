# Unnamed Hunt RPG

Status: STAGE 1 ENGINE/ANDROID PROBE / PERFORMANCE MEASUREMENT PREPARED / PHONE FOUNDATION GATE DEFERRED
Last reconciled: 2026-09-03

This repository area now belongs to a completely new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Game identity

The game connects three playable layers:

1. **Walkable settlement / hub** — preparation, services, crafting, research, deterministic NPC schedules and recovery.
2. **Elevated angled aerial wilderness exploration** — physically traversed hunting regions with continuous sectors, tracking and persistent monsters.
3. **First-person turn-based tactical combat** — the battle begins from the same physical encounter and lets the player make explicit positional, defensive and anatomy-targeting decisions.

Core loop:

`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN → PROCESS → CRAFT/EQUIP/RESEARCH`.

Visual direction:
**an illustrated hunting world brought to life**.

## 2. Current implementation state

Authorized now:
**Stage 1 — bounded engine + Android target-device probe only.**

Current candidate:
- Godot 4.7 family;
- CI/build version Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Samsung Galaxy A03s baseline device;
- stable `30 FPS` representative-scene minimum target.

Engine decision authority:
`docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

Godot remains `PROBE_PENDING`, not permanently selected production-engine truth.

Current Stage-1 source/build foundation includes:
- protected analog joystick + heading-reset/camera/settings baseline;
- representative solid Monster placeholder;
- world-boundary guard;
- aerial↔first-person state-continuity regression;
- Android lifecycle transient-input reset;
- low-overhead rolling frame telemetry;
- reproducible 24-minute Galaxy A03s sustained-performance protocol.

Current protocol/documentation revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Performance telemetry source:
`89394067971120df43b184a8509934f5458185f2`.

Workflow `33811355891`: `SUCCESS`.

Automated gates:
- static `154/154 PASS`;
- Monster collision `8/8 PASS`;
- world boundary `12/12 PASS`;
- Godot parse + Boot/ProbeWorld smoke PASS;
- aerial↔first-person `17/17 PASS`;
- lifecycle transient input `47/47 PASS`;
- performance telemetry `20/20 PASS`;
- Android export/APK integrity/artifact upload PASS.

Current exact inner APK:
- `UnnamedHuntRPG-Stage1Probe-debug.apk`;
- `57,570,361 bytes`;
- SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

The current-build Galaxy A03s regression bundle and sustained performance run have **not** been executed. Missing phone evidence is not PASS.

## 3. Mandatory start/read order

Before any bounded work read:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. this `README.md`;
6. `docs/README.md`;
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
8. newest relevant `docs/70_handoff/` record;
9. owning package/README/source/tests.

For Stage-1 Android work also read the probe-local front doors under `probes/android_stage1/`.

Never reconstruct current project state from old chat summaries when current repository authorities exist.

## 4. Where is what

```text
docs/
├── 00_project/        governance, scope, readiness and dependency gates
├── 10_world/          world atlas, settlements, regions and spatial packages
├── 20_gameplay/       reusable mechanics, progression and combat contracts
├── 30_content/        hunters, monsters, equipment and content packages
├── 40_art/            concept/model/runtime asset pipeline and art QA
├── 50_technical/      engine, Android, architecture and build mapping
├── 60_quality/        QA, performance, testing, debug/admin guidance
└── 70_handoff/        bounded-pass continuity/readback/verification records
```

Global navigation map:
`DOCUMENTATION_INDEX.md`.

Documentation/package rules:
`docs/README.md`.

Stage-1 probe front door:
`probes/android_stage1/README.md`.

Stage-1 phone test contract:
`probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`.

Sustained-performance phone procedure:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Protected controls/camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Law:
**folders organize ownership; packages organize one playable thing/system; owning authorities define reusable rules.**

Every substantial pass must leave enough durable repository state to answer:
**WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT.**

## 5. Build readiness taxonomy

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Current readiness:
- engine probe — automated preparation advanced; direct current-phone evidence remains;
- domain implementation — blocked by engine-phone foundation gate;
- combat design — partial/advanced;
- vertical slice — partial;
- expansion — intentionally open.

## 6. World structure

Selected hierarchy:

`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE / FRONTIER TRANSITION → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale:
**1 world unit = 1 meter.**

Region 01 uses planned sectors S00–S06 with physical tracking, branching traversal and persistent monster escape/reacquisition.

## 7. Core gameplay laws

Behavior:
**deterministic authored states/patterns; no generative runtime AI.**

Primary attributes:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Progression:
**equipment + mastery + knowledge weighted** rather than a universal gear-score treadmill.

Combat foundation currently records:
- 4 AP;
- 1 RP;
- persistent Stamina;
- deterministic hit-quality/defense resolution;
- first weapon family `WEAPON_FAMILY_FIELD_POLEBLADE`;
- first-slice Max Stamina `100`.

Crystal Energy is life force; zero usable Energy means death; berserk spends the same reserve.

## 8. First content anchors

Hunter Base 01:
- 1.75 m reusable prototype human scale.

Monster 01 — Mudcrest Raker:
- ~6.6 m length;
- ~3.0 m shoulder/body height;
- paired mineral horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- severable distal tail;
- internal crystal;
- deterministic Region 01 behavior/retreat patterns.

Final production assets are not required for Stage 1; representative placeholders are used.

## 9. Performance evidence state

Stage-1 telemetry now exposes:
- engine FPS;
- rolling approximately one-second real process-frame average/max;
- cumulative frames above `34 ms`;
- cumulative frames at/above `50 ms`;
- cumulative worst process-frame delta;
- debug static memory;
- renderer and view mode.

The prepared phone procedure is one uninterrupted `24` minute Galaxy A03s run with checkpoints at `T+02`, `T+07`, `T+09`, `T+14`, `T+19`, `T+24`, including exactly 20 controlled aerial↔first-person transitions and a final ten-minute soak.

`PERFORMANCE_VERIFIED = NO` until direct target-device evidence exists.

Do not preemptively reduce shadows, render scale, camera behavior, controls, Monster readability or gameplay before measured evidence identifies a bounded problem.

## 10. Exact current continuation

Implementation gate requiring the phone:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Because the user explicitly instructed development not to stop waiting for phone reports, the current active non-phone action is:
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`.

Combat source implementation is still blocked by readiness gates; this next piece is a design contract only.

## 11. Quality/documentation law

All substantial work follows:

`READ EVOLVE → READ CURRENT STATE → VERIFY → ONE SMALL PIECE → IDENTIFY OWNER/GATE → IMPLEMENT OR DOCUMENT → TEST → REGRESSION CHECK → FIX → UPDATE OWNER/README/INDEX/HANDOFF → COMMIT → READ BACK → MARK STATUS → RECORD NEXT`.

Never claim phone runtime, sustained performance, visual quality or final production readiness without the evidence required by that gate.
