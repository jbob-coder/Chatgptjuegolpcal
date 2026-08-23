# Quality Baseline

LAST_VERIFIED_COMMIT: 71a35e95cc869022c0c90f52c330386f6504ba3f
STATIC_TEST_COUNT: 10
STATIC_TEST_PASS_COUNT: 9
QA_VALIDATOR_COUNT: 7
TOTAL_STATIC_CHECK_COUNT: 17
TOTAL_STATIC_PASS_COUNT: 16
STATIC_VERIFICATION_STATUS: PASS_FOCUSED_WITH_KNOWN_LOCAL_OBJECT_REFRESH_LIMITATION
RUNTIME_VERIFICATION_STATUS: RUNTIME_GATE_NOT_EXECUTED
PARSER_RUNTIME_STATUS: NOT_VERIFIED_BY_GODOT_ENGINE
BROKEN_REFERENCES: 0
STABLE_ID_VIOLATIONS: 0
SOURCE_PROVENANCE_VIOLATIONS: 0
FILE_PLACEMENT_VIOLATIONS: 0
OPEN_REGRESSIONS: 0
OPEN_BLOCKERS: 2

Known limitations: Godot executable is unavailable, so parser/runtime verification remains open. The environment rejected local refreshes for connector-written commits; therefore the stale clone cannot satisfy `verify_project_state.py` when `LAST_OBSERVED_HEAD` or `LAST_VERIFIED_COMMIT` points at a connector-written remote commit missing from its local object database. Authenticated GitHub `main` readback proves Piece 015 implementation commit `71a35e95cc869022c0c90f52c330386f6504ba3f`, its parent, commit message, and tree. The implementation candidate passed all focused checks; the accumulated runner remains accurately reported as 16/17 rather than falsely promoted.

Architecture minimums: dedicated implementation root is `jack_wilson_godot_game/`; cumulative tests may not reject legitimate later completed features; project-control tests derive transient state rather than hard-coding it; repository observations in technical documentation must match live referenced files; current-user directive pointers must map to registered source evidence; source uncertainty remains explicit; runtime verification cannot be inferred from static checks.

Piece 025 adds no baseline PASS claim until its own source, structure, routing, scene, and regression checks are actually executed where possible.
