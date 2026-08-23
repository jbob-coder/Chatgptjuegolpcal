#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
WORLD_DATA = ROOT / "data" / "world" / "asterline"
WORLD_DOCS = ROOT / "docs" / "world"
EPSILON = 1e-6


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def load_json(path: Path) -> dict:
    require(path.is_file(), f"missing spatial bridge file: {path.relative_to(ROOT)}")
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        raise AssertionError(f"invalid JSON in {path.relative_to(ROOT)}: {exc}") from exc
    require(isinstance(value, dict), f"JSON root must be an object: {path.relative_to(ROOT)}")
    return value


def polygon_area(polygon: list[list[float]]) -> float:
    require(len(polygon) >= 3, "polygon has fewer than three points")
    return abs(sum(
        polygon[i][0] * polygon[(i + 1) % len(polygon)][1]
        - polygon[(i + 1) % len(polygon)][0] * polygon[i][1]
        for i in range(len(polygon))
    )) / 2.0


def point_on_segment(point: list[float], a: list[float], b: list[float]) -> bool:
    cross = (point[0] - a[0]) * (b[1] - a[1]) - (point[1] - a[1]) * (b[0] - a[0])
    if abs(cross) > EPSILON:
        return False
    return (
        min(a[0], b[0]) - EPSILON <= point[0] <= max(a[0], b[0]) + EPSILON
        and min(a[1], b[1]) - EPSILON <= point[1] <= max(a[1], b[1]) + EPSILON
    )


def point_in_polygon(point: list[float], polygon: list[list[float]]) -> bool:
    inside = False
    for index, a in enumerate(polygon):
        b = polygon[(index + 1) % len(polygon)]
        if point_on_segment(point, a, b):
            return True
        if (a[1] > point[1]) != (b[1] > point[1]):
            crossing_x = (b[0] - a[0]) * (point[1] - a[1]) / (b[1] - a[1]) + a[0]
            if point[0] < crossing_x:
                inside = not inside
    return inside


def polygon_inside(inner: list[list[float]], outer: list[list[float]]) -> bool:
    return all(point_in_polygon(point, outer) for point in inner)


def positive_convex_overlap(first: list[list[float]], second: list[list[float]]) -> bool:
    # Separating-axis test. Boundary contact is legal; positive shared area is not.
    for polygon in (first, second):
        for index, a in enumerate(polygon):
            b = polygon[(index + 1) % len(polygon)]
            axis = (-(b[1] - a[1]), b[0] - a[0])
            first_projection = [point[0] * axis[0] + point[1] * axis[1] for point in first]
            second_projection = [point[0] * axis[0] + point[1] * axis[1] for point in second]
            if max(first_projection) <= min(second_projection) + EPSILON:
                return False
            if max(second_projection) <= min(first_projection) + EPSILON:
                return False
    return True


def require_unique(values: list[str], label: str) -> None:
    require(all(isinstance(value, str) and value for value in values), f"empty {label}")
    require(len(values) == len(set(values)), f"duplicate {label}")


def verify_source_pins(city: dict, start: dict, guard: dict) -> None:
    pins = [*city["source_snapshot"]["files"].values(), start["source_snapshot"], guard["source_snapshot"]]
    for pin in pins:
        require(isinstance(pin.get("id"), str) and pin["id"], "source pin missing Drive ID")
        require(isinstance(pin.get("modified_time"), str) and pin["modified_time"], "source pin missing modified time")
        require(isinstance(pin.get("size_bytes"), int) and pin["size_bytes"] > 0, "source pin missing byte size")
        fingerprint = pin.get("semantic_sha256")
        require(isinstance(fingerprint, str) and len(fingerprint) == 64, "source pin missing semantic SHA-256")
        require(all(char in "0123456789abcdef" for char in fingerprint), "invalid source semantic SHA-256")


