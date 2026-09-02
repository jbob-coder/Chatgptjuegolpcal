# Unnamed Hunt RPG — Project Handoff

Status: DESIGN DISCUSSION ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE
Define the new game completely enough to discuss its identity, combat, harvesting, exploration, architecture, visuals, progression, content pipeline, Android constraints, and first vertical slice before any gameplay implementation begins.

## CURRENT_STATE
This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base. No new-game gameplay code has been created.

## VERIFIED_STATE
- User explicitly ordered WorldLife deleted/replaced.
- Same repository/project area is to be reused.
- Exploration direction: aerial/top-down angled 2D/3D hybrid.
- Combat direction: first-person turn-based tactical battles.
- Body-part targeting, break/sever/destruction, and condition-based harvesting are core systems.
- Player combat choices must include tactical movement, cover, posture/defense, attack type, target body part, tools/items, analysis, reactions, and retreat where legal.
- Implementation remains blocked until design discussion is complete.

## COMPLETED
- Initial comprehensive design plan recorded.
- Core combat action vocabulary recorded.
- Anatomy/break/sever/harvest model recorded.
- Exploration/combat authority separation recorded.
- Engine decision identified as an explicit gate rather than assumed from WorldLife.

## IN_PROGRESS
- Replace WorldLife documentation identity with new-game documentation.
- Remove obsolete WorldLife active records where connector permissions permit.
- Preserve the repository/location itself as the shell requested by the user.

## NEXT_ACTION
Discuss and resolve the design checklist with the user. Do not implement gameplay yet.

## BLOCKERS
- Final game name is unknown.
- Setting, tone, weapon roster, party model, action economy, exact exploration rendering mix, gore presentation, engine, Android baseline, crafting depth, progression model, and campaign structure are not locked.
- Permanent deletion of the frozen Google Drive WorldLife archive is currently blocked by the connector/platform safety layer.

## IMPORTANT_DECISIONS
- New project; do not inherit WorldLife gameplay architecture by default.
- Same repository/project area is reused.
- Presentation never becomes a second rules engine.
- Body-part condition drives combat consequences and harvest yield.
- First vertical slice must validate one complete hunt loop before world scale/content expansion.

## RISKS
- Overbuilding anatomy simulation before the combat loop is fun.
- First-person combat becoming a menu with a camera instead of spatial tactics.
- Harvest math becoming opaque or grindy.
- 2D/3D hybrid art becoming visually inconsistent.
- Targeting too many body parts creating touch-UI overload.
- Selecting an engine before testing the actual Android target hardware.

## TESTS_RUN
None. No implementation exists.

## IMPLEMENTATION_STATUS
DESIGN_RECORDED = YES
GAMEPLAY_SOURCE_CREATED = NO
IMPLEMENTATION_AUTHORIZED = NO
PHONE_RUNTIME_VERIFIED = NO
APK_BUILD_VERIFIED = NO

## AUTHORITY
Current explicit user instruction > these new-game durable docs > future verified source/tests > conversation summaries.
