#!/usr/bin/env python3
"""Static regression guard for Stage-1 outer world-boundary containment.

This guard protects the source contract that already received positive Galaxy A03s
evidence. It does not prove runtime collision/containment on the current APK.
"""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPT_PATH = ROOT / "scripts" / "probe_world.gd"
SCENE_PATH = ROOT / "scenes" / "probe_world.tscn"

BOUND_RE = re.compile(r"^const PROBE_BOUNDS := (?P<value>\d+(?:\.\d+)?)$", re.MULTILINE)
FLOOR_SIZE_RE = re.compile(
    r'\[sub_resource type="BoxMesh" id="Mesh_floor"\]\s+material = SubResource\("Mat_floor"\)\s+size = Vector3\((?P<x>\d+(?:\.\d+)?),\s*(?P<y>\d+(?:\.\d+)?),\s*(?P<z>\d+(?:\.\d+)?)\)',
    re.MULTILINE,
)
HUNTER_RADIUS_RE = re.compile(
    r'\[sub_resource type="CapsuleShape3D" id="Shape_hunter"\]\s+radius = (?P<radius>\d+(?:\.\d+)?)',
    re.MULTILINE,
)

REQUIRED_SCRIPT_LINES = (
    "hunter.move_and_slide()",
    "var bounded_position := hunter.global_position",
    "bounded_position.x = clampf(bounded_position.x, -PROBE_BOUNDS, PROBE_BOUNDS)",
    "bounded_position.z = clampf(bounded_position.z, -PROBE_BOUNDS, PROBE_BOUNDS)",
    "hunter.global_position = bounded_position",
)


def report(label: str, ok: bool, detail: str, failures: list[str]) -> None:
    print(f"[{'PASS' if ok else 'FAIL'}] {label} :: {detail}")
    if not ok:
        failures.append(label)


def main() -> int:
    script = SCRIPT_PATH.read_text(encoding="utf-8")
    scene = SCENE_PATH.read_text(encoding="utf-8")
    failures: list[str] = []

    print("Stage 1 world-boundary static regression guard")

    bound_match = BOUND_RE.search(script)
    report("PROBE_BOUNDS constant exists", bound_match is not None, bound_match.group(0) if bound_match else "missing", failures)
    bound = float(bound_match.group("value")) if bound_match else float("nan")
    report("phone-positive boundary value remains 8.5 m", bound == 8.5, f"value={bound}", failures)

    positions: list[int] = []
    for line in REQUIRED_SCRIPT_LINES:
        index = script.find(line)
        report(f"boundary source line present: {line}", index >= 0, f"index={index}", failures)
        positions.append(index)

    order_ok = all(index >= 0 for index in positions) and positions == sorted(positions)
    report(
        "boundary clamp executes after move_and_slide and before final assignment",
        order_ok,
        f"indices={positions}",
        failures,
    )

    no_y_clamp = "bounded_position.y = clampf" not in script
    report("boundary remains horizontal-only; Y is not hard-clamped", no_y_clamp, "no Y clamp" if no_y_clamp else "unexpected Y clamp", failures)

    floor_match = FLOOR_SIZE_RE.search(scene)
    report("probe floor dimensions are parseable", floor_match is not None, floor_match.group(0) if floor_match else "missing", failures)

    radius_match = HUNTER_RADIUS_RE.search(scene)
    report("Hunter collision radius is parseable", radius_match is not None, radius_match.group(0) if radius_match else "missing", failures)

    if floor_match and radius_match and bound_match:
        floor_x = float(floor_match.group("x"))
        floor_z = float(floor_match.group("z"))
        hunter_radius = float(radius_match.group("radius"))
        margin_x = floor_x * 0.5 - bound
        margin_z = floor_z * 0.5 - bound
        fits = margin_x >= hunter_radius and margin_z >= hunter_radius
        report(
            "boundary keeps Hunter center far enough inside floor extents",
            fits,
            f"margin_x={margin_x:.3f}, margin_z={margin_z:.3f}, hunter_radius={hunter_radius:.3f}",
            failures,
        )

    print()
    print(f"Failed: {len(failures)}")
    print("Gate: WORLD_BOUNDARY_STATIC_VERIFIED" if not failures else "Gate: WORLD_BOUNDARY_STATIC_FAILED")
    print("This result does NOT imply current-APK phone containment verification.")
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
