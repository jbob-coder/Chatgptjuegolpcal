# Production Stylized Asset Kit

Status: FIRST IMPLEMENTED VISUAL KIT / PRIMITIVE-MESH PRODUCTION PLACEHOLDERS
Last reconciled: 2026-09-04

Purpose: provide reusable grounded-stylized 3D presentation assets for the Android production project while approved final 3D exports are still unavailable.

Visual authority:
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md` — grounded stylized 3D / illustrated realism;
- Google Drive finished-game visual concept `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`;
- Hunter orthographic reference `1EjeitWONWZ2PHPbVkI-dvcVIoiL7bcfE`;
- Mudcrest Raker visual candidate `1yMLP6lcO4Us4uJO2CMNUCusiXlWpwI2m`.

The Drive `04_Approved_Exports/3D_Game_Ready` folder was empty when this kit was created. Therefore these files are intentionally lightweight reusable Godot scenes built from smooth primitive meshes and restrained materials. They are not claimed as final hero art.

Implemented runtime assets:
- `environment/stylized_pine.tscn`
- `environment/stylized_rock_cluster.tscn`
- `characters/hunter_visual.tscn`
- `creatures/mudcrest_raker_visual.tscn`

Rules:
- natural muted palette; no neon debug blocks in normal gameplay presentation;
- readable silhouette from aerial view;
- non-pixel presentation;
- controlled material roughness and broad value groups instead of noisy textures;
- debug/clearance geometry must stay hidden from normal gameplay unless explicitly requested;
- later final model exports replace these scene internals without changing gameplay identity/collision ownership.
