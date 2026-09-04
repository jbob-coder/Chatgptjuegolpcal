# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / TRACKING + OBSERVATION + COMBAT FOUNDATION BUILD VERIFIED
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
- local protection routing;
- output currently stops at `PENDING_ANATOMY_DAMAGE_RUNTIME`.

Not yet runtime-complete: anatomy integrity loss, break/sever, status effects, Monster reactions/attacks, defeat/escape resolution, harvesting, inventory, crafting, settlement services and persistence.

## Current automated verification

Verified source baseline before current documentation reconciliation:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Workflow `33851145446`: SUCCESS.

Passed on that source:
- manifest / production projection;
- Godot 4.7.2 parse/import;
- AppShell smoke;
- Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- first Hunter attack headless;
- Android debug APK export;
- APK/evidence artifact upload.

Therefore current combat foundation: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Phone acceptance for newer production gameplay is deferred/batched and is not a PASS.
`PERFORMANCE_VERIFIED = NO`.

## Next

`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`.

The next bounded piece must be Monster-01/species-owned and consume the existing committed attack `damage_handoff` without rerolling contact. Final damage arithmetic, break/sever thresholds and status tuning remain open; no provisional values may be presented as final authority.
