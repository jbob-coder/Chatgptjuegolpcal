# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 SOURCE CREATED / LATER GATES CONTROLLED
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
| ENGINE PROBE | **SOURCE CREATED / EXECUTION PENDING** | Stage 1 skeleton exists; Godot parse/editor/device evidence is next |
| DOMAIN IMPLEMENTATION | **BLOCKED BY ENGINE PROBE** | design foundation mostly ready; final engine evidence still required |
| COMBAT | **PARTIAL / ADVANCED** | action economy + resolution + first weapon + Stamina are recorded; Initiative/status/terrain/content details remain |
| VERTICAL SLICE | **PARTIAL / LATER** | world/content packages exist, but integrated loop dependencies remain |
| EXPANSION | **INTENTIONALLY OPEN** | broad content/lore/endgame decisions should not delay earlier gates |

---

# 2. MUST EXIST BEFORE ENGINE PROBE

Purpose:
answer only the questions required to test whether the intended presentation can run acceptably on the baseline Android phone.

## Required and satisfied

### Implementation authorization
Status: `DONE`

User explicitly authorized implementation on 2026-09-02.

### Probe engine candidate
Status: `DONE`

Selected for Stage 1:
- Godot 4.7 family;
- GDScript;
- GL Compatibility renderer.

Final engine selection remains contingent on phone evidence.

### Baseline physical device
Status: `DONE`

Samsung Galaxy A03s.

### Orientation/presentation
Status: `DONE`

- landscape;
- elevated angled aerial exploration;
- camera transition to first-person encounter presentation.

### Baseline performance goal
Status: `DONE`

- stable 30 FPS representative-scene target on Galaxy A03s;
- frame pacing, memory, thermal behavior and input responsiveness measured rather than assumed.

### Probe source
Status: `SOURCE CREATED / EXECUTION PENDING`

Current isolated source:
`probes/android_stage1/`.

Represented:
- boot/title;
- primitive 3D test scene;
- 1.75 m Hunter placeholder;
- large moving Monster placeholder;
- aerial camera;
- touch movement placeholder;
- aerial→first-person transition;
- simple light/shadow test;
- runtime renderer/driver readout;
- FPS/frame-time/debug-memory readout;
- Android export guide;
- Galaxy A03s protocol.

Remaining probe complexity must not expand until the skeleton passes parse/editor smoke verification.

### Engine-probe gate

`ENGINE_PROBE_SOURCE = CREATED`
`GODOT_PARSE_VERIFIED = NO`
`EDITOR_RUN_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`

Exact next implementation action:
**parse/editor-smoke verify the existing probe before adding Stage-1 features.**

Not required before Stage 1:
- final game name/lore;
- final combat damage numbers;
- final production art;
- complete crafting/economy;
- party design;
- endgame progression;
- full ecology.

---

# 3. MUST EXIST BEFORE DOMAIN IMPLEMENTATION

Purpose:
prevent the real codebase from being founded on an unverified engine or ambiguous state/ownership rules.

Stage 2 begins only after `ENGINE_PHONE_PROBE_VERIFIED`.

## Hard blockers

### Stage 1 phone evidence
Status: `NOT EXECUTED / HARD BLOCKER`

Need:
- Godot project/scene/GDScript parse verification;
- editor/desktop smoke run;
- Android preset/build;
- install/cold launch;
- landscape/touch behavior;
- representative frame-pacing evidence;
- memory/thermal observations;
- camera transition;
- suspend/resume;
- crash/ANR check.

### Final engine decision
Status: `PROBE_PENDING`

Godot remains a candidate until actual Galaxy A03s evidence passes.

## Design prerequisites already recorded

- module/domain ownership — `SYSTEM_ARCHITECTURE_BLUEPRINT.md`, `CODE_GUIDE.md`;
- stable IDs/content definitions vs runtime state — `CONTENT_DATA_GUIDE.md`;
- GameState/PlayerState/WorldState/Monster/BodyPart/Encounter boundaries — recorded at design level;
- deterministic authored behavior — recorded;
- seeded/reproducible randomness direction — recorded;
- stats/effects ownership — recorded;
- crystal/mutation ownership — recorded;
- verification vocabulary/testing discipline — recorded.

Combat randomness is now specifically bounded by:
`docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.

Stamina state/recovery ownership is now specifically bounded by:
`docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

May remain unfinished before Stage 2:
- final combat numeric tuning;
- Initiative numbers;
- status/terrain balance;
- final weapon animation/range meters;
- settlement final art;
- full crafting tree;
- final story.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`

---

# 4. MUST EXIST BEFORE COMBAT

Purpose:
ensure real combat implementation has enough mechanical authority to avoid repeated foundational rewrites.

## Already recorded

### Action Economy
Status: `DONE`
Authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

First-slice targets:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- explicit reaction windows;
- no recursive reaction loops.

### Combat Resolution / Hit Quality / Defense
Status: `DONE AT ARCHITECTURAL DESIGN LEVEL`
Authority:
`docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.

