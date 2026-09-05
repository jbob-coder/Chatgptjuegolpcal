# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH FIRST MUDCREST HEAD SWEEP ANDROID BUILD VERIFIED / HUNTER DEFENSE CONSEQUENCE NEXT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

World/exploration uses one continuous 440×440 m Hunt-01 physical foundation, 6.25 m/s exploration speed, approximately 115° first-person FOV, and the protected shooter-style mobile movement/look law.

Tracking/encounter has seven physical clues, deterministic history/freshness/confidence/activity reasoning, no Monster GPS, audio-independent progression, terminal `OBSERVATION_READY`, and explicit same-location first-person ENGAGE.

Combat currently includes:
- deterministic turn/AP-RP-Stamina shell;
- authored adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT` through deterministic contact/protection/anatomy;
- species-owned Mudcrest anatomy integrity;
- generic reaction window with `POLEBLADE_BLOCK = 1 RP + 6 Stamina`;
- species-owned `M01_HEAD_SWEEP_GORE` at `2 AP / 14 Stamina`;
- body-envelope/front-front-flank/full-cover legality;
- authoritative Head Sweep telegraph plus non-colliding world threat-band asset;
- deterministic hostile contact/hit-quality/protection trace;
- stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff.

Final Hunter HP/damage arithmetic is intentionally not invented yet.

## Current verified baseline

Verified source head:
`f7fe9d347921289ca104824e61fd82a2efc73fed`.

Production workflow `33932945947`: SUCCESS.
Job `101215138444`: SUCCESS.

Artifact:
- ID `9959201882`;
- `UnnamedHuntRPG-Hunt01-MudcrestHeadSweep-debug`;
- 57,322,699 bytes;
- SHA-256 `b56070a42a9abd5ef534443750c441385b1f5f8327a48f7ea1080e490abe0ca8`.

The stack through Head Sweep is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Phone acceptance for newer production gameplay remains deferred/batched.
`PERFORMANCE_VERIFIED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current bounded piece

`FIRST_SLICE_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTATION`.

This next layer consumes the committed Head Sweep hostile handoff, owns no-contact/guard consequence and impact-Stamina application, remains idempotent, and leaves final Hunter health/injury arithmetic downstream. Do not bundle other Mudcrest attacks, break/sever, statuses, defeat/escape or harvest.