#!/usr/bin/env python3
"""Static Stage-1 Android probe preflight.

This is intentionally NOT a Godot parser. It verifies repository-level invariants
that can be checked before Godot/editor/APK/device execution is available.

A PASS here means STATIC_PREFLIGHT_VERIFIED only.
It must never be used to claim GODOT_PARSE_VERIFIED, EDITOR_RUN_VERIFIED,
APK_BUILD_VERIFIED, PHONE_RUNTIME_VERIFIED, or PERFORMANCE_VERIFIED.
"""

from __future__ import annotations

import re
import sys
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

REQUIRED_FILES = (
    "project.godot",
    "scenes/boot.tscn",
    "scenes/probe_world.tscn",
    "scripts/boot.gd",
    "scripts/probe_world.gd",
    "docs/ANDROID_EXPORT_SETUP.md",
    "docs/PROBE_TEST_PROTOCOL.md",
    "README.md",
)

EXPECTED_GDSCRIPT_SOURCES = {
    "scripts/boot.gd",
    "scripts/probe_world.gd",
}

EXPECTED_PROJECT_TEXT = {
    'run/main_scene="res://scenes/boot.tscn"': "Boot is the configured main scene",
    'config/features=PackedStringArray("4.7", "GL Compatibility")': "Godot 4.7 + GL Compatibility feature request",
    "window/size/viewport_width=1600": "1600 logical viewport width",
    "window/size/viewport_height=720": "720 logical viewport height",
    "window/handheld/orientation=0": "landscape handheld orientation candidate",
    "window/frame_pacing/android/enable_frame_pacing=true": "Android frame pacing enabled",
    'renderer/rendering_method="gl_compatibility"': "desktop GL Compatibility renderer",
    'renderer/rendering_method.mobile="gl_compatibility"': "mobile GL Compatibility renderer",
}

EXPECTED_ROOT_EXTENDS = {
    "scenes/boot.tscn": ("Control", "scripts/boot.gd", "Control"),
    "scenes/probe_world.tscn": ("Node3D", "scripts/probe_world.gd", "Node3D"),
}

RES_PATH_RE = re.compile(r'res://[A-Za-z0-9_./-]+')
EXT_RESOURCE_RE = re.compile(
    r'^\[ext_resource\s+type="(?P<type>[^"]+)"\s+path="(?P<path>res://[^"]+)"\s+id="(?P<id>[^"]+)"\]$',
    re.MULTILINE,
)
SUB_RESOURCE_DECL_RE = re.compile(
    r'^\[sub_resource\s+type="[^"]+"\s+id="(?P<id>[^"]+)"\]$',
    re.MULTILINE,
)
EXT_RESOURCE_USE_RE = re.compile(r'ExtResource\("([^"]+)"\)')
SUB_RESOURCE_USE_RE = re.compile(r'SubResource\("([^"]+)"\)')
NODE_RE = re.compile(
    r'^\[node\s+name="(?P<name>[^"]+)"\s+type="(?P<type>[^"]+)"(?:\s+parent="(?P<parent>[^"]+)")?\]$',
    re.MULTILINE,
)
CONNECTION_RE = re.compile(
    r'^\[connection\s+signal="(?P<signal>[^"]+)"\s+from="(?P<from>[^"]+)"\s+to="(?P<to>[^"]+)"\s+method="(?P<method>[^"]+)"\]$',
    re.MULTILINE,
)
ONREADY_PATH_RE = re.compile(r'@onready\s+var\s+\w+[^=]*=\s*\$([A-Za-z0-9_./-]+)')
FUNC_RE = re.compile(r'^func\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(', re.MULTILINE)
EXTENDS_RE = re.compile(r'^extends\s+([A-Za-z_][A-Za-z0-9_]*)\s*$', re.MULTILINE)


@dataclass
class Check:
    name: str
    ok: bool
    detail: str


def read(rel: str) -> str:
    return (ROOT / rel).read_text(encoding="utf-8")


def res_to_rel(res_path: str) -> str:
    if not res_path.startswith("res://"):
        raise ValueError(res_path)
    return res_path[len("res://"):]


def scene_nodes(text: str) -> tuple[str, dict[str, str]]:
    matches = list(NODE_RE.finditer(text))
    if not matches:
        return "", {}

    root_name = matches[0].group("name")
    nodes: dict[str, str] = {"": matches[0].group("type")}

    for match in matches[1:]:
        name = match.group("name")
        parent = match.group("parent")
        if parent is None:
            continue
        if parent == ".":
            path = name
        else:
            path = f"{parent}/{name}"
        nodes[path] = match.group("type")

    return root_name, nodes


def root_script_rel(scene_text: str) -> str | None:
    ext = {m.group("id"): m.group("path") for m in EXT_RESOURCE_RE.finditer(scene_text)}
    root_match = NODE_RE.search(scene_text)
    if not root_match:
        return None

    root_block_start = root_match.end()
    next_section = re.search(r'^\[', scene_text[root_block_start:], re.MULTILINE)
    root_block_end = root_block_start + (
        next_section.start() if next_section else len(scene_text) - root_block_start
    )
    root_block = scene_text[root_block_start:root_block_end]
    script_use = re.search(r'script\s*=\s*ExtResource\("([^"]+)"\)', root_block)
    if not script_use:
        return None

    path = ext.get(script_use.group(1))
    return res_to_rel(path) if path else None


def check_required_files(checks: list[Check]) -> None:
    for rel in REQUIRED_FILES:
        exists = (ROOT / rel).is_file()
        checks.append(Check(f"required:{rel}", exists, "exists" if exists else "missing"))


