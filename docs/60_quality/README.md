# 60_quality — Verification, Performance, Debug and Creator Quality

Purpose: prove the game remains correct, explainable and affordable as content grows.

Belongs here after future migration/new work:
- test plans/fixtures;
- content validation rules;
- performance budgets/device ledgers;
- regression records;
- profiling procedures;
- Admin/Creator/debug tool requirements;
- package acceptance checklists;
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
- every important result should be explainable through traces/debug tooling;
- regression tests accompany root-cause fixes once source exists.

Package-local acceptance criteria may live inside the package, while generic verification policy lives here/root authority.
