#!/usr/bin/env python3
"""Production Hunt-01 projection/source preflight.

This gate verifies repository/source invariants only. It does not imply Godot
runtime, Android APK, Galaxy A03s traversal, scene-static dimensional proof, or
performance verification.
"""

from __future__ import annotations

import json
import math
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
DOC_MANIFEST = ROOT / "docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json"
RUNTIME_MANIFEST = ROOT / "game/content/regions/region_01/hunt01_graybox_build_manifest.json"

REQUIRED = (
    "game/project.godot",
    "game/export_presets.cfg",
    "game/README.md",
    "game/scenes/app_shell.tscn",
    "game/scenes/regions/region_01_hunt01_graybox.tscn",
    "game/scripts/app_shell.gd",
    "game/scripts/presentation/exploration/region_01_hunt01_graybox.gd",
    "game/content/regions/region_01/hunt01_graybox_build_manifest.json",
    "game/content/regions/region_01/README.md",
    "game/tests/region01_hunt01_graybox_runtime_test.gd",
)


def route_length(anchors: list[list[float]]) -> float:
    total = 0.0
    for a, b in zip(anchors, anchors[1:]):
        total += math.dist(a, b)
    return total


def main() -> int:
    failures: list[str] = []
    checks = 0

    def check(label: str, condition: bool, detail: str = "") -> None:
        nonlocal checks
        checks += 1
        print(f"[{'PASS' if condition else 'FAIL'}] {label}{' :: ' + detail if detail else ''}")
        if not condition:
            failures.append(label)

    print("Hunt-01 production projection/source preflight")
    for rel in REQUIRED:
        check(f"required:{rel}", (ROOT / rel).is_file())

    if not DOC_MANIFEST.is_file() or not RUNTIME_MANIFEST.is_file():
        print("Gate: HUNT01_PRODUCTION_GRAYBOX_STATIC_FAILED")
        return 1

    docs = json.loads(DOC_MANIFEST.read_text(encoding="utf-8"))
    runtime = json.loads(RUNTIME_MANIFEST.read_text(encoding="utf-8"))
    check("runtime projection equals docs authority", runtime == docs)
    check("manifest schema", runtime.get("schema") == "uhr_hunt01_graybox_build_manifest@1", str(runtime.get("schema")))
    check("scenario identity", runtime.get("scenario") == "R01_HUNT01_M01_TRACK_TO_MEADOW")
    check("space is meters", runtime.get("space", {}).get("units") == "m")

    length = route_length(runtime["route"]["anchors"])
    target_lo, target_hi = runtime["route"]["target_m"]
    check("required route planning polyline reaches target", target_lo <= length <= target_hi, f"{length:.3f} m")
    check("evidence count", len(runtime.get("evidence", [])) == 7, str(len(runtime.get("evidence", []))))
    check("tactical-node count", len(runtime.get("nodes", [])) == 10, str(len(runtime.get("nodes", []))))
    check("tactical-link count", len(runtime.get("links", [])) == 14, str(len(runtime.get("links", []))))
    check("stream proxy count", len(runtime.get("stream", [])) == 3, str(len(runtime.get("stream", []))))

    project_text = (ROOT / "game/project.godot").read_text(encoding="utf-8")
    export_text = (ROOT / "game/export_presets.cfg").read_text(encoding="utf-8")
    region_text = (ROOT / "game/scripts/presentation/exploration/region_01_hunt01_graybox.gd").read_text(encoding="utf-8")
    scene_text = (ROOT / "game/scenes/regions/region_01_hunt01_graybox.tscn").read_text(encoding="utf-8")

    check("production GL Compatibility renderer", 'renderer/rendering_method="gl_compatibility"' in project_text)
    check("production package ID is not probe ID", 'package/unique_name="org.unnamedhuntrpg.game"' in export_text and "stage1probe" not in export_text)
    check("production source does not import probe tree", "probes/android_stage1" not in region_text and "probes/android_stage1" not in scene_text)
    check("accepted 115 degree first-person FOV", "FIRST_PERSON_FOV_DEG := 115.0" in region_text and "fov = 115.0" in scene_text)
    check("shooter-style independent look path", "_look_touch_id" in region_text and "_camera_relative_movement" in region_text and "_apply_look_delta" in region_text)
    check("no adaptive steering variables returned", all(token not in region_text for token in ("JOYSTICK_ADAPT_HOLD_SECONDS", "JOYSTICK_ADAPT_ALIGNMENT_DOT", "_joystick_adaptive_latched", "_joystick_reference_forward")))
    check("production settings path is non-probe", 'SETTINGS_PATH := "user://unnamed_hunt_settings.cfg"' in region_text)
    check("no invisible Region boundary clamp", "PROBE_BOUNDS" not in region_text and "bounded_position.x" not in region_text)
    check("stream proxies created visually only", '"hunt01_stream_proxy"' in region_text and "_create_visual_box(entry[0]" in region_text)

    print()
    print(f"Checks: {checks} | Passed: {checks - len(failures)} | Failed: {len(failures)}")
    print("Gate: HUNT01_PRODUCTION_GRAYBOX_STATIC_VERIFIED" if not failures else "Gate: HUNT01_PRODUCTION_GRAYBOX_STATIC_FAILED")
    print("This result does NOT imply Godot runtime, APK, phone, scene-static dimensional, or performance verification.")
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
