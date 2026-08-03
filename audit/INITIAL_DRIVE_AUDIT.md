# Initial Google Drive Audit

Source authority: Google Drive folder `Juego de chat gpt`.

## Confirmed structure

- `Jack_Wilson_World_Archive/`
  - `Part_1_Core_Character/`
  - `Part_2_World_Magic_Factions/`
  - `Part_3_Skills_Classes_Relations/`
  - `Part_4_Crafting_Combat_Guilds/`
  - `Part_5_Architecture_Learning_Engines/`

## Confirmed safeguards

- The five 108 MiB `RESERVED_STORAGE_NOT_LORE_PART_*` files remain in Google Drive and are not copied into GitHub.
- No Git LFS is used.
- No GitHub Actions workflow is installed.
- No paid service is enabled by this repository.
- Google Drive remains the authoritative copy.

## Known duplicate candidates

The following Part 5 pairs have matching names and sizes but must not be deleted until SHA-256 equality is established:

- `system_architect_COPY_A.txt` / `system_architect_COPY_B.txt`
- `core_learning_engine_COPY_A.txt` / `core_learning_engine_COPY_B.txt`
- `core_cognitive_engine_COPY_A.txt` / `core_cognitive_engine_COPY_B.txt`

Additional duplicate candidates remain at the root of `Juego de chat gpt`, including alternate copies of core, world, class, relationship, combat, guild, dice, base-building, learning, and cognitive documents. These may belong to the separate FULL package.

## Deletion gate

No Drive deletion is authorized by this preliminary report. Deletion requires:

1. SHA-256 equality or an explicit authoritative-manifest decision.
2. Verification that the retained file is readable.
3. Verification that all manifest references remain satisfiable.
4. A deletion log identifying the retained and removed Drive file IDs.

## Next executable step

Export or stream the non-reserved files into a local audit workspace, run `tools/audit_drive_export.py`, review the generated exact-duplicate groups, repair manifests and folder placement in Drive, and only then remove confirmed redundant files.
