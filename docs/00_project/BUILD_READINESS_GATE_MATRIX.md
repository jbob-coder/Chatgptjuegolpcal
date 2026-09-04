# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / TRACKING + OBSERVATION + COMBAT FOUNDATION BUILD VERIFIED / PHONE QA BATCHED
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
| FIRST HUNTER MEASURED CUT | BUILD VERIFIED | contact/hit quality/protection handoff; no anatomy loss yet |
| MUDCREST ANATOMY INTEGRITY | NEXT | next bounded species-owned runtime piece |
| HUNT-01 PHONE ACCEPTANCE | DEFERRED BATCH | does not block independent layers; not a phone PASS |
| HUNT-01 FULL DIMENSIONAL SCENE GATE | NOT EXECUTED | final scene-space tolerances/smoothed path pending |
| SUSTAINED PERFORMANCE | NOT VERIFIED | separate target-device soak evidence gate |
| FINAL ENGINE SELECTION | NOT CLOSED | Godot production candidate in use; formal gate open |
| FULL GAMEPLAY LOOP | PARTIAL | anatomy/Monster behavior/outcome/harvest/inventory/crafting/etc. incomplete |

## Current automated baseline

Verified source head before this documentation reconciliation:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Workflow:
`33851145446` — SUCCESS.

The workflow passed:
- authoritative manifest / production projection;
- Godot 4.7.2 import/parse;
- production AppShell smoke;
- production Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- first Hunter attack headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore the current first-Hunter-attack combat foundation is:
`IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED`.

It is not automatically PHONE VERIFIED or PERFORMANCE VERIFIED.

## QA repairs on the verified baseline

- `31999ced0a961f8d56c7159bdb387d986f3c8375`: corrected a stale preflight assertion that still assumed the entire combat package could contain no Hunter attack.
- `6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`: corrected the Hunter attack headless test so N09 passing the range gate is not confused with having enough AP after spending 3 AP to approach.

Neither repair changes combat gameplay behavior.

## User validation cadence

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`.

Stage-1 shooter-style controls remain user accepted. Observation/ENGAGE, tactical movement, Hunter attack and later anatomy require later batched phone validation. Missing phone/performance evidence remains explicitly missing.

## Dimensional evidence boundary

`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

No gate may convert raw construction-route evidence into a false final smoothed-path PASS.

## Current production authorization

Production implementation remains active under `game/`.

Exact next independent implementation:
`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`.

Final damage arithmetic, break/sever thresholds and status tuning remain open. The next runtime may use only an explicitly provisional deterministic fixture where needed for bounded integrity-state verification; it must not promote that fixture to final design authority.
