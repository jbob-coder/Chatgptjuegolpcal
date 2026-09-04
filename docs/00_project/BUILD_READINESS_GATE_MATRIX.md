# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 THROUGH HUNTER REACTION WINDOW BUILD VERIFIED / PHONE QA BATCHED
Last reconciled: 2026-09-04

## Primary law

An open question blocks only the earliest implementation gate that genuinely consumes it. Verification labels remain evidence-specific.

## Current gate summary

| Gate | Status | Meaning |
|---|---|---|
| STAGE-1 ENGINE PROBE AUTOMATION | PASS | source/static/headless/APK pipeline green |
| SHOOTER-STYLE PHONE CONTROLS | USER PASS 100% | protected control architecture accepted |
| HUNT-01 MANIFEST / PRODUCTION PROJECTION | PASS | current production source projection green |
| PRODUCTION GAME ROOT | IMPLEMENTED | `game/` owns production architecture |
| HUNT-01 CONTINUOUS WORLD FOUNDATION | BUILD VERIFIED | continuous production world foundation present |
| TRACKING/EVIDENCE RUNTIME | BUILD VERIFIED | physical clue runtime through `OBSERVATION_READY` |
| OBSERVATION/ENCOUNTER RUNTIME | BUILD VERIFIED | explicit same-location ENGAGE / first-person encounter staging |
| COMBAT TURN SHELL | BUILD VERIFIED | deterministic turn/action/resource shell |
| ADJACENT TACTICAL MOVEMENT | BUILD VERIFIED | authored node adjacency and terrain costs |
| FIRST HUNTER MEASURED CUT | BUILD VERIFIED | deterministic contact/hit quality/local protection + anatomy handoff |
| MUDCREST ANATOMY INTEGRITY | BUILD VERIFIED | species-owned deterministic per-part integrity state; provisional arithmetic |
| HUNTER REACTION WINDOW | BUILD VERIFIED | stable hostile window identity + out-of-turn RP/Stamina commitment |
| FIRST MUDCREST HEAD SWEEP ATTACK | NEXT | first real Monster attack consuming the verified reaction owner |
| HUNT-01 PHONE ACCEPTANCE | DEFERRED BATCH | independent layers continue; not a phone PASS |
| HUNT-01 FULL DIMENSIONAL SCENE GATE | NOT EXECUTED | final scene-space tolerances/smoothed path pending |
| SUSTAINED PERFORMANCE | NOT VERIFIED | separate target-device soak evidence gate |
| FINAL ENGINE SELECTION | NOT CLOSED | Godot production candidate in use; formal gate open |
| FULL GAMEPLAY LOOP | PARTIAL | Monster attack/damage/break-sever/outcome/harvest/inventory/crafting/etc. incomplete |

## Current automated baseline

Verified reaction-layer source head:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Reaction implementation commit:
`f1e5e3ba80ae7e42943b6b82436426497bfd0c34`.

Production workflow:
`33884922855` — SUCCESS.

The final production workflow passed:
- authoritative manifest / production projection;
- combat source preflight;
- Hunter reaction source preflight;
- Hunter attack source preflight;
- Mudcrest anatomy source preflight;
- Godot 4.7.2 import/parse;
- production AppShell smoke;
- production Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- Hunter reaction window headless;
- Mudcrest anatomy integrity headless;
- first Hunter attack + anatomy integration headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore the current Hunt-01 stack through Hunter reactions is:
`IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED`.

It is not automatically PHONE VERIFIED or PERFORMANCE VERIFIED.

## Reaction-layer QA repair

The initial reaction run `33854902520` exposed a pre-existing integration-test race: evidence collection could become visible to the test before the observation Area3D state consumer had settled. Commit `be389c393f993c0cbab60c0e15688f827951f8f8` adds deterministic physics/process settling to the test helper. It does not alter production gameplay source, coordinates or zone radii.

## User validation cadence

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`.

Stage-1 shooter-style controls remain user accepted. Observation/ENGAGE, tactical movement, Hunter attack/anatomy feedback, reaction UX and future Monster attack/defense UX require later batched phone validation. Missing phone/performance evidence remains explicitly missing.

## Dimensional evidence boundary

`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

No gate may convert raw construction-route evidence into a false final smoothed-path PASS.

## Current production authorization

Production implementation remains active under `game/`.

Exact next independent implementation:
`FIRST_SLICE_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Closed authority available now:
- `M01_HEAD_SWEEP_GORE` exists in the selected Monster packet;
- commitment `2 AP / 14 Stamina`;
- normal Poleblade Block is legal for appropriate bearing/interposition;
- Block commitment `1 RP / 6 Stamina` already verified;
- standard successful Block impact drain is recorded as 10 Stamina, but final Block outcome and Hunter HP arithmetic belong to downstream resolution owners.

The next attack slice must produce a real hostile transaction and stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff without fabricating final health/damage balance.