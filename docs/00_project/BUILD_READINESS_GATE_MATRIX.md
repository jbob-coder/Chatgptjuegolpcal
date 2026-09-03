# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 AUTOMATED FOUNDATION ADVANCED / PHONE FOUNDATION GATE DEFERRED / LATER GATES CONTROLLED
Last reconciled: 2026-09-03

## Purpose

Classify every design/documentation requirement by the first implementation stage that actually consumes it.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely needs its answer.**

Do not hold the whole project because expansion-level lore/content remains open.

Readiness classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`
3. `MUST_EXIST_BEFORE_COMBAT`
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`
5. `CAN_WAIT_UNTIL_EXPANSION`

A requirement moves earlier only when verified implementation dependency proves that promotion is necessary.

---

# 1. Gate status summary

| Gate | Current status | Meaning |
|---|---|---|
| ENGINE PROBE | **AUTOMATED FOUNDATION + PERFORMANCE PROCEDURE PREPARED / CURRENT PHONE GATE DEFERRED** | source/build/headless gates pass; direct Galaxy A03s regression + sustained evidence remain |
| DOMAIN IMPLEMENTATION | **BLOCKED BY ENGINE PHONE GATE** | production domain source must not be founded on an unclosed engine/device gate |
| COMBAT | **PARTIAL / ADVANCED / FIVE CORE CONTRACTS RECORDED** | action economy, resolution, first weapon, Stamina, Initiative/turn order recorded; remaining first-slice packets still open |
| VERTICAL SLICE | **PARTIAL / LATER** | world/content packages exist; integrated loop prerequisites remain |
| EXPANSION | **INTENTIONALLY OPEN** | broad content/lore/endgame decisions must not delay earlier gates |

---

# 2. MUST EXIST BEFORE ENGINE PROBE

Purpose:
answer only what is required to test whether intended presentation/control behavior runs acceptably on the baseline Android phone.

## Satisfied/prepared

Implementation authorization: `DONE`.

Engine candidate:
- Godot 4.7 family;
- current CI/build version Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3.

Baseline device:
Samsung Galaxy A03s.

Presentation:
- landscape;
- elevated angled aerial exploration;
- first-person encounter presentation.

Representative minimum target:
stable `30 FPS` on Galaxy A03s.

Isolated probe:
`probes/android_stage1/`.

Current automated source/build foundation includes:
- boot/title and ProbeWorld;
- 1.75 m Hunter placeholder;
- large Monster placeholder with representative solid collision;
- protected analog joystick/heading-reset/camera/settings baseline;
- aerial↔first-person state-continuity regression;
- world-boundary guard;
- lifecycle transient-input reset;
- performance telemetry;
- Android export/build evidence;
- exact sustained-performance phone protocol.

Current protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow:
`33811355891` — `SUCCESS`.

Current automated gates:
- static `154 / 154 PASS`;
- Monster collision `8 / 8 PASS`;
- boundary `12 / 12 PASS`;
- Godot parse/smoke PASS;
- aerial↔first-person `17 / 17 PASS`;
- lifecycle transient input `47 / 47 PASS`;
- performance telemetry `20 / 20 PASS`;
- Android export/APK integrity/artifact upload PASS.

Prepared sustained-performance authority:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

## Remaining engine-probe evidence

Direct current-build Galaxy A03s evidence remains required for:
- heading-reset controls and Look Speed persistence;
- Monster solidity;
- boundary containment;
- aerial↔first-person visual/input/clipping continuity;
- background/resume + lock/unlock lifecycle behavior;
- crash/ANR observation;
- sustained 24-minute frame-pacing/thermal/input/transition evidence.

