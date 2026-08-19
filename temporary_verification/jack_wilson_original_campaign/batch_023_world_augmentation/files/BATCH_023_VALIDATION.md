# Batch 023 Validation

Overall: **PASS**

- `parse`: **PASS** — {"yaml": 34, "json": 7, "markdown": 16, "errors": []}
- `stable_ids`: **PASS** — {"published_count": 633, "duplicate_ids": [], "undeclared_prefix_ids": [], "registry_layout": "ROUTER_PLUS_4_SHARDS", "ordinary_play_load": "RELEVANT_SHARD_ONLY"}
- `coverage`: **PASS** — {"tracked_domains": 40, "counts": {"READY": 40}}
- `gaps`: **PASS** — {"counts": {"READY": 17, "PLAYER_PRIVATE_UNKNOWN": 1, "BLOCKED_SOURCE_READING_PAUSED": 2}, "operational_world_gap_count": 0, "exceptions": {"player_private": ["GAP_EDU_001"], "paused_source": ["GAP_SOURCE_001", "GAP_SOURCE_002"]}}
- `macro_index`: **PASS** — {"modules": 9, "missing": []}
- `load_order`: **PASS** — {"sequence_count": 63, "macro_critical_refs": ["../02_WORLD/macro_2670/WORLD_MACRO_INDEX.yaml", "../02_WORLD/macro_2670/01_time_geography/civil_calendar.yaml", "../02_WORLD/macro_2670/01_time_geography/geography_regions.yaml", "../02_WORLD/macro_2670/01_time_geography/routes_distances.yaml"], "duplicates": [], "missing": []}
- `save_preservation`: **PASS** — {"bytes": 1965, "sha256": "23bb627322c8f73ce1388adb4968fac952ccbc56591cb6701f5197b0668d1aa7", "mutated_by_candidate": false}
- `raw_source_reading`: **PASS** — {"value": false}
- `world_time_advance`: **PASS** — {"value": false}
- `real_money_action`: **PASS** — {"value": false}
- `theme_year`: **PASS** — {"working_year_ce": 2670, "start_absolute": "2670-08-31T06:00:00-04:00", "t0": "2670-09-14T06:00:00-04:00"}

This validation does not claim source/novel reconstruction completeness. Raw-source reading remained paused.
