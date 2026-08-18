# Proposed migration map — no moves executed yet

Status: proposal only; human gate required.

| Current | Proposed action | Role after migration |
|---|---|---|
| Drive campaign root | add ICM entry/control layer | catalog + contracts |
| `00_BOOTSTRAP/01_CURRENT_SAVE.json` | preserve; mark migration-blocked/historical until active start is resolved | product/evidence |
| `01_CANON/00_PROJECT_AUTHORITY.json` | preserve; add superseding active authority version | historical + active contract |
| `04_LOCATIONS/Greybridge_and_Block18/` | archive from active routing after dependency review | historical product |
| `09_ABILITIES/05_STEAL_ABILITY_CANON.json` | preserve; add superseding active version | historical + active contract |
| `12_VALIDATION/Batch_*` | split verification reports vs batch-history payloads | product |
| campaign-root `01_WORLD_ENGINE_BATCHES/` | move to `13_BATCH_HISTORY/` after manifest/reference review | historical product |
| campaign-root `00_SOURCE_ANALYSIS_NO_CANON_COPY/` | move to deferred source workspace without reading its source files | deferred factory/evidence |
| old `00_PERMANENT_STORY_SYSTEM/` | reconcile one fact at a time; pointer instead of duplicate | legacy support/reference |
| GitHub `__nonexistent__` | archive/delete only after explicit approval | dead |
| GitHub `batch_*` | retain only while needed for verification/history; Drive remains authority | temporary product |
