# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 BASIC AUTORUN COMBAT EXCHANGE ANDROID BUILD VERIFIED / PHONE QA BATCHED
Last reconciled: 2026-09-13

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
| GENERIC STATUS APPLICATION | BUILD VERIFIED | idempotent Bleeding/Staggered/Off-Balance actor status state |
| GENERIC STATUS TIMING / LIFECYCLE | BUILD VERIFIED | Staggered→Off-Balance next-turn conversion, Off-Balance expiry, pending Bleeding periodic event |
| HUNTER DOWNED / DEFEAT OUTCOME | BUILD VERIFIED | zero-Health Downed + HUNTERS_DEFEATED + terminal scheduler freeze |
| MUDCREST TAIL SWEEP | BUILD VERIFIED | intact-tail rear/flank attack using existing Block/status owners |
| TAIL SWEEP CLEAN → STAGGERED PRODUCER | BUILD VERIFIED | CLEAN consequence emits exactly one generic Staggered request; replay idempotent |
| BASIC RUNTIME AUTORUN REPEATABILITY | BUILD VERIFIED | real Region-01 basic path repeats across two fresh instances with clean teardown |
| BASIC AUTORUN COMBAT EXCHANGE | BUILD VERIFIED | two fresh instances reproduce authored N10 Tail Sweep→Poleblade Block consequence/status/scheduler signature |
| BASIC AUTORUN HUNTER ATTACK EXCHANGE | NEXT | integrate one already-verified Hunter Measured Cut/anatomy transaction into the same repeatability smoke |
| BLEEDING PERIODIC HEALTH CONSEQUENCE | BLOCKED DOWNSTREAM | exact periodic HP magnitude not yet authoritative |
| MUDCREST STRUCTURAL BREAK / SEVER | BLOCKED FOR THRESHOLDS | anatomy states selected; numeric break/sever thresholds explicitly open |
| HUNTER VOLUNTARY WITHDRAWAL | BLOCKED FOR HUNTER ESCAPE NODE | authored Hunter escape-node/equivalent boundary not explicit |
| HUNT-01 PHONE ACCEPTANCE | DEFERRED BATCH | not a phone PASS |
| SUSTAINED PERFORMANCE | NOT VERIFIED | target-device soak evidence required |
| FINAL ENGINE SELECTION | NOT CLOSED | Godot candidate in use; formal gate open |
| FULL GAMEPLAY LOOP | PARTIAL | structural/retreat/harvest/inventory/crafting/etc. incomplete |

## Current automated baseline

Latest full production-verified revision `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.
Production workflow `34771386938`: SUCCESS.
Job `103761502217`: SUCCESS.
Artifact `10322166858`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,706 bytes, SHA-256 `a092e435471bd7411fd63902e67cb44608c7c1c1e8ff98e4401bbf969b6db6ff`.

The run passed current static gates, Godot 4.7.2 parse/import, production smokes, the two-cycle basic runtime autorun including its real Tail Sweep/Block combat exchange, all current combat/anatomy/status/outcome regressions, Android export and artifact upload. It does not establish phone acceptance or sustained performance.

## Current production authorization

Exact next independent implementation:
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`.

Closed authority for this next piece:
- verification automation only, not player-facing autoplay;
- use the real production Region-01 scene and current two-cycle autorun rather than mocks;
- drive one already-implemented Hunter `POLEBLADE_MEASURED_CUT` transaction through current tactical movement/Hunter attack/anatomy owners;
- verify existing legality/resources/contact/protection/anatomy/idempotent readback;
- preserve the verified Tail Sweep/Block exchange, two fresh-instance repeatability and protected player controls;
- add no new combat rule, value, RNG, structural threshold, Bleeding HP magnitude, withdrawal/recovery geometry or Monster terminal semantics;
- keep the existing full production Android workflow green.
