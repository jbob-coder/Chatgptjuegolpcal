# Production Game Root

Status: HUNT-01 TRACKING + OBSERVATION + COMBAT FOUNDATION BUILD VERIFIED / ANATOMY NEXT
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

### Combat foundation

Owner:
`scripts/gameplay/combat/`.

Implemented:
- deterministic turn shell / AP-RP-Stamina authority;
- adjacent tactical-node movement;
- first Hunter `POLEBLADE_MEASURED_CUT`;
- target selection, hard range/line-of-effect/resource legality;
- deterministic contact/hit quality;
- selected-part acquisition/body fallback;
- local Mudcrest protection routing;
- `damage_handoff.status = PENDING_ANATOMY_DAMAGE_RUNTIME`.

Species integrity loss, break/sever, status effects and Monster behavior are deliberately not owned by the generic combat shell.

## Source ownership

- `project.godot` / `export_presets.cfg`: production shell/platform configuration.
- `scenes/app_shell.tscn`: application entry scene.
- `scenes/regions/region_01_hunt01_graybox.tscn`: current production Region-01 Hunt-01 scene.
- `scripts/presentation/exploration/region_01_hunt01_graybox.gd`: world/presentation/input adapter.
- `scripts/gameplay/tracking/`: tracking/evidence gameplay.
- `scripts/gameplay/encounter/`: observation/ENGAGE/same-location encounter staging.
- `scripts/gameplay/combat/`: generic combat turn, movement and Hunter attack/contact runtime.
- future Monster-01 production package: species-specific anatomy consequences.
- `assets/`: reusable production visual kit.
- `content/regions/region_01/hunt01_graybox_build_manifest.json`: runtime projection of authoritative Region docs; do not edit independently.
- `tests/`: Godot headless regression gates.

Authoritative stable dimensions/coordinates remain under `docs/10_world/regions/REGION_01/`.
Monster-01 anatomy design authority remains under `docs/30_content/monsters/MONSTER_01/`.

## Current verification status

Verified source baseline before this documentation reconciliation:
`6c6715a2fb4a945b953e1dc1fbc69f79731c31ab`.

Production workflow `33851145446`: SUCCESS.

Passed:
- production source/projection static gates;
- Godot 4.7.2 parse/import;
- AppShell and Region-01 smoke;
- production integration headless;
- combat turn shell + tactical movement headless;
- first Hunter attack headless;
- Android debug APK export;
- artifact upload.

Current stack is STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking production phone acceptance remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Exact next production piece

`FIRST_SLICE_MUDCREST_ANATOMY_INTEGRITY_RUNTIME_IMPLEMENTATION`.

Create a Monster-01/species-owned runtime that consumes the already-committed attack handoff exactly once, preserves target/action identity, produces deterministic integrity state/trace, and prevents replay/readback duplication. Final damage arithmetic and break/sever/status thresholds remain design-open; any bounded numeric fixture required for runtime exercise must be explicitly provisional and reversible.
