# Unnamed Hunt RPG

Status: STAGE 1 ENGINE/ANDROID PHONE GATE DEFERRED / SIX CORE COMBAT CONTRACTS RECORDED / TERRAIN-EFFECT SET NEXT
Last reconciled: 2026-09-03

This repository area belongs to a completely new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. **Walkable settlement / hub** — preparation, services, crafting, research, deterministic NPC schedules and recovery.
2. **Elevated angled aerial wilderness exploration** — physically traversed hunting regions with tracking and persistent monsters.
3. **First-person turn-based tactical combat** — battle begins from the same physical encounter and gives explicit movement, cover, defense, attack, anatomy-targeting and commitment choices.

Core hunt loop:
`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN → PROCESS → CRAFT/EQUIP/RESEARCH`.

Primary development law:
**documentation exists to keep the game coherent; the game is the objective.**

Every document should support implementation, content creation, testing, continuity, ownership or a future game decision. Do not create documentation with no consumer.

## 2. Mandatory start/read order

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

Never reconstruct current state from old chat summaries when current repository authorities exist.

## 3. Where is what

```text
docs/
├── 00_project/        governance, readiness and dependency gates
├── 10_world/          world, settlements, regions and spatial packages
├── 20_gameplay/       reusable mechanics, progression and combat contracts
├── 30_content/        hunters, monsters, equipment and content packages
├── 40_art/            concept/model/runtime asset pipeline and art QA
├── 50_technical/      engine, Android, architecture and build mapping
├── 60_quality/        QA, performance, testing and debug/admin guidance
└── 70_handoff/        bounded-pass continuity/readback/verification records
```

Global navigation map:
`DOCUMENTATION_INDEX.md`.

Documentation/package rules:
`docs/README.md`.

Stage-1 probe front door:
`probes/android_stage1/README.md`.

Gameplay front door:
`docs/20_gameplay/README.md`.

Combat front door:
`docs/20_gameplay/combat/README.md`.

Law:
**folders organize ownership; local README files explain what belongs there; contract Markdown files own specific rules; handoffs record bounded work and verification.**

Every substantial pass must leave enough durable state to answer:
**WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT.**

## 4. Current Stage-1 engine/device state

Candidate:
- Godot 4.7 family;
- CI/build version Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

Godot remains `PROBE_PENDING`.

Current protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow:
`33811355891` — `SUCCESS`.

Automated gates:
- protected static `154/154 PASS`;
- Monster collision `8/8 PASS`;
- boundary `12/12 PASS`;
- Godot parse/smoke PASS;
- aerial↔first-person `17/17 PASS`;
- lifecycle transient input `47/47 PASS`;
- performance telemetry `20/20 PASS`;
- Android export/APK integrity/artifact upload PASS.

Current exact inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Sustained-performance phone protocol:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

The fixed 24-minute Galaxy A03s run and current phone regression bundle have not executed.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when device evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## 5. Build readiness

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Current:
- engine probe — automated foundation + phone procedure prepared; direct current-phone evidence remains;
- domain implementation — blocked by engine-phone gate;
- combat design — partial/advanced with six core contracts recorded;
- vertical slice — partial/later;
- expansion — intentionally open.

## 6. Combat foundation — six recorded contracts

Package:
`docs/20_gameplay/combat/`.

1. `ACTION_ECONOMY_CONTRACT.md`
   - 4 AP;
   - 1 RP;
   - persistent Stamina;
   - no AP banking;
   - bounded reactions;
   - one normal activation max per eligible actor/round.

2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
   - deterministic legality/context;
   - AttackControl vs DefenseControl;
   - body/selected-part contact;
   - directional cover;
   - one bounded seeded variance source;
   - `MISS / GRAZE / SOLID / CLEAN / PRECISION`.

3. `FIRST_WEAPON_FAMILY_CONTRACT.md`
   - first family `WEAPON_FAMILY_FIELD_POLEBLADE`;
   - cutting/sever primary;
   - piercing/control secondary;
   - explicit range/defense/hard-break tradeoffs.

4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
   - neutral Max Stamina `100`;
   - `+10` passive recovery once at activation start;
   - delayed `CATCH_BREATH` anti-loop recovery;
   - explicit first-slice exertion costs.

5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`
   - `InitiativeRating = (2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier`;
   - no random Initiative/opener roll;
   - snapshot on encounter entry;
   - deterministic ties;
   - one normal activation maximum per eligible actor/round;
   - late-entry/removal/save-load anti-duplication rules;
   - UI/animation never owns schedule advancement.

6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`
   - `Bleeding / Staggered / Off-Balance / Braced / Guarded`;
   - no independent random status-proc roll;
   - Bleeding intensity capped at 3 and ticks at most once per actor/round;
   - Staggered disrupts Dodge/Parry then becomes Off-Balance without skipping the next activation;
   - Off-Balance can be stabilized with deliberate Brace;
   - Braced and Guarded are distinct tactical states;
   - Guarded is directional and never auto-Blocks;
   - none of the five modifies Initiative or grants an extra normal turn.

Status-set handoff:
`docs/70_handoff/FIRST_SLICE_STATUS_SET_PASS_2026-09-03.md`.

No combat runtime is claimed. Combat implementation remains behind readiness gates.

## 7. Game/world/content anchors

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale:
`1 world unit = 1 meter`.

Hunter Base 01:
1.75 m reusable prototype human scale.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder/body height; mineral horn crest; breakable dorsal plates; mud-adapted legs; severable distal tail; internal crystal.

Primary attributes:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Progression:
equipment + mastery + knowledge weighted.

Crystal Energy is life force; zero usable Energy means death; berserk spends that same reserve.

## 8. Planned bounded sequence

Current non-phone design sequence is intentionally incremental:

`STATUS SET (RECORDED)`
→ `FIRST-SLICE TERRAIN EFFECT SET`
→ `MONSTER 01 ATTACK PACKET`
→ `FIRST BERSERK PROTOTYPE`
→ `SOLO/PARTY BASELINE`
→ `DEFEAT/RETREAT BASELINE`
→ implementation only after prerequisite engine/domain gates pass.

This sequence may change only when new verified dependency evidence justifies it.

## 9. Exact current continuation

Current active non-phone design action:
`FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT`.

That pass must define only the concrete first-slice terrain surfaces/effects needed by the first combat test, using the existing terrain-tag/modifier architecture.

Do not combine it with Monster 01 attack authoring, berserk, party design, defeat/retreat behavior or production implementation.

## 10. Quality/documentation law

All substantial work follows:

`READ EVOLVE → READ CURRENT STATE → VERIFY → ONE SMALL PIECE → IDENTIFY OWNER/GATE → IMPLEMENT OR DOCUMENT → TEST/REVIEW → REGRESSION CHECK → FIX → UPDATE OWNER/README/INDEX/HANDOFF → COMMIT → READ BACK → MARK STATUS → RECORD NEXT`.

Never claim phone runtime, sustained performance, combat runtime or final production readiness without evidence required by that gate.