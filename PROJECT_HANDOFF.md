# PROJECT HANDOFF — Unnamed Hunt RPG / Shooter RPG Branch

Status: THIRD-PERSON PIXEL VISUAL DIRECTION SELECTED / REFERENCE IMAGE SAVED / HISTORICAL HUNT-01 ANDROID BUILD EVIDENCE PRESERVED / NEW VISUAL PROTOTYPE NOT YET IMPLEMENTED
Last reconciled: 2026-09-15
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: re-present the existing monster-hunting RPG as a high-quality third-person pixel-style Android game without discarding proven gameplay/domain work. First prove one small visually accepted, phone-safe third-person slice before broader migration.

CURRENT_STATE: `shooter-rpg` was created from `worldlife-reference-docs` at revision `7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`. The new visual direction is documented but not yet implemented or phone-verified. The older Hunt-01 deterministic combat/anatomy/status/outcome work and Android build evidence remain historical verified foundations where compatible.

LAST_VERIFIED_STATE: historical fully production-verified gameplay source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c` passed workflow `34880096112`, job `104096962757`. That evidence does not validate the new third-person pixel presentation.

COMPLETED_WORK:
- created branch `shooter-rpg` from live `worldlife-reference-docs` revision `7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`;
- saved the selected visual reference to Google Drive as `Shooter RPG - Pixel Visual Reference.jpg`, file ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`;
- established `SHOOTER_RPG_VISUAL_DIRECTION.md` as the current visual/presentation authority;
- selected third-person behind-character gameplay with shooter-style mobile move/look controls;
- selected pixel-styled 3D presentation rather than smooth illustrated-realism as the target;
- selected physical exploration instead of menu-only travel;
- selected same-world third-person combat presentation instead of mandatory first-person combat;
- preserved the 2 GB player-required game-footprint ceiling;
- documented NPC relationship/memory, time/aging, Diamond Watch, crystal/mining/faction, consequence and progression directions as gradual expandable systems;
- preserved historical deterministic combat/anatomy/status/outcome verification as reusable domain evidence where compatible.

IN_PROGRESS: documentation reconciliation for the new visual direction. No claim is made that gameplay code has already been converted to the new presentation.

NEXT_ACTION: `SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`.

Prototype boundary:
- one small settlement gate/street;
- one third-person controllable player;
- protected left-stick movement + independent right-side look;
- one NPC interaction;
- one short route outside the settlement;
- one monster or monster proxy at readable scale;
- pixel rendering/art treatment;
- responsive phone-safe HUD inspired by the saved reference;
- Android launch/runtime evidence before broad migration.

BLOCKERS: no design blocker. The main implementation risk is rewriting too much before the new visual/camera/HUD direction is proven on the target phone.

OPEN_QUESTIONS:
- exact third-person camera pitch/distance/FOV/shoulder offset;
- exact low-resolution render scale/pixel size;
- texture/pixel density standards;
- lighting/shadow method for the pixel aesthetic;
- exact combat timing presentation in third person while preserving authoritative combat rules;
- final button layout and whether lock-on/body-part selection uses tap, cycle, radial or reticle interaction;
- target-device sustained performance;
- installed-footprint verification;
- final names/lore for concept-image placeholders.

IMPORTANT_DECISIONS:
- third-person pixel presentation is selected for this branch;
- concept-image names/text are placeholders, not canon;
- older aerial/isometric-primary and mandatory first-person-combat presentation guidance is superseded where conflicting;
- gameplay domain systems should be reused rather than discarded when compatible;
- normal exploration is physical, compact and meaningful rather than menu teleportation;
- world scope remains deep but deliberately bounded;
- AI-generated runtime dialogue is not required for the NPC/SIM system;
- total player-required game footprint hard cap remains `2,000,000,000` bytes;
- build success alone does not equal phone acceptance or visual-quality acceptance.

KNOWN_RISKS:
- visually converting every old system at once would create high regression risk;
- a simple full-screen pixel shader may look poor if assets/UI/lighting are not designed for the same style;
- third-person camera can create occlusion/collision/readability issues in dense settlements;
- large HUD blocks can recreate the overlap/scaling problems already disliked by the user;
- too many simulation systems added before the core presentation works would overwhelm development scope.

FILES_CHANGED / CREATED ON `shooter-rpg` SO FAR:
- `SHOOTER_RPG_VISUAL_DIRECTION.md`;
- `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`;
- `GAME_EXPERIENCE_BIBLE.md`;
- `EVOLVE_ALIGNMENT.md`;
- `PROJECT_HANDOFF.md`.

TESTS_RUN / TEST_RESULTS: no new runtime/build tests were executed for the visual pivot. Documentation-only work must not be represented as engine/runtime verification.

HISTORICAL_VERIFIED_BUILD:
- source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`;
- workflow `34880096112` SUCCESS;
- job `104096962757` SUCCESS;
- artifact `10362706279`;
- size `57,536,941` bytes;
- SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

EXTERNAL_REFERENCES:
- Google Drive visual reference ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS:
- branch name uses `shooter-rpg` because Git refs cannot contain spaces;
- `shooter` describes the direct mobile control/camera language and does not force a firearms-focused game;
- the selected concept image defines direction/composition, not exact final assets/content.

UNKNOWNS: phone feel, camera acceptance, pixel-render quality, third-person monster targeting UX and performance remain unverified until an actual prototype runs on the target device.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
6. `GAME_EXPERIENCE_BIBLE.md`;
7. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`;
8. exact current player/camera/HUD source and Android project configuration before implementation.
