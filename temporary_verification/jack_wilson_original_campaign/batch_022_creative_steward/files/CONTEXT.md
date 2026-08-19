# Jack Wilson campaign workspace

One job: make bounded ChatGPT-game changes through a transparent, human-reviewed GitHub→Drive pipeline while keeping permanent game records organized by purpose.

## Form
This workspace composes an ICM **Pipeline** with the campaign's existing domain record shelves. The pipeline controls changes; the numbered Drive folders store the game records.

## Pipeline
1. `stages/01_SCOPE_CHANGE/` — identify the exact change, authority, affected files, risks, and acceptance checks.
2. Human gate — approve the scope/change plan.
3. `stages/02_BUILD_AND_FIX/` — generate or modify candidate files only in temporary verification.
4. Human gate — inspect the candidate diff/manifest.
5. `stages/03_VERIFY_AND_PROMOTE/` — validate, promote approved files to Drive, then read them back.

## Permanent Drive shelves
`00_BOOTSTRAP`, `01_CANON`, `02_WORLD`, `03_CHARACTERS`, `04_LOCATIONS`, `05_EVENTS`, `06_RELATIONSHIPS`, `07_QUESTS`, `08_ITEMS`, `09_ABILITIES`, `10_SYSTEMS`, `11_SIMULATION`, `12_VALIDATION`, `13_BATCH_HISTORY`, `14_DESIGN_AUTHORITY`, `99_BACKUPS`.

## Context loading
Load only: this file, the active stage `CONTEXT.md`, the selected expert-route contract when project-level design is involved, the explicit inputs named there, and the minimum target game files needed. Do not crawl the whole Drive tree and do not load source-story files.

## State
Stage status is derived from artifacts in each stage output location. Historical batch directories are products/evidence, not routing files.
