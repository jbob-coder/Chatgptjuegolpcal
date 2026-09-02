# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 ENGINE/ANDROID PROBE AUTHORIZED / DESIGN CONTINUES IN BOUNDED PACKETS
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Begin the smallest Stage 1 Android engine probe while continuing only independent design packets that do not conflict with the probe.

Implementation authorization has been explicitly granted by the user.

Implementation is **not** permission to jump directly into the full vertical slice. Every later layer remains controlled by the Build Readiness Gate Matrix and EVOLVE verification loop.

## CURRENT SOURCE OF TRUTH

Read in this order:
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
7. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
8. owning package files for the active bounded piece.

Art/model specialized handoff:
`docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md`.

Combat action-economy handoff:
`docs/70_handoff/COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md`.

Do not reconstruct current state from old WorldLife files or stale chat memory.

---

# BUILD READINESS TAXONOMY

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Every requirement is classified as one of:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely consumes its answer.**

Current gate state:
- `ENGINE_PROBE_READINESS = READY`;
- `DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`;
- `COMBAT_DESIGN_READINESS = PARTIAL`;
- `VERTICAL_SLICE_READINESS = PARTIAL`;
- `EXPANSION_DECISIONS = INTENTIONALLY_OPEN`.

---

# ENGINE / ANDROID PROBE DECISION

Authority:
`docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

Selected Stage 1 candidate:
- engine: **Godot 4.7**;
- language: **GDScript**;
- renderer: **GL Compatibility**;
- target platform: **Android**;
- baseline physical phone: **Samsung Galaxy A03s**;
- representative baseline frame target: **stable 30 FPS**.

Important:
Godot is the **probe candidate**, not yet permanently accepted as the production engine.

Final engine selection requires actual Galaxy A03s runtime evidence.

Stage 1 acceptance must include:
- install/cold launch;
- landscape/touch behavior;
- aerial camera;
- hunter movement;
- large animated monster placeholder;
- aerial→first-person transition;
- basic audio;
- suspend/resume;
- no repeatable crash/ANR;
- frame pacing/memory/thermal measurements sufficient to decide whether to proceed.

If the engine probe fails, stop before Stage 2 and record the reason.

---

# EXACT NEXT IMPLEMENTATION PIECE

Create only the smallest Godot 4.7 Android probe project skeleton:
- Compatibility renderer;
- landscape orientation;
- boot/title probe scene;
- one simple 3D test scene;
- hunter placeholder;
- basic touch/input plumbing;
- development performance readout;
- Android export configuration documentation.

Then verify the project boots and prepare the first Galaxy A03s installation/runtime test.

Do **not** add real combat, harvesting, crafting, final settlement/region content or final game-ready models in this first piece.

---

# INDEPENDENT NEXT DESIGN PIECE

`Combat Resolution / Hit Quality and Defense Contract`.

This can be documented while Stage 1 proceeds because the engine probe does not depend on final hit formulas.

It should define:
- attack legality/target acquisition;
- accuracy/evasion;
- directional cover;
- dodge/block/parry/brace resolution;
- hit-quality tiers;
- target-part exposure/difficulty;
- deterministic vs seeded-random boundary;
- armor/anatomy protection ordering;
- miss/failure consequences;
- calculation/debug traces.

---

# CORE GAME IDENTITY

Grounded stylized monster-hunting tactical RPG:

`PREPARE IN WALKABLE SETTLEMENT → ENTER CONTINUOUS HUNTING REGION → TRACK/OBSERVE → ENGAGE → FIRST-PERSON TURN-BASED TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN/PROCESS/CRAFT/RESEARCH`.

Visual identity:
**an illustrated hunting world brought to life**.

Behavior:
**NO AI behavior system.**
NPCs/creatures use deterministic authored schedules/patterns/conditions, priorities, cooldowns, phases and capability checks.

---

# WORLD STRUCTURE

Selected hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE/FRONTIER TRANSITION → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale:
`1 world unit = 1 meter`.

Settlement 01 design:
- compact defensible frontier settlement;
- Hunter Service Loop;
- repeated core-service legs ~10–25 seconds prototype target;
- 2–3 elevation bands;
- active/background/logical NPC fidelity;
- important interiors seamless where device budget permits.

Region 01 design:
- S00 Trailhead/Field Camp;
- S01 River Ford/Mud Flats;
- S02 Rootwood Thicket;
- S03 Feeding Meadow;
- S04 Rocky Rise;
- S05 Deepwood Basin;
- S06 Nesting Shelf/Crystal Fault;
- looped/branched topology;
- continuous ordinary sector transitions;
- physical tracking evidence;
- persistent hunted monster identity;
- first-person footprints derived from real local terrain.

---

# STATS / EFFECTS / PROGRESSION

Primary attributes:
Might / Finesse / Agility / Endurance / Perception / Resolve.

All equipment/status/terrain/weather/posture/injury/crystal/mutation effects use one typed modifier pipeline with explicit stack rules, caps and traces.

Progression authority:
`docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Selected progression model:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED.**

