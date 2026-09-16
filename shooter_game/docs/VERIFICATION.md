# Shooter RPG — Verification Record

Status: SCAFFOLD 001 + PLAYER-CAMERA GRAYBOX 001 HEADLESS VERIFIED
Last reconciled: 2026-09-16

## Executed static verification

### Scaffold preflight
`python shooter_game/tests/scaffold_static_preflight.py`

Observed:
`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`

### Player-camera preflight
`python shooter_game/tests/player_camera_static_preflight.py`

Observed:
`SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS`

## Executed Godot 4.7.2 runtime gate

GitHub Actions workflow:
`.github/workflows/shooter-rpg-graybox-runtime.yml`

Verified source SHA:
`9d17874fd1c6f30ddff8cb9e870af33e3f297925`

Workflow run:
`35056360247`

Job:
`104667287029`

Result: **SUCCESS**.

Observed successful steps:
- static preflights;
- official Godot 4.7.2-stable download + SHA-256 verification;
- Godot version check;
- project import/parse;
- scaffold headless smoke;
- player-camera headless smoke.

Commands represented by the gate include:
- `godot --headless --editor --path shooter_game --quit-after 2`;
- `godot --headless --path shooter_game --script res://tests/scaffold_smoke.gd`;
- `godot --headless --path shooter_game --script res://tests/player_camera_smoke.gd`.

Therefore:
- scaffold static: VERIFIED;
- player-camera static: VERIFIED;
- Godot project parse/import: VERIFIED;
- scaffold headless smoke: VERIFIED;
- player-camera headless smoke: VERIFIED.

## Still NOT verified

Headless success does not prove:
- interactive movement feel;
- mouse/touch sensitivity quality;
- spring-arm visual behavior under real play;
- phone runtime;
- Android export/install;
- mobile touch ergonomics;
- final visual quality;
- sustained frame pacing/performance.

## Next verification target

`SHOOTER_RPG_MOBILE_TOUCH_INPUT_001` should add touch-input plumbing through the same gameplay input contract, then receive its own static/headless checks before Android/device acceptance is claimed.
