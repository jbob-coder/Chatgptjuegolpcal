# Active Game ICM Restructure — Stage 1 Plan

Status: `AWAITING_HUMAN_GATE`  
Scope: ChatGPT game only. Source/novel reading is excluded.

## Inventory result

### GitHub temporary verification repository
- `README.md` — catalog for the temporary audit/verification repository.
- `governance/PERMANENT_STORAGE_AND_VERIFICATION_POLICY.md` — contract; Drive authority + GitHub-first verification flow.
- `audit/` — historical verification products.
- `temporary_verification/jack_wilson_original_campaign/batch_*` — historical/candidate products; they are not the live routing layer.
- `third_party/icm-architect/` — factory/reference; vendored upstream method, do not project-edit.
- `SCAN_108MIB_WITH_COLAB.md` — leftover audit procedure, not active-game routing.
- `__nonexistent__` — dead placeholder candidate; do not silently delete before approval.

### Google Drive active game root
Active parent: `1o1jbSnGVs5daSkoLmfn1V8TvtO8PxNjX` → `Jack_Wilson_Original_Campaign` `1j2cKz-t1tqpp6MA9YXw9vKZjAXLQxG85`.

Existing purpose shelves: `00_BOOTSTRAP`, `01_CANON`, `02_WORLD`, `03_CHARACTERS`, `04_LOCATIONS`, `05_EVENTS`, `06_RELATIONSHIPS`, `09_ABILITIES`, `10_SYSTEMS`, `12_VALIDATION`.

Missing from the repository's own permanent-storage layout: `07_QUESTS`, `08_ITEMS`, `11_SIMULATION`, `13_BATCH_HISTORY`, `99_BACKUPS`.

Root-level campaign leftovers requiring migration review: `01_WORLD_ENGINE_BATCHES` and `00_SOURCE_ANALYSIS_NO_CANON_COPY`.

A second Drive root named `Juego de chat gpt` exists at `14F6pYU-ePheTLQpQwuy8ZDKWK_fnd7nV`. It contains raw source DOCX/reconstruction material. Under the current user directive it is a deferred source workspace and must not be loaded for active-game work.

## Confirmed defects / conflicts

1. **Current save uses superseded legacy setting IDs.** `00_BOOTSTRAP/01_CURRENT_SAVE.json` points at `LOC_GREYBRIDGE_BLOCK18_APT6B`. The playable handoff also places Jack in Apartment 6B. Later explicit user authority removed Greybridge/Lyren/Northstar-style replacement-setting constructs from active canon. Preserve the old save as evidence; do not silently rewrite it.
2. **Project authority is stale.** `01_CANON/00_PROJECT_AUTHORITY.json` still declares Cindervale/Greybridge as active setting. It needs append-only supersession, not in-place historical erasure.
3. **Steal canon is stale.** `09_ABILITIES/05_STEAL_ABILITY_CANON.json` still contains the old fixed `20 + tier*10 CM`, temporary-suppression, two-points-per-scene, one-hour-per-point, milestone-only permanent-stat rules that later user authority explicitly superseded.
4. **Exact Steal CM table remains unresolved.** The repair must preserve `UNRESOLVED`, not invent numbers.
5. **Batch/history placement is mixed.** Validation contains many `Batch_*` folders while `13_BATCH_HISTORY` does not yet exist; root `01_WORLD_ENGINE_BATCHES` is also outside the declared permanent layout.
6. **Two same-name Drive roots exist.** Active campaign and permanent-story infrastructure are in one; raw source/reconstruction is in the other. A router must distinguish them by ID so future agents do not crawl the wrong tree.

## Proposed live control tree

```text
Jack_Wilson_Original_Campaign/
├─ CLAUDE.md
├─ AGENTS.md                 # pointer to CLAUDE.md; no duplicate payload
├─ CONTEXT.md
├─ _shared/
│  ├─ ACTIVE_GAME_DIRECTIVE_2026-08-17.md
│  └─ AUTHORITY_AND_STORAGE_POINTERS.md
├─ _templates/
│  └─ CHANGE_BATCH.md
├─ stages/
│  ├─ 01_SCOPE_CHANGE/CONTEXT.md
│  ├─ 02_BUILD_AND_FIX/CONTEXT.md
│  └─ 03_VERIFY_AND_PROMOTE/CONTEXT.md
├─ 00_BOOTSTRAP/
├─ 01_CANON/
├─ 02_WORLD/
├─ 03_CHARACTERS/
├─ 04_LOCATIONS/
├─ 05_EVENTS/
├─ 06_RELATIONSHIPS/
├─ 07_QUESTS/
├─ 08_ITEMS/
├─ 09_ABILITIES/
├─ 10_SYSTEMS/
├─ 11_SIMULATION/
├─ 12_VALIDATION/
├─ 13_BATCH_HISTORY/
└─ 99_BACKUPS/
```

## Proposed migration order after approval
1. Install the control/router files into the live campaign root; verify cold-walk routing.
2. Create the five missing permanent shelves.
3. Add an append-only active-directive/supersession record; do not alter historical source evidence.
4. Repair Steal through a new active canon version + supersession record, leaving exact CM cost unresolved.
5. Supersede stale project authority with a new active authority file that does not invent a replacement setting.
6. Mark the current Greybridge-based save/handoff as historical or migration-blocked until a non-source-reading start/location decision is resolved.
7. Move batch evidence to `13_BATCH_HISTORY` only after reference/manifest review; keep validation reports in `12_VALIDATION`.
8. Move source-analysis/reconstruction work out of active-game routing into the deferred source workspace without opening the novel files.
9. Review old `00_PERMANENT_STORY_SYSTEM` for one-home-per-fact and replace duplicate facts with pointers rather than copies.
10. Run the ICM walk test and Drive readback.

## Human check
Approve or edit this tree and migration order. No existing Drive game file is moved/deleted/replaced until this gate is satisfied.
