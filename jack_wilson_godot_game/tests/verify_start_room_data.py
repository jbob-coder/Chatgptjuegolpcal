#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ROOM_FILE = ROOT / "data" / "locations" / "room_jack_start_01.json"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    data = json.loads(ROOM_FILE.read_text(encoding="utf-8"))

    require(data["stable_id"] == "ROOM_JACK_START_01", "room ID drift")
    require(data["validation_state"] == "READY", "room readiness drift")
    require(data["dimensions_m"] == {"length": 4.2, "width": 3.6, "height": 2.7, "floor_area_m2": 15.12}, "room geometry drift")
    require(data["door_to_corridor"]["width_m"] == 0.9, "door width drift")
    require(data["door_to_corridor"]["height_m"] == 2.05, "door height drift")
    require(data["door_to_corridor"]["to"] == "LOC_RESIDENCE_F2_CORRIDOR_01", "corridor adjacency drift")

    source = data["source_reference"]
    require(source["geometry_authority"] == "ORIGINAL_FILLER_GAMEPLAY_RECONSTRUCTION", "geometry provenance drift")
    require(source["exact_source_dimensions_known"] is False, "filler geometry must not be promoted to exact source fact")
    require(source["reversible"] is True, "filler geometry must remain reversible")

    neighbor = next(item for item in data["adjacency"] if item["to"] == "ROOM_NEIGHBOR_SOURCE_ANCHOR_01")
    require(neighbor["via"] == "shared_wall_no_portal", "neighbor boundary type drift")
    require(neighbor["enterable"] is False, "neighbor room must remain non-enterable")
    require(data["access"]["neighbor_room_access"] is False, "neighbor access drift")

    require(data["collision_obstacles"] == ["bed", "desk", "chair", "wardrobe", "door swing zone"], "obstacle contract drift")

    print("PASS: start-room stable ID/readiness")
    print("PASS: reversible shell dimensions")
    print("PASS: corridor door contract")
    print("PASS: private neighbor boundary")
    print("PASS: provenance remains explicit")
    print("START_ROOM_DATA_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
