#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CONTRACT_PATH = ROOT / "data" / "world" / "asterline" / "coordinate_transform.json"
CITY_PATH = ROOT / "data" / "world" / "asterline" / "city_spatial_manifest.json"
START_PATH = ROOT / "data" / "world" / "asterline" / "start_area_manifest.json"
SCRIPT_PATH = ROOT / "scripts" / "world" / "asterline_coordinates.gd"
DOC_PATH = ROOT / "docs" / "world" / "ASTERLINE_TO_GODOT_COORDINATES.md"
REFERENCE_LOG = ROOT / "docs" / "godot" / "GODOT_IMPLEMENTATION_REFERENCE_LOG.md"
MAIN_SCENE = ROOT / "scenes" / "main.tscn"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def load_json(path: Path) -> dict:
    require(path.is_file(), f"missing file: {path.relative_to(ROOT)}")
    value = json.loads(path.read_text(encoding="utf-8"))
    require(isinstance(value, dict), f"JSON root must be an object: {path.relative_to(ROOT)}")
    return value


def transform(source: list[float], anchor: list[float]) -> list[float]:
    return [source[0] - anchor[0], source[2] - anchor[2], -(source[1] - anchor[1])]


def inverse(local: list[float], anchor: list[float]) -> list[float]:
    return [anchor[0] + local[0], anchor[1] - local[2], anchor[2] + local[1]]


def close(first: list[float], second: list[float], tolerance: float = 1e-6) -> bool:
    return all(math.isclose(a, b, abs_tol=tolerance) for a, b in zip(first, second, strict=True))


def distance(first: list[float], second: list[float]) -> float:
    return math.sqrt(sum((a - b) ** 2 for a, b in zip(first, second, strict=True)))


def determinant_3x3(matrix: list[list[int]]) -> int:
    return (
        matrix[0][0] * (matrix[1][1] * matrix[2][2] - matrix[1][2] * matrix[2][1])
        - matrix[0][1] * (matrix[1][0] * matrix[2][2] - matrix[1][2] * matrix[2][0])
        + matrix[0][2] * (matrix[1][0] * matrix[2][1] - matrix[1][1] * matrix[2][0])
    )


