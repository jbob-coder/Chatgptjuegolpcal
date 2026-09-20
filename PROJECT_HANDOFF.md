# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / WORLD COMPOSITION PACK 001 INTEGRATED / GODOT + ANDROID BUILD VERIFIED / VISUAL PACK 002 NEXT
Last reconciled: 2026-09-20
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled real-3D game, improving the compact verified slice toward the selected visual reference without rewriting proven controller, camera, HUD or deterministic monster-hunting domain behavior.

CURRENT_STATE: `pixel-rpg` is the active authority. World Composition Pack 001 is now integrated into the live prototype as lightweight procedural Godot geometry: a stronger settlement gate, smith/service landmark, market stall, gate-side clutter, lanterns, banner, signpost, path fences, vegetation layering and trail rock composition. Existing controller, SpringArm camera, 800×360 nearest-upscaled render path, safe-area HUD, Gate Warden interaction and distant monster observation logic remain in place.

LAST_VERIFIED_STATE: source `1c513af4097303f4f9a8c5e07eae97c7b615b91d` passed Pixel RPG workflow `35489990032`, job `106023171735`.

COMPLETED_WORK:
- established active branch `pixel-rpg` and rejected standalone first-person Shooter authority;
- third-person player controller with left-stick movement and independent right-side look;
- compact settlement/street/gate/trail prototype;
- Gate Warden interaction and distant monster observation proxy;
- Diamond Watch prototype panel and journal/objective feedback;
- 800×360 low-resolution 3D SubViewport with nearest stretch;
- per-vertex/nearest material treatment;
- SpringArm collision/occlusion handling;
- responsive safe-area HUD logic;
- WORLD COMPOSITION PACK 001 source package created and stored in Google Drive;
- PACK 001 runtime equivalent integrated through `game/scripts/presentation/pixel_rpg/world_pack_001.gd`;
- graybox market and smith slots replaced with reusable service silhouettes;
- old visible gate boxes replaced by the new gate composition while invisible conservative gate collision was preserved;
- trail rock duplication removed and replaced with layered vegetation/rock composition;
- selected deterministic combat-domain regressions remained green;
- Android debug export and exact 2 GB package gate passed.

IN_PROGRESS: visual-quality progression. Build/runtime integration is verified in CI, but actual phone visual acceptance remains open.

NEXT_ACTION: `PIXEL_RPG_VISUAL_PACK_002_HUNTER_MONSTER_READABILITY`.

Next-slice boundary:
- preserve controller/camera/pixel-render/HUD and PACK 001 composition;
- improve the visible hunter silhouette/equipment readability;
- replace the generic distant monster proxy with an original low-poly pixel-consistent monster silhouette compatible with later anatomy mapping;
- keep the current observation interaction and authoritative combat/anatomy systems unchanged;
- do not add unrelated gameplay mechanics;
- rerun Godot parse, AppShell smoke, prototype scene smoke, deterministic domain regressions, Android export and package gate.

BLOCKERS: none for the next bounded visual package.

OPEN_QUESTIONS:
- final third-person camera distance/FOV/pitch after phone testing;
- whether 800×360 is the final internal 3D pixel resolution;
- exact body-part targeting UX in third person;
- target-device sustained performance;
- installed-footprint verification;
- final canon names for concept-image placeholders.

IMPORTANT_DECISIONS:
- Pixel RPG is the active game;
- standalone first-person Shooter RPG is not part of Pixel RPG;
- `PIXEL_RPG_VISUAL_DIRECTION.md` owns current presentation decisions;
- world assets for the first composition slice are lightweight and modular;
- gameplay authority remains outside presentation assets;
- normal exploration remains physical and compact;
- deterministic monster-hunting domain logic remains preserved where compatible;
- total player-required footprint cap remains 2,000,000,000 bytes;
- build success does not equal phone, sustained-performance or visual-quality acceptance.

KNOWN_RISKS:
- current hero character and monster visuals are still prototype-level;
- procedural forms improve composition but do not yet equal final production art;
- phone readability and camera feel remain unverified;
- current visual slice has not yet exercised actual body-part combat presentation in third person;
- older stale docs may still contain superseded presentation language.

FILES_CHANGED FOR PACK 001 INTEGRATION:
- `game/scripts/presentation/pixel_rpg/world_pack_001.gd`;
- `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`.

TESTS_RUN / TEST_RESULTS:
- workflow `35489990032`: SUCCESS;
- job `106023171735`: SUCCESS;
- Godot 4.7.2 import/parse: PASS;
- Pixel RPG AppShell smoke: PASS;
- Pixel RPG prototype scene smoke: PASS;
- deterministic combat turn shell: PASS;
- tactical movement regression: PASS;
- first Hunter attack runtime: PASS;
- Mudcrest anatomy integrity runtime: PASS;
- generic status application: PASS;
- generic status timing: PASS;
- Android debug export: PASS;
- measured APK bytes: `57,968,220`;
- package ceiling `2,000,000,000` bytes: PASS;
- APK artifact upload: PASS;
- build-evidence upload: PASS.

PIXEL_RPG_VERIFIED_SOURCE: `1c513af4097303f4f9a8c5e07eae97c7b615b91d`.

PIXEL_RPG_ARTIFACTS:
- APK artifact `10599110903`, name `PixelRPG-prototype-001-debug`;
- APK artifact archive size `57,464,994` bytes;
- APK artifact digest `sha256:7bcb683158335eeda5cdc79da4fe19a5d216a8902adcba6710512f9fa2e63ef5`;
- evidence artifact `10598976147`, name `PixelRPG-prototype-001-build-evidence`.

PACK_001_DRIVE:
- folder `PIXEL_RPG_WORLD_COMPOSITION_PACK_001` — ID `1kYy8c73QHwBqkfvJGsZzWk35nZQh8PZy`;
- ZIP `PIXEL_RPG_WORLD_COMPOSITION_PACK_001.zip` — ID `19igUb95rRPJcbCFeEhP15uKHjLDmElWF`;
- source ZIP size `68,963` bytes.

HISTORICAL_MONSTER_HUNTING_BASELINE:
- source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`;
- workflow `34880096112` SUCCESS;
- job `104096962757` SUCCESS;
- artifact `10362706279`.

EXTERNAL_REFERENCES:
- original Pixel RPG visual-reference PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- JPEG working reference Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: none about phone feel, visual acceptance, sustained performance or installed footprint are promoted from CI.

UNKNOWNS: phone feel, final pixel density, visual acceptance, body-part targeting UX and sustained performance remain unverified.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. `docs/70_handoff/PIXEL_RPG_WORLD_COMPOSITION_PACK_001_2026-09-20.md`;
7. `game/scripts/presentation/pixel_rpg/world_pack_001.gd`;
8. `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
9. `.github/workflows/pixel-rpg-prototype-android.yml`.
