# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / IMPLEMENTATION AUTHORIZED / STAGE 1 READY
Last reconciled: 2026-09-02

## Purpose

Classify every design/documentation question by the first implementation stage that actually depends on it.

Primary quality fix:
**an open design question may block only the earliest build gate that genuinely needs its answer.**

Do not hold the entire project because expansion-level lore or late-game systems remain open.

The five project readiness classes are:

1. `MUST_EXIST_BEFORE_ENGINE_PROBE`
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`
3. `MUST_EXIST_BEFORE_COMBAT`
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`
5. `CAN_WAIT_UNTIL_EXPANSION`

A requirement can be promoted earlier only when a verified implementation dependency proves it is necessary.

---

# 1. Gate status summary

| Gate | Current status | Meaning |
|---|---|---|
| ENGINE PROBE | **READY / AUTHORIZED** | Stage 1 may begin now under EVOLVE |
| DOMAIN IMPLEMENTATION | **BLOCKED BY ENGINE PROBE** | design foundation mostly ready; final engine evidence still required |
| COMBAT | **PARTIAL / NOT READY** | action economy is recorded; resolution/first-weapon/stamina/status/terrain details remain |
| VERTICAL SLICE | **PARTIAL / LATER** | world/content packages exist, but integrated loop dependencies remain |
| EXPANSION | **INTENTIONALLY OPEN** | broad content/lore/endgame decisions should not delay earlier gates |

---

# 2. MUST EXIST BEFORE ENGINE PROBE

Purpose:
answer only the questions required to test whether the intended presentation can run acceptably on the baseline Android phone.

## Required and satisfied

### Implementation authorization
Status: `DONE`

The user explicitly lifted the implementation hold on 2026-09-02.

Authority:
`docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.

### Probe engine candidate
Status: `DONE`

Selected for Stage 1:
- Godot 4.7;
- GDScript;
- GL Compatibility renderer.

Final production-engine selection remains contingent on phone-probe evidence.

### Baseline physical device
Status: `DONE`

Selected:
Samsung Galaxy A03s.

### Orientation/presentation mode
Status: `DONE`

- landscape;
- elevated angled aerial exploration;
- camera transition to first-person encounter presentation.

### Baseline probe performance goal
Status: `DONE`

- stable 30 FPS representative-scene target on Galaxy A03s;
- frame pacing, memory, thermal behavior and input responsiveness measured rather than assumed.

### Probe scene scope
Status: `DONE`

Bounded Stage 1 scope is recorded:
- boot/title;
- tiny forest/diorama scene;
- hunter placeholder;
- one large animated monster placeholder;
- aerial camera;
- touch movement;
- billboard/impostor foliage test;
- limited shadow test;
- aerial→first-person transition;
- combat HUD mock only;
- audio;
- suspend/resume;
- performance instrumentation.

### Probe acceptance/failure policy
Status: `DONE`

The engine candidate must pass actual Galaxy A03s install/runtime evidence before Stage 2.

## Explicitly NOT required before Stage 1

Do not block the engine probe on:
- final game name;
- complete lore/history;
- exact combat hit formula;
- final weapon family;
- exact crystal tier taxonomy;
- final Hunter model;
- final Monster 01 model;
- crafting balance;
- full save system;
- party design;
- late-game progression;
- full ecology simulation.

### Engine-probe gate

`ENGINE_PROBE_READINESS = READY`
`STAGE_1_AUTHORIZED = YES`

---

# 3. MUST EXIST BEFORE DOMAIN IMPLEMENTATION

Purpose:
prevent the real codebase from being founded on an unverified engine or ambiguous ownership/state rules.

Stage 2 begins only after `ENGINE_PHONE_PROBE_VERIFIED`.

## Must exist

### Stage 1 phone evidence
Status: `NOT EXECUTED / HARD BLOCKER`

Need:
- install/cold launch;
- landscape/touch behavior;
- representative 30 FPS/frame-pacing evidence;
- memory/thermal observations;
- camera transition;
- suspend/resume;
- crash/ANR check.

### Final engine decision
Status: `PROBE_PENDING`

Godot is the current candidate, not yet production-verified.

### Module/domain ownership
Status: `RECORDED`

Authorities:
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`;
- `CODE_GUIDE.md`;
- `docs/50_technical/README.md`.

