# Production Game Root

Status: HUNT-01 PHONE FEEDBACK REPAIR IMPLEMENTED IN SOURCE / VERIFICATION PENDING
Last reconciled: 2026-09-04

This folder is the production Godot project for Unnamed Hunt RPG. It is separate from `probes/android_stage1/`, which remains disposable Stage-1 evidence source.

## Current corrective production piece

`HUNT01_FLAT_FOUNDATION_VISUAL_AND_EVIDENCE_FEEDBACK_REPAIR`

The first production graybox APK was functionally buildable but failed the user's phone visual/game-feel review. The corrective direction is now authoritative for this slice:
- begin from one continuous flat physical surface for the whole playable map;
- build route/biome/landmark presentation on top of that surface instead of disconnected elevated slabs;
- use the established grounded-stylized visual direction rather than neon/debug-box presentation;
- increase Hunter movement speed;
- evidence must investigate/disappear when the Hunter walks across it;
- audio is optional and must not be required to follow Hunt-01.

## Current source implementation

World:
- one `440 x 440 m` `H01_WORLD_FOUNDATION` physical ground plane;
- source-authority X/Z positions retained while first visual/traversal layer is flattened to the foundation;
- required route, wrong-route stub, River Ford, water, mud, Meadow and escape route are presentation overlays on the same base;
- normal debug clearance/stream volumes are hidden.

Movement:
- shooter-style control law remains unchanged;
- Hunter movement target increased from rejected `3.5 m/s` to `6.25 m/s`;
- first-person FOV remains `115°`;
- right-side independent look and simultaneous movement/look remain protected.

Evidence:
- seven stable evidence IDs remain at their authoritative X/Z locations;
- evidence is now `Area3D` walk-over interaction, not floating yellow spheres;
- successful investigation removes the evidence node from the world immediately;
- HUD shows `Trail Evidence n / 7` plus a concise visual-text interpretation;
- no `AudioStreamPlayer` is required; `R01_H01_EV07_FLATTENED_GRASS_AUDIO` preserves its historical stable ID but the clue is fully usable without audio.

Visual kit:
- `assets/environment/stylized_pine.tscn`;
- `assets/environment/stylized_rock_cluster.tscn`;
- `assets/characters/hunter_visual.tscn`;
- `assets/creatures/mudcrest_raker_visual.tscn`.

These reusable scenes follow `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md` and the existing Drive concept/Hunter/Monster references. The Drive `04_Approved_Exports/3D_Game_Ready` folder was empty when this repair was authored, so the current kit uses smooth reusable Godot meshes/materials rather than pretending final external 3D hero exports exist.

## Source ownership

- `project.godot` / `export_presets.cfg`: production shell/platform configuration.
- `scenes/app_shell.tscn`: application entry scene.
- `scenes/regions/region_01_hunt01_graybox.tscn`: first production Region presentation scene.
- `scripts/presentation/exploration/region_01_hunt01_graybox.gd`: current world/presentation/input adapter.
- `assets/`: reusable production visual kit.
- `content/regions/region_01/hunt01_graybox_build_manifest.json`: runtime projection of authoritative docs manifest; do not edit independently.
- `tests/region01_hunt01_graybox_runtime_test.gd`: headless production-slice regression evidence.

Authoritative stable dimensions/coordinates remain under `docs/10_world/regions/REGION_01/`. The current flat visual/traversal foundation is a user-directed production presentation correction, not a rewrite of the source coordinate registry.

## Verification status

The previous APK's visual/game-feel result is now:
`REGION01_HUNT01_FIRST_GRAYBOX_PHONE_VISUAL_ACCEPTANCE = FAIL / SUPERSEDED_BY_REPAIR`.

This repair is not accepted merely because source exists. Static/headless/Godot/Android gates must pass and a new Galaxy A03s APK must be retested.

`PERFORMANCE_VERIFIED = NO` until sustained target-device evidence exists.
`FINAL_ENGINE_SELECTED = NO`.

Raw source-authority construction centerline remains `282.926 m`; final smoothed-route target `285–315 m` remains a later evidence gate.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.
