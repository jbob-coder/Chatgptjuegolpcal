# Production Game Root

Status: HUNT-01 THROUGH FIRST MUDCREST HEAD SWEEP ANDROID BUILD VERIFIED / HUNTER DEFENSE CONSEQUENCE NEXT
Last reconciled: 2026-09-04

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration:
- continuous `440 x 440 m` Hunt-01 foundation;
- Hunter exploration speed `6.25 m/s`;
- first-person FOV `115°`;
- accepted direct analog movement + independent right-side look retained.

Tracking/encounter:
- seven physical evidence types through terminal `OBSERVATION_READY`;
- audio-independent progression and no Monster GPS;
- explicit physical observation/engagement;
- same-location first-person combat staging.

Generic combat owner `scripts/gameplay/combat/`:
- deterministic turn/AP-RP-Stamina authority;
- adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT`;
- deterministic contact/local-protection routing;
- Hunter reaction-window runtime;
- `POLEBLADE_BLOCK = 1 RP + 6 Stamina` plus free decline.

Monster-01 owner `scripts/gameplay/monsters/monster_01/`:
- normalized per-target anatomy integrity with idempotent resolution;
- `hunt01_mudcrest_attack_runtime.gd`;
- `M01_HEAD_SWEEP_GORE` at exactly `2 AP / 14 Stamina`;
- real Monster activation-driver handshake;
- physical body-envelope/front-front-flank/full-cover legality;
- authoritative reaction telegraph;
- non-colliding `assets/effects/mudcrest_head_sweep_telegraph.tscn` asset;
- deterministic hostile contact/hit-quality/protection trace;
- stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff.

The hostile-control numbers remain an explicit reversible first-slice fixture. No final Hunter HP/damage amount is applied.

## Verification status

Verified source head `f7fe9d347921289ca104824e61fd82a2efc73fed`.
Production workflow `33932945947`: SUCCESS.
Job `101215138444`: SUCCESS.
Artifact `9959201882`: `UnnamedHuntRPG-Hunt01-MudcrestHeadSweep-debug`.

The current stack through Head Sweep is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking phone acceptance remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current bounded production piece

`FIRST_SLICE_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTATION`.

The generic combat layer must consume the stable pending hostile handoff once, resolve no-contact/Field-Poleblade guard consequences, apply the selected 10-Stamina Head Sweep guard-impact drain through shell authority, and preserve final Hunter HP/injury as pending. Other reactions, Monster attacks, structural break/sever, statuses and outcome systems remain outside this piece.