`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when device evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Not required before Stage 1:
- final game name/lore;
- final combat damage numbers;
- production art;
- full crafting/economy;
- party design;
- endgame progression;
- complete ecology.

---

# 3. MUST EXIST BEFORE DOMAIN IMPLEMENTATION

Purpose:
prevent the production codebase from being founded on an unverified engine/device or ambiguous ownership/state model.

Stage 2 begins only after `ENGINE_PHONE_PROBE_VERIFIED`.

## Hard blocker

Stage-1 phone evidence:
`NOT COMPLETE / HARD BLOCKER FOR PRODUCTION DOMAIN IMPLEMENTATION`.

## Design prerequisites already recorded

- module/domain ownership — `SYSTEM_ARCHITECTURE_BLUEPRINT.md`, `CODE_GUIDE.md`;
- stable IDs/content definitions vs runtime state — `CONTENT_DATA_GUIDE.md`;
- GameState/PlayerState/WorldState/Monster/BodyPart/Encounter boundaries — design level recorded;
- deterministic authored behavior — recorded;
- seeded/reproducible randomness direction — recorded;
- stats/effects ownership — recorded;
- crystal/mutation ownership — recorded;
- verification/testing vocabulary — recorded;
- combat resolution randomness boundary — recorded;
- Stamina state/recovery ownership — recorded;
- Initiative/turn-order prototype ownership — recorded.

May remain unfinished before Stage 2:
- final combat numeric tuning;
- first-slice status/terrain balance;
- final weapon animation/range meters;
- settlement final art;
- full crafting tree;
- final story.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

---

# 4. MUST EXIST BEFORE COMBAT

Purpose:
ensure real combat implementation has enough mechanical authority to avoid foundational rewrites.

## Recorded core contracts

### Action Economy — DONE
Authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

Selected:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- explicit reaction windows;
- no recursive reaction loops;
- one normal activation per eligible actor per round.

### Combat Resolution / Hit Quality / Defense — DONE AT ARCHITECTURAL DESIGN LEVEL
Authority:
`docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.

Recorded:
- hard legality vs contest;
- frozen resolution context;
- AttackControl vs DefenseControl;
- body vs selected-part contact;
- exposure states;
- directional cover;
- distinct Dodge/Block/Parry/Brace roles;
- one bounded seeded variance source;
- no unrelated random crit roll;
- `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- local protection/anatomy ordering;
- explainable traces.

### First Weapon Family — DONE AT FIRST-SLICE DESIGN LEVEL
Authority:
`docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`.

Selected:
`WEAPON_FAMILY_FIELD_POLEBLADE` with explicit tradeoffs and 2/3/4-AP technique commitments.

### Stamina Prototype Scale / Recovery — DONE AT FIRST-SLICE PROTOTYPE LEVEL
Authority:
`docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

Selected:
- neutral Max Stamina `100`;
- passive recovery `+10` once at normal activation start;
- affordability/recovery-driven pressure;
- delayed `CATCH_BREATH` anti-loop model;
- explicit Field Poleblade Stamina costs.

### Initiative and Turn-Order Prototype — DONE AT FIRST-SLICE PROTOTYPE LEVEL
Authority:
`docs/20_gameplay/combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`.

Selected:

```text
InitiativeRating = (2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier
```

Laws:
- no Initiative/random opener roll;
- snapshot on encounter entry;
- deterministic ties `Rating DESC → Agility DESC → Perception DESC → stable combatant ID ASC`;
- no ordinary mid-round/mid-encounter resorting;
- one normal activation max per eligible actor per round;
- reactions are not normal activations;
- late entrants wait until next round;
- ineligible-at-slot actor skips that round;
- dead/escaped actors are removed;
- save/reload may not duplicate consumed slots or turn-start resource hooks;
- combat domain alone advances schedule.

## Other recorded prerequisites

Anatomy model / first target groups: `DONE AT DESIGN LEVEL`.

Tactical-space philosophy: `DONE AT DESIGN LEVEL` — nodes/lanes/range/bearing/cover rather than unrestricted real-time FPS locomotion during turn resolution.

Shared modifier/effect pipeline: `DONE AT DESIGN LEVEL`.

Deterministic monster behavior architecture: `DONE AT DESIGN LEVEL`.

## Still required before real combat implementation

### First-slice status/tactical-state set
Status: `OPEN / NEXT COMBAT DESIGN DEPENDENCY`.

Need only the smallest reusable set required to prove the architecture, with explicit ownership, timing, stacking/removal, capability/stat effects and trace requirements.

Do not assume every candidate status is required. Candidates previously discussed include Bleeding, Staggered, Off-Balance and explicit tactical states such as Braced/Aimed; `EXHAUSTED` remains conditional on testing need.

### First-slice terrain effects
Status: `PARTIALLY DESIGNED / NUMBERS OPEN`.

Need concrete values only for surfaces used by the first combat test.

### Monster 01 combat attack packet
Status: `PARTIAL`.

