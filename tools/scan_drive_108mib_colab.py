#!/usr/bin/env python3
"""Scan the five 108 MiB reserve files directly from a mounted Google Drive.

Designed for Google Colab or a local machine with Google Drive mounted/synced.
This script never uploads the binary files to GitHub. It computes hashes,
byte-pattern statistics, sampled entropy, and duplicate groups, then writes
JSON and Markdown reports containing only metadata and hashes.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import math
import os
from collections import Counter, defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Iterable

PATTERN = "RESERVED_STORAGE_NOT_LORE_PART_*_108MiB.bin"
CHUNK_SIZE = 8 * 1024 * 1024
SAMPLE_BLOCK_SIZE = 1024 * 1024
SAMPLE_COUNT = 16


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        while chunk := handle.read(CHUNK_SIZE):
            digest.update(chunk)
    return digest.hexdigest()


def sample_offsets(size: int) -> list[int]:
    if size <= SAMPLE_BLOCK_SIZE:
        return [0]
    max_start = size - SAMPLE_BLOCK_SIZE
    return sorted({round(i * max_start / (SAMPLE_COUNT - 1)) for i in range(SAMPLE_COUNT)})


def shannon_entropy(data: bytes) -> float:
    if not data:
        return 0.0
    counts = Counter(data)
    length = len(data)
    return -sum((count / length) * math.log2(count / length) for count in counts.values())


def inspect_samples(path: Path) -> dict[str, object]:
    size = path.stat().st_size
    offsets = sample_offsets(size)
    total_sampled = 0
    zero_bytes = 0
    ff_bytes = 0
    entropies: list[float] = []
    sample_hashes: list[dict[str, object]] = []

    with path.open("rb") as handle:
        for offset in offsets:
            handle.seek(offset)
            data = handle.read(SAMPLE_BLOCK_SIZE)
            total_sampled += len(data)
            zero_bytes += data.count(0)
            ff_bytes += data.count(255)
            entropy = shannon_entropy(data)
            entropies.append(entropy)
            sample_hashes.append(
                {
                    "offset": offset,
                    "bytes": len(data),
                    "sha256": hashlib.sha256(data).hexdigest(),
                    "entropy_bits_per_byte": round(entropy, 6),
                }
            )

    zero_ratio = zero_bytes / total_sampled if total_sampled else 0.0
    ff_ratio = ff_bytes / total_sampled if total_sampled else 0.0
    avg_entropy = sum(entropies) / len(entropies) if entropies else 0.0

    if zero_ratio == 1.0:
        classification = "all_zero_padding"
    elif ff_ratio == 1.0:
        classification = "all_ff_padding"
    elif avg_entropy >= 7.95:
        classification = "high_entropy_random_or_compressed_padding"
    elif avg_entropy <= 0.1:
        classification = "very_low_entropy_repetitive_padding"
    else:
        classification = "mixed_or_structured_content_requires_review"

    return {
        "sampled_bytes": total_sampled,
        "sample_count": len(sample_hashes),
        "zero_byte_ratio": round(zero_ratio, 9),
        "ff_byte_ratio": round(ff_ratio, 9),
        "average_entropy_bits_per_byte": round(avg_entropy, 6),
        "classification": classification,
        "samples": sample_hashes,
    }


def locate_files(root: Path) -> list[Path]:
    return sorted(path for path in root.rglob(PATTERN) if path.is_file())


def build_markdown(report: dict[str, object]) -> str:
    files = report["files"]
    duplicate_groups = report["duplicate_groups"]
    lines = [
        "# 108 MiB Reserve File Scan",
        "",
        f"Generated: `{report['generated_at']}`",
        "",
        "The binaries were scanned directly from Google Drive. They were not uploaded to GitHub.",
        "",
        "## Results",
        "",
        "| File | Bytes | SHA-256 | Classification | Avg entropy | Zero ratio |",
        "|---|---:|---|---|---:|---:|",
    ]
    for item in files:
        lines.append(
            "| `{name}` | {size} | `{sha}` | {classification} | {entropy} | {zero} |".format(
                name=item["name"],
                size=item["size_bytes"],
                sha=item["sha256"],
                classification=item["sample_analysis"]["classification"],
                entropy=item["sample_analysis"]["average_entropy_bits_per_byte"],
                zero=item["sample_analysis"]["zero_byte_ratio"],
            )
        )

    lines.extend(["", "## Exact duplicate groups", ""])
    if duplicate_groups:
        for group in duplicate_groups:
            lines.append(f"- SHA-256 `{group['sha256']}`")
            for name in group["files"]:
                lines.append(f"  - `{name}`")
    else:
        lines.append("No exact duplicate groups were detected.")

    lines.extend(
        [
            "",
            "## Decision rule",
            "",
            "A file may be treated as an exact duplicate only when its complete SHA-256 matches another file. Matching size, name, or sampled entropy is not sufficient.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("root", type=Path, help="Mounted Google Drive folder to scan")
    parser.add_argument("--output", type=Path, default=Path("audit/generated"))
    args = parser.parse_args()

    root = args.root.expanduser().resolve()
    output = args.output.expanduser().resolve()
    files = locate_files(root)

    if not files:
        raise SystemExit(f"No files matching {PATTERN!r} under {root}")

    results: list[dict[str, object]] = []
    by_hash: defaultdict[str, list[str]] = defaultdict(list)

    for path in files:
        digest = sha256_file(path)
        relative = str(path.relative_to(root))
        by_hash[digest].append(relative)
        results.append(
            {
                "name": path.name,
                "relative_path": relative,
                "size_bytes": path.stat().st_size,
                "sha256": digest,
                "sample_analysis": inspect_samples(path),
            }
        )

    duplicates = [
        {"sha256": digest, "files": names}
        for digest, names in sorted(by_hash.items())
        if len(names) > 1
    ]

    report = {
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "root": str(root),
        "pattern": PATTERN,
        "file_count": len(results),
        "files": results,
        "duplicate_groups": duplicates,
    }

    output.mkdir(parents=True, exist_ok=True)
    (output / "reserve_108mib_scan.json").write_text(
        json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    (output / "reserve_108mib_scan.md").write_text(
        build_markdown(report), encoding="utf-8"
    )

    print(json.dumps(report, indent=2, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