def check_project(checks: list[Check]) -> None:
    text = read("project.godot")
    for needle, label in EXPECTED_PROJECT_TEXT.items():
        checks.append(Check(f"project:{label}", needle in text, needle))

    for res_path in sorted(set(RES_PATH_RE.findall(text))):
        rel = res_to_rel(res_path)
        checks.append(Check(f"project-res:{res_path}", (ROOT / rel).is_file(), rel))


def check_scene(rel: str, checks: list[Check]) -> None:
    text = read(rel)
    root_name, nodes = scene_nodes(text)
    checks.append(Check(f"{rel}:root-node", bool(root_name), root_name or "no root node"))

    ext_resources = {m.group("id"): m.group("path") for m in EXT_RESOURCE_RE.finditer(text)}
    sub_resources = {m.group("id") for m in SUB_RESOURCE_DECL_RE.finditer(text)}

    for ext_id, res_path in sorted(ext_resources.items()):
        target_rel = res_to_rel(res_path)
        checks.append(
            Check(
                f"{rel}:ext-resource:{ext_id}",
                (ROOT / target_rel).is_file(),
                f"{res_path} -> {target_rel}",
            )
        )

    for used_id in sorted(set(EXT_RESOURCE_USE_RE.findall(text))):
        checks.append(
            Check(
                f"{rel}:ext-use:{used_id}",
                used_id in ext_resources,
                "declared" if used_id in ext_resources else "missing declaration",
            )
        )

    for used_id in sorted(set(SUB_RESOURCE_USE_RE.findall(text))):
        checks.append(
            Check(
                f"{rel}:sub-use:{used_id}",
                used_id in sub_resources,
                "declared" if used_id in sub_resources else "missing declaration",
            )
        )

    script_rel = root_script_rel(text)
    checks.append(Check(f"{rel}:root-script", script_rel is not None, script_rel or "root script not found"))
    if script_rel is None or not (ROOT / script_rel).is_file():
        return

    script = read(script_rel)
    methods = set(FUNC_RE.findall(script))

    for match in CONNECTION_RE.finditer(text):
        from_path = match.group("from")
        to_path = match.group("to")
        method = match.group("method")
        from_ok = from_path == "." or from_path in nodes
        to_ok = to_path == "." or to_path in nodes
        method_ok = method in methods

        checks.append(Check(f"{rel}:connection-from:{from_path}", from_ok, match.group(0)))
        checks.append(Check(f"{rel}:connection-to:{to_path}", to_ok, match.group(0)))
        checks.append(Check(f"{rel}:connection-method:{method}", method_ok, script_rel))

    for node_path in sorted(set(ONREADY_PATH_RE.findall(script))):
        checks.append(
            Check(
                f"{script_rel}:onready:${node_path}",
                node_path in nodes,
                f"scene={rel}",
            )
        )

    for res_path in sorted(set(RES_PATH_RE.findall(script))):
        target_rel = res_to_rel(res_path)
        checks.append(
            Check(
                f"{script_rel}:res:{res_path}",
                (ROOT / target_rel).is_file(),
                target_rel,
            )
        )

    expected = EXPECTED_ROOT_EXTENDS.get(rel)
    if expected:
        expected_root_type, expected_script_rel, expected_extends = expected
        root_type = nodes.get("")
        actual_extends_match = EXTENDS_RE.search(script)
        actual_extends = actual_extends_match.group(1) if actual_extends_match else None

        checks.append(
            Check(
                f"{rel}:expected-root-type",
                root_type == expected_root_type,
                f"actual={root_type} expected={expected_root_type}",
            )
        )
        checks.append(
            Check(
                f"{rel}:expected-root-script",
                script_rel == expected_script_rel,
                f"actual={script_rel} expected={expected_script_rel}",
            )
        )
        checks.append(
            Check(
                f"{script_rel}:extends",
                actual_extends == expected_extends,
                f"actual={actual_extends} expected={expected_extends}",
            )
        )


def check_source_boundary(checks: list[Check]) -> None:
    gd_files = {
        path.relative_to(ROOT).as_posix()
        for path in ROOT.rglob("*.gd")
        if ".godot" not in path.parts
    }
    unexpected = sorted(gd_files - EXPECTED_GDSCRIPT_SOURCES)
    missing = sorted(EXPECTED_GDSCRIPT_SOURCES - gd_files)

    checks.append(
        Check(
            "probe-source-boundary:unexpected-gdscript",
            not unexpected,
            "none" if not unexpected else ", ".join(unexpected),
        )
    )
    checks.append(
        Check(
            "probe-source-boundary:expected-gdscript-present",
            not missing,
            "all present" if not missing else ", ".join(missing),
        )
    )


def main() -> int:
    checks: list[Check] = []

    try:
        check_required_files(checks)
        if not all((ROOT / rel).is_file() for rel in REQUIRED_FILES):
            raise FileNotFoundError("required file missing; dependent checks skipped")

        check_project(checks)
        check_scene("scenes/boot.tscn", checks)
        check_scene("scenes/probe_world.tscn", checks)
        check_source_boundary(checks)
    except Exception as exc:
        checks.append(Check("preflight-internal", False, f"{type(exc).__name__}: {exc}"))

    failed = [check for check in checks if not check.ok]

    print("Stage 1 Android probe static preflight")
    print(f"Root: {ROOT}")
    for check in checks:
        status = "PASS" if check.ok else "FAIL"
        print(f"[{status}] {check.name} :: {check.detail}")

    print()
    print(f"Checks: {len(checks)} | Passed: {len(checks) - len(failed)} | Failed: {len(failed)}")
    print("Gate: STATIC_PREFLIGHT_VERIFIED" if not failed else "Gate: STATIC_PREFLIGHT_FAILED")
    print("This result does NOT imply Godot parse/editor/APK/phone/performance verification.")

    return 0 if not failed else 1


if __name__ == "__main__":
    raise SystemExit(main())
