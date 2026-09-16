# PROJECT HANDOFF — Shooter RPG

Status: NEW STANDALONE GAME / PIXEL REFERENCE SELECTED / DESIGN FOUNDATION NEXT / NO SHOOTER GAMEPLAY IMPLEMENTATION CLAIMED
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: define Shooter RPG from zero as a standalone game using the selected pixel visual reference, then build the smallest playable shooter/RPG vertical slice without inheriting previous-game mechanics by default.

CURRENT_STATE: the `shooter-rpg` branch exists and contains inherited repository history/files because of how the branch was created. Those inherited files do not define this game. Shooter RPG currently has a selected pixel visual reference and a corrected standalone-project identity, but its gameplay foundation is not yet locked or implemented.

LAST_VERIFIED_STATE: no Shooter RPG runtime/build verification exists yet. Older Hunt-01/Unnamed Hunt RPG CI and APK evidence belongs to the previous game and must not be used as Shooter RPG proof.

COMPLETED_WORK:
- created branch `shooter-rpg`;
- saved the selected pixel visual reference in Google Drive in original PNG and working JPEG forms;
- corrected project authority so Shooter RPG is explicitly independent from all previous games;
- established that inherited source/docs/build evidence are legacy repository material only;
- prevented automatic inheritance of old mechanics, lore, saves, progression, performance caps or tests.

IN_PROGRESS: documentation cleanup so future chats do not accidentally merge Shooter RPG with the previous monster-hunting project.

NEXT_ACTION: `SHOOTER_RPG_FOUNDATION_DESIGN_001`.

BLOCKERS: none for design. Implementation should not begin until the core shooter/RPG experience is defined well enough to avoid building the wrong game.

OPEN_QUESTIONS:
- exact player fantasy and setting;
- third-person vs first-person vs another camera approach;
- what weapons define the shooter loop;
- aiming model and mobile control scheme;
- enemy type for the first vertical slice;
- exact RPG progression layer;
- world structure and travel;
- whether NPC/social simulation is part of this game at all;
- exact pixel rendering technique;
- engine/project root/package identity.

IMPORTANT_DECISIONS:
- Shooter RPG is a new standalone project;
- no previous-game code or design is automatically reusable;
- old branch/build evidence is historical only;
- visual reference remains useful, but its names/content are placeholders;
- Shooter RPG must generate its own tests and verification;
- safest future implementation location is a separate root such as `shooter_game/`.

KNOWN_RISKS:
- inherited files can mislead future assistants into assuming continuity;
- copying old systems would create hidden coupling and contradict the user's project separation;
- coding before camera/combat/control decisions are settled can create another expensive visual/gameplay rework;
- treating the concept image as literal content could accidentally canonize placeholder names and systems.

FILES CHANGED FOR THIS CORRECTION:
- `README.md`;
- `EVOLVE_ALIGNMENT.md`;
- `PROJECT_HANDOFF.md`;
- additional front-door/authority files should be kept consistent with this separation.

TESTS_RUN / TEST_RESULTS: documentation-only correction. No Shooter RPG engine, build, APK or phone tests have been run.

REPOSITORY_ANCESTRY_NOTE: branch ancestry may still point to older game commits. That is not design or implementation inheritance.

EXTERNAL_REFERENCE:
- original PNG visual reference Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- working JPEG Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: the user still wants the Shooter RPG to follow the pixel-style image direction. Everything beyond that should be designed for Shooter RPG rather than inherited.

UNKNOWNS: all gameplay details not explicitly established for Shooter RPG remain open.

READ_FIRST_NEXT_SLICE:
1. `README.md`;
2. `EVOLVE_ALIGNMENT.md`;
3. `PROJECT_HANDOFF.md`;
4. `START_HERE_NEW_CHAT.md`;
5. `DOCUMENTATION_INDEX.md`;
6. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
7. then only Shooter RPG-specific files created after the standalone reset.