def verify_city(city: dict) -> None:
    require(city.get("manifest_id") == "MANIFEST_ASTERLINE_CITY_SPATIAL_BRIDGE_V1", "city manifest identity drift")
    require(city.get("city_id") == "CITY_ASTERLINE_01", "city stable ID drift")
    coordinate = city["coordinate_system"]
    require(coordinate["name"] == "ASTERLINE_LOCAL_METRIC_V1", "coordinate system drift")
    require(coordinate["units"] == "meters", "coordinate units drift")
    require((coordinate["x_axis"], coordinate["y_axis"], coordinate["z_axis"]) == ("east", "north", "up"), "source axis drift")
    require(coordinate["city_bounds_m"] == {"area_km2": 290.08, "height": 17500, "width": 19700}, "city bounds drift")
    require(polygon_area(coordinate["city_boundary_polygon_m"]) > 250_000_000, "city boundary polygon is implausibly small")

    counts = city["counts"]
    require(counts["wards"] == 7 and counts["neighborhoods"] == 28, "ward/neighborhood count drift")
    require(counts["blocks"] == 7000 and counts["buildings"] == 23480, "block/building count drift")
    require(counts["terrain_cells_100m"] == 28999, "terrain cell count drift")
    wards = city["wards"]
    neighborhoods = city["neighborhoods"]
    routes = city["metro_trunk_routes"]
    require(len(wards) == counts["wards"], "ward array/count mismatch")
    require(len(neighborhoods) == counts["neighborhoods"], "neighborhood array/count mismatch")
    require(len(routes) == counts["metro_trunk_routes"], "trunk route array/count mismatch")
    require(sum(ward["block_count"] for ward in wards) == counts["blocks"], "ward block totals drift")
    require(sum(ward["building_count"] for ward in wards) == counts["buildings"], "ward building totals drift")
    require(math.isclose(sum(ward["area_km2"] for ward in wards), 290.079, abs_tol=0.001), "ward area totals drift")
    require_unique([ward["ward_id"] for ward in wards], "ward stable ID")
    require_unique([item["stable_id"] for item in neighborhoods], "neighborhood stable ID")
    require_unique([route["stable_id"] for route in routes], "trunk-route stable ID")

    ward_ids = {ward["ward_id"] for ward in wards}
    for neighborhood in neighborhoods:
        require(neighborhood["ward_id"] in ward_ids, f"neighborhood has unknown ward: {neighborhood['stable_id']}")
        require(polygon_area(neighborhood["polygon_m"]) > 0, f"empty neighborhood polygon: {neighborhood['stable_id']}")
    for route in routes:
        require(route["from_ward"] in ward_ids and route["to_ward"] in ward_ids, f"route has unknown ward: {route['stable_id']}")
        require(route["carriageway_width_m"] == 22 and route["total_right_of_way_m"] == 38, f"trunk width drift: {route['stable_id']}")

    integrity = city["spatial_integrity"]
    require(integrity["true_3d_building_collisions"] == 0, "source atlas has nonzero true 3D collisions")
    require(integrity["registered_vertical_strata_pairs"] == 7, "vertical-strata count drift")
    require(integrity["interward_overlap_records"] == 31, "easement count drift")
    require(integrity["row_zone_count"] == 7000, "ROW zone count drift")
    require(integrity["block_access_portals"] == 28000, "access portal count drift")
    require(integrity["utility_objects"] == 35000, "utility object count drift")

    theme = city["design_language"]
    require("civilian realism first" in theme["city_theme"], "city theme drift")
    require("no medieval-fantasy bleed" in theme["anti_drift"], "theme anti-drift guard missing")
    contract = city["runtime_contract"]
    require(contract["godot_world_transform_status"] == "DEFINED_PIECE_014_STATIC_RUNTIME_GATE_OPEN", "Godot transform status drift")
    require(contract["coordinate_transform_contract"] == "data/world/asterline/coordinate_transform.json", "coordinate contract pointer drift")
    require(contract["coordinate_utility"] == "scripts/world/asterline_coordinates.gd", "coordinate utility pointer drift")
    require(contract["chunk_index"] == "data/world/asterline/chunk_index.json", "chunk-index pointer drift")
    require(contract["spatial_loader"] == "scripts/world/asterline_spatial_loader.gd", "spatial-loader pointer drift")
    require(contract["spatial_loader_status"] == "DEFINED_PIECE_015_STATIC_RUNTIME_GATE_OPEN", "spatial-loader status drift")
    require(contract["direct_source_y_to_godot_y_forbidden"] is True, "source/Godot axis guard missing")
    require(contract["geometry_created_by_this_manifest"] is False, "bridge falsely claims geometry")


