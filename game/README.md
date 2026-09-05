# Production Game Root

Status: HUNT-01 THROUGH HUNTER DEFENSE CONSEQUENCE ANDROID BUILD VERIFIED / HUNTER HEALTH-INJURY NEXT
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
- `POLEBLADE_BLOCK = 1 RP + 6 Stamina` plus free decline;
- `hunt01_hunter_defense_consequence_runtime.gd`;
- stable replay-safe hostile-defense consequence;
- Head Sweep's `10 Stamina` guard-impact drain as a separate shell-authoritative spend;
- provisional `BLOCK_STRONG / BLOCK_PARTIAL / BLOCK_BROKEN` fixture;
- stable `PENDING_HUNTER_HEALTH_INJURY_RUNTIME` output.

Monster-01 owner `scripts/gameplay/monsters/monster_01/`:
- normalized per-target anatomy integrity;
- real `M01_HEAD_SWEEP_GORE` at exactly `2 AP / 14 Stamina`;
- physical legality, telegraph asset and deterministic hostile contact trace.

No final Hunter Max Health/damage/armor amount is currently claimed.

## Verification status

Verified source head `598abcd66ba3333808fc2fe54c873c8cb5df01f9`.
Production workflow `33933869555`: SUCCESS.
Job `101217865434`: SUCCESS.
Artifact `9959508072`: `UnnamedHuntRPG-Hunt01-HunterDefense-debug`.

The current stack through Hunter defense consequence is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking phone acceptance remains `DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current bounded production piece

`FIRST_SLICE_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTATION`.

The generic combat layer must consume the stable pending health/injury handoff once, use a clearly labeled reversible normalized health/damage fixture, preserve channels/hit quality/defense trace, clamp health at zero and leave actual status application plus defeat/outcome to later owners.