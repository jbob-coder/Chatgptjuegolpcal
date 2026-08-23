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
- Piece 011 — Repair post-Piece-010 truth/state and authority drift — COMPLETE
- Piece 012 — User surface and four-plane routing contract — STATIC_VERIFIED_PENDING_READBACK
- Piece 013 — Control-plane ownership-folder migration — PLANNED
- Piece 014 — Action/resource graph core (nodes=verbs/actions, edges=nouns/resources) — PLANNED
- Piece 015 — User projection generator and stale-projection guard — PLANNED
- Piece 016 — Gravity — PLANNED
- Piece 017 — Start-room wall A — PLANNED
- Piece 018 — Start-room wall B — PLANNED
- Piece 019 — Start-room wall C — PLANNED
- Piece 020 — Start-room wall D with corridor-door contract preserved — PLANNED
- Piece 021 — Start-room ceiling — PLANNED

Do not combine adjacent pieces merely because they touch the same scene, controller, or control system.

Authority correction:
- Piece 010 originally inserted the four organization systems before their user directive was registered.
- Piece 011 correctly flagged that missing registration as an authority defect.
- SOURCE-007 and answered Q-0002 now provide the missing authoritative user evidence. The organization sequence is therefore restored as new authorized work, not by pretending the earlier unregistered insertion was valid.
- Mouse-look migration remains absent because REG-0002 verified the controller already uses `event.screen_relative`.
