#!/usr/bin/env python3
from __future__ import annotations
import json
import pathlib
import re
import sys
ROOT = pathlib.Path(__file__).resolve().parents[1]
DATA = ROOT / "data" / "campaign_start_slice.json"
def require(condition: bool, message: str) -> None:
    if not condition: raise AssertionError(message)
def main() -> int:
    data=json.loads(DATA.read_text(encoding="utf-8"))
    require(data["candidate_id"]=="GODOT_BATCH_032_START_SLICE_V1","candidate ID drift")
    require(data["world"]["working_year_ce"]==2670,"era drift")
    require(data["world"]["relative_time"]=="T_MINUS_14_DAYS","relative-time drift")
    player=data["player"]
    require(player["stable_id"]=="CHAR_JACK_WILSON","player ID drift")
    require(player["level"]==1 and player["level_cap"]==20,"level baseline drift")
    require(player["hp"]=={"current":34,"max":34},"HP baseline drift")
    require(player["cm"]=={"current":120,"max":120},"CM baseline drift")
    require(player["active_location_id"]=="ROOM_JACK_START_01","location drift")
    room=data["locations"]["ROOM_JACK_START_01"]
    require(room["dimensions_m"]=={"length":4.2,"width":3.6,"height":2.7},"room dimensions drift")
    require(abs(room["floor_area_m2"]-15.12)<1e-9,"room area drift")
    require(room["neighbor_boundary"]["enterable"] is False,"private neighbor must remain blocked")
    corridor=data["locations"]["LOC_RESIDENCE_F2_CORRIDOR_01"]
    require(corridor["dimensions_m"]=={"length":8.0,"width":1.6,"height":2.7},"corridor dimensions drift")
    steal=data["ability_steal"]
    require(steal["permanent_ability_slots"]==5,"Steal slot drift")
    require(steal["direct_physical_contact_required"] is True,"Steal contact rule drift")
    require(steal["prototype_resolution_enabled"] is False,"Steal must not silently resolve in batch 032")
    project=(ROOT/"project.godot").read_text(encoding="utf-8")
    require('run/main_scene="res://scenes/main.tscn"' in project,"main scene missing")
    controller=(ROOT/"scripts"/"player_controller.gd").read_text(encoding="utf-8")
    require("extends CharacterBody3D" in controller,"player must use CharacterBody3D")
    require("move_and_slide()" in controller,"player movement must use move_and_slide")
    require("get_gravity() * delta" in controller,"gravity integration missing")
    require("stealable_living" in controller,"Steal target gate missing")
    main_script=(ROOT/"scripts"/"main.gd").read_text(encoding="utf-8")
    require("ROOM_JACK_START_01" in main_script,"start room stable ID missing")
    require("LOC_RESIDENCE_F2_CORRIDOR_01" in main_script,"corridor stable ID missing")
    forbidden_terms=[term[::-1] for term in ("eripmav","egdirbyerg","elavednic","neryL","ratshtron")]
    forbidden=re.compile("|".join(re.escape(term) for term in forbidden_terms),re.IGNORECASE)
    for path in ROOT.rglob("*"):
        if not path.is_file() or path.suffix.lower() not in {".gd",".tscn",".godot",".json",".md",".py"}: continue
        require(not forbidden.search(path.read_text(encoding="utf-8")),f"forbidden/legacy term found in {path.relative_to(ROOT)}")
    print("PASS: campaign data invariants")
    print("PASS: room/corridor geometry contract")
    print("PASS: Steal safety/contact scaffold")
    print("PASS: CharacterBody3D movement contract")
    print("PASS: legacy/prohibited-term scan")
    print("PROTOTYPE_VERIFY_OK")
    return 0
if __name__=="__main__":
    try: raise SystemExit(main())
    except Exception as exc:
        print(f"FAIL: {exc}",file=sys.stderr)
        raise
