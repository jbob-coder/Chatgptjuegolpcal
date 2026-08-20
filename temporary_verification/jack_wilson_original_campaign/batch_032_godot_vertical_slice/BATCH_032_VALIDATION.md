# Batch 032 Validation — Godot vertical slice

Status: **PASS_STATIC / ENGINE_RUNTIME_GATE_OPEN**

## Passed
- Campaign projection JSON parses.
- Jack stable ID, level 1/20, HP 34/34, CM 120/120, 2670 CE and T-14-day baseline match the loaded Drive authority records.
- `ROOM_JACK_START_01` shell contract: 4.2 x 3.6 x 2.7 m; 15.12 m².
- `LOC_RESIDENCE_F2_CORRIDOR_01` shell contract: 8.0 x 1.6 x 2.7 m; 12.8 m².
- Source-neighbor boundary remains non-enterable.
- Steal scaffold preserves direct-contact requirement, five permanent slots, and does not resolve against a fabricated target.
- First-person controller uses `CharacterBody3D`, gravity in `_physics_process`, and `move_and_slide()`.
- Legacy/prohibited-term scan passes for candidate payload.
- Python verifier compiles and passes.
- Payload manifest and SHA-256 checksums generated.
- World time advanced: NO.
- Sealed save mutated: NO.
- Raw novel file/text read for implementation: NO.

## Runtime gate still open
A Godot 4.7.x editor/headless executable was not available in the execution environment. Attempts to fetch the official Linux binary were blocked by the environment's binary-download/network restrictions. Therefore this report does **not** claim a Godot engine parse/run pass.

Required promotion gate before authoritative Drive promotion:
1. Open `godot_game/project.godot` in Godot 4.7.x stable.
2. Confirm zero GDScript/scene parse errors.
3. Run the main scene and verify spawn, room/corridor collision, WASD/mouse movement, jump/sprint, HUD, and Q Steal feedback.
4. Re-run `python godot_game/tests/verify_prototype.py`.
5. Record the runtime evidence, then promote only the verified candidate according to the storage policy.
