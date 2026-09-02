# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is the new Android-targeted monster-hunting RPG using the repository area that previously contained WorldLife RPG.

WorldLife is not active and must not be resumed.

`Unnamed Hunt RPG` remains a temporary working name.

## Current phase

**STAGE 1 ENGINE/ANDROID PROBE AUTHORIZED + BOUNDED DESIGN CONTINUES**

The previous implementation hold has been lifted by explicit user instruction.

Implementation must still follow EVOLVE and readiness gates. Authorization does not permit jumping directly into full combat/vertical-slice production.

## Read first

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
7. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
8. owning package for the current bounded task.

## Build readiness classes

Every open requirement belongs to one of:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely needs its answer.**

Current gate state:
- engine probe: **READY / AUTHORIZED**;
- domain implementation: blocked by engine/phone probe evidence;
- combat: partial;
- vertical slice: partial;
- expansion: intentionally open.

## Engine / device probe

Authority:
`docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

Selected Stage 1 candidate:
- Godot 4.7;
- GDScript;
- GL Compatibility renderer;
- Android;
- Samsung Galaxy A03s baseline phone;
- stable 30 FPS representative-scene target.

Godot is not yet the permanent engine. It becomes selected only after the Galaxy A03s probe passes.

## Exact next implementation piece

Create only the smallest Godot 4.7 probe skeleton:
- Compatibility renderer;
- landscape orientation;
- boot/title probe scene;
- one simple 3D test scene;
- hunter placeholder;
- basic touch/input plumbing;
- development performance readout;
- Android export configuration documentation.

Then verify boot behavior and prepare the first Galaxy A03s install/runtime test.

Do not add real combat, harvesting, crafting or final production assets in this first piece.

## Independent next design piece

`Combat Resolution / Hit Quality and Defense Contract`.

The engine probe does not need final combat-hit formulas, so this design work may proceed independently in its own bounded pass.

## Locked game direction

### Modes
- fully walkable settlement/hub;
- elevated angled aerial wilderness exploration;
- first-person turn-based tactical combat derived from the same physical encounter.

### World
- world atlas for macro geography/travel;
- walkable settlement;
- physical hunter-gate/frontier transition;
- continuous streamed hunting-region sectors where practical;
- local camera rather than showing the entire region as a board-game map;
- `1 world unit = 1 meter`.

### Behavior
**NO AI behavior system.**
NPCs and creatures use deterministic authored states, schedules, conditions, priorities, cooldowns and phases.

### Stats/effects
Might / Finesse / Agility / Endurance / Perception / Resolve.

One shared modifier/effect pipeline owns equipment, statuses, terrain, weather, posture, injuries, crystal/mutation effects and calculation traces.

### Progression
Selected:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED.**

No universal gear-score treadmill; AP is not routine progression; anatomy/terrain/preparation remain relevant.

### Combat economy
Selected first-slice prototype:
- 4 AP;
- 1 RP;
- persistent Stamina;
- AP does not bank;
- explicit reaction windows;
- reaction recursion blocked.

Authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

### Crystal/mutation
- crystal Energy is life force;
- zero usable Energy means death;
- berserk spends that reserve;
- Tier / Rank / Quality / Element / Energy / Condition are separate;
- mutations are bounded and data-driven.

## Current content packages

### Settlement 01
Compact defensible frontier settlement with Hunter Service Loop, 2–3 elevation bands and walkable service spaces.

### Region 01
S00 Trailhead/Field Camp
S01 River Ford/Mud Flats
S02 Rootwood Thicket
S03 Feeding Meadow
S04 Rocky Rise
S05 Deepwood Basin
S06 Nesting Shelf/Crystal Fault

### Hunter Base 01
- 1.75 m prototype scale;
- reusable grounded humanoid production base;
- technical generated multiview route paused after repeated QA failure;
- DCC blockout specification recorded but not required for the Stage 1 placeholder probe.

### Monster 01 — Mudcrest Raker
- ~6.6 m long;
- ~3.0 m shoulder/body height;
- horn crest;
- dorsal plates;
- mud-adapted feet;
- severable distal tail;
- internal crystal;
- deterministic Region 01 patterns.

## Current status

`IMPLEMENTATION_AUTHORIZED = YES`
`STAGE_1_ENGINE_ANDROID_PROBE_AUTHORIZED = YES`
`ENGINE_PROBE_READINESS = READY`
`ENGINE_PROBE_CANDIDATE = GODOT_4_7_GDSCRIPT_GL_COMPATIBILITY`
`FINAL_ENGINE_SELECTED = NO / PROBE_PENDING`
`TARGET_BASELINE_DEVICE = SAMSUNG_GALAXY_A03S`
`BASELINE_DEVICE_FRAME_TARGET = STABLE_30_FPS_PROBE_TARGET`
`DOMAIN_IMPLEMENTATION = BLOCKED_BY_STAGE_1_GATE`
`COMBAT_ACTION_ECONOMY = RECORDED`
`COMBAT_RESOLUTION_PACKET = NOT YET RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED`
`VERTICAL_SLICE_IMPLEMENTATION = BLOCKED`
`APK_BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`

Current explicit user instruction > current owning repository authority > verified source/test/device evidence > older documents > chat memory.
