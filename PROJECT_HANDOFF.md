# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / FIRST-PERSON CREATOR REALIGNMENT IMPLEMENTED IN SOURCE / VERIFICATION PENDING
Last reconciled: 2026-09-23
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: convert the existing Pixel RPG exploration presentation from third-person chase camera to first-person without replacing the proven Hunter/controller, collision, world, HUD, targeting or deterministic gameplay-domain foundations.

CREATOR_AUTHORITY: FIRST-PERSON exploration is authoritative as of 2026-09-23. Older Pixel RPG third-person statements are STALE / SUPERSEDED for current presentation. Historical third-person builds remain valid historical evidence only.

PRESERVED:
- existing Hunter CharacterBody3D/controller and collision;
- direct left-stick movement and right-side independent look;
- 800×360 pixel-styled real-3D SubViewport + nearest presentation;
- safe-area HUD, Settings, minimap and contextual interaction;
- Pack 001–004 world/environment and enterable smith;
- Mudcrest visual/anatomy target mapping;
- Combat Bridge 001 OBSERVE/ENGAGE/target selection/lock semantics;
- deterministic combat/anatomy/status source and regressions;
- app-shell/main-scene flow.

CHANGED IN THIS SOURCE CHECKPOINT:
- active Camera3D moved out of SpringArm chase path and is a direct child of the eye-height CameraPitch pivot;
- eye pivot changed to 0.65 m above Hunter origin (about 1.55 m world eye height at the normal 0.9 m Hunter origin);
- neutral initial pitch and first-person pitch clamp -78°..+78°;
- first-person Camera3D FOV = 70°;
- third-person Hunter visual hidden in normal exploration so it cannot obstruct view;
- SpringArm3D retained as an inert legacy node for compatibility/audit, not used by the active camera;
- targeting state now exposes `camera_mode=first_person` and `first_person_camera_current`;
- Bridge 001 regression updated for first-person presentation;
- dedicated first-person regression test added;
- Android export renamed/versioned as first-person checkpoint.

TRUTH_BOUNDARY: IMPLEMENTED in source does not mean engine/build/device verified. Exact verification/build identifiers must be added after the workflow completes.

NEXT_ACTION: run exact-source Godot/Android workflow, persist APK/evidence, then update this handoff with source SHA, workflow/job IDs, APK size/hash and Drive location. Physical phone verification remains separate.