Recorded:
- hard legality separate from contest;
- frozen resolution context;
- AttackControl vs DefenseControl;
- body vs selected-part contact;
- exposure states;
- directional physical cover;
- distinct Dodge/Block/Parry/Brace roles;
- one bounded seeded variance source;
- no separate hidden random critical roll;
- `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- local protection/anatomy ordering;
- explainable traces.

### First Weapon Family
Status: `DONE AT FIRST-SLICE DESIGN LEVEL`
Authority:
`docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`.

Selected:
- `WEAPON_FAMILY_FIELD_POLEBLADE`;
- two-handed long-hafted cutting/sever weapon;
- piercing/control secondary;
- limited impact;
- directional Guard/restricted Parry;
- explicit 2/3/4 AP technique packet;
- deliberate weaknesses at hard-structure break, cramped combat and shield-level defense.

### Stamina Prototype Scale / Recovery
Status: `DONE AT FIRST-SLICE PROTOTYPE DESIGN LEVEL`
Authority:
`docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

Selected test-profile values:
- `Max Stamina = 100`;
- passive recovery `+10` once at normal activation start;
- `READY 50–100 / LOW 25–49 / CRITICAL 1–24 / EMPTY 0`;
- LOW/CRITICAL do not create hidden generic accuracy/evasion penalties;
- insufficient Stamina rejects positive-cost action/reaction before commitment;
- no first-slice overexertion below zero;
- stable adjacent reposition `0` Stamina;
- Sprint `8`;
- Brace `6`;
- reactive Brace `10`;
- Dodge `14`;
- compatible Parry baseline `10`;
- Guard preparation `4`;
- Block commitment `6 + impact drain`;
- ordinary positive-cost reduction floor `max(1, ceil(base × 0.50))`.

`CATCH_BREATH`:
- 1 AP;
- +20 delayed turn-end recovery when valid;
- once per activation;
- cannot coexist with a damaging attack in the same activation;
- designed specifically to prevent `3 AP attack + 1 AP immediate refill` loops.

Field Poleblade prototype Stamina:
- Measured Cut `12`;
- Driving Thrust `10`;
- Placed Hew `18`;
- Committed Cleave `30`;
- Haft Check `8`;
- Poleblade Guard preparation `4`;
- Poleblade Block `6 + impact drain`;
- Poleblade Parry `10`.

### Anatomy model and first target groups
Status: `DONE AT DESIGN LEVEL`

Monster 01 has eight first-slice target groups plus break/sever consequences.

### Tactical-space philosophy
Status: `DONE AT DESIGN LEVEL`

Nodes/lanes/range/bearing/cover rather than unrestricted real-time FPS locomotion during turn resolution.

### Shared modifier/effect pipeline
Status: `DONE AT DESIGN LEVEL`

Combat uses the shared modifier/cap/trace pipeline.

### Deterministic monster behavior architecture
Status: `DONE AT DESIGN LEVEL`

## Still required before real combat implementation

### Initiative and Turn-Order Prototype
Status: `OPEN / NEXT COMBAT DESIGN DEPENDENCY`

Need:
- first-slice Initiative inputs;
- deterministic ordering;
- tie-break rule;
- round entry/removal rules;
- incapacitated/dead/escaped handling;
- no-extra-turn invariant;
- reproducible trace/testing.

### First-slice status set
Status: `OPEN`

Keep small. Only statuses needed to prove architecture, likely a subset of:
- Bleeding;
- Exhausted if affordability-only Stamina pressure proves insufficient;
- Staggered;
- Off-Balance;
- Braced/Aimed tactical states.

### First-slice terrain effects
Status: `PARTIALLY DESIGNED / NUMBERS OPEN`

Need concrete values only for surfaces used by the first combat test, likely stable ground, mud/shallow water, brush/cover and elevation where relevant.

### Monster 01 combat attack packet
Status: `PARTIAL`

Need minimal legal attack list, capability requirements, telegraphs, commitment profiles, reactions and guard-impact Stamina drains.

### First berserk prototype
Status: `PARTIAL`

Need trigger, Energy drain, bounded action/behavior change, visible tell and stop/death behavior.

### Solo/party baseline
Status: `OPEN`

First-slice recommendation remains `SOLO` unless explicitly changed.

### Failure/retreat baseline
Status: `OPEN`

Need player defeat/retreat and monster escape completion behavior.

## Prior implementation prerequisites

Before real combat source:
- engine-phone probe verified;
- domain foundation tested;
- stats/effects core tested;
- crystal/mutation core tested;
- content-validation foundation tested.

