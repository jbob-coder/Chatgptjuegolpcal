# Batch 018 Live ICM Walk Test

Result: **PASS for architecture and storage routing; gameplay correctly BLOCKED by the migration gate.**

## Cold-start route
1. Open campaign root `CLAUDE.md`. It identifies the active game workspace and routes authority, scoped change work, build/fix work, and verification/promotion.
2. Load `00_BOOTSTRAP/220_ACTIVE_LOAD_ORDER_V2.json`. It names the active authority, save architecture, current pointer, Jack record, system index, domain engines, world status, location gate, and readiness metrics.
3. `00_BOOTSTRAP/219_CURRENT_POINTER_ACTIVE_GAME_V2.json` reports `MIGRATION_REQUIRED`, so a cold agent stops before narration rather than accidentally resuming the superseded Greybridge save.

## Structure checks
- All permanent shelves `00_BOOTSTRAP` through `13_BATCH_HISTORY` plus `99_BACKUPS` required by the routing schema are present.
- `07_QUESTS`, `08_ITEMS`, and `11_SIMULATION` now have active system files.
- `12_VALIDATION` contains current validation/readiness material rather than historical batches.
- Historical batches are under `13_BATCH_HISTORY`; backups are under `99_BACKUPS`.
- Source analysis was moved out of the active campaign root to the deferred source workspace without opening the novel.
- Replacement-setting records are preserved under `LEGACY_REPLACEMENT_SETTING`; superseded generic systems are under `LEGACY_SUPERSEDED_SYSTEMS`.
- `10_SYSTEMS/234_ACTIVE_SYSTEM_INDEX_V2.json` is the activation whitelist: file presence alone does not make an old system active.

## Integrity checks
- 32/32 Batch 018 core files were downloaded back from Google Drive.
- 32/32 byte sizes matched the GitHub-verified manifest.
- 32/32 SHA-256 hashes matched.
- Batch manifest, canonical checksum list, and validation report also matched byte-for-byte after Drive readback.

## Remaining intentional block
The systems layer is usable, but active narrative play must not resume until a source-compatible current location/world slice is migrated or generated under the allowed authority rules and passes `225_PRE_NARRATION_EXISTENCE_GATE_V2`. Current jurisdiction statutes and currency are likewise `UNKNOWN` rather than fabricated.
