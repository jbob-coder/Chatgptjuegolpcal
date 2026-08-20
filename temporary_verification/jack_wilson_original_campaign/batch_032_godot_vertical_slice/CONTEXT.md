# Batch 032 — Godot vertical slice

Status: TEMPORARY_VERIFICATION_CANDIDATE
Provenance: ORIGINAL_CAMPAIGN_ADAPTATION_FROM_DRIVE_AUTHORITY

## Scope
Create the first bounded Godot 4.7-compatible playable slice of Jack Wilson Original Campaign without consuming world time or altering sealed campaign saves.

Primary expert: `game_systems_architect`.
Support: `spatial_world_designer`, `qa_verification_engineer`.

## Authority used
- Google Drive remains permanent campaign authority.
- Current player: `CHAR_JACK_WILSON`, level 1, `HP 34/34`, `CM 120/120`.
- Current location: `ROOM_JACK_START_01`.
- Room shell: 4.2 m x 3.6 m x 2.7 m.
- Corridor shell: 8.0 m x 1.6 m x 2.7 m.
- Steal: direct-contact ability; five permanent ability slots; acquisition cost calibration is preserved in the prototype data and helper system.
- The source-neighbor private interior is not loaded, generated, or made enterable.

## First playable acceptance criteria
1. Godot project opens under Godot 4.7.x.
2. First-person CharacterBody3D movement collides with room/corridor geometry.
3. Jack spawns in `ROOM_JACK_START_01`.
4. HUD shows Jack's authoritative level, HP, CM, era, and relative time.
5. Q attempts Steal but cannot resolve without a valid direct-contact living target.
6. Room/corridor dimensions and stable IDs are represented in `data/campaign_start_slice.json`.
7. Furniture placement is explicitly reversible prototype layout, not authoritative spatial canon.
8. No raw novel text or raw novel files are included.
9. Verification script passes and Godot headless smoke test passes before GitHub promotion.

## Non-goals for this batch
- No story progression or player decision is recorded.
- No NPC is fabricated into the private start room.
- No combat, quest, save migration, world streaming, transport event, or downstream district is implemented yet.
- No Drive authority file is replaced by this candidate.
