# WorldLife RPG — Google Drive Primary Mirror

This branch is a billing-safe mirror. Google Drive is the authoritative project store.

## Rules
- Do not run GitHub Actions from this mirror.
- The mirror intentionally contains no `.github/workflows` directory.
- Source archives, binary art assets, APKs, and checksums are stored in Google Drive first.
- GitHub is used only for lightweight source/history mirroring after Drive verification.
- Do not use Git LFS, paid runners, Codespaces, paid APIs, or metered services.
- Working file ceiling for a destination with a 100 MiB limit: 90 MiB = 94,371,840 bytes.

## Drive authority
Root: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
Source/v0.4.8: https://drive.google.com/drive/folders/10Y5DNzk_1nScW-j0pj0FJP03Cb-F7NjD
Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
Builds root: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## v0.4.8 current source state
- Scene scale remains 4.0 m per simulation tile: 30 x 20 district = 120 x 80 m.
- Roads 6.4 m; sidewalks 1.8 m; human-scale player/NPC/buildings.
- Full-stick normal traversal calibrated to ~3.5 m/s; sprint ~6.2 m/s while preserving 4 m simulation steps through interpolation.
- Generated road, sidewalk, crosswalk, facade, door, window, tree, bench, and hydrant images are used directly in the SceneView world.
- Generated photo facades are reused across multiple building elevations.
- Generated bench, hydrant, and tree crops have neutral sheet backgrounds removed for in-world alpha use.
- HUD/action controls scale to landscape screen height; camera is 4.2 m over-the-shoulder with 0.55 m offset.
- Joystick/action generated WebP assets remain active in the mobile HUD.

## Verification state
Static source verification PASS. Pure Kotlin game-core compile PASS. Prior 532-check world regression PASS. Six-resident migration/schedule PASS. All six NPC TALK effects PASS. Drive round-trip SHA/ZIP verification PASS. Android/SceneView compile for v0.4.8 is still pending because routine GitHub Actions are disabled by user cost policy and this sandbox does not currently contain a full Android SDK/Gradle dependency cache. The last fully Android-compiled/signature-verified APK remains v0.4.0 in Drive/Builds/verified.


### v0.4.8 additional repairs
- Shared `OpenWorldGeometry` is authoritative for renderer and engine collision.
- Engine rejects solid movement and diagonal corner cutting.
- Legacy blocked saves relocate deterministically to the nearest walkable cell.
- Map fast-travel is active for discovered locations and displays fare/affordability.
- Unaffordable interactions are disabled with explicit feedback.
- Follow camera shortens against shared building/landmark geometry.
- NPCs/player use human-scale procedural bodies; location beacons are reduced; daylight intensity follows game time.

- v0.4.8 adds engine-authoritative scheduled NPC TALK interactions; mirror remains pointer/history only.

- v0.4.8 expands the save-migrated social catalog to six scheduled residents.
