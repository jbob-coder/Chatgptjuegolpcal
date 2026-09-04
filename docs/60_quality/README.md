# 60_quality — Verification, Performance, Debug and Creator Quality

Status: ACTIVE QUALITY PACKAGE / HUNT-01 MANIFEST VALIDATION CONTRACT RECORDED / EXECUTABLE STATIC VALIDATOR NEXT
Last reconciled: 2026-09-03

## Purpose

Prove the game remains correct, explainable and affordable as content grows.

Belongs here:
- test plans/fixtures;
- content/build-manifest validators;
- performance budgets/device ledgers;
- regression records;
- profiling procedures;
- Admin/Creator/debug tool requirements;
- measured quality reports.

Current root authorities:
- `/TESTING_VERIFICATION_PLAN.md`;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `/ADMIN_CREATOR_SYSTEM.md`;
- `/DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Rules:
- design targets are not measured limits;
- compile success is not phone runtime verification;
- every scalable system needs caps/cleanup/instrumentation;
- important results should be explainable through traces/debug tooling;
- regression tests accompany root-cause fixes once source exists.

Package-local acceptance criteria may live inside the owning package, while executable validators/tests belong to the quality/test layer.

## Current Hunt-01 package validation

Owning Region validation contract:
`../10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

Machine input:
`../10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

The package defines 30 validation rules across:
- `MANIFEST_STATIC`;
- `SCENE_STATIC_FUTURE`;
- `RUNTIME_FUTURE`;
- `PHONE_FUTURE`.

The first executable validator must implement only the engine-independent MANIFEST_STATIC subset first and must explicitly report higher-level checks as NOT EXECUTED.

Minimum static rule set:
`H01VAL001,002,003,004,012,013,014,021,024,025,026,027,030`.

## Exact next quality piece

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.

Before selecting source placement, reread `CODE_GUIDE.md`. Preferred architecture direction is test/tool source that consumes content/build data and does not depend on rendering/UI or production gameplay mutation.

The validator should:
- parse the JSON manifest;
- return non-zero on ERROR;
- recompute tactical-link distances;
- verify stable coordinate copies;
- verify manifest family/count requirements;
- verify debug/non-authority classifications;
- calculate ramp path/grade information;
- emit bounded human + machine-readable results;
- never claim scene/runtime/phone verification.

Current:
`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = NO`.
