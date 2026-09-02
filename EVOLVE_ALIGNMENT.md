# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / DESIGN PHASE
Last reconciled: 2026-09-02

## Authority order

For intended changes:
1. Current explicit user instruction.
2. Locked project decisions not superseded by the user.

For implementation facts after source exists:
1. Current verified project source/tests.
2. Current durable project documentation.
3. Verified build/runtime evidence.
4. External documentation/research.
5. Conversation summaries/memory.

For runtime claims:
1. Direct target-device evidence.
2. Logs/screenshots/video.
3. Build/package evidence.
4. Source/static expectations.
5. Documentation summaries.

## Mandatory loop

READ STATE
→ VERIFY STATE
→ IDENTIFY ONE SMALL PIECE
→ RESEARCH IF REQUIRED
→ IMPLEMENT
→ TEST
→ INSPECT FOR REGRESSION
→ FIX
→ UPDATE DOCUMENTATION
→ SAVE/COMMIT
→ READ BACK SAVED STATE
→ MARK STATUS
→ NEXT PIECE

No implementation begins during the current design-discussion hold.

## Status vocabulary

Keep gates separate:
- DESIGNED
- IMPLEMENTED
- STATIC_VERIFIED
- TESTED
- COMPILED
- APK_BUILD_VERIFIED
- PHONE_RUNTIME_VERIFIED
- VISUAL_QUALITY_VERIFIED
- PERFORMANCE_VERIFIED

Never call a design implemented or a build phone-verified without direct evidence.

## Continuity fields

Durable handoffs should keep current:
- CURRENT_OBJECTIVE
- CURRENT_STATE
- LAST_VERIFIED_STATE
- COMPLETED
- IN_PROGRESS
- NEXT_ACTION
- BLOCKERS
- IMPORTANT_DECISIONS
- RISKS
- FILES_CHANGED
- TESTS_RUN
- RESULTS
- ASSUMPTIONS
- UNKNOWNS

## New-game rule

This is not WorldLife. Old WorldLife source, saves, Android architecture, city coordinates, NPCs, and gameplay systems are not inherited by default.

Only abstract engineering lessons may carry forward when independently useful, such as:
- authoritative domain state;
- UI is not a second engine;
- stable IDs;
- deterministic/reproducible tests;
- save migration discipline;
- explicit verification gates;
- rollback-safe small changes;
- target-device testing early.

## Architecture decision rule

Before choosing a game engine, evaluate:
NOW: can it build the required aerial + first-person tactical vertical slice reliably on the target Android phone?
NEXT: can it support data-driven monsters/anatomy, animation, tools, saves, and content iteration without excessive custom infrastructure?
LATER: can it scale to more regions/creatures/content without architectural traps or unacceptable mobile performance?

Choose the simplest robust option that passes real-device evidence.

## Root-cause rule

When a bug appears:
- reproduce/collect evidence;
- classify severity;
- identify the owning system;
- fix the root cause rather than hiding the symptom;
- test the bounded change;
- regression-check adjacent contracts;
- record verified state.

## Destructive-operation rule

Destructive changes require explicit intent and exact scope. The user explicitly ordered WorldLife removed and the same project area reused. GitHub active WorldLife records have therefore been removed. Permanent Drive deletion was attempted but blocked by platform safety controls and must remain recorded as incomplete rather than falsely claimed.

## Current stop condition

NEXT_ACTION = DESIGN_DISCUSSION
IMPLEMENTATION_AUTHORIZED = NO

Revise design documents as the user makes decisions. Do not write gameplay source until authorization changes.
