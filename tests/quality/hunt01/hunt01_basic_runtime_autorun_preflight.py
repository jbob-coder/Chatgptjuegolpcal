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
    check("autorun verifies existing combat owners", all(token in test for token in ("get_combat_turn_shell", "get_tactical_movement_runtime", "get_reaction_window_runtime", "get_mudcrest_anatomy_runtime", "get_mudcrest_attack_runtime", "HunterAttackRuntime")))
    check("autorun preserves the initial out-of-range scheduler proof", "Round 2 returns to Hunter" in test and "idle N01 Monster activation does not fabricate an attack" in test)
    check("autorun drives authored tactical movement to the Tail Sweep flank", all(token in test for token in ("R01_EF02_N02", "R01_EF02_N05", "R01_EF02_N08", "R01_EF02_N10", "TAIL_SWEEP_NODE_POSITION")))
    check("autorun drives the existing Tail Sweep attack owner", "M01_TAIL_SWEEP" in test and "WAITING_REACTION_DECISION" in test and "get_active_attack" in test)
    check("autorun verifies Monster attack resources", "3 AP / 18 Stamina" in test and 'monster_resources.get("ap"' in test and 'monster_resources.get("stamina"' in test)
    check("autorun commits the existing Poleblade Block reaction", "POLEBLADE_BLOCK" in test and "commit_reaction" in test and "1 RP + 6 Stamina" in test)
    check("autorun reads deterministic defense and health consequences", "BLOCK_STRONG" in test and "100 -> 98" in test and "get_last_resolution" in test)
    check("autorun reads generic status ownership after the exchange", "status_off_balance" in test and "status_staggered" in test and "status_request_count" in test and "get_status_application_runtime" in test)
    check("autorun verifies scheduler return after the combat exchange", "combat exchange returns scheduler to Round-3 Hunter" in test)
    check("autorun preserves combat result in fresh-instance signature", '"combat_exchange": exchange_signature' in test)

    check("Hunter attack extension begins from preserved N10", "Hunter attack extension starts from preserved N10" in test and "OUT_OF_WORKING_MELEE" in test)
    check("Hunter attack extension uses authored N10-to-N09 tactical route", all(token in test for token in ("Round-3 N10 -> N08 move succeeds", "Round-3 N08 -> N05 move succeeds", "Round-3 N05 -> N07 move succeeds", "Round-3 N07 -> N09 move succeeds", "HUNTER_ATTACK_NODE_POSITION")))
    check("Hunter attack extension proves N09 geometry before refreshed AP", "four-step approach consumes attack AP" in test and "INSUFFICIENT_AP" in test)
    check("Hunter attack extension resolves existing Head Sweep bridge", "M01_HEAD_SWEEP_GORE" in test and "Head Sweep bridge" in test and "Round-4 Hunter" in test)
    check("Hunter attack extension drives existing Measured Cut owner", "POLEBLADE_MEASURED_CUT" in test and "commit_measured_cut_for_test" in test and "DORSAL_PLATES" in test)
    check("Hunter attack extension verifies existing 2 AP / 12 Stamina cost", "2 AP / 12 Stamina" in test and "attack_resources_before" in test and "attack_resources_after" in test)
    check("Hunter attack extension verifies contact/protection/anatomy", all(token in test for token in ("SELECTED_PART_CONTACT", "MINERALIZED_DORSAL_PLATE", "ANATOMY_INTEGRITY_APPLIED", "100 -> 95")))
    check("Hunter attack extension verifies deterministic Round-4 sample", "Round-4 deterministic Dorsal hit remains CLEAN" in test and 'variance_sample", 99)) == 0' in test)
    check("Hunter attack extension verifies anatomy idempotency", "apply_damage_handoff_for_test" in test and "replaying Measured Cut anatomy handoff remains idempotent" in test)
    check("autorun folds Hunter attack result into fresh-instance signature", '"hunter_attack_exchange": hunter_attack_signature' in test and "first_signature == second_signature" in test)

    check("autorun tears down world between cycles", "world.queue_free()" in test and "world root is released after teardown" in test)
    check("autorun rejects group-state leakage", all(token in test for token in ("tactical-node group is clean after teardown", "evidence group is clean after teardown", "monster group is clean after teardown", "attack-telegraph group is clean after teardown")))
    check("autorun does not simulate normal gameplay input or add RNG", all(token not in test for token in ("Input.action_press", "Input.parse_input_event", "randf(", "randi(", "RandomNumberGenerator")))
    check("base autorun verification gate remains explicit", "Gate: HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED" in test)
    check("combat-exchange verification gate remains explicit", "Gate: HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED" in test)
    check("Hunter-attack verification gate is explicit", "Gate: HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_VERIFIED" in test)
    check("documentation marks this as CI verification rather than autoplay", "not player-facing autoplay" in doc.lower() and "fresh-instance" in doc.lower() and "combat exchange" in doc.lower() and "hunter attack" in doc.lower())
    check("workflow watches autorun static gate", "hunt01_basic_runtime_autorun_preflight.py" in workflow)
    check("workflow runs autorun static gate", "HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED" in workflow)
    check("workflow runs autorun headless gate", "hunt01_basic_runtime_autorun_test.gd" in workflow and "HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED" in workflow)

    print()
    print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
    print("Gate: " + ("HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED" if not failures else "HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_FAILED"))
    print("This gate verifies deterministic fresh-instance repeatability through existing Monster and Hunter combat exchanges; it does not claim player-facing autoplay, phone acceptance or sustained performance.")
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