def main() -> int:
    contract = load_json(CONTRACT_PATH)
    city = load_json(CITY_PATH)
    start = load_json(START_PATH)

    require(contract["contract_id"] == "CONTRACT_ASTERLINE_TO_GODOT_COORDINATES_V1", "coordinate contract ID drift")
    require(contract["source_frame"]["vector_component_order"] == ["east_m", "north_m", "up_m"], "source component order drift")
    require(contract["godot_frame"]["vector_component_order"] == ["right_east_m", "up_m", "back_south_m"], "Godot component order drift")
    matrix = contract["linear_transform"]["source_delta_enu_to_godot_local_xyz_matrix"]
    require(matrix == [[1, 0, 0], [0, 0, 1], [0, -1, 0]], "transform matrix drift")
    require(determinant_3x3(matrix) == contract["linear_transform"]["determinant"] == 1, "transform handedness drift")

    anchor = contract["start_anchor_example"]["anchor_source_enu_m"]
    examples = [
        ([0.0, 0.0, 0.0], anchor),
        ([1612.82, -1149.13, 19.77], anchor),
        ([-8500.0, -8200.0, -30.0], [0.0, 0.0, 0.0]),
        ([11200.0, 9300.0, 450.0], [10000.0, 9000.0, 0.0]),
    ]
    for source, source_anchor in examples:
        local = transform(source, source_anchor)
        require(close(inverse(local, source_anchor), source), f"round-trip drift: {source}")
    require(close(transform([1, 0, 0], [0, 0, 0]), [1, 0, 0]), "east must map to +Godot X")
    require(close(transform([0, 1, 0], [0, 0, 0]), [0, 0, -1]), "north must map to -Godot Z")
    require(close(transform([0, 0, 1], [0, 0, 0]), [0, 1, 0]), "up must map to +Godot Y")

    first = [100.25, -200.5, 17.0]
    second = [-330.75, 410.0, 44.5]
    require(math.isclose(distance(first, second), distance(transform(first, anchor), transform(second, anchor)), abs_tol=1e-9), "transform changed 3D distance")

    origin = contract["origin_shifting"]
    require(origin["required_for_future_runtime"] is True, "origin policy requirement drift")
    require(origin["runtime_orchestration_implemented"] is False, "runtime rebasing was falsely claimed")
    require(origin["cell_size_m"] == 100, "source cell size drift")
    require(origin["rebase_threshold_horizontal_m"] == 1600, "rebase threshold drift")
    require(origin["rebase_threshold_horizontal_m"] < 2048, "rebase threshold exceeds conservative first-person bound")
    require(math.floor(-1.0 / 100.0) == -1 and int(-1.0 / 100.0) == 0, "negative floor/truncation test invalid")
    center = contract["start_anchor_example"]["center_block_source_enu_m"]
    expected_local = contract["start_anchor_example"]["center_block_godot_local_xyz_m"]
    require(close(transform(center, anchor), expected_local), "start center example drift")
    require([math.floor(center[0] / 100), math.floor(center[1] / 100)] == contract["start_anchor_example"]["source_cell"], "start source cell drift")

    for block in start["blocks"]:
        for point in block["polygon_m"]:
            source = [point[0], point[1], block["terrain_elevation_m"]]
            require(close(inverse(transform(source, anchor), anchor), source), f"start-block round trip drift: {block['stable_id']}")
        for building in block["buildings"]:
            for point in building["footprint_polygon_m"]:
                source = [point[0], point[1], building["ground_elevation_m"]]
                require(close(inverse(transform(source, anchor), anchor), source), f"building round trip drift: {building['stable_id']}")

    runtime = city["runtime_contract"]
    require(runtime["godot_world_transform_status"] == "DEFINED_PIECE_014_STATIC_RUNTIME_GATE_OPEN", "city manifest transform status drift")
    require(runtime["coordinate_transform_contract"] == "data/world/asterline/coordinate_transform.json", "city transform pointer drift")
    require(runtime["coordinate_utility"] == "scripts/world/asterline_coordinates.gd", "city coordinate utility pointer drift")
    require(start["runtime_contract"]["godot_world_transform_status"] == "DEFINED_PIECE_014_STATIC_RUNTIME_GATE_OPEN", "start manifest transform status drift")
    require(start["runtime_contract"]["coordinate_transform_contract"] == "data/world/asterline/coordinate_transform.json", "start transform pointer drift")
    require(start["runtime_contract"]["coordinate_utility"] == "scripts/world/asterline_coordinates.gd", "start coordinate utility pointer drift")
    require(runtime["geometry_created_by_this_manifest"] is False, "coordinate contract fabricated geometry")

    script = SCRIPT_PATH.read_text(encoding="utf-8")
    required_script = (
        "class_name AsterlineCoordinates",
        "extends RefCounted",
        "const CELL_SIZE_M: float = 100.0",
        "const REBASE_THRESHOLD_HORIZONTAL_M: float = 1600.0",
        "return Vector3(delta.x, delta.z, -delta.y)",
        "return anchor_enu + Vector3(godot_local.x, -godot_local.z, godot_local.y)",
        "floori(source_enu.x / CELL_SIZE_M)",
        "floori(source_enu.y / CELL_SIZE_M)",
        "static func rebase_delta_godot_local",
    )
    for token in required_script:
        require(token in script, f"coordinate utility missing: {token}")
    require("AsterlineCoordinates" not in MAIN_SCENE.read_text(encoding="utf-8"), "coordinate utility was prematurely integrated into main scene")

    documentation = DOC_PATH.read_text(encoding="utf-8")
    require("ROLE: CONTROL_PLANE_SPATIAL_BRIDGE" in documentation, "coordinate documentation role missing")
    require("Godot X =  E - E₀" in documentation and "Godot Z = -(N - N₀)" in documentation, "coordinate formulas missing from documentation")
    reference = REFERENCE_LOG.read_text(encoding="utf-8")
    require("REF-0008 — Asterline/Godot coordinate axes" in reference, "Godot axis reference missing")
    require("REF-0009 — Large-world precision and origin shifting" in reference, "large-world reference missing")
    require(contract["verification"]["static_contract"] == "PASS", "coordinate static status drift")
    require(contract["verification"]["godot_parser_runtime"] == "RUNTIME_GATE_NOT_EXECUTED", "runtime gate was fabricated")

    print("PASS: right-handed east/north/up to Godot X/Y/Z transform")
    print("PASS: inverse round trip and distance preservation")
    print("PASS: negative-coordinate 100 m cell and 1,600 m rebase policy")
    print("PASS: every start-ring block/building footprint round trips")
    print("PASS: GDScript utility and manifests match the contract")
    print("PASS: no premature scene/runtime claim")
    print("ASTERLINE_COORDINATES_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
