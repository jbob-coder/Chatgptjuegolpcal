# START HERE — Pixel RPG — New Chat Bootstrap

Status: ACTIVE PIXEL RPG BOOTSTRAP / PIXEL-CAMERA-HUD POLISH ANDROID BUILD VERIFIED / WORLD COMPOSITION NEXT
Last reconciled: 2026-09-16

Repository: `jbob-coder/Chatgptjuegolpcal`
Active branch: `pixel-rpg`

WorldLife is abandoned. The later standalone first-person Shooter RPG is also not the implementation/design authority for Pixel RPG.

## Mandatory bootstrap

1. Fetch live HEAD of `pixel-rpg` and record it.
2. Read, at that same revision:
   1. `EVOLVE_ALIGNMENT.md`;
   2. `PROJECT_HANDOFF.md`;
   3. `START_HERE_NEW_CHAT.md`;
   4. `DOCUMENTATION_INDEX.md`;
   5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
   6. newest relevant Pixel RPG handoff under `docs/70_handoff/`;
   7. root `README.md`;
   8. `game/README.md`;
   9. exact owning source/tests/workflows for the bounded task.
3. Re-check HEAD after reconstruction. If it changed materially, do not mix revisions.
4. Current source/tests/build/device evidence outranks Markdown labels and chat memory.
5. Conflict order: current explicit user instruction → current source/tests/build/device evidence → `PIXEL_RPG_VISUAL_DIRECTION.md` for presentation → EVOLVE/HANDOFF → narrow owner → package docs → older handoffs/chat.
6. Work one bounded piece at a time.
7. Never convert design documentation or CI/build success into phone/visual/performance proof.
8. Preserve reusable monster-hunting domain logic unless current evidence shows it is incompatible.

## Active identity

Pixel RPG target:
- third-person behind-character gameplay;
- pixel-styled real 3D world/UI;
- Android landscape-first;
- left-stick movement;
- independent right-side camera/look;
- simultaneous movement/look;
- physical compact exploration;
- same-world third-person monster combat;
- body-part targeting/break/sever/harvest identity;
- persistent NPC/world consequences;
- deep but deliberately bounded scope.

Do not import standalone Shooter RPG first-person camera/firearm/wall-jump/runtime/package assumptions.

## Visual references

Google Drive:
- `Pixel RPG - Visual Reference ORIGINAL.png` — `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

Visible concept names/text are placeholders.

## Development law

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → COMMIT → READ BACK → CONTINUE`.

Never weaken legitimate gates to force success.

## Current Pixel RPG verified baseline

Current verified gameplay/presentation source:
`88d19d733a579e326d7bdf3ebd8e002ef413d86a`.

Workflow `35062722630`: SUCCESS.
Job `104686283219`: SUCCESS.

Passed:
- Godot 4.7.2 import/parse;
- AppShell smoke;
- Pixel RPG prototype scene smoke;
- selected deterministic combat-domain regressions;
- Android debug export;
- 2,000,000,000-byte package ceiling;
- APK and build-evidence uploads.

Artifacts:
- APK `10432264323` — `PixelRPG-prototype-001-debug`;
- evidence `10433305640` — `PixelRPG-prototype-001-build-evidence`.

Implemented presentation includes an 800×360 low-resolution 3D SubViewport with nearest stretch, SpringArm camera obstruction handling and responsive safe-area HUD logic.

This does not establish phone runtime, final visual quality, sustained performance or installed-footprint compliance.

## CI trigger policy

The Pixel RPG Android workflow runs for `game/**` changes or changes to the workflow itself. Documentation-only updates must not consume a full Android export run.

## Storage law

Player-required installed/runtime footprint cap: `2,000,000,000` bytes.

Required runtime downloads count. Dev-only repository/source/CI files do not. Package size and installed footprint remain separate evidence layers.

## Current verification boundary

`PIXEL_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`PIXEL_RPG_REFERENCE_IMAGE_SAVED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_001_IMPLEMENTED = YES`
`PIXEL_RPG_PIXEL_RENDER_PATH_IMPLEMENTED = YES`
`PIXEL_RPG_SPRING_ARM_CAMERA_COLLISION_IMPLEMENTED = YES`
`PIXEL_RPG_SAFE_AREA_HUD_LOGIC_IMPLEMENTED = YES`
`PIXEL_RPG_PROTOTYPE_HEADLESS_SMOKE_VERIFIED = YES`
`PIXEL_RPG_SELECTED_DOMAIN_REGRESSIONS_VERIFIED = YES`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = YES`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`

## Current bounded piece

`PIXEL_RPG_PROTOTYPE_002_WORLD_COMPOSITION`.

Boundary:
- preserve current controller/camera/pixel-render/HUD behavior;
- improve compact settlement street/gate visual composition toward the saved reference;
- add reusable lightweight market/service silhouettes, fences/signage and environmental depth;
- improve settlement-to-trail transition and distant monster framing;
- preserve current NPC/monster interactions and deterministic gameplay regressions;
- rerun parse/smokes/Android export/package gate;
- no unrelated gameplay-system expansion in this slice.
