# REGION_01 — Acceptance Checklist

Status: BUILD SPEC + MANIFEST STATIC VERIFIED / ENGINE GRAYBOX NOT STARTED
Last reconciled: 2026-09-04

## Gate A — Documentation coherence

PASS.

## Gate B0 — Hunt-01 build specification readiness

PASS.

Recorded:
- route/topology;
- stable evidence/Monster/node coordinates;
- dimensions/grades/steps;
- River Ford/meadow/cover/Monster clearance;
- camera/stream proxies;
- engine-neutral hierarchy;
- machine manifest;
- validation contract;
- build-only controls separated from gameplay authority.

## Gate B1 — Manifest static validation

PASS.

Executable validator exists and passed:
- schema/identity;
- build-ID uniqueness;
- group refs/no cycles;
- evidence containment;
- N01–N10 EF02 bounds;
- 14 tactical-link distance recomputation;
- streaming proxy non-physical classification;
- terrain tag allowlist;
- debug non-authority;
- source-coordinate copy consistency;
- build-only control non-authority;
- required manifest families/counts.

Workflow:
`33830978945` SUCCESS.

Result:
13/13 PASS / 0 errors / 0 warnings.

Negative self-test:
PASS — intentionally corrupted data generated expected validation failure.

`HUNT01_MANIFEST_STATIC_GATE_B1 = PASS`.

## Gate B2 — Engine graybox scene

NOT STARTED.

Required after current Stage-1 phone functional gate closes:
- build only the first validated Hunt-01 route/EF02 primitive scene slice;
- measure route 285–315 m;
- verify slopes/steps/widths;
- build River Ford and Meadow targets;
- verify tactical-node physical reachability;
- verify boulder/tree placement;
- verify Charge/pivot/escape clearances;
- verify camera clearance;
- ensure stream debug proxies have no gameplay collision;
- no invisible arena wall/softlock.

## Gate C — Tracking/persistent hunt runtime

NOT EXECUTED.

## Gate D — Terrain/effect runtime

NOT EXECUTED.

## Gate E — Encounter continuity runtime

NOT EXECUTED.

## Gate F — Streaming robustness

NOT EXECUTED.

## Gate G — Android performance

NOT VERIFIED.

Sustained device evidence remains required before `PERFORMANCE_VERIFIED` may be used.

## Current authorization

User direction: after the corrected Stage-1 control/camera APK passes its final Galaxy A03s retest, the functional Stage-1 gate may close and the first production Hunt-01 graybox slice may begin.

Current:
`HUNT01_BUILD_SPEC_GATE_B0 = PASS`
`HUNT01_MANIFEST_STATIC_GATE_B1 = PASS`
`HUNT01_GRAYBOX = NOT_STARTED`
`REGION_01_RUNTIME_IMPLEMENTED = NO`
`PHONE_RUNTIME_VERIFIED_FOR_REGION = NO`
`PERFORMANCE_VERIFIED = NO`.

Exact next external gate:
`STAGE1_FINAL_GALAXY_A03S_CONTROL_CAMERA_RETEST`.

Next Region implementation after PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.
