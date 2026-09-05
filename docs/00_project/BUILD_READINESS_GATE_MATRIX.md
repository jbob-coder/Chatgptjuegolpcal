# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 THROUGH GENERIC STATUS APPLICATION ANDROID BUILD VERIFIED / PHONE QA BATCHED
Last reconciled: 2026-09-04

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
| GENERIC STATUS TIMING / LIFECYCLE | NEXT | TURN_START/TURN_END/ROUND_END ordering, Off-Balance expiry, pending Bleeding periodic event |
| BLEEDING PERIODIC HEALTH CONSEQUENCE | BLOCKED DOWNSTREAM | exact periodic HP magnitude not yet authoritative |
| HUNT-01 PHONE ACCEPTANCE | DEFERRED BATCH | not a phone PASS |
| SUSTAINED PERFORMANCE | NOT VERIFIED | target-device soak evidence required |
| FINAL ENGINE SELECTION | NOT CLOSED | Godot candidate in use; formal gate open |
| FULL GAMEPLAY LOOP | PARTIAL | break/sever/outcome/harvest/inventory/crafting/etc. incomplete |

## Current automated baseline

Status application implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.
Production workflow `33936580266`: SUCCESS.
Job `101225581109`: SUCCESS.
Artifact `9960395435`: `UnnamedHuntRPG-Hunt01-StatusApplication-debug`, 57,410,444 bytes, SHA-256 `4606069697c5ae9128acf27ddad65724613ad8e83d53e8791a292339c8b0b15f`.

The run passed all existing source/headless regressions, dedicated status-application verification, Godot 4.7.2 parse/smoke, Android export and artifact upload.

Therefore the stack through generic status application is `IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED`.

It is not automatically PHONE VERIFIED or PERFORMANCE VERIFIED.

## Current production authorization

Exact next independent implementation:
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTATION`.

Closed authority:
- status hooks must be deterministic and presentation-independent;
- `TURN_START_PRE_RECOVERY` precedes passive Stamina recovery and AP/RP refresh;
- Off-Balance naturally clears only after the affected actor completes its next normal activation at `TURN_END`;
- skipped/ineligible slots do not grant free expiry;
- Bleeding first eligible tick round is already recorded and periodic cadence is max once per actor per eligible `ROUND_END`;
- round-end status processing occurs after roster slots are terminal and before next round initialization;
- status timing cannot alter Initiative order or independently refresh/spend resources.

Open authority:
- exact Bleeding periodic Health magnitude. Therefore timing may emit a pending periodic consequence but may not invent/apply HP loss yet.
