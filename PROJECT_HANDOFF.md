# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH MUDCREST ANATOMY INTEGRITY BUILD VERIFIED / REACTION WINDOW NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-04

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only, not production architecture.

WorldLife RPG is abandoned. Do not revive it as an implementation base.

## Current playable production stack

### Layer 1 — world/exploration foundation

- continuous 440×440 m Hunt-01 physical foundation;
- 6.25 m/s Hunter exploration speed;
- accepted shooter-style mobile control law retained;
- grounded stylized Hunter/Mudcrest/environment kit;
- River Ford, Feeding Meadow, physical cover and escape route;
- rejected disconnected/debug presentation superseded.

### Layer 2 — tracking/evidence

- seven physical evidence types;
- deterministic freshness/confidence/activity inference and clue history;
- clue disappearance/no duplicate collection;
- fresh evidence can outweigh old weak leads;
- rough route reasoning without Monster GPS;
- audio is optional;
- terminal `OBSERVATION_READY` state.

### Layer 3 — observation / encounter entry

- consumes `OBSERVATION_READY`;
- explicit same-location ENGAGE;
- preserves Hunter and `monster_r01_m01_0001` encounter identity/location;
- enters first-person combat staging without a disconnected generic arena;
- activates the authored tactical combat context after engagement.

### Combat foundation

- deterministic initiative/round/activation shell;
- Hunter 4 AP / 1 RP, normalized Stamina 100, +10 normal-activation recovery;
- authored adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT` costs 2 AP / 12 Stamina;
- hard range, line-of-effect and resource legality;
- eight authoritative Mudcrest target groups;
- deterministic bounded contact variance and `MISS/GRAZE/SOLID/CLEAN` hit-quality classification;
- selected-part contact or declared body fallback;
- local protection routing.

### Mudcrest anatomy integrity

Species owner:
`game/scripts/gameplay/monsters/monster_01/`.

Implemented:
- one stable anatomy resolution ID per committed attack;
- strict encounter/Monster/channel/protection validation;
- normalized integrity state per player-facing body group plus `GENERAL_TORSO` fallback;
- deterministic provisional CUTTING integrity fixture;
- duplicate replay/readback does not apply integrity twice;
- resolution-ID collisions are rejected;
- Hunter attack retains the returned anatomy result in its committed resolution.

Explicitly not implemented yet:
- final health/damage balance;
- crack/break thresholds;
- sever thresholds/detached-part state;
- status effects;
- Monster reactions/attacks/behavior;
- defeat/escape outcome;
- harvesting/inventory/crafting/settlement/persistence.

## Verification baseline

Current verified source head:
`a70b7680f3a7d552a08fc9080a04bc40617c916b`.

Anatomy implementation commit:
`da664deaa88a04cd2d2c5ca3ddd11953f897c7f2`.

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
- artifact upload.

Verification labels:
- world/tracking/encounter/combat/first Hunter attack/anatomy integrity: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- post-tracking phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

The anatomy failure at `da664dea...` was QA drift only: the source preflight required literal `break/sever` wording although the package README already separately deferred `crack/break thresholds` and `sever thresholds`. Commit `a70b7680...` repaired only that assertion and the full production workflow then passed.

## Deferred phone validation

Batch later:
- observation/explicit ENGAGE and same-location first-person transition;
- tactical-node movement UX/readability;
- Measured Cut target selection/contact/anatomy feedback;
- future reaction and Monster-attack UX;
- final smoothed-route/dimensional validation where applicable;
- sustained performance/thermal behavior.

Stage-1 shooter-style controls remain previously user accepted 100%; that does not automatically phone-verify later production layers.

## Exact next action

`FIRST_SLICE_HUNTER_REACTION_WINDOW_RUNTIME_IMPLEMENTATION`

Generic owner: `game/scripts/gameplay/combat/`.

Required invariants:
- preserve current scheduler and one-activation-per-round law;
- allow legal Hunter out-of-turn reaction commitment without making the Hunter the current normal actor;
- baseline normal reaction uses 1 RP;
- stable window/action identity; one committed reaction maximum per window;
- repeated UI/readback cannot spend resources twice;
- explicit decline/close path;
- no recursively opened normal reaction windows;
- use only reaction costs already closed by current authorities; Field Poleblade Block has a recorded 6-Stamina commitment cost for the selected Mudcrest attack packet;
- do not fabricate final Dodge/Parry/Brace Stamina values;
- do not resolve Monster damage or Hunter health in this prerequisite;
- production source changes require static, Godot headless and Android-build verification.

After this prerequisite is green, the next gameplay-facing combat piece should consume it from a real Mudcrest attack/telegraph runtime rather than keeping the Monster activation as `WAIT_NO_ATTACK_RUNTIME`.
