# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION TRACKING + OBSERVATION + COMBAT FOUNDATION BUILD VERIFIED / ANATOMY NEXT / PHONE QA DEFERRED-BATCH
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
- Monster activation currently waits rather than attacking;
- authored adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT` costs 2 AP / 12 Stamina;
- hard range, line-of-effect and resource legality;
- eight authoritative Mudcrest target groups;
- deterministic bounded contact variance and `MISS/GRAZE/SOLID/CLEAN` hit-quality classification;
- selected-part contact or declared body fallback;
- local protection profile routed into `PENDING_ANATOMY_DAMAGE_RUNTIME`.

Actual anatomy integrity loss, break/sever, status effects, Monster reactions/attacks and encounter outcomes are not implemented yet.

## Verification baseline

Verified source head before this handoff reconciliation:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Workflow `33851145446`: SUCCESS.

- manifest / production projection: PASS;
- Godot 4.7.2 parse/import: PASS;
- AppShell smoke: PASS;
- Region-01 smoke: PASS;
- Hunt-01 production integration headless: PASS;
- combat turn shell + tactical movement headless: PASS;
- first Hunter attack headless: PASS;
- Android debug APK export: PASS;
- artifact upload: PASS.

Verification labels:
- current combat stack: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- post-tracking phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

QA repairs immediately preceding the green build:
- `31999ced0a961f8d56c7159bdb387d986f3c8375` — repaired stale combat preflight ownership assertion;
- `6c6715a2fb4a945b953e1dc1fbc69f79731c31ab` — repaired stale N09 range-gate test expectation.

## Deferred phone validation

Batch later:
- observation/explicit ENGAGE and same-location first-person transition;
- tactical-node movement UX/readability;
- Measured Cut target selection/contact feedback;
- any anatomy slice added after this handoff;
- final smoothed-route/dimensional validation where applicable;
- sustained performance/thermal behavior.

Stage-1 shooter-style controls remain previously user accepted 100%; that does not automatically phone-verify later production layers.

## Exact next action

`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`

Species owner: Monster-01 production package under `game/`.
Input: existing committed Hunter-attack `damage_handoff`.
Required invariants:
- preserve encounter/Monster/target IDs;
- consume a committed action result without rerolling it;
- deterministic trace/readback;
- no duplicate consequence application on replay/readback;
- final tuning remains explicitly open;
- break/sever/status/Monster behavior stay out of this first bounded integrity piece unless a current authority closes those design questions;
- production source changes require static, Godot headless and Android-build verification.
