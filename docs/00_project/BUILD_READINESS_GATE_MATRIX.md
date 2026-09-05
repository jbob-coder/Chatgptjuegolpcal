# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 THROUGH FIRST MUDCREST HEAD SWEEP ANDROID BUILD VERIFIED / PHONE QA BATCHED
Last reconciled: 2026-09-04

## Primary law

An open question blocks only the earliest implementation gate that genuinely consumes it. Verification labels remain evidence-specific.

## Current gate summary

| Gate | Status | Meaning |
|---|---|---|
| STAGE-1 ENGINE PROBE AUTOMATION | PASS | source/static/headless/APK pipeline green |
| SHOOTER-STYLE PHONE CONTROLS | USER PASS 100% | protected control architecture accepted |
| HUNT-01 MANIFEST / PRODUCTION PROJECTION | PASS | production source projection green |
| PRODUCTION GAME ROOT | IMPLEMENTED | `game/` owns production architecture |
| HUNT-01 CONTINUOUS WORLD FOUNDATION | BUILD VERIFIED | continuous production world foundation |
| TRACKING/EVIDENCE RUNTIME | BUILD VERIFIED | physical clue runtime through `OBSERVATION_READY` |
| OBSERVATION/ENCOUNTER RUNTIME | BUILD VERIFIED | same-location ENGAGE / first-person staging |
| COMBAT TURN SHELL | BUILD VERIFIED | deterministic turn/action/resource shell |
| ADJACENT TACTICAL MOVEMENT | BUILD VERIFIED | authored adjacency/terrain costs |
| FIRST HUNTER MEASURED CUT | BUILD VERIFIED | deterministic contact/protection + anatomy handoff |
| MUDCREST ANATOMY INTEGRITY | BUILD VERIFIED | deterministic per-part integrity; provisional arithmetic |
| HUNTER REACTION WINDOW | BUILD VERIFIED | stable window + out-of-turn resource commitment |
| FIRST MUDCREST HEAD SWEEP ATTACK | BUILD VERIFIED | real hostile attack through pending Hunter-damage handoff |
| HUNTER DEFENSE CONSEQUENCE | NEXT | consume pending hostile handoff; guard/no-contact + impact drain |
| HUNT-01 PHONE ACCEPTANCE | DEFERRED BATCH | not a phone PASS |
| HUNT-01 FULL DIMENSIONAL SCENE GATE | NOT EXECUTED | final scene-space tolerances/smoothed path pending |
| SUSTAINED PERFORMANCE | NOT VERIFIED | target-device soak evidence required |
| FINAL ENGINE SELECTION | NOT CLOSED | Godot candidate in use; formal gate open |
| FULL GAMEPLAY LOOP | PARTIAL | defense/HP/break-sever/outcome/harvest/inventory/crafting/etc. incomplete |

## Current automated baseline

Verified source head `f7fe9d347921289ca104824e61fd82a2efc73fed`.
Head Sweep implementation `238f6bba98cb6dd7deb420bfe5196e08a3542279`.
Final production workflow `33932945947`: SUCCESS.
Job `101215138444`: SUCCESS.

The run passed manifest/projection, all current combat source preflights, Godot 4.7.2 import/parse, AppShell/Region smoke, production integration, combat/tactical movement, reaction regression, dedicated Head Sweep, anatomy, Hunter attack, Android export and artifact upload.

Artifact `9959201882`: `UnnamedHuntRPG-Hunt01-MudcrestHeadSweep-debug`, 57,322,699 bytes, SHA-256 `b56070a42a9abd5ef534443750c441385b1f5f8327a48f7ea1080e490abe0ca8`.

Therefore the current Hunt-01 stack through Head Sweep is `IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED`.

It is not automatically PHONE VERIFIED or PERFORMANCE VERIFIED.

## QA repair boundary

The Head Sweep layer required documentation-gate alignment plus two test-only synchronization/isolation repairs. The final reaction regression explicitly removes the production deferred hostile driver before registering its mock; production still enforces exactly one Monster activation driver. No production gameplay values, coordinates or attack math changed in those QA repairs.

## User validation cadence

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`.

Stage-1 shooter-style controls remain user accepted. Later production combat UX and sustained performance need batched device evidence.

## Current production authorization

Exact next independent implementation:
`FIRST_SLICE_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTATION`.

Closed authority available now:
- Block commitment is already spent as 1 RP / 6 Stamina;
- guard-impact drain is a separate defense/contact-stage spend;
- Head Sweep's selected standard Block impact drain is exactly 10 Stamina;
- Stamina clamps at zero and cannot become debt;
- insufficient guard Stamina/stability may degrade Block outcome;
- Combat Resolution defines `BLOCK_STRONG / BLOCK_PARTIAL / BLOCK_BROKEN` semantics;
- final Block balance thresholds and Hunter HP arithmetic remain open.

The next slice may use an explicitly labeled reversible first-slice Block fixture to make this one transaction executable, but it must not silently promote candidate balance into final rules. Final health/injury remains downstream.