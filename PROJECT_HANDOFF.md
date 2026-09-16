# PROJECT HANDOFF — Shooter RPG

Status: STANDALONE GAME / FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD NEXT / NO RUNTIME IMPLEMENTATION YET
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: build Shooter RPG as an independent third-person pixel shooter RPG, starting with a minimal Android-first project scaffold and then one complete playable vertical slice.

CURRENT_STATE: Shooter RPG is isolated from previous games by explicit authority. Its first gameplay foundation is now defined in `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`. No Shooter RPG runtime source/build/phone verification exists yet.

LAST_VERIFIED_STATE: design/documentation only. No Shooter RPG engine, APK, runtime, phone or performance test has been executed.

COMPLETED_WORK:
- created branch `shooter-rpg`;
- saved original PNG and working JPEG pixel visual references to Google Drive;
- recorded standalone project identity and no-inheritance rule;
- selected third-person over-shoulder real-time shooter presentation;
- selected semi-automatic carbine as first weapon;
- selected deterministic reticle-based shooting rather than RPG random-miss behavior;
- selected compact connected world structure;
- selected one placeholder Sentry Automaton enemy for the first slice;
- selected shallow Vigor / Handling / Mobility progression foundation;
- selected low-resolution 3D pixel world rendering with separate readable UI;
- selected Godot 4.7.2-stable independently for Shooter RPG;
- selected `shooter_game/` as the new implementation root;
- defined the exact Vertical Slice 001 loop and quality gates.

IN_PROGRESS: reconcile current Shooter RPG front-door documentation around the newly locked foundation.

NEXT_ACTION: `SHOOTER_RPG_PROJECT_SCAFFOLD_001`.

NEXT SLICE BOUNDARY:
- create `shooter_game/` only;
- add standalone Godot project configuration;
- add minimal boot scene and source/test/docs ownership;
- add first-slice input actions only;
- add Shooter-RPG-specific sanity verification;
- do not import old-game runtime code;
- do not implement the full combat/world/progression loop in the scaffold commit.

BLOCKERS: none for scaffold creation.

OPEN_QUESTIONS THAT MAY AFFECT LATER SLICES:
- final camera FOV/distance/pitch/shoulder offset;
- exact movement/dodge values;
- exact carbine recoil/spread/damage/reload values;
- enemy detection/fire timing;
- final low-resolution world viewport dimensions across phone aspect ratios;
- final Android package ID;
- final setting/location/enemy names;
- final target-phone performance budget.

IMPORTANT_DECISIONS:
- Shooter RPG is single-player offline-first for the foundation;
- third-person over-shoulder camera;
- physical world traversal;
- real-time shooting;
- good aim must not be invalidated by invisible RPG accuracy dice;
- physical cover instead of sticky cover;
- one semi-auto carbine first;
- one ranged Sentry Automaton first;
- RPG growth remains bounded so shooter skill remains relevant;
- no massive open world in the foundation;
- no inherited prior-game source/build evidence;
- Godot 4.7.2-stable is the selected engine baseline;
- project root is `shooter_game/`.

KNOWN_RISKS:
- overbuilding before control feel is proven;
- mobile aim/fire ergonomics becoming cluttered;
- pixel effect looking like a cheap filter rather than authored pixel 3D;
- low-resolution world rendering making distant enemies unreadable;
- camera collision/occlusion in dense environments;
- RPG stat growth accidentally creating bullet-sponge balance;
- inherited repository files misleading future work.

FILES CHANGED IN FOUNDATION DESIGN PASS:
- `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
- `EVOLVE_ALIGNMENT.md`;
- `PROJECT_HANDOFF.md`.

TESTS_RUN / TEST_RESULTS: none; design/documentation pass only.

EXTERNAL_REFERENCE:
- original PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- working JPEG Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`;
- Godot official release archive confirmed `4.7.2-stable` as the current stable release during this design pass.

ASSUMPTIONS: the selected pixel-style reference remains the art-direction anchor; working location/enemy names in the foundation doc are replaceable and not final lore.

UNKNOWNS: all runtime feel, performance, packaging and phone-quality claims remain unverified until source exists and is executed.

READ_FIRST_NEXT_SLICE:
1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
2. `EVOLVE_ALIGNMENT.md`;
3. `PROJECT_HANDOFF.md`;
4. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
5. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
6. then only Shooter-RPG-specific files under the new `shooter_game/` root once created.
