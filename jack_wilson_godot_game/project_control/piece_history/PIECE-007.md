# Piece 007 — Repair cumulative static verification regression

STATUS: COMPLETE
STARTING_COMMIT: 7eb700fc031a32da53aa2ef656a99e6d5488a80e
IMPLEMENTATION_COMMIT: 69555333e8f2a14299d6bd4dcb7b82003ba0e007
RUNTIME_GATE: RUNTIME_GATE_NOT_EXECUTED

Purpose: repair REG-0001, where the Piece 003 walking verifier still prohibited mouse capture after Piece 004 legitimately added mouse look to the shared controller.

Changes:
- tests/verify_movement.py now treats completed later controller features as allowed and still forbids gravity, jump, and sprint.
- scripts/qa/verify_all.py runs every committed `tests/verify_*.py` verifier and fails non-zero if any one fails.
- REG-0001 and the resulting quality baseline are recorded in project_control.

Verification:
- Before repair: 5/6 static verifiers passed; verify_movement.py failed with `AssertionError: mouse-look leaked into walking piece`.
- After repair in the connector-reconstructed snapshot: 6/6 static verifiers passed and verify_all.py emitted `VERIFY_ALL_STATIC_OK`.
- GitHub readback confirmed the exact committed movement verifier and cumulative runner at implementation commit 69555333e8f2a14299d6bd4dcb7b82003ba0e007.

Limitations:
- Godot executable was not available, so no runtime/parser claim is made.
