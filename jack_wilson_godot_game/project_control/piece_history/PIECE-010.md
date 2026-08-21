# Piece 010 — Godot 4.7 documentation baseline

PIECE_ID: PIECE-010
STATUS: COMPLETE_WITH_LATER_CORRECTION
STARTING_COMMIT: 5e0aac0d8857e5ce18889da3cd12dc83a248cc7e
IMPLEMENTATION_COMMIT: 4c64bcbaabf2eaff5f23d3e94212175644a1263f
SEAL_COMMIT: e2c217b98b54ba985a5599bb151f2afacab25426
SEALED_AFTER_READBACK: YES
RUNTIME_GATE: RUNTIME_GATE_NOT_EXECUTED

## Valid result retained
- Documentation baseline and implementation reference log were created from official Godot 4.7 sources.
- `tests/verify_godot_docs_baseline.py` was created.
- Quality baseline recorded 8 static tests and 5 QA validators.
- No gameplay file changed.

## Original finding — INVALIDATED BY REG-0002
- The original Piece 010 record stated that current mouse look used `event.relative` and suggested a later migration to `screen_relative`.
- Direct repository readback proved that statement false: the committed controller already used `event.screen_relative` for both axes and the existing mouse-look test required it.
- Piece 011 preserves this failed finding as history but does not treat it as current truth.

## Seal authority correction — REG-0003
- The Piece 010 seal inserted four future organization systems while citing an unregistered separation directive and without the required roadmap decision.
- Piece 011 removes those systems from the active roadmap and preserves the missing authority as Q-0002/U-0005.
