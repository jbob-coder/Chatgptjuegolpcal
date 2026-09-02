# WorldLife RPG — Product Goals Backlog

Status: ACTIVE / DURABLE GOAL RECORD
Last reconciled: 2026-09-02.
Current frozen source: `0.5.8`.

Purpose: keep deferred product work explicit so missing or unfinished systems are not forgotten, while preventing unrelated feature work from being mixed into the current highest-severity repair.

A goal listed here is **not implemented** unless another authoritative source/test record explicitly says it is.

## Priority rule

Current blocker/critical runtime defects outrank feature expansion.

After runtime stabilization, work proceeds one bounded, engine-authoritative piece at a time. When a goal becomes active, inspect the real source and convert it into acceptance criteria/tests before implementation.

## NEAR-TERM PRODUCT EXPERIENCE

### GOAL-BOOT-001 — Designed WorldLife boot/loading experience

Status: `PLANNED`.

Current source contains only a bare `CircularProgressIndicator` for `WorldLifeUiState.Loading`. That is a technical placeholder, not the finished game loading experience.

Target direction:

- branded WorldLife boot/splash presentation;
- clear loading/progress state while save repair/DataStore/game state initializes;
- no misleading frozen/black screen;
- landscape-first composition;
- graceful startup error/recovery state;
- transition cleanly into intro/new-game or existing-save world;
- avoid hiding real startup exceptions behind indefinite loading animation.

Do not build a fake timed loading screen that delays startup for appearance only. Loading presentation should correspond to actual initialization state.

### GOAL-INTRO-001 — Real intro / first-run onboarding

Status: `PLANNED`.

Current `NewGameScreen` is a basic name-entry/start form. It is not considered the finished game introduction.

Target direction:

- establish WorldLife/Arclight identity and premise;
- introduce the player's starting life without a BitLife-style menu clone;
- character naming/setup in a visually coherent sequence;
- concise movement/camera/control teaching;
- explain physical-world + life-simulation relationship;
- introduce map, interaction, save/autosave expectations and System area only when useful;
- first-run flow should not repeat unnecessarily for established saves;
- intro state must be save-compatible if progression through onboarding becomes persistent.

Story/content specifics remain to be designed later; do not invent canon merely to fill the intro.

## ACTIVE RUNTIME STABILIZATION

### GOAL-RUNTIME-001 — Stable Android phone launch/runtime

Status: `ACTIVE`.

Current direct phone evidence includes `RUNTIME-001`: Android reported the app has a bug and suggested clearing cache. Root cause investigation/repair outranks unrelated feature work.

Requirements:

- reliable launch on target phone;
- no crash/ANR/black-screen blocker;
- preserve save data during diagnosis;
- capture actionable crash diagnostics;
- verify landscape, controls, SceneView, persistence and System tools on device.

### GOAL-DIAG-001 — Durable in-app crash diagnostics/recovery

Status: `IN_PROGRESS` for the rollback-safe v0.5.8.1 diagnostic patch.

Target:

- record uncaught Java/Kotlin startup/runtime exceptions locally;
- show the previous crash report before Compose/SceneView on next launch;
- allow copy/paste of diagnostic text without clearing save data;
- remain removable/reducible later once runtime is stable, while retaining useful creator diagnostics in Admin tools.

## INTERIOR / PLAYER CONTROL

### GOAL-INTERIOR-001 — Engine-authoritative apartment free-roam

Status: `PLANNED AFTER RUNTIME STABILIZATION`.

Required order:

`core-owned local indoor position → room/wall/partition/furniture/portal collision → room detection → save persistence/repair → deterministic tests → left-stick indoor movement`

No visual-only authoritative movement.

### GOAL-INTERIOR-002 — Indoor locomotion and interaction presentation

Status: `PLANNED`.

After core free-roam:

- walking/running presentation;
- object interaction;
- door/furniture interaction;
- animation tied to authoritative state.

## VISUAL / CHARACTER / ANIMATION

### GOAL-VISUAL-001 — Visual-parity Android build

Status: `PLANNED`.

The v0.5.8 GitHub functional-test APK uses fallback build-transport visuals and is not a final visual-quality build.

Target:

- package authoritative high-quality Drive visual resources;
- preserve exact scale/geometry behavior;
- verify asset provenance;
- verify APK on device;
- explicitly mark `VISUAL_PARITY_VERIFIED` only after inspection.

### GOAL-CHAR-001 — Reusable human character/rig pipeline

Status: `PLANNED`.

- believable human scale/proportions;
- reusable rigged humanoid;
- modular player/NPC appearance;
- performance-aware character LOD.

### GOAL-ANIM-001 — State-driven animation system

Status: `PLANNED`.

Progression:

`procedural idle/breathing → authoritative locomotion → walk/run → TALK gestures → doors/furniture → reusable rigged humanoid → modular characters → animation LOD/budgets`

Animation represents simulation state; it does not become a second gameplay engine.

## WORLD EXPANSION / ENVIRONMENT

### GOAL-WORLD-001 — First streamed exterior expansion sector

Status: `PLANNED AFTER APARTMENT LOOP`.

Current planning target: approximately `120 m × 80 m` attached sector.

Requirements:

- preserve existing 60×40 save grid / 4.0 m per cell Arclight Core coordinates;
- no stretching/rescaling old saves;
- stable road/pedestrian seams;
- high-detail active sector + lower-detail neighboring proxies;
- bounded physics/NPC/render budgets;
- LOD/HLOD/visibility strategy.

### GOAL-ENV-001 — World visual density/polish

Status: `PLANNED`.

- district materials;
- props/signage;
- vegetation;
- furniture;
- environmental density;
- grounded stylized realism at believable human scale.

Do not solve density by scattering unrelated/random assets.

## ADMIN / CREATOR TOOLS

### GOAL-ADMIN-001 — Creator-grade Admin Panel

Status: `FOUNDATION IMPLEMENTED / ADVANCED BUILDERS PLANNED`.

Current foundation remains engine-authoritative. Future builder categories include:

- NPC Builder;
- Event Builder;
- Choice Builder;
- Quest Builder;
- World Builder;
- District Builder;
- Sector Builder;
- Building Builder;
- Interior Builder;
- Room Builder;
- Item Builder;
- Property Builder;
- Vehicle Builder;
- Job Builder;
- Education Builder;
- Economy tools;
- Legal/crime tools;
- Family tools;
- Material tools;
- Visual tools;
- Animation preview/assignment;
- stable ID generator;
- validation tools;
- import/export;
- scenario presets;
- undo/redo;
- deeper state inspection.

Do not claim any advanced builder exists until implemented, persisted/validated where required, and tested.

## LATER UX / QUALITY GOALS

These remain deferred until core runtime/gameplay milestones justify them:

- coherent settings/options surface;
- accessibility controls appropriate to landscape touch play;
- audio/music/ambience pipeline;
- improved save/recovery/export diagnostics;
- updater UX hardening;
- performance telemetry/debug overlays suitable for Admin tools;
- broader device/layout compatibility testing.

These are goal categories, not promises of current implementation.

## Backlog maintenance rule

When the user identifies a missing product feature that should be handled later, add it here or to a more specific goal document instead of silently implementing it during an unrelated repair.

When a goal becomes active:

1. inspect authoritative current source;
2. define exact owner/files;
3. define acceptance criteria;
4. identify save/compatibility/performance risks;
5. implement one bounded piece;
6. test/verify;
7. update this backlog and the handoff with observed status.