`COMBAT_DESIGN_READINESS = PARTIAL / FOUR CORE CONTRACTS RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED UNTIL REMAINING PACKETS + PRIOR IMPLEMENTATION GATES`

---

# 5. MUST EXIST BEFORE VERTICAL SLICE

Purpose:
prove the actual game loop rather than an isolated combat demo.

Required integrated loop:

`TITLE/PREP`
→ `WALKABLE HUB`
→ `GATE`
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

Before vertical-slice verification need:
- Stage 1 Galaxy A03s evidence and selected quality baseline;
- tested domain/stats/crystal/content/combat foundations;
- playable Field Poleblade family;
- complete first-slice Monster 01 packet;
- Region 01 graybox/tracking/escape continuity;
- minimal Settlement 01 service loop;
- harvest physical-capacity/depletion rules;
- inventory/equipment/one crafting recipe;
- tracking and persistent monster transfer;
- save/reload of relevant progression/hunt state;
- Android lifecycle/performance verification of the complete loop.

Full town art/population, broad content roster and endgame systems are not required.

`VERTICAL_SLICE_READINESS = PARTIAL / DEPENDS ON IMPLEMENTATION STAGES`

---

# 6. CAN WAIT UNTIL EXPANSION

Important but intentionally later unless evidence promotes them:

## Identity/lore
- final game name;
- complete world history;
- complete crystal religion/economics;
- broad campaign/story;
- final protagonist story identity;
- final setting-facing Field Poleblade terminology.

## Crystal/mutation breadth
- full tier/rank naming;
- complete elemental roster;
- hybrid elements;
- full genetics/inheritance;
- generation-scale evolution;
- broad regeneration mutation system.

## Ecology breadth
- deep predator/prey simulation;
- breeding/repopulation;
- large migrations;
- generation-scale regional adaptation;
- many simultaneous species aggregates.

## Content breadth
- more settlements/regions;
- large monster roster;
- broad weapon roster beyond Field Poleblade;
- huge recipe/equipment catalogs;
- endgame ranks;
- rare mutation catalog.

## Social breadth
- large civilian population;
- deep relationship system;
- extensive dialogue/schedule breadth;
- advanced pack/faction systems.

## Combat breadth
- party/companion systems if not first slice;
- multiplayer;
- large status catalog;
- elaborate ammo/reload;
- advanced durability/sharpness;
- many counter chains;
- colossal-monster special rules;
- exceptional Stamina overexertion mechanics.

## World/tools/release breadth
- broad weather/day-night ecology;
- giant seamless world;
- advanced destructible terrain;
- full Creator suite;
- final production art for all content;
- final release-device matrix;
- store/signing pipeline beyond development needs;
- broad localization/accessibility implementation.

---

# 7. Promotion rule

When a new requirement is discovered:
1. identify which implementation stage first consumes it;
2. assign it to the earliest justified readiness class;
3. document why;
4. do not promote it merely because it is interesting;
5. move it only when implementation evidence proves the classification wrong.

Examples:
- touch-control layout → `MUST_EXIST_BEFORE_ENGINE_PROBE`;
- hit-resolution architecture → `MUST_EXIST_BEFORE_COMBAT`, recorded;
- first weapon family → `MUST_EXIST_BEFORE_COMBAT`, recorded;
- Stamina prototype → `MUST_EXIST_BEFORE_COMBAT`, recorded;
- one crafting recipe → `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
- complete elemental roster → `CAN_WAIT_UNTIL_EXPANSION`.

---

# 8. Current project decision

As of 2026-09-02:

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PROBE_CANDIDATE = GODOT_4_7_GDSCRIPT_GL_COMPATIBILITY`
`TARGET_BASELINE_DEVICE = SAMSUNG_GALAXY_A03S`
`STAGE_1_PROBE_SOURCE_CREATED = YES`
`GODOT_PARSE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`

`COMBAT_ACTION_ECONOMY = RECORDED`
`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY = FIELD_POLEBLADE`
`STAMINA_PROTOTYPE_CONTRACT = RECORDED`
`BASELINE_MAX_STAMINA = 100`
`COMBAT_DESIGN_READINESS = PARTIAL / FOUR CORE CONTRACTS RECORDED`

`VERTICAL_SLICE_READINESS = PARTIAL`
`EXPANSION_DECISIONS = INTENTIONALLY_OPEN`

Exact next implementation piece:
**Godot parse/editor smoke verification of the existing Stage-1 probe.**

Exact next independent design piece:
**Initiative and Turn-Order Prototype Contract.**

Implementation and design may advance in parallel only when their dependencies do not conflict. Every pass remains bounded by EVOLVE and must preserve readback/testing gates.
