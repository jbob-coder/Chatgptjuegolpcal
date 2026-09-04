# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION LAYER 2 COMPLETE / LAYER 3 NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-04

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only, not production architecture.

## Current playable production stack

Layer 1 foundation:
- flat continuous 440×440 m Hunt-01 world foundation;
- S00 / River Ford / Feeding Meadow / EF02 / S03→S05 route context;
- 6.25 m/s Hunter;
- accepted shooter-style mobile controls;
- themed Hunter, Mudcrest Raker, trees and rocks;
- physical cover and Monster collision;
- physical evidence triggers; audio independent.

Layer 2 tracking/evidence:
- `game/content/regions/region_01/hunt01_tracking_evidence.json`;
- `game/scripts/gameplay/tracking/hunt01_tracking_runtime.gd`;
- seven authored evidence types;
- deterministic freshness/confidence/activity inference;
- old weak Rootwood clue remains a valid historical lead;
- fresh S03 water-exit evidence correctly outweighs it;
- final clue reaches `OBSERVATION_READY`;
- no exact Monster GPS;
- no required audio.

## Verification

Tested source head: `0df278eba2d9265ed84483265957d9f8c2d7f415`.
Workflow `33845109063`: SUCCESS.

- source/projection: 49/49 PASS;
- headless production + tracking integration: 66/66 PASS;
- Godot parse/AppShell/Region smoke: PASS;
- Android export/integrity/upload: PASS.

APK:
`UnnamedHuntRPG-Hunt01-Layer2-Tracking.apk`
57,633,529 bytes
SHA-256 `8cecb327cba3e8a21ac7bb54b281d2e3e9b76616963985acf4512819b31204fe`
Drive ID `13c3SGmTxlj8BldnRvIErWvQGizj7VYbt`.

## User/device policy

The user explicitly does not want development paused after every phone build.

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`

Phone acceptance is accumulated and tested later. Missing phone evidence remains labeled missing; it does not block unrelated independently verifiable layers.

Stage-1 shooter-style controls were already accepted 100% on Galaxy A03s.

The first production graybox visual presentation was rejected and is superseded by the flat-themed foundation.

## Exact next action

`FIRST_SLICE_REGION01_HUNT01_OBSERVATION_AND_ENCOUNTER_TRIGGER_RUNTIME_IMPLEMENTATION`

Build observation/engagement authority on the same Meadow location, preserve transforms/Monster identity, make engagement explicit, enter first-person at the same physical encounter, activate tactical-node presentation only after encounter start, create authoritative encounter state, and test it. Do not implement attack resolution in the same layer.
