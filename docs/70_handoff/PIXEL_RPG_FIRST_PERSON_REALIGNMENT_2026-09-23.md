# Pixel RPG — First-Person Realignment 001 — 2026-09-23

Status: IMPLEMENTED IN SOURCE / EXACT-SOURCE ENGINE+ANDROID VERIFICATION PENDING AT COMMIT TIME
Branch: `pixel-rpg`

## Creator decision

Normal Pixel RPG exploration is FIRST-PERSON.

This explicitly supersedes older Pixel RPG documents/handoffs that made third-person exploration authoritative. Those documents remain historical evidence; they are not deleted or rewritten as though they had always been first-person.

The abandoned standalone Shooter RPG remains non-authoritative. This change does not import its firearm/wall-jump identity, package/runtime root or old 115° HFOV contract.

## Bounded implementation

Preserved the existing Hunter controller/collision and moved presentation around it:
- CameraYaw and CameraPitch remain the look pivots;
- active Camera3D is now directly under CameraPitch at eye height;
- SpringArm3D remains present but inert/outside the active camera path;
- Hunter third-person visual is hidden during normal first-person exploration;
- movement, touch-look, HUD, minimap, interactions, smith, Mudcrest targeting and deterministic domain files are preserved;
- targeting remains in the same world and no combat damage/AP/Stamina behavior is added by this slice.

## Verification contract

A dedicated `game/tests/pixel_rpg_first_person_realignment_runtime_test.gd` must prove:
- existing Hunter authority preserved;
- presentation init does not move Hunter;
- direct camera current;
- hidden third-person visual;
- inert SpringArm;
- believable eye pivot;
- bounded FOV;
- camera independent of SpringArm length;
- yaw/pitch look remains functional;
- movement remains camera-relative.

The Android workflow must run this gate before existing visual/world/targeting/domain regressions and export.

## Truth boundary

At file creation time this document records implementation intent/source changes. Engine/build/device claims must come from actual workflow/device evidence and be added later.
