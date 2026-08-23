# Asterline Spatial Loader and Chunk Index

ROLE: CONTROL_PLANE_SPATIAL_BRIDGE
AUTHORITATIVE: DERIVED_FROM_PINNED_MANIFESTS_AND_GODOT_4_7_DOCS

## Purpose

Piece 015 makes the compact Asterline source bridge queryable without creating terrain. One read-only loader opens five pinned records as a single fail-closed bundle:

1. full-city manifest;
2. nine-block start manifest;
3. source-to-Godot coordinate contract;
4. spatial construction guard;
5. runtime chunk index.

If any file is missing, malformed, has the wrong city/stable contract ID, contains duplicate chunk IDs, or claims generated geometry, the loader returns an error dictionary and publishes no bundle.

## Files and ownership

| File | Plane | Role |
|---|---|---|
| `data/world/asterline/chunk_index.json` | GAME_RUNTIME | Exact source-derived chunk polygons, broad-phase bounds, memberships, priorities, and source pins |
| `scripts/world/asterline_spatial_loader.gd` | GAME_RUNTIME | Read-only `FileAccess.READ` + error-reporting `JSON.parse()` loader and source-point query helpers |
| `tests/verify_asterline_spatial_loader.py` | VERIFICATION | Re-derives every chunk from its source manifests and prevents write/geometry/scene scope creep |
| This file | CONTROL_PLANE | Human-readable contract and continuation map |

## Two chunk layers

The index contains 7 ward-coarse chunks and 9 start-block detail chunks.

| Layer | Priority | Exact content | Use now | Geometry |
|---|---:|---|---|---|
| `LAYER_ASTERLINE_WARD_COARSE_V1` | 100 | Seven ward polygons, elevations, centroids, neighborhood IDs, and 7,000-block / 23,480-building counts | Complete-city ownership and source routing | None |
| `LAYER_ASTERLINE_START_RING_DETAIL_V1` | 200 | Nine exact block polygons, vertical envelopes, 36 building memberships, and protected start anchors | Ready start-ring detail queries | None |

The layers intentionally overlap: every start block is inside W03. This is a metadata refinement, not permission to instantiate both layers as duplicate geometry. A start-detail match has higher query priority; the W03 coarse result remains the owning city context.

## Exact polygon rule

Each chunk stores:

- its authoritative source polygon in east/north metres;
- a derived axis-aligned bounding box for broad-phase rejection only;
- its vertical source envelope;
- stable source membership;
- a `geometry_created=false` guard.

An AABB match is never enough. `chunks_containing_source_point()` first checks the AABB, then uses the exact polygon, with the boundary counted as contained. Within a layer, stable chunk ID ordering breaks boundary ties deterministically.

## Start load group

`LOAD_GROUP_ASTERLINE_START_RING_V1` contains all nine detailed blocks. Its primary chunk is `CHUNK_ASTERLINE_W03_RIVERBEND_START_01`, and its initial coordinate anchor is source cell `[16, -12]`. The group is a request/lookup boundary only; it does not preload meshes, bodies, navigation, NPCs, or interiors.

## Read-only failure contract

The loader uses `FileAccess.file_exists()`, `FileAccess.open(path, FileAccess.READ)`, `JSON.new()`, and `JSON.parse()` so errors retain a message and line number. Static `JSON.parse_string()` is intentionally not used because the official Godot 4.7 documentation says it does not provide error handling.

Success returns:

```text
{ ok: true, bundle: { city, start, coordinate, guard, chunks } }
```

Failure returns:

```text
{ ok: false, error_code, path, message }
```

No fallback city, guessed chunk, silently repaired JSON, or partial bundle is allowed.

## Not implemented

- no scene or autoload integration;
- no mesh, terrain, collision, navigation, physics, NPC, utility, or interior instantiation;
- no threaded/background loading;
- no LOD or unloading policy;
- no live source synchronization;
- no Godot parser/runtime verification.

Piece 015 provides a safe read/query boundary. Later pieces may consume it, but they may not bypass its source IDs, exact polygons, coordinate contract, or construction guard.

## Official Godot 4.7 sources

- https://docs.godotengine.org/en/4.7/classes/class_fileaccess.html
- https://docs.godotengine.org/en/4.7/classes/class_json.html
- https://docs.godotengine.org/en/4.7/classes/class_dictionary.html
- https://docs.godotengine.org/en/4.7/tutorials/io/runtime_file_loading_and_saving.html
