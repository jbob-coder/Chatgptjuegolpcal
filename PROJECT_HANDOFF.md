# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / THIRD-PERSON PIXEL DIRECTION SELECTED / SHOOTER GAME SEPARATED / FIRST PIXEL PROTOTYPE NEXT
Last reconciled: 2026-09-16
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled 3D game. Prove one small, visually coherent, phone-safe slice before migrating broader presentation/content.

CURRENT_STATE: `pixel-rpg` was recovered to the last third-person pixel-RPG pivot revision `7ac7e84a6b0e8249ea8c869cf96171b834b2363c` so later standalone first-person Shooter RPG work is not inherited as authority. `PIXEL_RPG_VISUAL_DIRECTION.md` now owns the presentation direction. Existing `game/` monster-hunting domain/runtime work remains available for careful reuse.

LAST_VERIFIED_STATE: historical monster-hunting source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c` passed workflow `34880096112`, job `104096962757`, artifact `10362706279`. This does not verify the new Pixel RPG presentation.

COMPLETED_WORK:
- established active branch `pixel-rpg`;
- recovered branch content to pre-standalone-shooter revision `7ac7e84a6b0e8249ea8c869cf96171b834b2363c`;
- created `PIXEL_RPG_VISUAL_DIRECTION.md` as presentation authority;
- retained third-person behind-character gameplay direction;
- retained shooter-style mobile input language only as a control scheme: left movement + right camera/look;
- retained physical traversal through compact connected spaces;
- retained same-world third-person monster combat;
- preserved anatomy/body-part, wound/status, break/sever/harvest and deterministic-domain foundations where compatible;
- renamed the saved Google Drive references to `Pixel RPG - Visual Reference ORIGINAL.png` and `Pixel RPG - Visual Reference.jpg`;
- preserved the 2 GB player-required storage ceiling.

IN_PROGRESS: repository front-door reconciliation from stale Shooter RPG naming to Pixel RPG naming.

NEXT_ACTION: `PIXEL_RPG_THIRD_PERSON_VISUAL_PROTOTYPE_001`.

Prototype boundary:
- inspect current owning player/camera/HUD/presentation source first;
- one small settlement gate/street;
- one third-person controllable player;
- direct left-stick movement + independent right-side look;
- one NPC interaction;
- one short route outside the settlement;
- one monster/proxy at readable scale;
- coherent pixel rendering/art treatment;
- responsive safe-area HUD;
- static/headless/build evidence before broad migration;
- phone/visual/performance acceptance only after actual device evidence.

BLOCKERS: branch deletion is not supported by the currently exposed GitHub connector actions. This does not block Pixel RPG development. The obsolete Shooter branch must remain non-authoritative until deleted through GitHub UI/CLI or another capable connection.

OPEN_QUESTIONS:
- third-person camera pitch/distance/FOV/collision;
- pixel internal render resolution and texture density;
- lighting/shadow method;
- exact third-person body-part targeting UX;
- target-device sustained performance;
- installed-footprint verification;
- final canon names for concept-image placeholders.

IMPORTANT_DECISIONS:
- Pixel RPG is the active game;
- standalone first-person Shooter RPG is not part of Pixel RPG;
- `PIXEL_RPG_VISUAL_DIRECTION.md` supersedes conflicting visual/camera presentation guidance;
- concept-image names/text are placeholders;
- working domain systems should be reused rather than discarded where compatible;
- normal exploration is physical, compact and meaningful rather than menu teleportation;
- total player-required footprint cap remains 2,000,000,000 bytes;
- build success does not equal phone, performance or visual-quality acceptance.

KNOWN_RISKS:
- migrating too much at once;
- applying a pixel filter without pixel-consistent assets/UI/lighting;
- camera occlusion in dense settlement spaces;
- HUD overlap on older/small Android screens;
- accidentally re-importing standalone Shooter RPG assumptions through stale docs.

FILES_CHANGED / CREATED IN RECOVERY:
- `PIXEL_RPG_VISUAL_DIRECTION.md`;
- `EVOLVE_ALIGNMENT.md`;
- `PROJECT_HANDOFF.md`;
- additional front doors/handoff are being reconciled in the same documentation layer.

TESTS_RUN / TEST_RESULTS: no new gameplay/runtime tests are claimed for the naming/recovery documentation work. Pixel prototype implementation remains unverified.

HISTORICAL_VERIFIED_BUILD:
- source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`;
- workflow `34880096112` SUCCESS;
- job `104096962757` SUCCESS;
- artifact `10362706279`;
- size 57,536,941 bytes;
- SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

EXTERNAL_REFERENCES:
- original PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- JPEG Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: none about runtime implementation are promoted from design documentation.

UNKNOWNS: phone feel, camera acceptance, pixel-render quality, targeting UX and performance remain unverified.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. `GAME_EXPERIENCE_BIBLE.md`;
7. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`;
8. newest Pixel RPG handoff;
9. exact current player/camera/HUD source and Android build configuration.
