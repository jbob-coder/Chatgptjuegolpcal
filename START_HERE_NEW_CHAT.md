# WorldLife RPG — START HERE FOR A NEW CHAT

Last reconciled: 2026-09-02.

## ACTIVE PROJECT DIRECTION

WorldLife is under a **full design reboot** ordered by the user.

The former v0.5.8 Android life-simulation/third-person game is no longer the active gameplay direction and is approved for removal from the active project area.

The **same GitHub/Google Drive project area will be reused for the new game** after cleanup. Do not create a separate active project just to preserve the old implementation.

A rollback-only archive may remain outside the active working path for EVOLVE recovery, but the old gameplay source must not remain mixed into the reboot source tree.

Do **not** create reboot gameplay code yet. The user explicitly ordered a design discussion before implementation.

## Mandatory reboot read order

1. `REBOOT_STATUS.md`
2. `WORLDLIFE_REBOOT_MASTER_PLAN.md`
3. `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
4. `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
5. `WORLDLIFE_REBOOT_ENGINE_DECISION.md`
6. `README.md`
7. `WORLDLIFE_PROJECT_HANDOFF.md`
8. `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
9. `WORLDLIFE_SYSTEMS_GUIDE.md`
10. `WORLDLIFE_EVOLVE_ALIGNMENT.md`

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

## Current technology status

Engine is **not locked**.

Current discussion recommendation is to test Godot 4.7 with Compatibility rendering against the real Android target phone. LibGDX/Kotlin remains a candidate. Compose+SceneView is not the preferred default for the reboot.

## Legacy cleanup decision

Confirmed:

- delete/remove the old active WorldLife implementation from the active project area;
- remove old active APK/build/runtime artifacts from the area used by the reboot;
- reuse the same GitHub/Drive project area for the new game;
- do not migrate old gameplay code into the new source tree by default;
- keep at most a rollback-only archive outside the active path.

Still open:

- phone-installed old package/save deletion;
- package ID/signing lineage;
- whether any old assets are intentionally salvaged after review.

## Current exact next action

**DISCUSS THE REBOOT DESIGN WITH THE USER.**

No gameplay implementation starts until the user explicitly ends the discussion hold.

Status gates:

- `REBOOT_DESIGN_RECORDED = YES`
- `REBOOT_SOURCE_CREATED = NO`
- `LEGACY_ACTIVE_PROJECT_CLEANUP_APPROVED = YES`
- `ACTIVE_PROJECT_AREA_REUSE = YES`
- `IMPLEMENTATION_AUTHORIZED = NO`
- `NEXT_ACTION = DISCUSSION`
