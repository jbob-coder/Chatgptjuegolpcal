#!/usr/bin/env python3
"""Static/source gate for the Mudcrest Tail Sweep runtime slice."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
ATTACK = ROOT / "game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd"
WOUND = ROOT / "game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_wound_contact_runtime.gd"
REACTION = ROOT / "game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd"
DEFENSE = ROOT / "game/scripts/gameplay/combat/hunt01_hunter_defense_consequence_runtime.gd"
STATUS = ROOT / "game/scripts/gameplay/combat/hunt01_status_application_runtime.gd"
PACKET = ROOT / "docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md"
BEHAVIOR = ROOT / "docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md"
MANIFEST = ROOT / "game/content/regions/region_01/hunt01_graybox_build_manifest.json"
TELEGRAPH = ROOT / "game/assets/effects/mudcrest_tail_sweep_telegraph.tscn"
TEST = ROOT / "game/tests/hunt01_mudcrest_tail_sweep_runtime_test.gd"
DOC = ROOT / "game/docs/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME.md"


def main() -> int:
    failures: list[str] = []
    checks = 0

    def check(label: str, condition: bool) -> None:
        nonlocal checks
        checks += 1
        print(f"[{'PASS' if condition else 'FAIL'}] {label}")
        if not condition:
            failures.append(label)

    print("Hunt-01 Mudcrest Tail Sweep source preflight")
    for path in (ATTACK, WOUND, REACTION, DEFENSE, STATUS, PACKET, BEHAVIOR, MANIFEST, TELEGRAPH, TEST, DOC):
        check(f"required:{path.relative_to(ROOT)}", path.is_file())
    if failures:
        print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
        print("Gate: HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_SOURCE_STATIC_FAILED")
        return 1

    attack = ATTACK.read_text(encoding="utf-8")
    wound = WOUND.read_text(encoding="utf-8")
    reaction = REACTION.read_text(encoding="utf-8")
    defense = DEFENSE.read_text(encoding="utf-8")
    status = STATUS.read_text(encoding="utf-8")
    packet = PACKET.read_text(encoding="utf-8")
    behavior = BEHAVIOR.read_text(encoding="utf-8")
    manifest = MANIFEST.read_text(encoding="utf-8")
    telegraph = TELEGRAPH.read_text(encoding="utf-8")
    test = TEST.read_text(encoding="utf-8")
    doc = DOC.read_text(encoding="utf-8")

    check("Tail Sweep attack/capability IDs exact", 'TAIL_SWEEP_ATTACK_ID := "M01_TAIL_SWEEP"' in attack and 'TAIL_SWEEP_CAPABILITY_ID := "CAP_M01_TAIL_SWEEP"' in attack)
    check("Tail Sweep economy exact 3 AP / 18 Stamina", "TAIL_SWEEP_AP_COST := 3" in attack and "TAIL_SWEEP_STAMINA_COST := 18" in attack)
    check("Tail Sweep Block impact drain exact 14 Stamina", "TAIL_SWEEP_BLOCK_IMPACT_DRAIN_STAMINA := 14" in attack)
    check("Tail Sweep pure Impact profile", '"profile": "TAIL_SWEEP_IMPACT"' in attack and '"damage_channels": ["IMPACT"]' in attack)
    check("Tail capability reads existing TAIL anatomy", 'get_target_state", "TAIL"' in attack and "TAIL_DISTAL" in attack)
    check("sever thresholds are not invented", "DEFERRED_NOT_REQUIRED_FOR_INTACT_TAIL_ATTACK" in attack and all(token not in attack for token in ("TAIL_SEVER_THRESHOLD", "sever_threshold =", "break_threshold =")))
    check("rear/flank legality gate explicit", "TAIL_SWEEP_MAX_FORWARD_DOT := 0.25" in attack and "OUTSIDE_REAR_OR_FLANK_SWEEP_RELATION" in attack)
    check("authored pivot clearance is consumed", 'clearance["pivot"]' in attack and "HINDQUARTER_PIVOT_BLOCKED" in attack and '"pivot_clearance"' in attack)
    check("physical Tail Sweep arc blocker gate exists", "TAIL_SWEEP_ARC_BLOCKED" in attack and "PhysicsRayQueryParameters3D.create" in attack)
    check("provisional 8m reach is explicitly user-authorized creative canon", "TAIL_SWEEP_WORKING_MAX_BODY_ENVELOPE_DISTANCE_M := 8.0" in attack and "USER_AUTHORIZED_CREATIVE_CANON_FROM_EXISTING_8M_AUTHORED_PIVOT_RADIUS" in attack)
    check("behavior priority selects legal rear/flank Tail Sweep before normal front attacks", "rear/flank threat + Tail Sweep legal -> TAIL_SWEEP" in behavior)
    check("same Monster activation driver owns Tail and Head", "begin_monster_activation" in attack and "get_tail_sweep_legality" in attack and "get_head_sweep_legality" in attack and "register_monster_activation_driver" in attack)
    begin = attack.index("func begin_monster_activation")
    check("Tail Sweep is evaluated before Head Sweep", attack.index("get_tail_sweep_legality()", begin) < attack.index("get_head_sweep_legality()", begin))
    check("reaction runtime remains one shared Block+decline owner", 'REACTION_POLEBLADE_BLOCK := "POLEBLADE_BLOCK"' in reaction and 'REACTION_DECLINE := "DECLINE_REACTION"' in reaction)
    check("Tail Sweep opens shared reaction window", '"open_window", MONSTER_COMBATANT_ID, attack_id' in attack)
    check("14-Stamina impact drain routes through existing defense owner", "standard_block_impact_drain_stamina" in attack and "guard_impact_requested_stamina" in defense)
    check("Tail Sweep wound classifier is explicit", "resolve_tail_sweep_consequence" in wound and 'TAIL_SWEEP_ATTACK_ID := "M01_TAIL_SWEEP"' in wound)
    check("Tail Sweep emits Off-Balance through generic status request", "TAIL_SWEEP_SOLID_OR_CLEAN_IMPACT_CONTACT_ESTABLISHED" in wound and "STATUS_OFF_BALANCE" in wound and "consume_application_request" in wound)
    check("Tail Sweep emits no Bleeding/Staggered", "NOT_APPLICABLE_PURE_IMPACT_TAIL_SWEEP" in wound and "DEFERRED_NOT_EMITTED_BY_THIS_SLICE" in wound)
    check("generic status runtime owns Off-Balance", 'STATUS_OFF_BALANCE := "status_off_balance"' in status and "_apply_off_balance" in status)
    check("no extra RNG/proc added", all(token not in attack for token in ("randf(", "randi(", "RandomNumberGenerator", "randomize(")) and "2166136261" in attack and "16777619" in attack)
    check("presentation telegraph is non-colliding", "QuadMesh" in telegraph and "CollisionShape3D" not in telegraph and "StaticBody3D" not in telegraph)
    check("design packet contains selected Tail Sweep costs/role", "`M01_TAIL_SWEEP` | 3 | 18" in packet and "rear/flank arc defense" in packet)
    check("manifest provides pivot radius 8", '"pivot":{"center":[-18,4,-252],"radius":8' in manifest)
    check("runtime test uses real N08->N10 authored movement", '"R01_EF02_N08"' in test and '"R01_EF02_N10"' in test and "N08 -> N10" in test)
    check("runtime test verifies exact economy", "Tail Sweep spends exactly 3 AP / 18 Stamina" in test)
    check("runtime test verifies 14 impact drain", "Tail Sweep records exact 14-Stamina Block impact drain" in test and "6 commitment + 14 impact drain" in test)
    check("runtime test verifies Off-Balance application", "generic status runtime applies Off-Balance" in test and "Hunter has active Off-Balance instance" in test)
    check("runtime test preserves anatomy/no sever claims", "baseline Tail anatomy exists without sever threshold invention" in test)
    check("runtime doc states scope exclusions", "Tail sever thresholds" in doc and "Staggered" in doc and "USER_AUTHORIZED_CREATIVE_CANON" in doc)

    print()
    print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
    if failures:
        print("Gate: HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_SOURCE_STATIC_FAILED")
    else:
        print("Gate: HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_SOURCE_STATIC_VERIFIED")
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
