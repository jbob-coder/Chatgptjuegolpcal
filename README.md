# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH HUNTER DEFENSE CONSEQUENCE ANDROID BUILD VERIFIED / HUNTER HEALTH-INJURY NEXT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

World/exploration uses one continuous 440×440 m Hunt-01 physical foundation, 6.25 m/s exploration speed, approximately 115° first-person FOV, and the protected shooter-style mobile movement/look law.

Tracking/encounter has seven physical clues, deterministic history/freshness/confidence/activity reasoning, no Monster GPS, audio-independent progression, terminal `OBSERVATION_READY`, and explicit same-location first-person ENGAGE.

Combat currently includes deterministic turn/AP-RP-Stamina authority, authored tactical movement, Hunter `POLEBLADE_MEASURED_CUT`, Mudcrest anatomy integrity, the generic reaction window, real `M01_HEAD_SWEEP_GORE`, and the generic Hunter defense-consequence owner.

Current Block transaction:
- reaction commitment `1 RP + 6 Stamina`;
- Head Sweep guard-impact drain `10 Stamina` as a separate shell-authoritative transaction;
- no negative Stamina;
- replay idempotence;
- reversible Strong/Partial/Broken first-slice fixture;
- residual contact → `PENDING_HUNTER_HEALTH_INJURY_RUNTIME`.

Final Hunter HP/damage/armor arithmetic is intentionally not presented as final balance.

## Current verified baseline

Verified source head:
`598abcd66ba3333808fc2fe54c873c8cb5df01f9`.

Production workflow `33933869555`: SUCCESS.
Job `101217865434`: SUCCESS.

Artifact:
- ID `9959508072`;
- `UnnamedHuntRPG-Hunt01-HunterDefense-debug`;
- 57,342,853 bytes;
- SHA-256 `8eacdaa455574046381c7f153f20dceef59a3d4a9071e091f9c9b2b0691fa51d`.

The stack through defense consequence is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Phone acceptance for newer production gameplay remains deferred/batched.
`PERFORMANCE_VERIFIED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current bounded piece

`FIRST_SLICE_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTATION`.

This next generic combat layer consumes residual hostile contact exactly once, owns a reversible normalized first-slice Hunter health/injury fixture and calculation trace, and leaves status application plus defeat/outcome downstream. Do not infer armor values from the Hunter visual model or bundle unrelated Mudcrest attacks/break-sever/harvest.