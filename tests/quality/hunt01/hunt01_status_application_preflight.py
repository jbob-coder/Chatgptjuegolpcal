#!/usr/bin/env python3
"""Static/source gate for the first generic combat status-application runtime."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
RUNTIME = ROOT / "game/scripts/gameplay/combat/hunt01_status_application_runtime.gd"
CLASSIFIER = ROOT / "game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_wound_contact_runtime.gd"
TEST = ROOT / "game/tests/hunt01_status_application_runtime_test.gd"
DOC = ROOT / "game/docs/HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME.md"
README = ROOT / "game/scripts/gameplay/combat/README.md"
WORKFLOW = ROOT / ".github/workflows/production-hunt01-graybox-android.yml"


def main() -> int:
    failures: list[str] = []
    checks = 0

    def check(label: str, condition: bool) -> None:
        nonlocal checks
        checks += 1
        print(f"[{'PASS' if condition else 'FAIL'}] {label}")
        if not condition:
            failures.append(label)

    print("Hunt-01 generic status application source preflight")
    for path in (RUNTIME, CLASSIFIER, TEST, DOC, README, WORKFLOW):
        check(f"required:{path.relative_to(ROOT)}", path.is_file())
    if failures:
        print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
        print("Gate: HUNT01_GENERIC_STATUS_APPLICATION_SOURCE_STATIC_FAILED")
        return 1

    runtime = RUNTIME.read_text(encoding="utf-8")
    classifier = CLASSIFIER.read_text(encoding="utf-8")
    test = TEST.read_text(encoding="utf-8")
    doc = DOC.read_text(encoding="utf-8")
    readme = README.read_text(encoding="utf-8")
    workflow = WORKFLOW.read_text(encoding="utf-8")

    check("status application schema explicit", 'SCHEMA := "uhr.hunt01.status_application.v1"' in runtime)
    check("request schema and consumer boundary explicit", 'REQUEST_SCHEMA := "uhr.status_application_request.v1"' in runtime and 'CONSUMER_STATUS := "PENDING_GENERIC_STATUS_APPLICATION_RUNTIME"' in runtime)
    check("stable data-driven definitions include current two consumers", "STATUS_DEFINITIONS" in runtime and 'STATUS_BLEEDING := "status_bleeding"' in runtime and 'STATUS_OFF_BALANCE := "status_off_balance"' in runtime)
    check("Bleeding stack rule and cap exactly recorded", '"stack_rule": "STACK_INTENSITY_CAPPED"' in runtime and "BLEEDING_MAX_INTENSITY := 3" in runtime)
    check("Bleeding first tick is application round plus one", 'application_round + 1' in runtime and '"first_tick_round"' in runtime)
    check("Bleeding periodic execution remains pending", '"periodic_status": "PENDING_STATUS_TIMING_RUNTIME"' in runtime)
    check("Off-Balance uses refresh-duration state", '"stack_rule": "REFRESH_DURATION"' in runtime and '"application_count"' in runtime)
    check("Off-Balance expiry is metadata-only", '"pending_expiry_hook": "TURN_END"' in runtime and '"expiry_status": "PENDING_STATUS_TIMING_RUNTIME"' in runtime)
    check("stable request idempotency map exists", "_applications" in runtime and "if _applications.has(request_id)" in runtime and "STATUS_APPLICATION_READBACK_IDEMPOTENT" in runtime)
    check("ON_APPLY is committed only for unique accepted request", "STATUS_ON_APPLY_COMMITTED" in runtime and '"on_apply_committed": true' in runtime)
    check("stable actor-level instance key exists", 'return "%s|%s" % [target_actor_id, status_id]' in runtime)
    check("query APIs expose definition, instance and application", all(token in runtime for token in ("get_definition", "get_status_instance", "get_application_result", "get_active_status_count")))
    check("persistence snapshot rehydrates without ON_APPLY replay", "get_persistence_snapshot" in runtime and "restore_persistence_snapshot" in runtime and "STATUS_STATE_REHYDRATED_WITHOUT_ON_APPLY_REPLAY" in runtime)
    check("status application owns no RNG", all(token not in runtime for token in ("randf(", "randi(", "RandomNumberGenerator", "randomize(")))
    check("status application owns no health/resource/anatomy mutation", all(token not in runtime for token in ("health -=", "try_commit_cost", "try_commit_reaction_cost", "apply_damage_handoff", "global_position =")))
    check("status application does not advance Initiative/round", all(token not in runtime for token in ("advance_round", "complete_external_activation", "end_player_turn")))
    check("classifier preloads generic status owner", 'preload("res://scripts/gameplay/combat/hunt01_status_application_runtime.gd")' in classifier)
    check("generic status node is attached to combat shell", 'status_runtime.name = "StatusApplicationRuntime"' in classifier and "shell.add_child(status_runtime)" in classifier)
    check("classifier dispatches only after producing requests", 'consume_application_request", request, application_round' in classifier and classifier.index("status_application_requests") > classifier.index("_build_bleeding_request"))
    check("classifier still contains no timing scheduler implementation", all(token not in classifier for token in ("ROUND_END", "TURN_START_PRE_RECOVERY", "process_status_timing")))
    check("production test proves real Bleeding integration", "real Head Sweep dispatches one status request to generic owner" in test and "Bleeding actor-level instance is active at intensity 1" in test)
    check("production test proves idempotent replay", "replay does not rerun ON_APPLY trace" in test)
    check("production test proves Bleeding cap", "Bleeding intensity caps at 3" in test)
    check("production test proves Off-Balance refresh metadata", "Off-Balance records pending completed-activation expiry" in test)
    check("production test proves persistence rehydrate boundary", "rehydration runs no ON_APPLY trace" in test)
    check("runtime documentation keeps scheduler downstream", "PENDING_STATUS_TIMING_RUNTIME" in doc and "does not execute" in doc.lower())
    check("combat README records generic status owner", "hunt01_status_application_runtime.gd" in readme and "status application" in readme.lower())
    check("workflow runs status static gate", "hunt01_status_application_preflight.py" in workflow and "HUNT01_GENERIC_STATUS_APPLICATION_SOURCE_STATIC_VERIFIED" in workflow)
    check("workflow runs status headless gate", "hunt01_status_application_runtime_test.gd" in workflow and "HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME_VERIFIED" in workflow)

    print()
    print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
    if failures:
        print("Gate: HUNT01_GENERIC_STATUS_APPLICATION_SOURCE_STATIC_FAILED")
    else:
        print("Gate: HUNT01_GENERIC_STATUS_APPLICATION_SOURCE_STATIC_VERIFIED")
    print("This gate does not claim status timing/ticks/expiry, final status resistance, structural damage, defeat, phone acceptance or performance verification.")
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
