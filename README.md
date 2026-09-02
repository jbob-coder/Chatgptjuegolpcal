# Unnamed Hunt RPG

Status: STAGE 1 ENGINE/ANDROID PROBE AUTHORIZED / DESIGN + CONTENT + ASSET QA CONTINUE
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new Android-targeted game. WorldLife RPG is no longer active and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Game identity

A grounded stylized monster-hunting tactical RPG with three connected playable layers:

1. **Walkable settlement / hub** — preparation, services, crafting, research, deterministic NPC schedules and recovery.
2. **Aerial wilderness exploration** — physically traversed 2.5D/3D hunting regions with continuous streamed sectors.
3. **First-person turn-based tactical combat** — encounters derived from the exact wilderness position and persistent monster state.

Core loop:

`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN → PROCESS → CRAFT/EQUIP/RESEARCH`.

Visual identity:
**an illustrated hunting world brought to life**.

## 2. Current implementation state

The previous implementation hold has been explicitly lifted.

Authorized now:
**Stage 1 — bounded engine + Android phone probe only.**

Selected probe candidate:
- Godot 4.7;
- GDScript;
- GL Compatibility renderer;
- Samsung Galaxy A03s baseline device;
- stable 30 FPS representative-scene target.

Authority:
`docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

Godot is still `PROBE_PENDING`, not yet the permanently selected production engine.

Not yet authorized by dependency gates:
- Stage 2 real domain implementation until Stage 1 phone evidence passes;
- real combat implementation until combat prerequisites pass;
- full vertical-slice implementation until its prerequisite stages pass.

## 3. Build readiness taxonomy

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Every unresolved requirement belongs to one of five classes:

1. `MUST_EXIST_BEFORE_ENGINE_PROBE`
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`
3. `MUST_EXIST_BEFORE_COMBAT`
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`
5. `CAN_WAIT_UNTIL_EXPANSION`

Primary law:
**an open question blocks only the earliest implementation gate that genuinely needs its answer.**

Current readiness:
- engine probe — **READY / AUTHORIZED**;
- domain implementation — blocked by engine/phone probe;
- combat — partial;
- vertical slice — partial;
- expansion — intentionally open.

## 4. Start/read order

Read:
1. `START_HERE_NEW_CHAT.md`
2. `PROJECT_HANDOFF.md`
3. `DOCUMENTATION_INDEX.md`
4. `docs/README.md`
5. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
6. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
7. owning package for the active bounded piece.

Do not reconstruct current state from old chat summaries when current repository authorities exist.

## 5. Documentation structure

```text
docs/
├── 00_project/        governance/readiness/dependency gates
├── 10_world/          atlas/settlements/regions
├── 20_gameplay/       reusable mechanics/progression/combat
├── 30_content/        hunters/monsters/equipment/etc.
├── 40_art/            reference/runtime-2D/3D-conversion pipeline
├── 50_technical/      engine/platform/architecture/build mapping
├── 60_quality/        QA/performance/debug/admin
└── 70_handoff/        continuity records
```

Law:
**folders organize ownership; packages organize one playable thing/system.**

## 6. World structure

Selected hierarchy:

`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE / FRONTIER TRANSITION → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Current scale convention:
**1 world unit = 1 meter.**

Settlement 01:
- compact defensible frontier layout;
- Hunter Service Loop;
- repeated core-service travel roughly 10–25 seconds prototype target;
- 2–3 elevation bands;
- walkable important interiors where budget permits;
- active/background/logical NPC fidelity.

Region 01:
- S00 Trailhead/Field Camp;
- S01 River Ford/Mud Flats;
- S02 Rootwood Thicket;
- S03 Feeding Meadow;
- S04 Rocky Rise;
- S05 Deepwood Basin;
- S06 Nesting Shelf/Crystal Fault;
- looped/branched topology;
- continuous ordinary sector crossings;
- persistent hunted monster state;
- physical tracking evidence rather than permanent GPS.

## 7. Core gameplay laws

### Behavior
**No AI behavior system.**

NPCs/creatures use deterministic authored states, schedules, conditions, priorities, cooldowns, phases and capability requirements.

### Stats/effects
Primary attributes:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Equipment/status/terrain/weather/posture/injury/crystal/mutation use one shared typed modifier pipeline with explicit stacking, caps and traces.

### Progression
Selected:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED.**

No universal gear-score treadmill. AP is not routine progression. Anatomy, terrain and preparation stay relevant.

### Combat economy
Authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

First-slice prototype:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- explicit reaction windows;
- reaction recursion blocked.

### Crystal/mutation
- crystal Energy is life force;
- zero usable Energy means death;
- berserk spends that reserve;
- Tier / Rank / Quality / Element / Energy / Condition are distinct;
- mutation is bounded/data-driven and can affect anatomy, capabilities, deterministic behavior, terrain adaptation and harvest.

## 8. First content anchors

### Hunter Base 01
- 1.75 m prototype human scale;
- grounded reusable humanoid base;
- generated technical multiview route paused after QA failure;
- DCC blockout specification exists for later controlled geometry work.

### Monster 01 — Mudcrest Raker
- ~6.6 m length;
- ~3.0 m shoulder/body height;
- paired mineral horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- severable distal tail;
- internal crystal;
- deterministic Region 01 behavior/retreat patterns.

Final production assets are not required for Stage 1; representative placeholders should be used.

## 9. Exact next work

### Implementation
Create only the smallest Godot 4.7 Android probe skeleton and verify it before adding real gameplay systems.

### Independent design
Create the `Combat Resolution / Hit Quality and Defense Contract`.

These may progress independently because the engine probe does not consume final hit-resolution math.

## 10. Quality law

All substantial work follows:

`READ STATE → VERIFY → ONE SMALL PIECE → IMPLEMENT/DOCUMENT → TEST/REVIEW → INSPECT REGRESSION → FIX → UPDATE AUTHORITY → SAVE/COMMIT → READ BACK → MARK GATE → NEXT`.

Do not claim phone runtime, build success, performance or production readiness without direct evidence.
