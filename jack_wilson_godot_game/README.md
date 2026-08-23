# Jack Wilson Godot Game

AUDIENCE: USER
ROLE: USER_SURFACE_PROJECTION
AUTHORITATIVE: NO

This is the isolated Godot 4.7.x game root inside `jbob-coder/Chatgptjuegolpcal`. Game implementation must stay here and must not be mixed into repository-level `audit/`, `governance/`, `temporary_verification/`, or `third_party/` areas.

## Read first

1. `docs/user/START_HERE.md` — short user-facing entry point.
2. `docs/user/CURRENT_STATUS.md` — current implementation and verification status.
3. `project_control/MASTER_STATE.md` — canonical continuation pointer.
4. `project_control/CURRENT_PIECE.md` — the only active bounded work item.
5. `project_control/ROADMAP.md` — ordered future pieces.

This README and `docs/user/` are projections. If they conflict with canonical project-control or runtime files, repair the projection; do not overwrite the authoritative record to match a summary.

## Folder ownership

| Path | Plane | Purpose | Authority |
|---|---|---|---|
| `README.md`, `docs/user/` | USER_SURFACE | Concise status and questions for the user | Projection only |
| `project_control/` | CONTROL_PLANE | State, decisions, sources, unknowns, issues, history, registries | Canonical project control |
| `docs/godot/` | CONTROL_PLANE | Version-specific Godot technical evidence | Technical authority log |
| `docs/world/` | CONTROL_PLANE | Source-derived city map, start-ring map, folder ownership, and placement rules | Pinned spatial reference projection |
| `data/world/asterline/` | GAME_RUNTIME | Compact full-city/start-ring manifests and fail-closed construction guard | Runtime input with source provenance |
| `project.godot`, `scenes/`, `data/`, `scripts/` | GAME_RUNTIME | Files loaded or executed by the game | Implemented runtime state |
| `tests/`, `scripts/qa/` | VERIFICATION | Static/runtime gates and regression protection | Evidence and gates |

Deterministic routing is defined by `project_control/registry/PATH_REGISTRY.json`. Important artifacts and their present/planned paths are listed in `project_control/registry/ARTIFACT_REGISTRY.json`. `scripts/qa/**` is deliberately routed before the broader `scripts/**` rule so QA code cannot be mistaken for game runtime code.

## Development rule

Build one bounded piece at a time:

`READ → VERIFY → IMPLEMENT → TEST → REGRESSION CHECK → RECORD → COMMIT → READ BACK → COMPLETE`

Do not begin the next piece while the active piece is failing or has not been read back from GitHub. Never weaken an earlier valid test merely to make later work pass.

## Implemented gameplay boundary

- Godot project and main 3D scene.
- `CharacterBody3D` first-person player shell with capsule collision, head pivot, and active camera.
- W/A/S/D walking.
- Captured mouse look using `event.screen_relative`, with ±85° pitch and Escape release/capture.
- Reversible `ROOM_JACK_START_01` data contract.
- Visible/collidable 3.6 × 4.2 m start-room floor.

The selected 4.2 × 3.6 × 2.7 m room shell is still classified as reversible gameplay reconstruction, not an exact source measurement.

## Completed engineering pieces

- Pieces 001–006: foundation, player, walking, mouse look, room contract, and floor.
- Piece 007: cumulative verifier regression repair.
- Piece 008: persistent continuation core.
- Piece 009: QA structure/state validators.
- Piece 010: Godot 4.7 technical documentation baseline.
- Piece 011: repository truth/authority drift repair.
- Piece 012: four-plane user/control/runtime/verification routing contract, committed and exact-readback verified.

- Piece 013: Asterline spatial-authority bridge, committed and exact-readback verified.

Piece 014 is next: define and verify the source-to-Godot coordinate transform and floating-origin contract. The bridge still does not create Godot terrain.

## Asterline spatial boundary

The active source already defines a 290.08 km² city with 7 wards, 28 neighborhoods, 7,000 blocks, 23,480 building shells, complete interiors, physical ROW, utilities, water exclusions, and a fully materialized nine-block start ring. Start at `docs/world/README.md` for the folder/file map and construction rules.

GitHub stores a compact pinned bridge. The large authoritative corpus stays in Drive so the game repository does not become a second divergent city or absorb roughly 1.16 GB of source payloads.

No future terrain or object may be placed from visual judgment alone. It must resolve a full polygon, Z interval, owning ward/space, theme, access, and reservation status through `data/world/asterline/spatial_construction_guard.json`.

## Verification

Run from this directory:

```bash
python scripts/qa/verify_all.py
```

Static verification is not Godot runtime verification. The runtime/parser gate remains open until the project is executed with Godot 4.7.x.

## Not implemented in Godot yet

- gravity, jumping, and sprinting;
- start-room walls, ceiling, furniture, and lighting;
- rendered full residence, starting block, terrain, city streaming, and world simulation (the source map/compact bridge exists; physical Godot realization does not);
- HUD, Steal gameplay, and NPCs.

Future city/world files must first receive a canonical owner, dimensions, coordinate frame, and collision/reservation checks. Do not place geometry merely because an untested location appears visually empty.
