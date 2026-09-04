# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / OBSERVATION + COMBAT FOUNDATION BUILD VERIFIED / PHONE VALIDATION BATCHED
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
Tracking `OBSERVATION_READY` now leads to explicit ENGAGE at the existing Meadow encounter. Hunter/Monster world identity and encounter location are preserved; combat staging becomes first-person at that location rather than teleporting to a generic arena.

### Combat foundation

IMPLEMENTED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED through first Hunter attack contact resolution:
- deterministic combat turn shell;
- adjacent tactical-node movement on the authored 10-node / 14-link Meadow graph;
- Hunter `POLEBLADE_MEASURED_CUT` with range, line-of-effect, AP/Stamina commitment, target-group acquisition/body fallback, deterministic hit quality and local protection routing;
- emitted handoff remains `PENDING_ANATOMY_DAMAGE_RUNTIME`.

Verified baseline source head before this documentation reconciliation:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Production workflow:
`33851145446` — SUCCESS.

Verified workflow gates:
- authoritative manifest / production projection: PASS;
- Godot 4.7.2 import/parse: PASS;
- AppShell smoke: PASS;
- Region-01 smoke: PASS;
- Hunt-01 production integration headless: PASS;
- combat turn shell + tactical movement headless: PASS;
- first Hunter attack headless: PASS;
- Android debug export: PASS;
- APK/evidence artifact upload: PASS.

Two stale QA assumptions were repaired before this green baseline:
- `31999ced0a961f8d56c7159bdb387d986f3c8375` — combat preflight no longer forbids the legitimate Hunter attack owner;
- `6c6715a2fb4a945b953e1dc1fbc69f79731c31ab` — N09 attack test now distinguishes passing the range gate from failing the remaining-AP gate after a three-step approach.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Monster attacks/reactions, anatomy integrity loss, break/sever, status effects, defeat/escape outcome, harvesting, inventory, crafting and settlement services are not yet runtime-complete.

## Exact next bounded piece

`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`

Owner/dependencies:
1. species-specific anatomy behavior belongs to a Monster-01 production package under `game/`;
2. generic combat remains owner of the existing action/contact trace;
3. the anatomy runtime consumes the committed Hunter attack `damage_handoff` once and must not reroll contact/hit quality;
4. stable target groups and Monster identity must be preserved;
5. repeated resolution identity must not double-apply consequences;
6. final damage arithmetic, break/sever thresholds and status tuning remain design-open and must not be fabricated as final authority;
7. the first slice may use an explicitly provisional deterministic fixture only where required to exercise runtime integrity state;
8. break/sever/status/Monster reactions remain outside this bounded piece unless a current authority closes their design gates;
9. add source/static, Godot headless and Android-build verification;
10. record phone validation as deferred and continue only after automated gates are green.
