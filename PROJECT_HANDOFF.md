# Unnamed Hunt RPG — Project Handoff

Status: DESIGN DISCUSSION ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE
Define the new game completely enough to discuss its identity, combat, harvesting, exploration, architecture, visuals, progression, content pipeline, Android constraints, and first vertical slice before any gameplay implementation begins.

## CURRENT_STATE
This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base. No new-game gameplay code has been created.

The visual/world-behavior direction is now substantially more defined and recorded in `VISUAL_WORLD_BEHAVIOR_BIBLE.md`.

## VERIFIED_STATE
- User explicitly ordered WorldLife deleted/replaced.
- Same repository/project area is to be reused.
- Exploration direction: aerial/top-down angled 2D/3D hybrid.
- Visual philosophy: Paper-Mario-like dimensional overview/readability without a literal paper/craft aesthetic.
- Core visual identity: **an illustrated hunting world brought to life**.
- Theme target: grounded stylized wilderness / frontier monster-hunting fantasy.
- Current exploration camera target: roughly 40–50° downward, elevated landscape-phone composition.
- Nature and large readable forms dominate hunting regions; small decorative detail is secondary.
- Player and major monsters are preferably stylized 3D for continuity between aerial exploration and first-person combat.
- Combat direction: first-person turn-based tactical battles.
- Exploration-to-combat transition should visually lower the camera into the same encounter context rather than load an unrelated generic battle space.
- Body-part targeting, break/sever/destruction, and condition-based harvesting are core systems.
- Player combat choices must include tactical movement, cover, posture/defense, attack type, target body part, tools/items, analysis, reactions, and retreat where legal.
- Anatomy damage must have persistent visible consequences that match authoritative part state.
- UI direction: restrained practical hunter/field-document language, large touch targets, no generic glossy mobile clutter.
- Implementation remains blocked until design discussion is complete.

## COMPLETED
- Initial comprehensive design plan recorded.
- Core combat action vocabulary recorded.
- Anatomy/break/sever/harvest model recorded.
- Exploration/combat authority separation recorded.
- Engine decision identified as an explicit gate rather than assumed from WorldLife.
- Visual/world behavior bible recorded.
- Exploration camera/readability contract recorded.
- Environment layering and region visual-language rules recorded.
- Exploration-to-combat camera/world continuity recorded.
- First-person combat visual/targeting behavior recorded.
- Body-damage visual-state rules recorded.
- Frontier settlement/material language recorded.
- UI/audio/lighting/animation behavior recorded.
- Android performance visual-priority order recorded.

## IN_PROGRESS
Design discussion only.

No gameplay implementation is authorized.

## NEXT_ACTION
Continue discussing and locking the game's visual identity, setting, world structure, player/hunter identity, creature ecology, weapon families, progression, hub structure, action economy and exact combat pacing.

Do not implement gameplay yet.

## BLOCKERS / OPEN DECISIONS
- Final game name is unknown.
- Exact world history/time period/magic or technology level is not locked.
- Creature ecology and origin are not locked.
- Player identity and story role are not locked.
- Weapon roster is not locked.
- Solo vs party/companions is not locked.
- Exact action economy is not locked.
- Exact orthographic-like vs long-focal perspective exploration projection still needs device/prototype comparison after implementation authorization.
- Exact gore/severing intensity is not locked.
- Harvesting interaction depth is not locked.
- Crafting/progression/campaign structure is not locked.
- Engine and Android baseline are not locked.
- Permanent deletion of the frozen Google Drive WorldLife archive is currently blocked by the connector/platform safety layer.

## IMPORTANT_DECISIONS
- New project; do not inherit WorldLife gameplay architecture by default.
- Same repository/project area is reused.
- Presentation never becomes a second rules engine.
- Exploration should read like a dimensional illustrated wilderness rather than a flat map.
- The visual style is not literal paper/craft.
- The wilderness should be beautiful and grounded enough that first-person anatomy damage does not feel tonally disconnected.
- Body-part condition drives combat consequences, visible monster condition and harvest yield.
- Encounter transition preserves monster/location/terrain/cover/injury continuity.
- Environment communicates hunting information before excessive HUD markers are added.
- Android performance degradation removes decorative complexity before tactical readability.
- First vertical slice must validate one complete hunt loop before world scale/content expansion.

## RISKS
- Overbuilding anatomy simulation before the combat loop is fun.
- First-person combat becoming a menu with a camera instead of spatial tactics.
- Harvest math becoming opaque or grindy.
- 2D/3D hybrid art becoming visually inconsistent.
- Targeting too many body parts creating touch-UI overload.
- Visual detail making the aerial world noisy on a phone.
- A combat transition that feels like loading a separate minigame instead of entering the same physical encounter.
- Selecting an engine before testing the actual Android target hardware.

## TESTS_RUN
None. No implementation exists.

## IMPLEMENTATION_STATUS
DESIGN_RECORDED = YES
VISUAL_WORLD_BEHAVIOR_DESIGNED = YES
GAMEPLAY_SOURCE_CREATED = NO
VISUAL_PROTOTYPE_IMPLEMENTED = NO
IMPLEMENTATION_AUTHORIZED = NO
PHONE_RUNTIME_VERIFIED = NO
APK_BUILD_VERIFIED = NO

## AUTHORITY
Current explicit user instruction > these new-game durable docs > future verified source/tests > conversation summaries.
