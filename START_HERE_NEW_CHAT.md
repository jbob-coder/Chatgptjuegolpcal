# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is the new Android-targeted monster-hunting RPG using the repository area that previously contained WorldLife RPG.

WorldLife is not active and must not be resumed.

`Unnamed Hunt RPG` remains a temporary working name.

## Mandatory first read

**Read `EVOLVE_ALIGNMENT.md` before every bounded pass.**

Do not rely on remembered EVOLVE state.

After EVOLVE, read this file, the current handoff, readiness matrix and the owning source/package for the exact task.

## Current phase

**STAGE 1 ENGINE/ANDROID PROBE SOURCE CREATED + VERIFICATION PENDING / COMBAT DESIGN CONTINUES IN BOUNDED PACKETS**

Implementation authorization is active.

Implementation still follows EVOLVE and the Build Readiness Gate Matrix. Authorization does not permit skipping directly to production combat or the full vertical slice.

## Read order

1. `EVOLVE_ALIGNMENT.md`
2. `START_HERE_NEW_CHAT.md`
3. `README.md`
4. `PROJECT_HANDOFF.md`
5. `DOCUMENTATION_INDEX.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
9. `docs/70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`
10. `probes/android_stage1/README.md`
11. owning package for the current bounded task.

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
- engine probe: **SOURCE CREATED / EXECUTION PENDING**;
- domain implementation: blocked by engine/phone probe evidence;
- combat design: **PARTIAL / ACTION ECONOMY + RESOLUTION RECORDED**;
- vertical slice: partial;
- expansion: intentionally open.

## Engine / device probe

Authority:
`docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

Selected Stage 1 candidate:
- Godot 4.7 family;
- GDScript;
- GL Compatibility renderer;
- Android;
- Samsung Galaxy A03s baseline phone;
- stable 30 FPS representative-scene target.

Godot remains a probe candidate until real Galaxy A03s evidence passes the engine-phone gate.

## Current implementation source

Probe-only root:
`probes/android_stage1/`.

Created:
- `project.godot`;
- Boot/title scene;
- primitive 3D probe scene;
- 1.75 m Hunter placeholder;
- large moving Monster placeholder;
- touch directional input placeholder;
- desktop WASD fallback;
- aerial ↔ first-person toggle;
- runtime renderer/driver readout;
- FPS/frame-time/debug-memory readout;
- Android export setup guide;
- Galaxy A03s test protocol;
- probe-local `.gitignore`.

This source is deliberately isolated from the future production game/domain source.

## Exact next implementation piece

**Verify the existing probe in Godot before adding anything else.**

Required next evidence:
1. open `probes/android_stage1/project.godot` with Godot 4.7-family tooling;
2. fix any project/scene/GDScript parse errors;
3. run Boot;
4. enter ProbeWorld;
5. verify movement;
6. verify aerial ↔ first-person camera toggle;
7. confirm actual runtime rendering method/driver shown in HUD;
8. verify metrics HUD;
9. record warnings/errors.

Only after that passes:
- create Android export preset;
- build debug APK;
- install/test on Galaxy A03s using `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`.

Do not add real combat, harvesting, crafting or final production assets before the existing skeleton passes its current verification gate.

## Combat design — recorded

Package:
`docs/20_gameplay/combat/`.

### Action economy
Authority:
`ACTION_ECONOMY_CONTRACT.md`.

Selected first-slice prototype:
- 4 AP;
- 1 RP;
- persistent Stamina;
- AP does not bank;
- explicit reaction windows;
- reaction recursion blocked.

### Combat resolution / hit quality / defense
Authority:
`COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.

Selected architecture:
- deterministic hard legality/exposure/cover/anatomy truth;
- one frozen resolution context;
- AttackControl vs DefenseControl;
- selected-part contact distinct from general body contact;
- directional physical cover;
- Dodge/Block/Parry/Brace have distinct purposes;
- one bounded seeded variance source per committed attack resolution;
- no separate hidden random critical-hit roll;
- hit-quality classes: `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- local cover/guard/armor/anatomy protection ordering;
- off-target body contact when the technique explicitly allows it;
- mandatory development calculation trace.

Numeric thresholds remain balance-open.

## Independent next design piece

**First Weapon Family Contract**.

This should define one weapon family only and instantiate the existing action-economy and hit-resolution architecture.

Do not create a large weapon roster yet.

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
- local exploration camera;
- `1 world unit = 1 meter`.

### Behavior
**NO AI behavior system.**
NPCs/creatures use deterministic authored states, schedules, conditions, priorities, cooldowns and phases.

### Stats/effects
Might / Finesse / Agility / Endurance / Perception / Resolve.

One shared typed modifier/effect pipeline owns equipment, statuses, terrain, weather, posture, injuries and crystal/mutation effects.

### Progression
Selected:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED.**

No universal gear-score treadmill; AP is not routine progression; anatomy/terrain/preparation remain relevant.

### Crystal/mutation
- crystal Energy is life force;
- zero usable Energy means death;
- berserk spends that reserve;
- Tier / Rank / Quality / Element / Energy / Condition are separate;
- mutations are bounded/data-driven.

## Current content references

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
- final production geometry is not required for Stage 1 placeholder testing.

### Monster 01 — Mudcrest Raker
- ~6.6 m long;
- ~3.0 m shoulder/body height;
- horn crest;
- dorsal plates;
- mud-adapted feet;
- severable distal tail;
- internal life crystal;
- deterministic Region 01 patterns.

## Current verification truth

`IMPLEMENTATION_AUTHORIZED = YES`
`STAGE_1_ENGINE_ANDROID_PROBE_AUTHORIZED = YES`
`STAGE_1_PROBE_SOURCE_CREATED = YES`
`SOURCE_READBACK_VERIFIED = YES`
`GODOT_PARSE_VERIFIED = NO`
`EDITOR_RUN_VERIFIED = NO`
`ANDROID_PRESET_CREATED = NO`
`APK_BUILD_VERIFIED = NO`
`GALAXY_A03S_INSTALL_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO / PROBE_PENDING`
`DOMAIN_IMPLEMENTATION = BLOCKED_BY_STAGE_1_GATE`
`COMBAT_ACTION_ECONOMY = RECORDED`
`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`
`VERTICAL_SLICE_IMPLEMENTATION = BLOCKED`

Current explicit user instruction > current verified source/tests > current owning repository authority > verified build/runtime/device evidence > older documents > chat memory.
