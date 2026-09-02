# WorldLife RPG — Development Reference

Current reference: `0.5.7`.

Authoritative full document: https://drive.google.com/file/d/1Kj56A_EIdOefIzwoudh3YKMmmI8H6foD/view?usp=drivesdk
Authoritative source folder: https://drive.google.com/drive/folders/1ZFD7TQl5rxco8kAPQuzgMcAdaPdjoQ-T

## Non-negotiable development rules

1. Inspect the latest checksum-verified Drive source before project-specific edits.
2. `GameState` is persistent authority; `GameEngine` owns mutation/legality.
3. Compose/SceneView renders state and dispatches actions. Never create a second gameplay authority in UI code.
4. Preserve stable IDs, save migrations, application ID, signing lineage, and existing Arclight coordinates.
5. Make one bounded/reversible piece at a time and add behavior tests where practical.
6. Distinguish IMPLEMENTED / COMPILED / TESTED / RUNTIME VERIFIED / APK VERIFIED.
7. Never claim a current APK/runtime pass without actually executing it.
8. Google Drive is primary; GitHub version branches are pointer/history mirrors.
9. Do not use GitHub Actions, paid runners, Codespaces, Git LFS, paid APIs/builds/assets without explicit approval.
10. Keep files below the 90 MiB working ceiling when targeting a 100 MiB service limit.

## Current architecture boundary

```text
Compose + SceneView
    ↓ actions
GameViewModel
    ↓
AndroidGameRepository
    ↓ DataStore transaction
GameEngine (:game-core)
    ↓
GameState
    ↓
GameSaveJsonCodec
```

## v0.5.7 current boundary

Apartment presentation exists, but interior free-roam does not yet have core authority. Do **not** add a functioning indoor joystick by moving the avatar only in Compose. First add local interior position/collision/repair to `:game-core`, test it, then connect presentation.

## World scale rule

The existing 60 × 40 grid at 4 m/cell is permanent save space. Grow the world by stable streamed sectors and low-detail neighbor proxies, never by changing the old scale.

## Visual/animation rule

Visual skin and animation may improve presentation, but gameplay-relevant location, movement, schedule, interaction, collision, and persistent facts remain engine-owned. Use the authoritative `WORLD_ART_BIBLE.md` and `ANIMATION_RUNTIME_PLAN.md` in Drive for current standards.

This GitHub copy is intentionally concise so it cannot silently become a competing source of truth. Use the linked Drive document for the complete development procedure.
