# WorldLife v0.4.1 — Scale + Photo Asset Implementation

Authoritative full source is stored in Google Drive before this mirror.

## Scale correction

The v0.4.0 renderer used `TILE_METERS = 1.15f`, which made a 30 x 20 district only 34.5 m x 23 m. The corrected renderer uses:

```kotlin
private const val TILE_METERS = 4.0f
private const val CAMERA_DISTANCE = 4.9f
private const val ROAD_WIDTH_METERS = 6.4f
private const val SIDEWALK_WIDTH_METERS = 1.8f
private const val WALK_STEP_MS = 760L
private const val SPRINT_STEP_MS = 430L
```

Result: each 30 x 20 district renders at 120 m x 80 m. Road and sidewalk coordinates derive from district dimensions instead of hard-coded toy-scale positions.

## Player movement

World state remains deterministic integer-grid state, but visual player X/Z positions use `animateFloatAsState` with timing matched to walking/sprinting. This preserves simulation authority while removing 4-meter visual teleport jumps.

## Buildings

Procedural buildings now use human-scale footprints and multi-story heights, approximately:
- width 11.5–15.6 m
- depth 8.5–10.9 m
- height 8.5–22.6 m

Roads are arranged between building blocks rather than intersecting the fixed old geometry.

## Photo/image assets actually used

The generated `WorldLife - Urban Modular Street Asset Collection.png` is now sliced into reusable high-resolution PNG assets. Runtime source includes:

- `street_sidewalk_tile.png`
- `street_road_panel.png`
- `street_crosswalk.png`
- `street_bench.png`
- `street_hydrant.png`
- `street_tree.png`
- `street_door_stone.png`
- `street_window_arched.png`
- `street_wall_brick.png`
- `street_wall_plaster.png`

Door/window/wall/bench/tree/hydrant images are referenced by the SceneView renderer through `ImageNode`; existing generated HUD/joystick/action images remain used by Compose.

## Drive authority

- Root: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
- Source v0.4.1: https://drive.google.com/drive/folders/1_HTP6nusozJrf5--c1oHypsyR4wpgIwk
- Assets v0.4.1: https://drive.google.com/drive/folders/1G6-afneo8OS4zRmN1lx-eWwXZqO2isWr
- Verified builds: https://drive.google.com/drive/folders/1FEbaAGonRmIuo2r80gPqFElxpGQ-z7aN

## Build status

Static verification: PASS.
Android compile/runtime verification for v0.4.1: PENDING. GitHub Actions is intentionally not used. The latest fully Android-compiled APK remains v0.4.0 in Drive.
