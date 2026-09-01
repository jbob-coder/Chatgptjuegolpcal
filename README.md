# WorldLife RPG — Google Drive Primary Mirror

This branch is a billing-safe mirror. Google Drive is the authoritative project store.

## Rules
- Do not run GitHub Actions from this branch.
- This mirror intentionally contains no `.github/workflows` directory.
- Source archives, binary art assets, APKs, and checksums are stored in Google Drive first.
- GitHub is used only for lightweight source/history mirroring.

## Drive authority
Root folder: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
Source/v0.4.1: https://drive.google.com/drive/folders/1_HTP6nusozJrf5--c1oHypsyR4wpgIwk
Assets/v0.4.1: https://drive.google.com/drive/folders/1G6-afneo8OS4zRmN1lx-eWwXZqO2isWr
Verified builds: https://drive.google.com/drive/folders/1FEbaAGonRmIuo2r80gPqFElxpGQ-z7aN

Source archive SHA-256: 74a1601566c64f882ed30beb30622184e55e44c6321edb81c0018822457e3d00
Asset pack SHA-256: 159caa37569d8b17e04b6a37c6376d66b52fc4aeb97b6945c07a3d947eeb31b9

## v0.4.1 changes
- Render scale: 4.0 meters per simulation tile.
- 30 x 20 district renders at 120 x 80 meters.
- Roads: 6.4 m two-lane width.
- Sidewalks: 1.8 m.
- Buildings: human-scale multi-story dimensions.
- Player/NPC scale corrected.
- Follow camera tightened to 4.9 m.
- Movement timing slowed and player transform interpolated between grid steps.
- Generated street art is cropped into reusable runtime PNGs and referenced from the 3D SceneView via ImageNode.
- Existing generated joystick/action artwork remains in use.

## Verification state
Static verification passes. v0.4.1 has not yet been Android-compiled because GitHub Actions is intentionally not being used and the current local sandbox does not contain the Android SDK/dependency cache. The last fully compiled APK remains v0.4.0 in Drive/Builds/verified.
