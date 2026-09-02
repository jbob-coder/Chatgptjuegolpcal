# WorldLife RPG — Systems Guide

Current reference: `0.5.7`.

Authoritative full guide: https://drive.google.com/file/d/1Iekf7x4Oz-Ro6iBFx3z45ofkPfwAv_iC/view?usp=drivesdk
Source folder: https://drive.google.com/drive/folders/1ZFD7TQl5rxco8kAPQuzgMcAdaPdjoQ-T

## Authority map

- `GameState` — persistent simulation truth.
- `GameEngine` — authoritative actions, repair, quotes, time advancement.
- `OpenWorldCatalog` / geometry — exterior locations, schedules, collision/travel support.
- `WorldCalendar` — deterministic weekday/year behavior.
- `WorldLayoutCatalog` — save-stable Arclight Core and expansion seams.
- `InteriorCatalog` — metre-scale room/portal topology.
- `InteriorSessionState` — persisted fact that the player is inside a runtime-enabled interior.
- `GameSaveJsonCodec` / DataStore — Android persistence/migration.
- Compose/SceneView — presentation only.

## Current exterior loop

Move → engine validates geometry → time advances → discovery/location changes → SceneView presents state. Fast travel, location actions, and NPC TALK use engine quote/action APIs rather than duplicating rules in UI.

## Social loop

Six stable NPCs have weekday/weekend location schedules, relationships, contextual TALK effects, daily-use limits, and save-safe migration. City-wide schedules may remain simulated as data while only nearby bodies are rendered.

## Interior loop

v0.5.5 established persisted apartment enter/exit authority. v0.5.7 adds Android presentation:

Exterior home → engine `InteriorEntryQuote` → ENTER action → `interiorSession` set → Android renders `InteriorWorldScreen` → EXIT action → exact exterior portal.

The apartment renderer uses the authoritative 8 m × 7 m `InteriorCatalog` definition, room zones, human-scale furniture massing, residential materials/lighting, camera look, and cosmetic idle motion.

Interior local player position/collision and free-roam are still missing from core. The UI therefore intentionally does not fake indoor movement.

## World-scale loop

The current 240 m × 160 m Arclight Core is a permanent save-stable slice. Future growth attaches streamed sectors, with one expensive active sector/interior, bounded nearby proxies, stable IDs, and measured Android memory/frame-time.

## Visual/animation loop

Presentation is governed by the Drive `WORLD_ART_BIBLE.md` and `ANIMATION_RUNTIME_PLAN.md`. Animation represents simulation state; short cosmetic animation progress normally does not belong in the save.

This GitHub copy is a convenience overview. Use the linked Drive guide for the complete file-by-file system explanation.
