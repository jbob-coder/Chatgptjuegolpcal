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

## D-0006
DECISION_ID: D-0006
DATE: 2026-08-20
QUESTION/PROBLEM: A Piece 010 VERIFIED_REPOSITORY observation contradicted the live controller, while related baseline/issue records also lagged the actual completed state.
DECISION: Stop new feature/organization work, repair repository-truth drift first, and strengthen relational/cross-file verification so documentation observations and verified-commit pointers are checked against their referenced live state.
AUTHORITY: VERIFIED_REPOSITORY_FACT plus zero-quality-downgrade/anti-hallucination directive.
ALTERNATIVES_CONSIDERED: Ignore the stale documentation because gameplay is already correct; fix only the prose; continue Piece 011 organization and fold repairs into it.
WHY_SELECTED: A false VERIFIED_REPOSITORY claim is a quality failure even when gameplay is unaffected. Repairing first prevents stale state from becoming future authority.
REVERSIBLE: YES
FILES_AFFECTED: docs/godot/*; tests/verify_godot_docs_baseline.py; scripts/qa/verify_project_state.py; project_control/*
TESTS_REQUIRED: python tests/verify_godot_docs_baseline.py; python scripts/qa/verify_project_state.py; python scripts/qa/verify_all.py
COMMIT: 921fbaf8abc09e61d0b98fc4f286cef1ecb367ba
SUPERSEDES: NONE
SUPERSEDED_BY: NONE

## D-0007
DECISION_ID: D-0007
DATE: 2026-08-20
QUESTION/PROBLEM: Piece 010 seal and the first Piece 011 repair both retained four future repository-organization systems while citing a separation directive that is absent from SOURCE_REGISTRY and from the current user instruction.
DECISION: Keep those four systems out of the active roadmap until authoritative user/source evidence is registered. Preserve the missing authority as Q-0002/U-0005 and resume the prior evidence-backed gameplay sequence with gravity after Piece 011.
AUTHORITY: USER_DIRECTIVE source-of-truth/unknown/roadmap-decision rules plus VERIFIED_REPOSITORY_FACT from REG-0003.
ALTERNATIVES_CONSIDERED: Invent a separation-directive source; implement the unverified systems; delete all history of the insertion; block unrelated gameplay indefinitely.
WHY_SELECTED: Restores traceable authority without discarding history and leaves a reversible path to re-add the systems if genuine user evidence later appears.
REVERSIBLE: YES
FILES_AFFECTED: project_control/MASTER_STATE.md; project_control/ROADMAP.md; project_control/SOURCE_REGISTRY.md; project_control/QUESTIONS_AND_ANSWERS.md; project_control/KNOWN_UNKNOWNS.md; project_control/REGRESSION_LOG.md; tests/verify_project_control_core.py
TESTS_REQUIRED: python tests/verify_project_control_core.py; python scripts/qa/verify_all.py
COMMIT: PENDING_PIECE_011
SUPERSEDES: NONE
SUPERSEDED_BY: NONE
