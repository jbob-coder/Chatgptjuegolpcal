# Production Game Root

Status: HUNT-01 THROUGH MUDCREST ANATOMY INTEGRITY BUILD VERIFIED / REACTION WINDOW NEXT
Last reconciled: 2026-09-04

This folder is the production Godot project for Unnamed Hunt RPG. It is separate from `probes/android_stage1/`, which remains Stage-1 evidence/testing infrastructure only.

## Current production stack

### World / exploration

- one continuous `440 x 440 m` Hunt-01 physical foundation;
- source-authority X/Z positions preserved;
- Hunter exploration speed `6.25 m/s`;
- first-person FOV `115°`;
- accepted shooter-style direct analog movement + independent right-side look preserved;
- themed reusable Hunter/Mudcrest/environment kit;
- physical cover, evidence and escape-route context;
- the earlier disconnected/debug presentation is rejected and superseded.

### Tracking / evidence

Owner:
- `scripts/gameplay/tracking/`;
- `content/regions/region_01/hunt01_tracking_evidence.json`.

Seven physical evidence types feed deterministic history/freshness/confidence/activity interpretation through terminal `OBSERVATION_READY`. Evidence disappears after successful investigation and cannot duplicate. Essential progression is audio-independent.

### Observation / encounter

Owner:
`scripts/gameplay/encounter/`.

The runtime consumes observation readiness and requires explicit ENGAGE at the existing Meadow encounter. It preserves the same physical Hunter/Monster context and enters first-person combat staging without teleporting to an unrelated arena.

### Generic combat foundation

Owner:
`scripts/gameplay/combat/`.

Implemented:
- deterministic turn shell / AP-RP-Stamina authority;
- adjacent tactical-node movement;
- first Hunter `POLEBLADE_MEASURED_CUT`;
- target selection, hard range/line-of-effect/resource legality;
- deterministic contact/hit quality;
- selected-part acquisition/body fallback;
- local Mudcrest protection routing.

### Monster-01 anatomy integrity

Owner:
`scripts/gameplay/monsters/monster_01/`.

Implemented:
- consumes the already-committed Hunter attack handoff without rerolling contact/hit quality;
- stable encounter/Monster/target/resolution identities;
- deterministic normalized per-target integrity;
- strict identity/channel/protection validation;
- duplicate replay/readback idempotence;
- collision rejection;
- returned anatomy result remains attached to the committed Hunter resolution.

The integrity arithmetic is `PROVISIONAL_FIRST_SLICE_ANATOMY_INTEGRITY_FIXTURE`, not final balance. Species integrity loss is now runtime-owned; structural break/sever/detachment/status and Monster behavior remain later owners.

## Source ownership

- `project.godot` / `export_presets.cfg`: production shell/platform configuration.
- `scenes/app_shell.tscn`: application entry scene.
- `scenes/regions/region_01_hunt01_graybox.tscn`: current production Region-01 Hunt-01 scene.
- `scripts/presentation/exploration/region_01_hunt01_graybox.gd`: world/presentation/input adapter.
- `scripts/gameplay/tracking/`: tracking/evidence gameplay.
- `scripts/gameplay/encounter/`: observation/ENGAGE/same-location encounter staging.
- `scripts/gameplay/combat/`: generic combat turn, movement, reaction and Hunter attack/contact ownership.
- `scripts/gameplay/monsters/monster_01/`: species-specific Monster-01 runtime consequences.
- `assets/`: reusable production visual kit.
- `content/regions/region_01/hunt01_graybox_build_manifest.json`: runtime projection of authoritative Region docs; do not edit independently.
- `tests/`: Godot headless regression gates.

Authoritative stable dimensions/coordinates remain under `docs/10_world/regions/REGION_01/`.
Monster-01 design authority remains under `docs/30_content/monsters/MONSTER_01/`.

## Current verification status

Current verified source head:
`a70b7680f3a7d552a08fc9080a04bc40617c916b`.

Production workflow `33853607287`: SUCCESS.
Static manifest workflow `33853607294`: SUCCESS.

Passed:
- production source/projection static gates;
- Mudcrest anatomy source preflight;
- Godot 4.7.2 parse/import;
- AppShell and Region-01 smoke;
- production integration headless;
- combat turn shell + tactical movement headless;
- Mudcrest anatomy integrity headless;
- first Hunter attack + anatomy integration headless;
- Android debug APK export;
- artifact upload.

Current stack through anatomy integrity is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking production phone acceptance remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Exact next production piece

`FIRST_SLICE_HUNTER_REACTION_WINDOW_RUNTIME_IMPLEMENTATION`.

Add a generic reaction-window runtime plus shell-owned out-of-turn RP/Stamina commitment. Preserve one normal reaction maximum, stable window identity, replay idempotence and non-recursive windows. Exercise only closed costs in this first bounded piece: 1 RP baseline and the selected Field Poleblade Block 6-Stamina commitment. Do not invent final Dodge/Parry/Brace tuning or resolve Monster/Hunter damage in this prerequisite.
