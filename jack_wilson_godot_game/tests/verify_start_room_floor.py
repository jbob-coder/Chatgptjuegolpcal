#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DATA_FILE = ROOT / "data" / "locations" / "room_jack_start_01.json"
ROOM_SCENE = ROOT / "scenes" / "locations" / "start_room.tscn"
MAIN_SCENE = ROOT / "scenes" / "main.tscn"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    data = json.loads(DATA_FILE.read_text(encoding="utf-8"))
    room = ROOM_SCENE.read_text(encoding="utf-8")
    main_scene = MAIN_SCENE.read_text(encoding="utf-8")

    width = data["dimensions_m"]["width"]
    length = data["dimensions_m"]["length"]
    expected_size = f"Vector3({width}, 0.1, {length})"

    require('[node name="ROOM_JACK_START_01" type="Node3D"]' in room, "room root stable ID missing")
    require('[node name="Floor" type="StaticBody3D" parent="."]' in room, "floor StaticBody3D missing")
    require('type="BoxMesh"' in room, "visible BoxMesh missing")
    require('type="BoxShape3D"' in room, "BoxShape3D collision missing")
    require(room.count(expected_size) == 2, "floor mesh/collision dimensions do not match room data")
    require('position = Vector3(0, -0.05, 0)' in room, "floor top must sit at y=0")
    require('path="res://scenes/locations/start_room.tscn"' in main_scene, "main scene does not reference start room")
    require('instance=ExtResource("2_start_room")' in main_scene, "main scene does not instance start room")

    # Scope guard: Piece 006 is floor only.
    for forbidden in ("Wall", "Ceiling", "Bed", "Desk", "Chair", "Wardrobe"):
        require(forbidden not in room, f"{forbidden} leaked into floor-only piece")

    print("PASS: floor consumes room width/length contract")
    print("PASS: visible BoxMesh floor")
    print("PASS: StaticBody3D BoxShape3D collision")
    print("PASS: main scene instances start room")
    print("PASS: Piece 006 scope isolation")
    print("START_ROOM_FLOOR_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
