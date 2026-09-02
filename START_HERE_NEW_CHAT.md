# WorldLife RPG — START HERE FOR A NEW CHAT

Last reconciled: 2026-09-02.

## ACTIVE PROJECT DIRECTION

WorldLife is under a **full design reboot** ordered by the user.

The former v0.5.8 Android life-simulation/third-person project is no longer the active gameplay direction. It remains preserved only as frozen legacy history until the user finishes the reboot discussion and explicitly resolves archive/deletion cleanup.

Do **not** resume v0.5.8 phone stabilization, apartment free-roam, city expansion, or Admin Panel expansion as active development.

Do **not** create reboot gameplay code yet. The user explicitly ordered a design discussion before implementation.

## Mandatory reboot read order

1. `REBOOT_STATUS.md`
2. `WORLDLIFE_REBOOT_MASTER_PLAN.md`
3. `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
4. `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
5. `README.md`
6. `WORLDLIFE_PROJECT_HANDOFF.md`
7. `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
8. `WORLDLIFE_SYSTEMS_GUIDE.md`
9. `WORLDLIFE_EVOLVE_ALIGNMENT.md`
10. Inspect legacy frozen source only when a historical/cleanup claim requires it.

## New game direction

The reboot is planned as a monster-hunting tactical RPG with:

- aerial/top-down angled 2D/3D hybrid exploration;
- first-person turn-based combat when an encounter begins;
- tactical movement, lateral repositioning, distance control and cover;
- body-part targeting;
- break/sever/destroy anatomy states;
- creature attacks that depend on functional anatomy;
- condition-based harvesting where actual surviving body-part mass/quality governs yield;
- crafting/progression built from harvested materials;
- one authoritative domain state shared by exploration, combat, harvest and presentation.

The complete system/action list is in `WORLDLIFE_REBOOT_MASTER_PLAN.md`.

## Current technology status

Engine is **not locked**.

Current discussion recommendation is to test Godot 4.7 with Compatibility rendering against the real Android target phone because the reboot needs integrated 2D+3D scenes, animation, game input and first-person/aerial presentation. LibGDX/Kotlin remains a candidate. Continuing Compose+SceneView is not the preferred default because too much game-engine functionality would remain custom.

No engine decision becomes authoritative until the user approves it and a tiny target-phone probe verifies compatibility.

## Legacy source authority

Frozen legacy source:

- version: `0.5.8`
- package: `com.jackwilson.worldlife`
- Drive folder: `https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`
- SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`

This source is historical evidence only. Do not mutate it into the reboot.

## Destructive cleanup rule

The user requested deletion of the old game, but also ordered this planning pass and discussion before creation.

Following EVOLVE destructive-operation rules, permanent deletion is staged rather than executed blindly:

- preserve rollback/history now;
- discuss exactly which Drive source/APKs/GitHub branches/package/save data should be deleted;
- after explicit post-discussion execution approval, perform bounded cleanup and verify post-state.

Never destroy valuable legacy state merely because reconstruction seems possible.

## Current exact next action

**DISCUSS THE REBOOT DESIGN WITH THE USER.**

Resolve the open decisions in `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md` and revise the master plan as decisions are made.

Status gates:

- `REBOOT_DESIGN_RECORDED = YES`
- `REBOOT_SOURCE_CREATED = NO`
- `LEGACY_SOURCE_DELETED = NO`
- `IMPLEMENTATION_AUTHORIZED = NO`
- `NEXT_ACTION = DISCUSSION`
