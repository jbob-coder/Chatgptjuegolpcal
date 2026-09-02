# WorldLife RPG — v0.5.8 Pre-Runtime Audit

Status: COMPLETE / PHONE RUNTIME BLOCKER NOW OBSERVED
Audit date: 2026-09-02
Scope: frozen v0.5.8 source + permanent functional test APK. No gameplay source was modified during this audit.

## Purpose

This audit reduces uncertainty before/around phone testing without pretending static/build evidence is runtime evidence. It uses the checksum-frozen Google Drive source and the permanent Drive APK that came from successful GitHub Actions run `33596655227`.

## Frozen source readback

Downloaded from Drive:
`WorldLifeRPG-source-v0.5.8-drive-primary.zip`

Observed:
- size: `1,593,116` bytes
- SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`
- checksum matches the authoritative Drive checksum file: PASS
- archive extracted successfully for read-only audit: PASS

The frozen Drive archive was not modified.

## Fresh source verification executed during this audit

From the extracted frozen source:

- `python3 scripts/verify_static.py`: PASS
  - `WORLDLIFE_STATIC_VERIFY_PASS`
  - `required_files=65`
  - `core_android_imports=0`
  - XML well formed
- fresh Kotlin/JVM 17 compilation of all `:game-core` production Kotlin with local `kotlinc`: PASS
- fresh bounded core smoke runner: PASS
  - new game creation
  - authoritative apartment entry quote
  - `EnterInterior`
  - `ExitInterior`
  - `AdminCommand.AdjustMoney`
  - exterior `GameAction.Move`

Observed smoke marker:
`WORLDLIFE_FRESH_CORE_SMOKE_PASS`

The existing frozen verification record still contains the full 53-test repository suite. This audit did not replace that suite with the smaller smoke test.

## Permanent APK readback

Downloaded from the permanent Drive build location:
`WorldLifeRPG-v0.5.8-GitHub-test.apk`

Observed:
- size: `44,012,114` bytes
- SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- ZIP integrity via `unzip -t`: PASS

The local audit environment did not contain `apksigner` or `aapt`; signature/package/version verification therefore continues to rely on the already-successful GitHub Actions run, where those gates executed and passed. They are not re-claimed as locally rerun.

## VERIFIED: v0.5.8 functional APK fallback visuals are corrupted

Previous documentation said the workflow *may* create 1×1 fallback PNGs. Direct inspection of the permanent APK confirms that all **18** workflow-checked gameplay visual resources are fallback PNGs in this APK.

Each APK entry below is `68` bytes:

- `action_character.png`
- `action_interact.png`
- `action_journal.png`
- `action_map.png`
- `action_menu.png`
- `action_sprint.png`
- `joystick_base.png`
- `joystick_knob.png`
- `street_bench.png`
- `street_crosswalk.png`
- `street_door_stone.png`
- `street_hydrant.png`
- `street_road_panel.png`
- `street_sidewalk_tile.png`
- `street_tree.png`
- `street_wall_brick.png`
- `street_wall_plaster.png`
- `street_window_arched.png`

The frozen Drive source contains real versions of those resources, ranging from `12,468` bytes to `186,092` bytes.

A strict PNG audit of the exact shared 68-byte fallback sequence confirms:

- PNG signature: valid;
- IHDR CRC: valid;
- IDAT CRC: **invalid**;
- IDAT zlib stream: **invalid checksum / cannot decompress**;
- IEND CRC: valid;
- strict Pillow decode for all 18 packaged fallback PNGs: FAIL with `broken data stream when reading image file`.

The v0.5.8 workflow used this fallback Base64:
`iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAusB9Y9ZQmcAAAAASUVORK5CYII=`

This is a confirmed build-transport defect, not an art-quality issue alone.

`OpenWorldScreen.kt` loads these resources immediately in an active exterior world through SceneView `ImageNode` and Compose `painterResource`, including facade/street images, joystick images and action buttons. Therefore corrupted fallback decoding is a strong root-cause candidate for `RUNTIME-001`, particularly when an existing/restored save enters the world immediately.

It is not yet called the sole root cause until the corrected build is tested on the target phone.

Consequence:

`VISUAL_PARITY_VERIFIED = NO` is not merely precautionary. This specific APK is definitively not visual-parity and also contains invalid fallback image data.

## STATIC-001 — camera recenter yaw is mirrored on six directions

Status: `STATIC_CONFIRMED / PHONE_NOT_TESTED`

File:
`app/src/main/java/com/jackwilson/worldlife/ui/OpenWorldScreen.kt`

The recenter button maps facing direction to camera yaw. The same file's camera/movement math and `facingYaw()` convention require:

- NORTH = `180°`
- NORTH_EAST = `135°`
- EAST = `90°`
- SOUTH_EAST = `45°`
- SOUTH = `0°`
- SOUTH_WEST = `315°` / `-45°`
- WEST = `270°` / `-90°`
- NORTH_WEST = `225°` / `-135°`

Current recenter mapping instead uses:

- NORTH = `180°` — matches
- NORTH_EAST = `225°` — mismatch
- EAST = `270°` — mismatch
- SOUTH_EAST = `315°` — mismatch
- SOUTH = `0°` — matches
- SOUTH_WEST = `45°` — mismatch
- WEST = `90°` — mismatch
- NORTH_WEST = `135°` — mismatch

Therefore north/south recenter correctly, while the six directions containing an east/west component are horizontally mirrored.

The successful v0.5.8 GitHub workflow does not patch this camera mapping. Its device-level usability impact remains unverified until the launch blocker is cleared and phone testing resumes.

## Scoped launch/input audit

Evidence inspected:

- manifest launcher activity exists and explicitly requests landscape orientation;
- `MainActivity` enters immersive edge-to-edge mode and mounts `WorldLifeRoot`;
- `GameViewModel` collects repaired DataStore state and exposes Loading / NoGame / Playing / Error states;
- updater auto-check runs through a `runCatching` path and does not intentionally block game-state rendering on update-check failure;
- exterior joystick dispatches engine-owned movement rather than mutating presentation position;
- right-side camera drag remains presentation-owned as intended;
- apartment rendering is selected from authoritative `interiorSession`;
- Cheat/Admin mutations route through `AdminCommand` → repository → `GameEngine`.

The source contains a bare spinner for `WorldLifeUiState.Loading` and a basic name-entry `NewGameScreen`, but these are technical placeholders rather than the designed boot/loading and intro/onboarding experience now recorded in `WORLDLIFE_GOALS_BACKLOG.md`.

## Current next action

Build/test rollback-safe v0.5.8.1 with valid fallback PNG generation plus crash diagnostics, then resume the phone runtime checklist from direct device evidence.