Laws:
- slow bounded base growth;
- equipment has major practical impact but must retain tradeoffs;
- mastery emphasizes techniques/handling;
- knowledge improves information;
- Hunter Rank mainly controls access/trust;
- no universal gear-score treadmill;
- AP is not a routine progression reward;
- late progression must preserve anatomy, terrain and preparation relevance.

---

# COMBAT ACTION ECONOMY

Authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

Selected architecture:
- AP = current-turn tactical opportunity;
- RP = bounded out-of-turn response;
- Stamina = persistent multi-turn exertion.

First-slice prototype targets:
- Hunter `MAX_AP = 4`;
- normal `MAX_RP = 1`;
- adjacent move commonly 1 AP;
- standard attack 2 AP;
- precision attack 3 AP;
- heavy/full-turn action 4 AP;
- aim/brace/analyze/recovery commonly 1 AP.

Hard laws:
- AP does not bank;
- ordinary progression does not create extra normal turns;
- reactions require explicit windows;
- reaction recursion is blocked;
- body-part selection inside a legal attack is not automatically an extra AP tax;
- UI/animation cannot own turn/resource state.

---

# CRYSTAL / MUTATION

Current selected laws:
- relevant creatures contain an internal life crystal;
- current crystal Energy is life force;
- zero usable Energy means death;
- desperation/berserk spends that same reserve;
- Tier / Rank / Quality / Element / Energy / Condition are separate;
- mutation is bounded and can affect anatomy, capabilities, effects, deterministic behavior, terrain adaptation and harvest.

Broad crystal taxonomy/lore can wait until the stage that consumes it unless required by first-slice content.

---

# HUNTER BASE 01

Authorities:
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`;
- `PROPORTION_AND_ATTACHMENT_CONTRACT.md`.

Current base:
- 1.75 m prototype height;
- realistic adult proportions;
- practical frontier cloth/leather/limited protection;
- modular harness/pouches/boots/tools;
- final weapon family/story identity still open.

Technical multiview route:
- H02 v001 → REVISE;
- H02 v002 → REVISE;
- H02A v003 → REVISE_METHOD;
- same-method H02A v004 → DO NOT GENERATE;
- DCC blockout specification recorded;
- actual DCC production remains separate from Stage 1 engine probe and is not required to start it.

---

# MONSTER 01 — MUDCREST RAKER

Current design:
- Region 01 territorial root-foraging/omnivorous quadruped;
- ~6.6 m nose-to-tail;
- ~3.0 m shoulder/main-body height;
- paired breakable mineral horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- severable distal tail;
- internal forward-torso crystal;
- provisional Mineral/Earth expression;
- deterministic Region 01 activity/retreat patterns;
- berserk spends life force and cannot restore lost anatomy.

First-slice target groups:
HEAD / HORN_CREST / FORELEG_L / FORELEG_R / HINDLEG_L / HINDLEG_R / DORSAL_PLATES / TAIL.

Final production monster model is not required for Stage 1; use a bounded representative placeholder.

---

# CURRENT STATUS GATES

`IMPLEMENTATION_AUTHORIZED = YES`
`STAGE_1_ENGINE_ANDROID_PROBE_AUTHORIZED = YES`
`ENGINE_PROBE_CANDIDATE = GODOT_4_7_GDSCRIPT_GL_COMPATIBILITY`
`FINAL_ENGINE_SELECTED = NO / PROBE_PENDING`
`TARGET_BASELINE_DEVICE = SAMSUNG_GALAXY_A03S`
`BASELINE_DEVICE_FRAME_TARGET = STABLE_30_FPS_PROBE_TARGET`
`ENGINE_PROBE_READINESS = READY`
`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`
`PLAYER_PROGRESSION_PACKET = RECORDED`
`COMBAT_ACTION_ECONOMY = RECORDED`
`COMBAT_RESOLUTION_PACKET = NOT YET RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED`
`VERTICAL_SLICE_IMPLEMENTATION = BLOCKED`
`HUNTER_DCC_BLOCKOUT_SPECIFICATION = RECORDED`
`GAME_READY_3D_ASSET = NONE`
`APK_BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`

## Authority order

Current explicit user instruction > current owning repository authorities/packages > current verified implementation/test/device evidence > older documents > chat memory/summaries.
