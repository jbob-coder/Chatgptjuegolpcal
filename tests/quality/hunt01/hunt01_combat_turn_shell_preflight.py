#!/usr/bin/env python3
"""Static/source gate for the first Hunt-01 combat turn shell.

This verifies ownership/invariant source structure only. It does not imply Godot
runtime, Android device acceptance, combat damage correctness or performance.
"""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
COMBAT_README = ROOT / "game/scripts/gameplay/combat/README.md"
COMBAT_RUNTIME = ROOT / "game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd"
COMBAT_TEST = ROOT / "game/tests/hunt01_combat_turn_shell_runtime_test.gd"
ENCOUNTER_RUNTIME = ROOT / "game/scripts/gameplay/encounter/hunt01_encounter_trigger_runtime.gd"


def main() -> int:
    failures: list[str] = []
    checks = 0

    def check(label: str, condition: bool, detail: str = "") -> None:
        nonlocal checks
        checks += 1
        print(f"[{'PASS' if condition else 'FAIL'}] {label}{' :: ' + detail if detail else ''}")
        if not condition:
            failures.append(label)

    print("Hunt-01 combat turn-shell source preflight")
    for path in (COMBAT_README, COMBAT_RUNTIME, COMBAT_TEST, ENCOUNTER_RUNTIME):
        check(f"required:{path.relative_to(ROOT)}", path.is_file())

    if failures:
        print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
        print("Gate: HUNT01_COMBAT_TURN_SHELL_SOURCE_STATIC_FAILED")
        return 1

    readme = COMBAT_README.read_text(encoding="utf-8")
    combat = COMBAT_RUNTIME.read_text(encoding="utf-8")
    test = COMBAT_TEST.read_text(encoding="utf-8")
    encounter = ENCOUNTER_RUNTIME.read_text(encoding="utf-8")

    check("combat owner declares no attack/damage ownership", "later combat layers own tactical movement, attacks, reactions, hit resolution" in readme)
    check("initiative fixture is explicitly provisional", "PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE" in readme and "PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE" in combat)
    check("encounter preloads combat shell", 'preload("res://scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd")' in encounter)
    check("encounter initializes combat shell after ENGAGE", "_start_combat_turn_shell" in encounter and 'shell.call("initialize", _world, _encounter_record)' in encounter)
    check("stable encounter identity preserved", 'EXPECTED_ENCOUNTER_ID := "enc_r01_ef02_m01_0001"' in combat)
    check("combat turn-shell schema explicit", 'SCHEMA := "uhr.hunt01.combat_turn_shell.v1"' in combat)
    check("Hunter baseline is 4 AP / 1 RP", "HUNTER_MAX_AP := 4" in combat and "HUNTER_MAX_RP := 1" in combat)
    check("Hunter normalized Stamina reference is 100", "HUNTER_MAX_STAMINA := 100" in combat)
    check("Hunter passive recovery is +10", "HUNTER_PASSIVE_STAMINA_RECOVERY := 10" in combat)
    check("Monster normal activation budget is 4 AP", "MONSTER_MAX_AP := 4" in combat)
    check("initiative formula uses 2x Agility + Perception + modifier", '"initiative_rating": (2 * agility) + perception + modifier' in combat)
    check("contract-example tie fixture is explicit", all(token in combat for token in ("HUNTER_AGILITY_FIXTURE := 50", "HUNTER_PERCEPTION_FIXTURE := 40", "MONSTER_AGILITY_FIXTURE := 45", "MONSTER_PERCEPTION_FIXTURE := 50")))
    check("deterministic comparator uses rating/agility/perception/stable ID", all(token in combat for token in ("left_rating", "left_agility", "left_perception", "return a < b")))
    check("one-normal-activation invariant keys actor by round", 'var activation_key := "%d|%s" % [_round_id, combatant_id]' in combat and "INVARIANT_REJECTED_DUPLICATE_ACTIVATION" in combat)
    check("unused AP is discarded before next round", "UNUSED_AP_DISCARDED" in combat and 'state["ap"] = 0' in combat)
    check("Monster placeholder is explicit and non-attacking", "WAIT_NO_ATTACK_RUNTIME" in combat and "MONSTER_PLACEHOLDER_WAIT" in combat)
    check("free exploration physics is locked after combat entry", "_world.set_physics_process(false)" in combat)
    check("exploration joystick is hidden in combat", 'get_node_or_null("HUD/Touch/MoveJoystick")' in combat and "joystick.visible = false" in combat)
    check("debug reset is disabled in combat", 'get_node_or_null("HUD/Touch/ResetToStart")' in combat and "reset_button.disabled = true" in combat)
    check("player-facing END TURN control exists", 'text = "END TURN"' in combat and "end_player_turn" in combat)
    check("resource commitment rejects unaffordable costs without negative resources", 'if int(state["ap"]) < ap_cost or int(state["stamina"]) < stamina_cost' in combat and "RESOURCE_COMMIT_REJECTED" in combat)
    check("combat test covers duplicate activation and Round-2 refresh", "duplicate normal activation is rejected" in test and "Round 2 returns to Hunter" in test)
    check("turn shell contains no attack/damage resolution", all(token not in combat for token in ("apply_damage", "resolve_attack", "damage_roll", "critical_roll", "sever_part", "break_part")))

    print()
    print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
    print("Gate: HUNT01_COMBAT_TURN_SHELL_SOURCE_STATIC_VERIFIED" if not failures else "Gate: HUNT01_COMBAT_TURN_SHELL_SOURCE_STATIC_FAILED")
    print("This result does NOT imply headless runtime, Android APK, phone acceptance, attack resolution, or performance verification.")
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
