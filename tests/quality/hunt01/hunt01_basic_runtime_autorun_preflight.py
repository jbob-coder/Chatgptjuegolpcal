#!/usr/bin/env python3
"""Static/source gate for the Hunt-01 basic runtime autorun regression."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
TEST = ROOT / "game/tests/hunt01_basic_runtime_autorun_test.gd"
DOC = ROOT / "game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md"
WORKFLOW = ROOT / ".github/workflows/production-hunt01-graybox-android.yml"
SCENE = ROOT / "game/scenes/regions/region_01_hunt01_graybox.tscn"


def main() -> int:
    failures: list[str] = []
    checks = 0

    def check(label: str, condition: bool) -> None:
        nonlocal checks
        checks += 1
        print(f"[{'PASS' if condition else 'FAIL'}] {label}")
        if not condition:
            failures.append(label)

    print("Hunt-01 basic runtime autorun source preflight")
    for path in (TEST, DOC, WORKFLOW, SCENE):
        check(f"required:{path.relative_to(ROOT)}", path.is_file())
    if failures:
        return 1

    test = TEST.read_text(encoding="utf-8")
    doc = DOC.read_text(encoding="utf-8")
    workflow = WORKFLOW.read_text(encoding="utf-8")

    check("autorun loads real production Region-01 scene", 'load("res://scenes/regions/region_01_hunt01_graybox.tscn")' in test)
    check("autorun executes two explicit fresh cycles", "_run_cycle(packed, 1)" in test and "_run_cycle(packed, 2)" in test)
    check("autorun starts each cycle from zero tracking state", "fresh tracking starts at zero" in test and '== "SEARCHING"' in test)
    check("autorun drives existing tracking helper rather than a duplicate tracker", 'record_evidence_for_test' in test and "EVIDENCE_IDS" in test)
    check("autorun reaches real physical ENGAGE boundary", "is_inside_engagement_zone" in test and "ENGAGEMENT_AVAILABLE" in test and "engage_for_test" in test)
    check("autorun verifies existing combat owners", all(token in test for token in ("get_combat_turn_shell", "get_tactical_movement_runtime", "get_reaction_window_runtime", "get_mudcrest_anatomy_runtime", "get_mudcrest_attack_runtime")))
    check("autorun exercises one real scheduler cycle", "end_player_turn" in test and "Round 2 returns to Hunter" in test)
    check("autorun tears down world between cycles", "world.queue_free()" in test and "world root is released after teardown" in test)
    check("autorun rejects group-state leakage", all(token in test for token in ("tactical-node group is clean after teardown", "evidence group is clean after teardown", "monster group is clean after teardown")))
    check("autorun compares deterministic cycle signatures", "first_signature == second_signature" in test)
    check("autorun does not simulate normal gameplay input or add RNG", all(token not in test for token in ("Input.action_press", "Input.parse_input_event", "randf(", "randi(", "RandomNumberGenerator")))
    check("autorun verification gate is explicit", "Gate: HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED" in test)
    check("documentation marks this as CI verification rather than autoplay", "not player-facing autoplay" in doc.lower() and "fresh-instance" in doc.lower())
    check("workflow watches autorun static gate", "hunt01_basic_runtime_autorun_preflight.py" in workflow)
    check("workflow runs autorun static gate", "HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED" in workflow)
    check("workflow runs autorun headless gate", "hunt01_basic_runtime_autorun_test.gd" in workflow and "HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED" in workflow)

    print()
    print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
    print("Gate: " + ("HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED" if not failures else "HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_FAILED"))
    print("This gate verifies deterministic repeatability of already-implemented basics; it does not claim player-facing autoplay, phone acceptance or sustained performance.")
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
