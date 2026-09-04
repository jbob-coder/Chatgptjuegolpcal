# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH HUNTER REACTION WINDOW BUILD VERIFIED / FIRST MUDCREST HEAD SWEEP IMPLEMENTED / AUTOMATED ATTACK VERIFICATION PENDING
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

The game is the objective. Documentation records ownership, dimensions, coordinates, verification and continuation.

## Production root

`game/`

The Stage-1 probe under `probes/android_stage1/` is evidence only.

## Current production stack

World / exploration:
- one continuous 440×440 m physical Hunt-01 foundation;
- Hunter exploration speed 6.25 m/s;
- accepted shooter-style control law retained;
- grounded stylized Hunter / Mudcrest / forest presentation.

Tracking / encounter:
- seven physical clues with deterministic freshness/confidence/activity history;
- no Monster GPS and audio-independent progression;
- terminal `OBSERVATION_READY`;
- explicit physical observation/engagement and same-location first-person ENGAGE.

Combat foundation:
- deterministic initiative/round/activation shell;
- adjacent tactical-node movement on the authored Meadow graph;
- Hunter `POLEBLADE_MEASURED_CUT` through hard legality, deterministic contact/hit quality/local protection and species anatomy handoff;
- Mudcrest normalized per-target anatomy integrity with stable idempotent resolution identity;
- verified generic Hunter reaction window with `POLEBLADE_BLOCK = 1 RP + 6 Stamina` and explicit free decline.

First real Mudcrest attack now implemented:
- species owner `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `M01_HEAD_SWEEP_GORE`;
- exact `2 AP / 14 Stamina`;
- physical working-melee/front-front-flank/cover legality;
- authoritative text + non-colliding world telegraph;
- shared reaction window consumption;
- one deterministic hostile contact/hit-quality trace;
- stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff.

Final Hunter HP/damage arithmetic is intentionally not invented in this slice. Final Block outcome, structural break/sever, status effects, the other Mudcrest attacks, behavior/Berserk, defeat/escape, harvest, inventory, crafting, settlement services and persistence remain incomplete.

## Current verified baseline

Verified stack through Hunter reactions:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Production workflow `33884922855`: SUCCESS.

Passed through that verified baseline:
- manifest / production projection;
- combat/reaction/Hunter-attack/anatomy source preflights;
- Godot 4.7.2 parse/import;
- AppShell smoke;
- Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- Hunter reaction window headless;
- Mudcrest anatomy integrity headless;
- first Hunter attack + anatomy integration headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore the runtime through Hunter reactions is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

The new Head Sweep layer is currently IMPLEMENTED only until its full automated chain passes.

Phone acceptance for newer production gameplay remains deferred/batched and is not a PASS.
`PERFORMANCE_VERIFIED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current bounded piece

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Do not advance beyond this piece until its static, Godot parse/headless regressions, dedicated Head Sweep test and Android export/upload are green.