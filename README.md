# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH MUDCREST ANATOMY INTEGRITY BUILD VERIFIED
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

The game is the objective. Documentation records ownership, dimensions, coordinates, verification and continuation.

## Production root

`game/`

The Stage-1 probe under `probes/android_stage1/` is evidence only.

## Current production stack

### Layer 1 — continuous Hunt-01 world / exploration

- one continuous 440×440 m physical foundation;
- Hunter exploration speed 6.25 m/s;
- accepted shooter-style control law retained;
- grounded stylized Hunter / Mudcrest Raker / forest presentation;
- River Ford, Feeding Meadow, physical cover and escape corridor;
- rejected disconnected/debug graybox superseded.

### Layer 2 — tracking/evidence

- seven physical clues;
- clue investigation/disappearance and no duplicate collection;
- deterministic freshness/confidence/activity history;
- conflicting old/weak versus fresh evidence;
- rough directional reasoning without Monster GPS;
- audio-independent progression;
- terminal `OBSERVATION_READY`.

### Layer 3 — observation / encounter entry

- explicit ENGAGE after observation readiness;
- same physical Meadow encounter location;
- existing Hunter and `monster_r01_m01_0001` identities/transforms remain the encounter basis;
- aerial exploration transitions to first-person combat staging without a disconnected generic arena.

### Combat foundation

- deterministic turn/initiative/action-economy shell;
- adjacent tactical-node movement on the authored Meadow graph;
- first Hunter `POLEBLADE_MEASURED_CUT` attack;
- hard range/line-of-effect/AP/Stamina legality;
- eight Mudcrest target groups;
- deterministic contact/hit-quality resolution;
- selected-part acquisition or declared body fallback;
- local protection routing.

### Mudcrest anatomy integrity

- species-owned under `game/scripts/gameplay/monsters/monster_01/`;
- consumes the committed Hunter attack consequence without rerolling contact;
- deterministic normalized integrity per target group;
- stable resolution identity and idempotent replay/readback;
- mismatch/collision rejection;
- current arithmetic explicitly provisional rather than final balance.

Not yet runtime-complete: reaction windows, Monster attacks/behavior, break/sever/detached parts, status effects, defeat/escape resolution, harvesting, inventory, crafting, settlement services and persistence.

## Current automated verification

Current verified source head:
`a70b7680f3a7d552a08fc9080a04bc40617c916b`.

Production workflow `33853607287`: SUCCESS.
Static manifest workflow `33853607294`: SUCCESS.

Passed:
- manifest / production projection;
- Mudcrest anatomy source preflight;
- Godot 4.7.2 parse/import;
- AppShell smoke;
- Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- Mudcrest anatomy integrity headless;
- first Hunter attack + anatomy integration headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore current runtime through Mudcrest anatomy integrity is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Phone acceptance for newer production gameplay is deferred/batched and is not a PASS.
`PERFORMANCE_VERIFIED = NO`.

## Next

`FIRST_SLICE_HUNTER_REACTION_WINDOW_RUNTIME_IMPLEMENTATION`.

Before the selected Mudcrest attack packet can replace the current Monster `WAIT_NO_ATTACK_RUNTIME`, generic combat needs a real reaction-window owner and out-of-turn Hunter RP/Stamina commitment path. The first bounded prerequisite will exercise the already-recorded Field Poleblade Block commitment without inventing unresolved final Dodge/Parry/Brace tuning or Hunter damage.
