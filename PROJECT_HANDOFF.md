# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / FIRST-PERSON CREATOR REALIGNMENT GODOT+ANDROID-BUILD VERIFIED / DEVICE VERIFICATION PENDING
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

VERIFIED CHECKPOINT:
- exact source SHA: `0a6e54ecdbc1c81043b6db5dd0f35e429cbb4ee9`;
- workflow run: `35910688037` — SUCCESS;
- job: `107349457171` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- APK: `PixelRPG-first-person-001-debug.apk`;
- APK size: `58,023,057` bytes;
- APK SHA-256: `d0ea93980e2e617d056a696183c6eced2d0df34cf3a6240e244f3524ced8e012`;
- Drive APK: `1NwWuvKS_cXuz5o22r5taeTadnlgUiIYB`;
- Drive immutable build folder: `1REno22ZSIUQnKxOB6pcZRaYS6W0aXFa1`;
- Drive build evidence: `1mf8pyPyIyFlBHblJZ5mXE4yvtoIrccZx`;
- Drive raw CI evidence ZIP: `1frUxEVieyzQedwJSkWLP7u8fvmVebZOo`;
- Drive device checklist: `1zACUGQil9eU8Cwayk4gJs8SBiR8eSz3k`.

TEST_RESULTS: import/parse PASS; AppShell PASS; prototype boot PASS; first-person runtime gate PASS; Visual Packs 002/003 PASS; World Pack 004 PASS; Combat Bridge 001 first-person targeting regression PASS; preserved deterministic combat/anatomy/status regressions PASS; Android export PASS; package-size gate PASS.

TRUTH_BOUNDARY: Godot/headless/build verification is complete for this checkpoint. Physical Android installation, touch feel, visual acceptance, sustained performance/heat and installed-footprint compliance remain NOT VERIFIED.

NEXT_ACTION: resume `PIXEL_RPG_COMBAT_BRIDGE_002_DOMAIN_BOOTSTRAP_NO_ATTACK` using the first-person presentation as authoritative. Do not restore third-person camera behavior.
