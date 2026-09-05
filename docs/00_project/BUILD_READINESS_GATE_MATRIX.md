# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 THROUGH GENERIC STATUS TIMING ANDROID BUILD VERIFIED / PHONE QA BATCHED
Last reconciled: 2026-09-05

## Primary law

An open question blocks only the earliest implementation gate that genuinely consumes it. Verification labels remain evidence-specific.

## Current gate summary

| Gate | Status | Meaning |
|---|---|---|
| STAGE-1 ENGINE PROBE AUTOMATION | PASS | source/static/headless/APK pipeline green |
| SHOOTER-STYLE PHONE CONTROLS | USER PASS 100% | protected control architecture accepted |
| HUNT-01 CONTINUOUS WORLD / TRACKING / ENGAGE | BUILD VERIFIED | physical first-slice foundation through same-location ENGAGE |
| COMBAT TURN SHELL / TACTICAL MOVEMENT | BUILD VERIFIED | deterministic turns/resources/adjacency |
| FIRST HUNTER MEASURED CUT | BUILD VERIFIED | contact/protection/anatomy handoff |
| MUDCREST ANATOMY INTEGRITY | BUILD VERIFIED | deterministic per-part integrity |
| HUNTER REACTION WINDOW | BUILD VERIFIED | stable out-of-turn reaction commitment |
| FIRST MUDCREST HEAD SWEEP | BUILD VERIFIED | real hostile attack transaction |
| HUNTER DEFENSE CONSEQUENCE | BUILD VERIFIED | Block/no-contact consequence + impact drain |
| HUNTER HEALTH / INJURY | BUILD VERIFIED | idempotent residual injury + pending defeat |
| HEAD SWEEP WOUND/CONTACT CLASSIFICATION | BUILD VERIFIED | content qualification + valid status request emission |
| GENERIC STATUS APPLICATION | BUILD VERIFIED | idempotent Bleeding/Off-Balance actor status state |
| GENERIC STATUS TIMING / LIFECYCLE | BUILD VERIFIED | ordered lifecycle hooks, Off-Balance expiry, pending Bleeding periodic event |
| BLEEDING PERIODIC HEALTH CONSEQUENCE | BLOCKED DOWNSTREAM | exact periodic HP magnitude not yet authoritative |
| HUNTER DOWNED / DEFEAT OUTCOME | NEXT | consume pending zero-Health defeat and terminate encounter deterministically |
| MUDCREST STRUCTURAL BREAK / SEVER | BLOCKED FOR THRESHOLDS | anatomy states selected; numeric break/sever thresholds explicitly open |
| HUNT-01 PHONE ACCEPTANCE | DEFERRED BATCH | not a phone PASS |
| SUSTAINED PERFORMANCE | NOT VERIFIED | target-device soak evidence required |
| FINAL ENGINE SELECTION | NOT CLOSED | Godot candidate in use; formal gate open |
| FULL GAMEPLAY LOOP | PARTIAL | break/sever/outcome/harvest/inventory/crafting/etc. incomplete |

## Current automated baseline

Status timing verified source head `57c205e1b2fb1fc69219f44033ef527ea756a353`.
Production workflow `33937504389`: SUCCESS.
Job `101228175010`: SUCCESS.
Artifact `9960678247`: `UnnamedHuntRPG-Hunt01-StatusTiming-debug`, 57,428,913 bytes, SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

The run passed all current source/headless regressions, dedicated status-timing verification, Godot 4.7.2 parse/smoke, Android export and artifact upload.

Therefore the stack through generic status timing is `IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED`.

It is not automatically PHONE VERIFIED or PERFORMANCE VERIFIED.

## Current production authorization

Exact next independent implementation:
`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

Closed authority:
- Hunter health runtime already emits `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` when Health reaches zero;
- first-slice defeat contract selects `hunter_health <= 0 -> DOWNED`;
- player Hunter Downed selects `HUNTERS_DEFEATED` after the current authoritative resolution boundary;
- Downed actors cannot activate/react/command/move voluntarily and are excluded from future rosters;
- terminal encounter commitment stops scheduler advancement and prevents new gameplay commitments;
- a living Monster persists; defeat does not reset its anatomy/status/world state.

Open/later authority intentionally excluded from this slice:
- recovery/respawn penalties and timing;
- voluntary withdrawal;
- Monster escape/death execution;
- Bleeding periodic HP magnitude;
- Mudcrest structural crack/break/sever thresholds;
- harvest/rewards.
