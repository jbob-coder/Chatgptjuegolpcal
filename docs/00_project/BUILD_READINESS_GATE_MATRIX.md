# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 THROUGH TAIL SWEEP CLEAN→STAGGERED ANDROID BUILD VERIFIED / PHONE QA BATCHED
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
| GENERIC STAGGERED STATUS | BUILD VERIFIED | refresh-duration non-stacking disruption; exact-once next-turn-start conversion; no hidden skipped activation |
| HUNTER DOWNED / DEFEAT OUTCOME | BUILD VERIFIED | zero-Health Downed + HUNTERS_DEFEATED + terminal scheduler freeze |
| MUDCREST TAIL SWEEP | BUILD VERIFIED | intact-tail rear/flank attack using existing Block/Off-Balance owners |
| TAIL SWEEP CLEAN → STAGGERED PRODUCER | BUILD VERIFIED | CLEAN consequence emits exactly one generic Staggered request; replay idempotent |
| BASIC RUNTIME AUTORUN REPEATABILITY | NEXT | fresh-instance headless repeatability gate around implemented basics |
| BLEEDING PERIODIC HEALTH CONSEQUENCE | BLOCKED DOWNSTREAM | exact periodic HP magnitude not yet authoritative |
| MUDCREST STRUCTURAL BREAK / SEVER | BLOCKED FOR THRESHOLDS | anatomy states selected; numeric break/sever thresholds explicitly open |
| HUNTER VOLUNTARY WITHDRAWAL | BLOCKED FOR HUNTER ESCAPE NODE | authored Hunter escape-node/equivalent boundary not explicit |
| HUNT-01 PHONE ACCEPTANCE | DEFERRED BATCH | not a phone PASS |
| SUSTAINED PERFORMANCE | NOT VERIFIED | target-device soak evidence required |
| FINAL ENGINE SELECTION | NOT CLOSED | Godot candidate in use; formal gate open |
| FULL GAMEPLAY LOOP | PARTIAL | structural/retreat/harvest/inventory/crafting/etc. incomplete |

## Current automated baseline

Latest full production-verified revision `fbfd30fde0ad74bdb73d384533287b884341cd93`.
Production workflow `34762775881`: SUCCESS.
Job `103738398857`: SUCCESS.
Artifact `10319377979`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,485,460 bytes, SHA-256 `1760956f76d2d908d64f6efc7da3fc7e409d23a26cb4ccd65402c83739d82273`.

The run passed current static gates, Godot 4.7.2 parse/import, production smokes, all current headless combat/anatomy/status/outcome regressions including Tail Sweep CLEAN→Staggered integration, Android export and artifact upload. It does not establish phone acceptance or sustained performance.

## Current production authorization

Exact next independent implementation:
`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION`.

Closed authority for this next piece:
- use the real production Region-01 scene and existing owners rather than mocks/reimplementations;
- automatically exercise only behavior already implemented and verified;
- repeat from at least two fresh scene instances in one test process;
- verify no state from the first cycle leaks into the second;
- verify tracking terminal state, observation/ENGAGE continuity and basic combat owner availability;
- preserve protected player controls and do not introduce normal-game autoplay;
- add static/headless coverage to the existing production Android workflow.

Do not use this regression slice to add Braced/Guarded mechanics, exact attack thresholds, structural thresholds, Bleeding HP magnitude, withdrawal geometry, forced recovery values, Monster terminal behavior or unrelated attacks.
