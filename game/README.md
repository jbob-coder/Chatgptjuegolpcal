# Production Game Root

Status: HUNT-01 THROUGH HUNTER REACTION WINDOW BUILD VERIFIED / FIRST MUDCREST HEAD SWEEP IMPLEMENTED / AUTOMATED ATTACK VERIFICATION PENDING
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
- physical cover, evidence and escape-route context.

### Tracking / observation / encounter

- seven physical evidence types through terminal `OBSERVATION_READY`;
- deterministic history/freshness/confidence/activity interpretation;
- audio-independent progression and no Monster GPS;
- explicit physical observation/engagement;
- same-location first-person combat staging without unrelated arena teleport.

### Generic combat

Owner:
`scripts/gameplay/combat/`.

Implemented:
- deterministic turn shell / AP-RP-Stamina authority;
- adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT`;
- deterministic selected-part/body-fallback contact and local protection routing;
- generic Hunter reaction-window runtime;
- first paid reaction `POLEBLADE_BLOCK = 1 RP + 6 Stamina` plus free decline.

### Monster-01 runtime

Owner:
`scripts/gameplay/monsters/monster_01/`.

Implemented anatomy:
- stable normalized per-target integrity;
- strict handoff identity/protection validation;
- idempotent replay/readback;
- provisional arithmetic only; no structural break/sever authority yet.

Implemented first hostile attack:
- `hunt01_mudcrest_attack_runtime.gd`;
- `M01_HEAD_SWEEP_GORE`;
- exact `2 AP / 14 Stamina`;
- real Monster activation-driver handshake;
- body-envelope/front-front-flank/full-cover legality;
- authoritative reaction telegraph;
- non-colliding `assets/effects/mudcrest_head_sweep_telegraph.tscn` presentation asset;
- shared reaction-window consumption;
- deterministic hostile contact/hit-quality/protection trace;
- stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff.

The Head Sweep hostile-resolution numbers are an explicit reversible first-slice fixture. No final Hunter HP/damage amount is applied.

## Source ownership

- `project.godot` / `export_presets.cfg`: production shell/platform configuration.
- `scenes/app_shell.tscn`: application entry scene.
- `scenes/regions/region_01_hunt01_graybox.tscn`: current production Region-01 Hunt-01 scene.
- `scripts/presentation/exploration/region_01_hunt01_graybox.gd`: world/presentation/input adapter.
- `scripts/gameplay/tracking/`: tracking/evidence gameplay.
- `scripts/gameplay/encounter/`: observation/ENGAGE/same-location encounter staging and combat-stack composition.
- `scripts/gameplay/combat/`: generic combat turn, movement, reaction and Hunter attack/contact ownership.
- `scripts/gameplay/monsters/monster_01/`: species anatomy and Monster attack packet runtime.
- `assets/`: reusable production visual/effect kit.
- `content/regions/region_01/hunt01_graybox_build_manifest.json`: runtime projection of authoritative Region docs.
- `tests/`: Godot headless regression gates.

Authoritative stable dimensions/coordinates remain under `docs/10_world/regions/REGION_01/`.
Monster-01 design authority remains under `docs/30_content/monsters/MONSTER_01/`.

## Verification status

Verified source baseline through Hunter reactions:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Production workflow `33884922855`: SUCCESS.

The stack through Hunter reactions is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

The first Head Sweep layer is currently IMPLEMENTED only until its static, Godot parse/import, existing regression, dedicated headless and Android export/upload chain passes.

Post-tracking production phone acceptance remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current bounded production piece

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Do not stack the other Mudcrest attacks, final Hunter damage, structural break/sever or outcome systems before this piece is green.