# Decisions

## D-0001
DECISION_ID: D-0001
DATE: 2026-08-20
QUESTION/PROBLEM: How should completed later features interact with earlier per-piece static scope guards?
DECISION: Earlier verifiers become cumulative invariants. They may not forbid behavior introduced by a later completed piece; they should continue to protect their own required behavior and still-unimplemented boundaries.
AUTHORITY: USER_DIRECTIVE plus VERIFIED_REPOSITORY_FACT from REG-0001.
ALTERNATIVES_CONSIDERED: Delete the old verifier; weaken all scope guards; split the player controller immediately.
WHY_SELECTED: Preserves regression coverage without rejecting legitimate accumulated functionality or performing an unrelated refactor.
REVERSIBLE: YES
FILES_AFFECTED: tests/verify_movement.py; scripts/qa/verify_all.py
TESTS_REQUIRED: python scripts/qa/verify_all.py
COMMIT: 69555333e8f2a14299d6bd4dcb7b82003ba0e007
SUPERSEDES: NONE
SUPERSEDED_BY: NONE

## D-0002
DECISION_ID: D-0002
DATE: 2026-08-20
QUESTION/PROBLEM: New gameplay was ready to continue, but the mandatory persistent project-control system was missing.
DECISION: Restore project-control continuity and QA infrastructure in bounded pieces before adding gameplay.
AUTHORITY: USER_DIRECTIVE.
ALTERNATIVES_CONSIDERED: Continue with gravity immediately; create every requested infrastructure file in one oversized commit.
WHY_SELECTED: Repairs continuity without mixing unrelated gameplay and infrastructure or creating unverified bulk scaffolding.
REVERSIBLE: YES
FILES_AFFECTED: project_control/*; tests/verify_project_control_core.py
TESTS_REQUIRED: python scripts/qa/verify_all.py
COMMIT: 2707ca1dd4794b29210594e1524d647e6d936c77
SUPERSEDES: NONE
SUPERSEDED_BY: NONE

## D-0003
DECISION_ID: D-0003
DATE: 2026-08-20
QUESTION/PROBLEM: The first Piece 008 control-core verifier encoded transient current/next piece IDs and would become stale on normal project progression.
DECISION: Project-control verification must validate relationships between recorded fields and roadmap state rather than hard-code the current transient piece ID or transient status.
AUTHORITY: VERIFIED_REPOSITORY_FACT plus zero-quality-downgrade rule.
ALTERNATIVES_CONSIDERED: Rewrite the test at every piece transition; remove current-piece checks.
WHY_SELECTED: Prevents recurrence of the stale-test class while retaining meaningful continuity validation.
REVERSIBLE: YES
FILES_AFFECTED: tests/verify_project_control_core.py
TESTS_REQUIRED: python scripts/qa/verify_all.py
COMMIT: 2707ca1dd4794b29210594e1524d647e6d936c77
SUPERSEDES: NONE
SUPERSEDED_BY: NONE

## D-0004
DECISION_ID: D-0004
DATE: 2026-08-20
QUESTION/PROBLEM: The QA layer needs to protect cumulative quality while remaining valid as transient project state advances.
DECISION: Keep the QA scripts standard-library-only, make transient state checks relational across project-control records, and store minimum static-quality metrics as machine-readable fields in QUALITY_BASELINE.md.
AUTHORITY: USER_DIRECTIVE plus QA-009-01 review finding.
ALTERNATIVES_CONSIDERED: Hard-code Piece 009/current runtime values; depend on a third-party Python test framework; keep verification manual.
WHY_SELECTED: Provides deterministic non-zero gates without creating the same stale-state failure class already found in Pieces 007 and 008.
REVERSIBLE: YES
FILES_AFFECTED: scripts/qa/*; tests/verify_project_control_core.py; project_control/QUALITY_BASELINE.md
TESTS_REQUIRED: python scripts/qa/verify_all.py
COMMIT: 94688bda38135ffbf43bc001c81a1ecabc180989
SUPERSEDES: NONE
SUPERSEDED_BY: NONE

## D-0005
DECISION_ID: D-0005
DATE: 2026-08-20
QUESTION/PROBLEM: How should Godot technical knowledge be persisted without front-loading speculative research or using unstable-version APIs?
DECISION: Maintain an incremental Godot 4.7 master guide and implementation reference log. Fully research only systems required by the active bounded piece, mark future subjects PLANNED, and use exact `/en/4.7/` documentation as primary technical authority.
AUTHORITY: USER_DIRECTIVE plus VERIFIED_GODOT_DOCUMENTATION.
ALTERNATIVES_CONSIDERED: Fill a large guide from model memory; use `latest` documentation; defer all documentation until after implementation.
WHY_SELECTED: Prevents API/version hallucination while avoiding over-engineered speculative documentation.
REVERSIBLE: YES
FILES_AFFECTED: docs/godot/*; tests/verify_godot_docs_baseline.py; scripts/qa/verify_structure.py
TESTS_REQUIRED: python scripts/qa/verify_all.py
COMMIT: 4c64bcbaabf2eaff5f23d3e94212175644a1263f
SUPERSEDES: NONE
SUPERSEDED_BY: NONE
