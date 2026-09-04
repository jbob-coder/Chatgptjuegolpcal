# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH MUDCREST ANATOMY INTEGRITY BUILD VERIFIED / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-04

## Operating law

The game is the objective. Documentation preserves ownership, evidence, dimensions, coordinates and continuation.

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → CONTINUE`.

Current repository/source/build evidence outranks chat memory and older handoffs.

## User validation policy

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`
`PHONE_ACCEPTANCE_DOES_NOT_BLOCK_INDEPENDENT_LAYER_DEVELOPMENT = YES`

Do not convert automated evidence into a phone/performance claim.

## Protected controls / world foundation

Stage-1 shooter-style controls remain user accepted 100% and must not regress: direct camera-relative analog movement, independent right-side look, simultaneous move/look, 115° first-person FOV and correct interruption reset behavior.

Current production world remains the continuous 440×440 m Hunt-01 foundation with 6.25 m/s Hunter exploration speed and the grounded stylized Hunter/Mudcrest/environment presentation. The rejected disconnected graybox is superseded.

## Verified production stack

### Layer 1 — world/exploration foundation

IMPLEMENTED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance for this corrected production presentation remains deferred.

### Layer 2 — tracking/evidence

IMPLEMENTED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Seven physical clues, deterministic clue history/freshness/confidence/activity interpretation, no exact Monster GPS, audio-optional progression, and terminal `OBSERVATION_READY` are present.

Historical tracking-only tested head: `0df278eba2d9265ed84483265957d9f8c2d7f415`.

### Layer 3 — observation / same-location encounter entry

IMPLEMENTED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Tracking `OBSERVATION_READY` leads to explicit ENGAGE at the existing Meadow encounter. Hunter/Monster world identity and encounter location are preserved; combat staging becomes first-person at that location rather than teleporting to a generic arena.

### Combat foundation

IMPLEMENTED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED:
- deterministic combat turn shell;
- adjacent tactical-node movement on the authored 10-node / 14-link Meadow graph;
- Hunter `POLEBLADE_MEASURED_CUT` with range, line-of-effect, AP/Stamina commitment, target-group acquisition/body fallback, deterministic hit quality and local protection routing.

### Mudcrest anatomy integrity

IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Species owner:
`game/scripts/gameplay/monsters/monster_01/`.

The runtime consumes one committed `PENDING_ANATOMY_DAMAGE_RUNTIME` handoff, preserves stable encounter/action/target identity, tracks normalized per-target integrity, rejects mismatched handoffs, and makes replay/readback idempotent through a stable resolution ID.

The current integrity arithmetic is explicitly `PROVISIONAL_FIRST_SLICE_ANATOMY_INTEGRITY_FIXTURE`; it is not final combat balance. Break/sever thresholds, detached-part state, statuses, global Monster health/death and Monster behavior remain outside this completed slice.

Implementation commit:
`da664deaa88a04cd2d2c5ca3ddd11953f897c7f2`.

QA repair commit / current verified source head:
`a70b7680f3a7d552a08fc9080a04bc40617c916b`.

Production workflow:
`33853607287` — SUCCESS.

Static manifest workflow:
`33853607294` — SUCCESS.

Verified workflow gates:
- authoritative manifest / production projection: PASS;
- Mudcrest anatomy source preflight: PASS;
- Godot 4.7.2 import/parse: PASS;
- AppShell smoke: PASS;
- Region-01 smoke: PASS;
- Hunt-01 production integration headless: PASS;
- combat turn shell + tactical movement headless: PASS;
- Mudcrest anatomy integrity headless: PASS;
- first Hunter attack + anatomy integration headless: PASS;
- Android debug export: PASS;
- APK/evidence artifact upload: PASS.

The anatomy QA repair changed only a stale semantic assertion: the preflight now checks the already-authoritative separate `crack/break thresholds` and `sever thresholds` deferrals instead of requiring an arbitrary combined phrase. Gameplay behavior did not change.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Monster attack/reaction runtime, structural break/sever, status effects, defeat/escape outcome, harvesting, inventory, crafting, settlement services and persistence are not yet runtime-complete.

## Exact next bounded piece

`FIRST_SLICE_HUNTER_REACTION_WINDOW_RUNTIME_IMPLEMENTATION`

Owner/dependencies:
1. generic reaction-window and reaction-resource authority belongs under `game/scripts/gameplay/combat/`;
2. `ACTION_ECONOMY_CONTRACT.md` owns the one-normal-reaction / RP timing law;
3. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md` owns Block/Dodge/Parry/Brace outcome semantics;
4. `FIRST_WEAPON_FAMILY_CONTRACT.md` owns Field Poleblade Guard/Parry compatibility;
5. Monster-01 `COMBAT_ATTACK_PACKET.md` requires attack telegraphs/reaction windows and records the normal Field Poleblade Block commitment cost as 6 Stamina, separate from attack-specific impact drain;
6. add an out-of-turn shell resource-commit path that spends RP/Stamina without pretending the Hunter owns the Monster activation;
7. first bounded runtime must provide stable reaction-window identity, exactly-one normal reaction commitment, deterministic replay/readback, explicit decline/close behavior and no recursive windows;
8. do not invent final Dodge/Parry/Brace Stamina tuning where the current authorities leave it open; the first verified path may exercise the Field Poleblade Block commitment whose cost is already recorded;
9. this prerequisite does not itself resolve a Monster attack or fabricate Hunter health damage;
10. add source/static, Godot headless and Android-build verification, keep phone validation deferred, then continue to the first real Mudcrest attack runtime.
