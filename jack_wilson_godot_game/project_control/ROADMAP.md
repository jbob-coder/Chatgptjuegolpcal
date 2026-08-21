# Roadmap

Ordered, bounded pieces. Repair work supersedes new feature development whenever a verified regression is open.

- Piece 001 — Project foundation — COMPLETE_STATIC
- Piece 002 — Static first-person player shell — COMPLETE_STATIC
- Piece 003 — Four-direction walking — COMPLETE_STATIC
- Piece 004 — Mouse look — COMPLETE_STATIC
- Piece 005 — Start-room data contract — COMPLETE_STATIC
- Piece 006 — Start-room floor — COMPLETE_STATIC
- Piece 007 — Repair cumulative static verification regression — COMPLETE
- Piece 008 — Persistent continuation core — COMPLETE
- Piece 009 — QA structure/state validators — COMPLETE
- Piece 010 — Godot documentation baseline and implementation reference log — COMPLETE_WITH_REPAIR_NOTE
- Piece 011 — Repair post-Piece-010 truth/state and authority drift — IN_PROGRESS
- Piece 012 — Gravity — PLANNED
- Piece 013 — Start-room wall A — PLANNED
- Piece 014 — Start-room wall B — PLANNED
- Piece 015 — Start-room wall C — PLANNED
- Piece 016 — Start-room wall D with corridor-door contract preserved — PLANNED
- Piece 017 — Start-room ceiling — PLANNED

Do not combine adjacent pieces merely because they touch the same scene, controller, or control system.

Historical correction:
- Piece 010 seal e2c217b98b54ba985a5599bb151f2afacab25426 temporarily inserted four unverified repository-organization systems: four-plane routing, ownership-folder migration, action/resource graph, and automatic projections.
- REG-0003 removes them from the active roadmap because no corresponding source-registry entry or roadmap/architecture decision authorizes them. Q-0002/U-0005 preserve the authority question as UNKNOWN.
- A planned mouse-look migration is not present because REG-0002 verified the committed controller already uses `event.screen_relative`.
