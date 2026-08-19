# 14_DESIGN_AUTHORITY — project design governance

One job: route consequential design work to the best-fit expert role, define the Creative Steward's delegated authority, and preserve human-readable decisions without mixing governance payload into the in-world simulation.

## Inputs
- Current user directive: `../_shared/ACTIVE_GAME_DIRECTIVE_2026-08-18.md`
- Authority/storage routing: `../_shared/AUTHORITY_AND_STORAGE_POINTERS.md`
- Era/world catalog when relevant: `../_shared/WORLD_RECORD_CATALOG.md`
- `expert-routing.yaml`
- The minimum affected game records for the active batch.

## Process
1. Classify the task by dominant failure risk and domain.
2. Select one primary expert and up to two supporting experts using `expert-routing.yaml`.
3. Distinguish source-confirmed material, user canon, original fabricated canon, inference, and unresolved external/source facts.
4. Make a bounded decision under `CREATIVE_STEWARD_MANDATE.md`.
5. Record consequential decisions in `DESIGN_DECISION_LEDGER.md`.
6. Build candidate files in GitHub, validate, obtain the required ICM human gate, then promote to Drive and read back.

## Outputs
- Expert selection in each consequential batch.
- Append-only public design decision entries.
- Reusable decision templates.
- Explicit migrations/supersessions for changed canon or mechanics.

## Human check
Human approval is required at the ICM gates and for decisions explicitly reserved to the user. Routine reversible original-canon design inside an approved scope does not require micro-approval.
