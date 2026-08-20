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
COMMIT: PENDING_PIECE_008
SUPERSEDES: NONE
SUPERSEDED_BY: NONE