def verify_start_ring(city: dict, start: dict) -> None:
    require(start.get("manifest_id") == "MANIFEST_ASTERLINE_START_RING_BRIDGE_V1", "start manifest identity drift")
    blocks = start["blocks"]
    require(len(blocks) == 9, "start ring must contain nine blocks")
    require_unique([block["stable_id"] for block in blocks], "start-ring block ID")
    require(sum(block["building_count"] for block in blocks) == 36, "start-ring building total drift")
    require(start["compact_bridge_counts"] == {"blocks": 9, "buildings": 36, "street_furniture": 24, "fully_embedded_materialized_interiors": 1}, "compact start-ring counts drift")

    city_boundary = city["coordinate_system"]["city_boundary_polygon_m"]
    for block in blocks:
        require(block["ward_id"] == "DISTRICT_ASTERLINE_WARD_03_EASTBANK", f"start block escaped W03: {block['stable_id']}")
        require(block["neighborhood"] == "Riverbend", f"start block escaped Riverbend: {block['stable_id']}")
        require(math.isclose(polygon_area(block["polygon_m"]), block["area_m2"], abs_tol=2.0), f"block area mismatch: {block['stable_id']}")
        require(polygon_inside(block["polygon_m"], city_boundary), f"block outside city boundary: {block['stable_id']}")
        require(block["building_count"] == len(block["buildings"]), f"building count mismatch: {block['stable_id']}")
    for index, first in enumerate(blocks):
        for second in blocks[index + 1:]:
            require(not positive_convex_overlap(first["polygon_m"], second["polygon_m"]), f"start-ring block overlap: {first['stable_id']} / {second['stable_id']}")

    all_building_ids: list[str] = []
    for block in blocks:
        buildings = block["buildings"]
        for building in buildings:
            all_building_ids.append(building["stable_id"])
            require(polygon_area(building["footprint_polygon_m"]) > 0, f"empty building footprint: {building['stable_id']}")
            require(polygon_area(building["parcel_polygon_m"]) >= polygon_area(building["footprint_polygon_m"]), f"parcel smaller than footprint: {building['stable_id']}")
            require(polygon_inside(building["footprint_polygon_m"], block["polygon_m"]), f"building footprint outside block: {building['stable_id']}")
            require(polygon_inside(building["parcel_polygon_m"], block["polygon_m"]), f"parcel outside block: {building['stable_id']}")
            require(polygon_inside(building["footprint_polygon_m"], building["parcel_polygon_m"]), f"building footprint outside parcel: {building['stable_id']}")
            require(building["exterior"]["height_m"] > 0 and building["ground_elevation_m"] > 0, f"invalid building Z range: {building['stable_id']}")
        for index, first in enumerate(buildings):
            for second in buildings[index + 1:]:
                require(not positive_convex_overlap(first["footprint_polygon_m"], second["footprint_polygon_m"]), f"same-Z building overlap: {first['stable_id']} / {second['stable_id']}")
                require(not positive_convex_overlap(first["parcel_polygon_m"], second["parcel_polygon_m"]), f"parcel overlap: {first['stable_id']} / {second['stable_id']}")
    require_unique(all_building_ids, "start-ring building ID")

    center = next((block for block in blocks if block["stable_id"] == "BLOCK_ASTERLINE_W03_RIVERBEND_START_01"), None)
    require(center is not None and center["building_count"] == 6, "center block contract drift")
    residence = next((building for building in center["buildings"] if building["stable_id"] == "BUILDING_PREACADEMY_RESIDENCE_01"), None)
    require(residence is not None, "protected starting residence missing")
    exterior = residence["exterior"]
    require((exterior["length_m"], exterior["width_m"], exterior["height_m"], exterior["storeys"]) == (12.4, 9.8, 6.4, 2), "starting residence exterior drift")
    require(math.isclose(polygon_area(residence["footprint_polygon_m"]), exterior["footprint_m2"], abs_tol=0.2), "residence footprint area drift")

    floors = residence["materialized_start_interior"]["floors"]
    require([floor["floor"] for floor in floors] == [1, 2], "residence floor list drift")
    spaces = [space for floor in floors for space in floor["spaces"]]
    require_unique([space["stable_id"] for space in spaces], "residence space ID")
    expected_dimensions = {
        "ROOM_JACK_START_01": [4.2, 3.6, 2.7],
        "ROOM_NEIGHBOR_SOURCE_ANCHOR_01": [4.2, 3.6, 2.7],
        "LOC_RESIDENCE_F2_CORRIDOR_01": [8, 1.6, 2.7],
        "LOC_RESIDENCE_SHARED_WASHROOM_01": [2.4, 2.2, 2.7],
        "LOC_RESIDENCE_STAIR_01": [3, 2.4, 6],
    }
    by_id = {space["stable_id"]: space for space in spaces}
    for stable_id, dimensions in expected_dimensions.items():
        require(by_id.get(stable_id, {}).get("dimensions_m") == dimensions, f"protected interior dimensions drift: {stable_id}")
    require(by_id["ROOM_NEIGHBOR_SOURCE_ANCHOR_01"]["contents"] == "PRIVATE_INTERIOR_NOT_PREDISCLOSED", "private neighbor contents leaked")

    for floor in floors:
        floor_spaces = floor["spaces"]
        for space in floor_spaces:
            origin = space["origin_local_m"]
            dimensions = space["dimensions_m"]
            require(origin[0] >= -EPSILON and origin[1] >= -EPSILON and origin[2] >= -EPSILON, f"negative local interior origin: {space['stable_id']}")
            require(origin[0] + dimensions[0] <= exterior["length_m"] + EPSILON, f"interior exceeds residence length: {space['stable_id']}")
            require(origin[1] + dimensions[1] <= exterior["width_m"] + EPSILON, f"interior exceeds residence width: {space['stable_id']}")
            require(origin[2] + dimensions[2] <= exterior["height_m"] + EPSILON, f"interior exceeds residence height: {space['stable_id']}")
        for index, first in enumerate(floor_spaces):
            first_rect = [first["origin_local_m"][:2], [first["origin_local_m"][0] + first["dimensions_m"][0], first["origin_local_m"][1]], [first["origin_local_m"][0] + first["dimensions_m"][0], first["origin_local_m"][1] + first["dimensions_m"][1]], [first["origin_local_m"][0], first["origin_local_m"][1] + first["dimensions_m"][1]]]
            for second in floor_spaces[index + 1:]:
                second_rect = [second["origin_local_m"][:2], [second["origin_local_m"][0] + second["dimensions_m"][0], second["origin_local_m"][1]], [second["origin_local_m"][0] + second["dimensions_m"][0], second["origin_local_m"][1] + second["dimensions_m"][1]], [second["origin_local_m"][0], second["origin_local_m"][1] + second["dimensions_m"][1]]]
                require(not positive_convex_overlap(first_rect, second_rect), f"interior XY overlap on floor {floor['floor']}: {first['stable_id']} / {second['stable_id']}")

    access = residence["materialized_start_interior"]["exterior_access"]
    require(access == {"entry_to_curb_distance_m": 18, "pickup_curb_dimensions_m": [24, 4], "pickup_curb_id": "LOC_PICKUP_CURB_01"}, "pickup curb contract drift")
    public_realm = start["public_realm"]
    require((public_realm["sidewalk_width_m"], public_realm["local_carriageway_width_m"], public_realm["curb_height_m"]) == (2.2, 9.6, 0.14), "local street dimensions drift")
    require(len(public_realm["street_furniture"]) == 24, "street furniture count drift")
    require_unique([item["stable_id"] for item in public_realm["street_furniture"]], "street furniture ID")

    repository_room = load_json(ROOT / "data" / "locations" / "room_jack_start_01.json")
    room_dimensions = repository_room["dimensions_m"]
    require([room_dimensions["length"], room_dimensions["width"], room_dimensions["height"]] == expected_dimensions["ROOM_JACK_START_01"], "existing room contract disagrees with spatial bridge")
    require(repository_room["source_reference"]["exact_source_dimensions_known"] is False, "reconstructed room dimensions were falsely promoted")
    require(repository_room["source_reference"]["reversible"] is True, "room geometry reversibility drift")


