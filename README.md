# WorldLife RPG — Google Drive Primary Mirror

Google Drive is the authoritative project store. This branch is a billing-safe pointer/history mirror only.

## Rules
- No `.github/workflows` directory.
- No GitHub Actions builds.
- No source ZIP, APK, signing material, or binary art duplication.
- No Git LFS, paid runners, Codespaces, paid APIs, or metered services.
- Working file ceiling for a 100 MiB destination: 90 MiB = 94,371,840 bytes.

## Drive authority
Root: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
Source/v0.5.2: https://drive.google.com/drive/folders/1q2Tl0HQ29eKBqHGSlGxMdG2WL7qR-88a
Source archive: https://drive.google.com/file/d/1kbvTIkgiC6gRNS2iPnoiLeeBe_aksW0i/view?usp=drivesdk
Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
Builds root: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## v0.5.2 change
- Undiscovered locations no longer appear as grey map dots.
- Cyan world-space destination markers render only for discovered locations.
- Physical storefront/landmark structures remain naturally visible.
- Short in-world discovery feedback appears when deterministic exploration discovers a location.
- v0.5.1 engine-authoritative TravelQuote remains active.

## Verification
- 532-check world regression: PASS.
- Travel authority compatibility: PASS.
- 168 weekly schedule states + six NPC interactions + journal/year compatibility: PASS.
- Discovery path harness: PASS.
- Static/UI/XML checks: PASS.
- Android/SceneView APK compile remains pending a free local Android toolchain. Last fully APK-verified build: v0.4.0.