### Stable IDs/content definitions vs runtime state
Status: `RECORDED`

Authority:
`CONTENT_DATA_GUIDE.md`.

### Core state boundaries
Status: `RECORDED AT DESIGN LEVEL`

Need source implementations later for:
- GameState;
- PlayerState;
- WorldState;
- MonsterDefinition/MonsterInstance;
- BodyPartDefinition/BodyPartState;
- EncounterState;
- domain events/results.

### Deterministic behavior law
Status: `RECORDED`

No runtime AI/ML behavior system.
Autonomous actors use authored deterministic patterns/conditions.

### RNG/replay/determinism direction
Status: `RECORDED AT ARCHITECTURE LEVEL`

Domain resolution should support seeded/reproducible behavior where randomness is used.
Exact combat randomness boundary may be finalized before combat rather than before Stage 2.

### Stats/effects ownership
Status: `RECORDED`

Shared typed modifier pipeline with caps/stacking/traces exists as design authority.

### Crystal/mutation ownership
Status: `RECORDED`

Core life-force/intrinsic-property separation and mutation invariants are defined enough to implement schemas after domain foundation.

### Verification vocabulary/tests
Status: `RECORDED`

Implementation must retain exact status distinction between implemented, tested, compiled, APK verified, phone runtime verified and performance verified.

## May remain open until later

Before Stage 2 it is acceptable for these to remain unfinished:
- final hit-quality formula;
- exact stamina numbers;
- exact first weapon balance;
- settlement final art;
- complete crafting tree;
- detailed ecosystem evolution;
- final story.