def verify_guard(guard: dict) -> None:
    expected_precedence = [
        "PROTECTED_START_ANCHOR",
        "OCCUPIED_BUILDING_3D_VOLUME",
        "EXCLUSIVE_PARCEL_OR_VERTICAL_STRATUM",
        "NO_BUILD_EASEMENT",
        "PHYSICAL_RIGHT_OF_WAY",
        "UTILITY_OR_SERVICE_RESERVATION",
        "BLOCK_COMMON_SPACE",
        "PUBLIC_FREE_SPACE",
    ]
    require(guard.get("guard_id") == "GUARD_ASTERLINE_SPATIAL_CONSTRUCTION_V1", "construction guard identity drift")
    require(guard.get("placement_precedence") == expected_precedence, "placement precedence drift")
    require(len(guard.get("mandatory_prepublication_checks", [])) == 12, "mandatory placement-check count drift")
    require(guard.get("failure_rule") == "DO_NOT_PUBLISH_OR_NARRATE_AS_ESTABLISHED; replan first.", "fail-closed rule drift")
    require(guard["enforcement_contract"]["whole_polygon_and_z_interval_required"] is True, "whole-volume guard missing")
    require(guard["enforcement_contract"]["center_point_only_check_forbidden"] is True, "center-point-only guard missing")
    require(guard["enforcement_contract"]["fail_closed"] is True, "guard must fail closed")


