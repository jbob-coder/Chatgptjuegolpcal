# Shooter RPG — Third-Person Pixel Visual Pivot Handoff — 2026-09-15

Status: DESIGN PIVOT RECORDED / REFERENCE IMAGE SAVED / IMPLEMENTATION NOT YET VERIFIED
Branch: `shooter-rpg`
Base revision at branch creation: `7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`

## User decision

The user rejected the current visual presentation and selected a new direction after comparing alternatives:

- third-person perspective was preferred;
- the selected look is pixel style;
- movement should remain physical rather than menu-only location teleportation;
- mobile shooter-style movement/look is desired;
- scope must remain deep but not so massive that development/player navigation becomes overwhelming.

## Saved visual reference

Google Drive:
- title: `Shooter RPG - Pixel Visual Reference.jpg`;
- file ID: `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`;
- URL: `https://drive.google.com/file/d/1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b/view?usp=drivesdk`.

Reference use:
- composition/style inspiration;
- third-person player-visible framing;
- pixel-art world presentation;
- compact settlement foreground with wilderness/monster threat beyond;
- HUD zoning inspiration.

Do not treat the visible names/text/quest labels as canon.

## New authority

`SHOOTER_RPG_VISUAL_DIRECTION.md` is the current visual/presentation authority on this branch.

It supersedes older conflicting presentation guidance including:
- aerial/isometric-primary exploration;
- mandatory first-person combat;
- smooth illustrated-realism as the final selected art target;
- menu teleportation as the normal exploration experience.

Historical documents remain valid for non-conflicting architecture, mechanics, simulation, performance and evidence.

## Preserved foundations

Do not discard working domain systems only because the presentation changed.

Potentially reusable foundations include:
- deterministic combat;
- anatomy/body-part ownership;
- wound/status logic;
- break/sever/harvest direction;
- stable IDs/data-driven content;
- Android build/test infrastructure;
- protected direct movement/look principles;
- 2 GB storage ceiling;
- current verification vocabulary.

## New supporting design targets recorded

- Diamond Watch as recurring diegetic UI device;
- energy-bearing crystal/diamond mining;
- mining licenses/territorial control;
- survivor groups/factions/small settlements;
- persistent NPC relationships/memories;
- NPC-to-NPC relationships;
- schedules, aging and generational continuity;
- difficult decisions with settlement/character consequences;
- multi-layer progression and difficult post-cap breakthroughs;
- hunter journal/bestiary knowledge progression.

These are not implementation claims.

## Exact next bounded prototype

`SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`

Required prototype:
1. small settlement gate/street;
2. third-person player visible on screen;
3. direct left-stick movement;
4. independent right-side camera/look;
5. one NPC interaction;
6. one short physical route outside settlement;
7. one monster or monster proxy at meaningful scale;
8. selected pixel rendering/art treatment;
9. responsive safe-area HUD;
10. Android launch/runtime proof.

## Acceptance evidence needed

Do not promote the pivot based on compilation alone.

Need separate evidence for:
- launch reliability;
- control feel;
- camera readability;
- HUD non-overlap;
- pixel-style coherence;
- monster/player readability;
- phone performance;
- user visual acceptance.

## Historical build evidence

Previously recorded fully production-verified gameplay source:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Recorded workflow `34880096112`: SUCCESS.
Recorded job `104096962757`: SUCCESS.
Recorded artifact `10362706279`, size 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

This historical evidence does not prove the new visual direction.

## Files reconciled in this pivot

- `SHOOTER_RPG_VISUAL_DIRECTION.md` — created;
- `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` — reconciled;
- `GAME_EXPERIENCE_BIBLE.md` — reconciled;
- `EVOLVE_ALIGNMENT.md` — reconciled;
- `PROJECT_HANDOFF.md` — reconciled;
- `START_HERE_NEW_CHAT.md` — reconciled;
- `DOCUMENTATION_INDEX.md` — reconciled;
- `README.md` — reconciled;
- this handoff — created.

## Verification status

`DESIGN_RECORDED = YES`
`REFERENCE_IMAGE_SAVED = YES`
`NEW_BRANCH_CREATED = YES`
`NEW_VISUAL_RUNTIME_IMPLEMENTED = NO`
`NEW_VISUAL_ANDROID_BUILD_VERIFIED = NO`
`NEW_VISUAL_PHONE_VERIFIED = NO`
`NEW_VISUAL_PERFORMANCE_VERIFIED = NO`
`NEW_VISUAL_USER_ACCEPTED_IN_RUNTIME = NO`