### Domain gate

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`

Once Stage 1 passes, domain skeleton work may begin without waiting for every combat/content decision.

---

# 4. MUST EXIST BEFORE COMBAT

Purpose:
ensure Stage 6 combat implementation has enough mechanical authority to avoid rewriting foundational combat code repeatedly.

## Already recorded

### Action economy
Status: `DONE`

Authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

Prototype targets:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- explicit reaction windows;
- no recursive reaction loops.

### Anatomy model and first target groups
Status: `DONE AT DESIGN LEVEL`

Monster 01 has eight first-slice target groups and break/sever functional consequences.

### Tactical-space philosophy
Status: `DONE AT DESIGN LEVEL`

Nodes/lanes/range/bearing/cover rather than unrestricted real-time FPS movement.

### Shared modifier/effect pipeline
Status: `DONE AT DESIGN LEVEL`

Combat does not invent a second bonus system.

### Deterministic monster behavior architecture
Status: `DONE AT DESIGN LEVEL`

## Still required before real combat implementation

### Combat Resolution / Hit Quality / Defense Contract
Status: `OPEN / NEXT DESIGN PACKET`

Must define:
- accuracy vs evasion;
- cover interaction;
- dodge/block/parry/brace resolution;
- hit-quality bands;
- target-part exposure/difficulty;
- deterministic vs seeded-random boundary;
- armor/anatomy protection ordering;
- miss/failure consequences;
- calculation traces.

### First weapon family
Status: `OPEN`

Need one first-slice family only, including:
- weapon profile;
- damage channels;
- reach/range;
- AP/stamina costs;
- normal/precision/heavy techniques;
- break/sever identity;
- guard/parry relationship where applicable.

### Stamina prototype scale/recovery
Status: `OPEN`

Need enough numbers to test several-turn exertion and recovery without locking endgame balance.

### Initiative prototype
Status: `OPEN`

Need deterministic first-slice ordering/tie rule.
High initiative must not create extra ordinary turns.

### First-slice status set
Status: `OPEN`

Keep small. Candidate set should include only statuses necessary to prove architecture, such as a subset of:
- Bleeding;
- Exhausted;
- Staggered;
- Off-Balance;
- Braced/Aimed as tactical states.

### First-slice terrain effect set
Status: `PARTIALLY DESIGNED / NUMBERS OPEN`

Region 01 already supplies suitable terrain contexts.
Need concrete first-slice effects for only the surfaces used by the combat test, likely stable ground, mud/shallow water, brush/cover and elevation where relevant.

### Monster 01 combat attack packet
Status: `PARTIAL`

Need the minimal legal attack list, capability requirements, telegraphs and cost/commitment profiles.

### Exact first berserk prototype
Status: `PARTIAL`

Need:
- trigger;
- activation/drain rule;
- small bounded benefit/action change;
- stop/death behavior;
- visible/readable tell.

### Solo/party baseline
Status: `OPEN`

Recommendation for first slice:
`SOLO`.
Party systems can remain expansion work unless user selects otherwise.

### Failure/retreat baseline
Status: `OPEN`

Need basic player defeat/retreat and monster escape behavior for combat completion.

## Implementation prerequisites

Before Stage 6 source work, previous implementation stages must also be tested:
- domain foundation;
- stats/effects core;
- crystal/mutation core;
- content validation foundation.

### Combat gate

`COMBAT_DESIGN_READINESS = PARTIAL`
`COMBAT_IMPLEMENTATION = BLOCKED UNTIL REQUIRED PACKETS + PRIOR IMPLEMENTATION GATES`

---

# 5. MUST EXIST BEFORE VERTICAL SLICE

Purpose:
ensure the first end-to-end hunt proves the actual game rather than an isolated combat demo.

## Core integrated loop required

`TITLE/PREP`
→ `WALKABLE HUB/MINIMAL SETTLEMENT`
→ `GATE/TRANSITION`
→ `REGION 01`
→ `TRACK`
→ `ENGAGE`
→ `COMBAT`
→ `BREAK/SEVER/BERSERK`
→ `DEFEAT OR ESCAPE/REACQUIRE`
→ `HARVEST`
→ `RETURN`
→ `CRAFT/EQUIP ONE UPGRADE`
→ `SAVE/RELOAD`.

## Must exist before vertical-slice verification

### Engine/device foundation
- Stage 1 verified on Galaxy A03s;
- quality preset/render-scale baseline chosen from evidence.

### Domain and gameplay foundations
- domain skeleton tested;
- stats/effects tested;
- crystal/mutation core tested;
- content validation tested;
- combat core tested;
- combat presentation phone-verified.

### One complete weapon family
Need actual playable first weapon content.

### Monster 01 complete first-slice packet
Need:
- authoritative anatomy;
- attacks;
- deterministic behavior;
- crystal/mutation state;
- one berserk pattern;
- tracking clues;
- escape/reacquisition;
- harvest sources;
- presentation placeholders or approved production state appropriate to slice stage.

### Region 01 graybox/runtime implementation
Need:
- continuous sector traversal;
- field camp/trailhead;
- relevant terrain tags;
- tracking route;
- monster route/escape continuity;
- at least a few validated encounter footprints;
- streaming/performance proof.

### Settlement 01 minimal playable loop
Need only enough for the vertical slice:
- walkable service area;
- loadout/storage;
- smith/crafting/processing path;
- hunter gate;
- gate→wilderness transition.

Full town population/art is not required.

### Harvest core
Need:
- physical remaining-capacity invariant;
- one severed-part path;
- carcass/material depletion;
- crystal extraction result if included in the first hunt;
- harvest explanation/debug trace.

### Inventory/equipment/crafting
Need:
- materials;
- loadout;
- one recipe/upgrade;
- consume materials correctly;
- equip/unequip recalculation.

### Tracking/exploration
Need:
- evidence presentation;
- same persistent monster instance;
- encounter transfer;
- escape back to wilderness state.

### Save/reload minimum
Need to prove persistence of:
- player progression/loadout;
- materials;
- relevant monster/hunt state where required;
- crystal/mutation/anatomy state where required by save policy.

Full migration/corruption hardening can continue after the first integrated proof, but save/reload must not duplicate rewards/state.

### Android lifecycle/performance
Need phone verification of:
- complete loop;
- suspend/resume;
- memory behavior;
- no repeatable crash/ANR;
- representative frame pacing;
- touch usability.

### Vertical-slice gate

`VERTICAL_SLICE_READINESS = PARTIAL / DEPENDS ON IMPLEMENTATION STAGES`

---

# 6. CAN WAIT UNTIL EXPANSION

These are important but must not block Stage 1, Stage 2 or the first combat/vertical slice unless a later dependency proves otherwise.

## Identity/lore
- final game name;
- complete world history;
- complete religion/economics around crystals;
- broad campaign/story structure;
- final protagonist story identity.

## Crystal/mutation breadth
- full tier/rank names and long-range scale;
- complete elemental roster;
- hybrid-element system;
- full inheritance/genetics;
- generation-by-generation evolution;
- broad regeneration mutation system;
- every crystal fracture state.

## Ecology breadth
- deep predator/prey simulation;
- breeding/repopulation simulation;
- large migration systems;
- regional adaptation over many generations;
- intentional ecosystem manipulation metagame;
- dozens of simultaneous species aggregates.

## Content breadth
- second/third settlements;
- additional regions;
- large monster roster;
- large weapon roster;
- huge recipe tree;
- complete equipment catalog;
- endgame ranks;
- rare mutation catalog.

## Social/NPC breadth
- large civilian population;
- complex relationships;
- extensive dialogue/story schedules;
- pack/faction complexity beyond what the first slice uses.

## Combat breadth
- party/companion system if not selected for first slice;
- multiplayer/online systems;
- large status catalog;
- elaborate ammo/reload systems;
- advanced durability/sharpness if not proven useful;
- many reaction/counter chains;
- colossal-monster special rules.

## World breadth
- broad weather simulation;
- full day/night ecology;
- many hubs;
- giant seamless world;
- advanced destructible terrain.

## Tools/release breadth
- full Creator suite;
- final production art for all content;
- final release device matrix;
- store/release/signing pipeline beyond what is needed for development installs;
- localization/accessibility breadth beyond early architecture support.

---

# 7. Promotion rule

When a new requirement is discovered:

1. identify which implementation stage first consumes it;
2. assign it to the earliest justified readiness class;
3. document the reason;
4. do not promote it earlier merely because it is interesting;
5. if implementation evidence proves the classification wrong, move it and record why.

Examples:

- exact Mudcrest material selling price → `CAN_WAIT_UNTIL_EXPANSION` unless the first slice explicitly tests economy;
- touch-control layout → `MUST_EXIST_BEFORE_ENGINE_PROBE` because the phone probe must test input;
- exact hit-quality resolution → `MUST_EXIST_BEFORE_COMBAT`;
- one crafting recipe → `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
- complete elemental roster → `CAN_WAIT_UNTIL_EXPANSION`.

---

# 8. Current project decision

As of 2026-09-02:

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PROBE_CANDIDATE = GODOT_4_7_GDSCRIPT_GL_COMPATIBILITY`
`TARGET_BASELINE_DEVICE = SAMSUNG_GALAXY_A03S`
`ENGINE_PROBE_READINESS = READY`
`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`
`COMBAT_DESIGN_READINESS = PARTIAL`
`VERTICAL_SLICE_READINESS = PARTIAL`
`EXPANSION_DECISIONS = INTENTIONALLY_OPEN`

Exact next implementation piece:
**Stage 1 Godot Android probe project skeleton.**

Exact next design piece that can proceed independently:
**Combat Resolution / Hit Quality and Defense Contract.**

Implementation and design may now advance in parallel only when their dependencies do not conflict. Each still follows one bounded piece at a time and must preserve readback/testing gates.