def verify_docs_and_routing() -> None:
    required_docs = {
        "README.md": "Folder and file ownership",
        "ASTERLINE_CITY_SPATIAL_AUTHORITY.md": "Full city structure",
        "START_AREA_AND_NINE_BLOCK_RING.md": "Block ring",
        "SPATIAL_PLACEMENT_AND_NO_OVERLAP.md": "Ownership precedence",
    }
    for name, marker in required_docs.items():
        path = WORLD_DOCS / name
        require(path.is_file(), f"missing world documentation: {name}")
        text = path.read_text(encoding="utf-8")
        require("ROLE: CONTROL_PLANE_SPATIAL_BRIDGE" in text, f"world document role missing: {name}")
        require("AUTHORITATIVE: DERIVED_FROM_PINNED_DRIVE_SOURCES" in text, f"world source classification missing: {name}")
        require(marker in text, f"world documentation section missing: {name} / {marker}")

    routing = load_json(ROOT / "project_control" / "registry" / "PATH_REGISTRY.json")
    rules = {rule["pattern"]: rule for rule in routing["rules"]}
    require(rules["docs/world/**"]["plane"] == "CONTROL_PLANE", "docs/world route drift")
    require(rules["data/world/**"]["plane"] == "GAME_RUNTIME", "data/world route drift")
    require(rules["scripts/qa/**"]["priority"] < rules["scripts/**"]["priority"], "QA/runtime route precedence drift")


def main() -> int:
    city = load_json(WORLD_DATA / "city_spatial_manifest.json")
    start = load_json(WORLD_DATA / "start_area_manifest.json")
    guard = load_json(WORLD_DATA / "spatial_construction_guard.json")
    verify_source_pins(city, start, guard)
    verify_city(city)
    verify_start_ring(city, start)
    verify_guard(guard)
    verify_docs_and_routing()
    print("PASS: pinned Asterline source identities and semantic fingerprints")
    print("PASS: full-city coordinate/theme/ward/neighborhood/count contract")
    print("PASS: nine-block ring, 36 building envelopes, and start-residence containment")
    print("PASS: fail-closed spatial construction guard")
    print("PASS: world folder map, source classification, and deterministic routing")
    print("CITY_SPATIAL_BRIDGE_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
