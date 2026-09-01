# WorldLife RPG v0.4.4 — Drive-primary mirror

Google Drive is authoritative. This branch is a billing-safe mirror record and intentionally contains no `.github/workflows` directory.

## Authority
- Drive root: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
- Source v0.4.4: https://drive.google.com/drive/folders/1L6sQs8Fs27lnwd5mhjYstfeLR8cJup8A
- Source archive: https://drive.google.com/file/d/15T7lDHMsKhNcgmcFyxE4VmksNg4lzqWy/view?usp=drivesdk
- Runtime/master art remains under Drive Assets; v0.4.4 reuses the verified v0.4.3 image set.

## Exact source snapshot
- versionCode: 9
- versionName: 0.4.4
- source ZIP size: 1,429,726 bytes
- source ZIP SHA-256: adb8148a4cb1569f1345ffae3d1daa7dbfe7573f2c4017ef5172df3eb64984be
- project file safety ceiling: 90 MiB = 94,371,840 bytes when the destination limit is 100 MiB

## v0.4.4 gameplay changes
- Eight-direction camera-relative joystick movement.
- Diagonal repeat/animation timing uses sqrt(2) normalization so diagonals do not move faster than cardinal travel.
- Building footprints from the same deterministic `BuildingSpec` geometry used by SceneView block traversal.
- Location anchors remove overlapping procedural buildings and reserve 2.25 m clearance so destinations remain reachable.
- Player collision radius: 0.38 m.
- Geometry audit: all 10 interaction locations reachable; 0 blocked locations; 1,873/2,400 grid cells reachable from the home start with 8-direction traversal.
- Existing v0.4.3 scale/photo corrections retained: 4.0 m/tile, 6.4 m roads, 1.8 m sidewalks, 4.2 m over-shoulder camera, responsive landscape HUD, generated image assets used in-world.

## Verification
- Source manifest: PASS (66 tracked entries)
- Static verifier: PASS
- Kotlin production core compile: PASS
- v0.4.4 diagonal core harness: PASS (5 checks)
- Collision/reachability audit: PASS
- Full Android/SceneView APK compile: PENDING because routine GitHub Actions are disabled under the project cost policy and the current sandbox has no complete local Android SDK/Gradle toolchain.

## Cost rules
Do not add GitHub Actions workflows, Git LFS, paid runners, Codespaces, paid APIs, paid asset packs, or any metered service without explicit user authorization.