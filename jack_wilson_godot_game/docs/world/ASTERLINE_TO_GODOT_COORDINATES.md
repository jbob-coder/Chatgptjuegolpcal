# Asterline to Godot Coordinates

ROLE: CONTROL_PLANE_SPATIAL_BRIDGE
AUTHORITATIVE: REVERSIBLE_IMPLEMENTATION_CONTRACT_FROM_PINNED_SOURCE_AND_GODOT_4_7_DOCS

## Decision

Asterline source vectors store `[east, north, up]` in metres. Godot local vectors store `[east/right, up, south/back]`, so north is Godot `Vector3.FORWARD` (negative Z).

For a source point `[E, N, U]` and source anchor `[E₀, N₀, U₀]`:

```text
Godot X =  E - E₀
Godot Y =  U - U₀
Godot Z = -(N - N₀)
```

Inverse:

```text
Source E = E₀ + Godot X
Source N = N₀ - Godot Z
Source U = U₀ + Godot Y
```

The transform matrix is orthonormal and has determinant +1. It preserves handedness, lengths, angles, areas, volumes, and collision relationships. Source polygon vertex order is retained for upward-facing Godot geometry.

## Why this mapping

Godot 4.7 defines +X as right/east, +Y as up, and `Vector3.FORWARD` as `(0, 0, -1)`, representing global north. Asterline already defines east, north, and up, so the mapping aligns semantic directions without rotating the city arbitrarily.

## Coordinate layers

| Layer | Stored values | Authority | Lifetime |
|---|---|---|---|
| Source absolute | `[east, north, up]` | World truth | Persistent |
| Source cell | integer 100 m east/north cell | Deterministic anchor ID | Persistent/reference |
| Godot local | transformed delta from active anchor | Runtime only | Rebased |
| Interior local | building/floor/room local axes | Owning interior source | Unchanged by city rebase |

Never save an unlabeled Godot-local position as world truth. Saves and network messages require absolute source coordinates, stable owner IDs, and the anchor/cell identity when local values are transmitted.

## Floating-origin policy

Godot's 4.7 large-world documentation says precision declines away from the origin, default `Vector3` components are 32-bit, and 2,048–4,096 m is the maximum recommended single-precision range for a first-person 3D game. It also identifies origin shifting as a valid alternative to a custom double-precision build, with added system complexity.

Piece 014 therefore uses a reversible standard-build policy:

- 100 m horizontal source cells;
- mathematical floor for negative coordinates;
- horizontal rebase trigger at 1,600 m;
- new anchor snapped to the player's authoritative 100 m source cell;
- anchor up fixed at 0 m for Asterline;
- rebase only at a physics-frame boundary;
- every loaded spatial/physics participant receives one identical delta;
- absolute source coordinates, stable IDs, velocities, rotations, bindings, and hierarchy remain unchanged.

The 1,600 m trigger stays below the lower 2,048 m first-person guidance and leaves margin for loaded neighbor chunks. Large-world/double-precision engine builds are not required by this contract; that choice can be revisited only through a measured performance/precision piece.

## Start anchor

Jack's center block lies in source cell `[16, -12]`, whose source anchor is `[1600, -1200, 0]` m.

| Point | Source ENU m | Godot local XYZ m |
|---|---:|---:|
| Start-block center/terrain | 1612.82, −1149.13, 19.77 | 12.82, 19.77, −50.87 |
| First residence footprint vertex | 1577.41, −1191.55, 19.69 | −22.59, 19.69, −8.45 |

These are verification examples, not new geometry.

## Rebase transaction

1. Resolve the player’s authoritative source coordinate and new 100 m cell.
2. Compute the old-anchor to new-anchor local delta.
3. Move every participating loaded world root and physics body by that same delta in one physics-frame transaction.
4. Preserve velocities, rotations, stable IDs, ownership, saves, event bindings, and source coordinates.
5. Shift or rebuild future navigation/physics caches only through their own verified subsystem contracts.
6. Publish the new anchor after every required subsystem acknowledges it.

Multiplayer is not implemented. The contract already forbids sending unlabeled client-local positions because clients may use different anchors.

## Implementation

- Machine contract: `data/world/asterline/coordinate_transform.json`
- Static GDScript utility: `scripts/world/asterline_coordinates.gd`
- Verification: `tests/verify_asterline_coordinates.py`

No scene consumes the utility yet. Terrain, collision, navigation, rebase orchestration, and Godot runtime/parser verification remain future gates.

## Official Godot 4.7 sources

- https://docs.godotengine.org/en/4.7/tutorials/3d/using_transforms.html
- https://docs.godotengine.org/en/4.7/classes/class_vector3.html
- https://docs.godotengine.org/en/4.7/classes/class_vector2i.html
- https://docs.godotengine.org/en/4.7/classes/class_%40globalscope.html
- https://docs.godotengine.org/en/4.7/tutorials/physics/large_world_coordinates.html
- https://docs.godotengine.org/en/4.7/tutorials/scripting/gdscript/gdscript_basics.html

