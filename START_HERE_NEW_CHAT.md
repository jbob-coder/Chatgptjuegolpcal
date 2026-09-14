# START HERE — Unnamed Hunt RPG — New Chat Bootstrap

Status: ACTIVE NEW-CHAT BOOTSTRAP / HUNT-01 BASIC AUTORUN HUNTER DEFEAT TERMINAL ANDROID BUILD VERIFIED / 2 GB STORAGE CAP SELECTED / PACKAGE CAP CI GATE NEXT
Last reconciled: 2026-09-14

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and must not be used as the implementation base.

## Mandatory bootstrap

1. Confirm repository `jbob-coder/Chatgptjuegolpcal` and branch `worldlife-reference-docs`.
2. Fetch live branch HEAD and record it.
3. Read at that same revision, in order: `EVOLVE_ALIGNMENT.md`, `PROJECT_HANDOFF.md`, `START_HERE_NEW_CHAT.md`, `DOCUMENTATION_INDEX.md`, root `README.md`, `docs/README.md`, `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`, newest relevant `docs/70_handoff/`, `game/README.md`, then exact owning source/tests/gates/workflow.
4. Re-check HEAD after reading; restart relevant state reconstruction if it changed.
5. Current source/tests/build/device evidence outranks Markdown labels and old chat memory.
6. Conflict order: current explicit user instruction → current source/tests/build/device evidence → EVOLVE/HANDOFF → narrow owner → package docs → older handoffs/chat.
7. Work exactly one bounded piece at a time.
8. Before implementation report live HEAD, last verified source, objective, verified state, exact next piece, owners/gates, blockers, unknowns and stale contradictions.
9. If continuation was already requested and no genuine blocker exists, proceed without asking again.

## Development law

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → COMMIT → READ BACK → CONTINUE`.

Use normal fast-forward updates only. Never weaken gates. Never convert CI/headless/APK evidence into phone, sustained-performance or installed-footprint proof.

Protected controls: continuous direct analog left-stick movement, independent right-side look, simultaneous movement/look, no forced joystick release/center/rebase, ~115° FOV, ~6.25 m/s exploration speed.

## Current verified snapshot — discovery aid only

Run 84 fully verified source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c` through the real two-cycle Region-01 path: tracking/ENGAGE, Tail Sweep/Block, Hunter Dorsal Measured Cut/anatomy, real Bleeding lifecycle, then a real final Round-6 Head Sweep causing Hunter 10→0, `DOWNED`, `HUNTERS_DEFEATED` and terminal scheduler freeze.

Production verification:
- workflow `34880096112`: SUCCESS;
- job `104096962757`: SUCCESS;
- artifact `10362706279`;
- size `57,536,941` bytes;
- SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

User-selected storage law:
- total player-required installed/runtime game footprint cap = `2 GB` exactly;
- cap bytes = `2,000,000,000`;
- mandatory split/downloaded runtime content counts;
- package size and installed footprint remain distinct evidence layers.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`.

Latest specialized handoff: `docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Current recorded next bounded piece

`FIRST_SLICE_ANDROID_PACKAGE_2GB_STORAGE_CAP_CI_GATE`.

Boundary:
- workflow/package verification only;
- check exported production APK after successful export and before upload;
- exact maximum `2,000,000,000` bytes;
- record measured bytes and cap in build evidence;
- fail if package exceeds the cap;
- state explicitly that APK compliance does not prove installed-footprint compliance;
- no production gameplay/control/balance/content changes;
- keep all current Hunt-01 gates green.

A new chat is bootstrapped only after live state, exact owners and verified-source/live-HEAD distinction have been reconstructed.