Need minimal legal attack list, capability requirements, telegraphs, commitment profiles, reactions and guard-impact drains.

### First berserk prototype
Status: `PARTIAL`.

Need trigger, Energy drain, bounded behavior/action change, visible tell and stop/death behavior.

### Solo/party baseline
Status: `OPEN`.

### Failure/retreat baseline
Status: `OPEN`.

## Prior implementation prerequisites before real combat source

- engine-phone probe verified;
- production domain foundation implemented/tested;
- stats/effects core implemented/tested;
- crystal/mutation core implemented/tested;
- content-validation foundation implemented/tested.

`COMBAT_DESIGN_READINESS = PARTIAL / FIVE CORE CONTRACTS RECORDED`.
`COMBAT_IMPLEMENTATION = BLOCKED UNTIL REMAINING PACKETS + PRIOR IMPLEMENTATION GATES`.

---

# 5. MUST EXIST BEFORE VERTICAL SLICE

Purpose:
prove the integrated game loop rather than an isolated combat demo.

Required loop:

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
- Stage-1 Galaxy A03s evidence + selected quality baseline;
- tested production domain/stats/crystal/content/combat foundations;
- playable Field Poleblade;
- complete first-slice Monster 01 packet;
- Region 01 graybox/tracking/escape continuity;
- minimal Settlement 01 service loop;
- harvest physical-capacity/depletion rules;
- inventory/equipment/one crafting recipe;
- persistent monster transfer;
- save/reload relevant hunt/progression state;
- Android lifecycle/performance verification of the complete loop.

Full town art/population, broad content roster and endgame systems are not required.

`VERTICAL_SLICE_READINESS = PARTIAL / DEPENDS_ON_IMPLEMENTATION_STAGES`.

---

# 6. CAN WAIT UNTIL EXPANSION

Important but intentionally later unless evidence promotes them:
- final game name and complete lore/history;
- complete crystal element/tier/genetics breadth;
- deep ecology/breeding/migration simulation;
- many settlements/regions/monsters/weapons/recipes;
- endgame ranks/content;
- large relationship/faction systems;
- party/companion breadth if not first slice;
- multiplayer;
- large status catalog;
- advanced ammo/durability/counter systems;
- colossal-monster special rules;
- exceptional Stamina overexertion;
- giant seamless world/destructible terrain;
- full Creator suite;
- final release-device matrix/store/signing/localization breadth.

---

# 7. Promotion rule

When a new requirement is discovered:
1. identify which implementation stage first consumes it;
2. assign it to the earliest justified class;
3. document why;
4. do not promote it merely because it is interesting;
5. move it only when implementation evidence proves the classification wrong.

Examples:
- touch-control layout → `MUST_EXIST_BEFORE_ENGINE_PROBE`;
- hit-resolution architecture → `MUST_EXIST_BEFORE_COMBAT`;
- first weapon family → `MUST_EXIST_BEFORE_COMBAT`;
- Stamina prototype → `MUST_EXIST_BEFORE_COMBAT`;
- Initiative/turn order → `MUST_EXIST_BEFORE_COMBAT`;
- one crafting recipe → `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
- complete elemental roster → `CAN_WAIT_UNTIL_EXPANSION`.

---

# 8. Current project decision

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PROBE_CANDIDATE = GODOT_4_7_GDSCRIPT_GL_COMPATIBILITY`
`TARGET_BASELINE_DEVICE = SAMSUNG_GALAXY_A03S`
`STAGE1_AUTOMATED_FOUNDATION_VERIFIED = YES`
`STAGE1_SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`

`COMBAT_ACTION_ECONOMY = RECORDED`
`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY = FIELD_POLEBLADE`
`STAMINA_PROTOTYPE_CONTRACT = RECORDED`
`INITIATIVE_TURN_ORDER_PROTOTYPE = RECORDED`
`COMBAT_DESIGN_READINESS = PARTIAL / FIVE_CORE_CONTRACTS_RECORDED`

`VERTICAL_SLICE_READINESS = PARTIAL`
`EXPANSION_DECISIONS = INTENTIONALLY_OPEN`

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Next implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Next active independent non-phone design piece:
`FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT`.

Implementation and design may advance independently only when their dependencies do not conflict. Every bounded pass remains controlled by EVOLVE and repository readback/evidence gates.
