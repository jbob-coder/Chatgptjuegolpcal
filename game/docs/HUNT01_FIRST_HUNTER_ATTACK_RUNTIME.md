# Hunt-01 First Hunter Attack Runtime

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED / PHONE VALIDATION DEFERRED
Last reconciled: 2026-09-04

This runtime slice introduces exactly one real Hunter attack after the existing same-location encounter, deterministic turn shell and adjacent tactical movement:

`POLEBLADE_MEASURED_CUT`

Selected prototype contract:
- 2 AP;
- 12 Stamina;
- CUTTING damage channel;
- selected Mudcrest target group;
- `ALLOW_BODY_FALLBACK`;
- hit-quality ceiling `CLEAN`;
- no independent critical-hit roll;
- one deterministic FNV-1a-derived bounded variance sample per committed attack;
- hard range/line-of-effect/resource validation before commitment;
- local target protection is recorded before the anatomy-damage handoff.

Working-melee prototype:
- uses existing `R01_EF02` tactical-node graph and authored Monster body-force envelope;
- Measured Cut requires the current tactical node within 3.5 m of that body-force envelope;
- `R01_EF02_N09` is the current practical Measured Cut contact node;
- AP legality remains independent: reaching N09 via three 1-AP moves in Round 1 leaves only 1 AP, so the Hunter must wait for a later activation before a 2-AP Measured Cut can commit.

Current target groups are the eight authoritative Mudcrest groups:
`HEAD`, `HORN_CREST`, `FORELEG_L`, `FORELEG_R`, `HINDLEG_L`, `HINDLEG_R`, `DORSAL_PLATES`, `TAIL`.

Current resolution fixture:
- provisional AttackControl base 70;
- provisional DefenseControl 55;
- explicit target-control penalties;
- one deterministic variance sample in [-6,+6];
- margin maps to `MISS / GRAZE / SOLID / CLEAN`;
- selected-part acquisition requires margin >= 6;
- legal body contact below selected-part acquisition falls back to `GENERAL_TORSO` because Measured Cut permits body fallback.

These control numbers are `PROVISIONAL_FIRST_SLICE_CONTROL_FIXTURE`, not final Hunter/Mudcrest balance.

A committed attack records requested/resolved target, hit quality, CUTTING channel and local protection profile, then emits:
`damage_handoff.status = PENDING_ANATOMY_DAMAGE_RUNTIME`.

Deliberately not owned by this attack slice:
- final damage arithmetic;
- tissue/structure integrity state;
- horn/plate break;
- tail sever;
- bleeding/status application;
- Monster reaction selection;
- Monster attack runtime;
- defeat/escape outcome.

## Verification

Verified source baseline:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Workflow `33851145446`: SUCCESS.

Passed:
- source/static ownership/projection gates;
- Godot 4.7.2 parse;
- production integration headless;
- combat turn shell + tactical movement headless;
- first Hunter attack headless;
- Android debug APK export;
- artifact upload.

Two QA drifts were repaired before the green baseline without changing attack gameplay behavior:
- stale package-level no-attack preflight assertion;
- stale N09 test expectation that confused range success with remaining-AP legality.

Phone/user acceptance remains deferred-batch. Performance is not verified.

## Next consumer

`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`.

The next species-owned runtime consumes the already-committed `damage_handoff`; it must not reroll contact/hit quality or double-apply a repeated resolution. Final damage arithmetic/break/sever/status tuning remains open, so any numeric first-slice integrity fixture must be clearly provisional, deterministic and reversible.
