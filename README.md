# Unnamed Hunt RPG

Status: NEW GAME / DESIGN SYSTEM ACTIVE / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new game. WorldLife RPG is no longer the active project and is not the implementation base.

`Unnamed Hunt RPG` is only a temporary working label.

# 1. What this game is

A grounded stylized monster-hunting tactical RPG with two connected modes:

1. **Exploration** — angled aerial 2.5D/3D wilderness presentation, physically traversed and readable like a living illustrated diorama.
2. **Combat** — first-person turn-based tactical encounters using the same monster, injuries, terrain, cover, range and encounter context.

Core loop:

`PREPARE → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → CRAFT/UPGRADE/RESEARCH → HUNT HARDER PREY`

# 2. Visual identity

The world should have the readable dimensional-overview philosophy discussed with Paper Mario as a point of comparison, but it is **not** made of paper/cardboard and does not copy Paper Mario's art.

The intended identity is:

**an illustrated hunting world brought to life**

Current direction:
- grounded stylized wilderness/frontier fantasy;
- aerial camera roughly 40–50° downward as current target;
- player and major monsters preferably stylized 3D;
- 2D/billboard/impostor details used selectively when they improve Android performance;
- nature and major silhouettes before tiny decorative density;
- settlements use wood, stone, metal, canvas, rope, leather, ceramic, bone, shell/hide and monster-derived materials;
- UI resembles practical hunter field tools/notes rather than generic glossy mobile menus.

See `GAME_EXPERIENCE_BIBLE.md` and `VISUAL_WORLD_BEHAVIOR_BIBLE.md`.

# 3. Game introduction and feel

Planned player flow:

`LAUNCH → TITLE → NEW/CONTINUE → INTRODUCTION → HUB/OUTPOST → FIRST ASSIGNMENT → TRACKING → FIRST MONSTER → FIRST TACTICAL BATTLE → HARVEST → FIRST CRAFT/UPGRADE`

The tutorial should teach the complete hunt loop through play rather than a long lore dump.

Music is state-based:
- title identity;
- safer hub theme;
- sparse region exploration;
- nearby-threat tension;
- encounter sting;
- combat base;
- monster phase/enrage intensification;
- victory/post-hunt release;
- harvest/return ambience.

Critical monster telegraph/audio information outranks decorative ambience and music.

# 4. Exploration behavior

Exploration is physical, not a menu map.

Regions contain:
- terrain/traversal;
- landmarks;
- monster territories;
- tracks/signs;
- cover/hazards;
- camps;
- resources;
- encounter-capable areas;
- region exits/transitions.

The world communicates through footprints, broken vegetation, scratches, blood, calls, feeding remains, nests and environmental damage before relying on glowing waypoint UI.

# 5. Combat behavior

Combat begins by transitioning the camera down from the aerial world into first person.

The player may eventually choose among actions such as:
- reposition left/right/forward/back;
- close/open distance;
- flank/circle;
- enter/leave cover;
- crouch/brace/guard;
- dodge/block/parry when legal;
- attack with weapon techniques;
- select a specific body part;
- inspect/analyze;
- use items/tools/traps;
- prepare reactions;
- recover stamina;
- escape/retreat when legal.

The current prototype candidate uses Action Points + stamina + a limited reaction resource, but final numbers/rules remain discussion decisions.

# 6. Anatomy and harvesting

Monster anatomy is gameplay authority.

Body parts can have:
- integrity;
- armor/structure;
- exposure rules;
- break/sever/destroy states;
- capability effects;
- harvest capacities.

Examples:
- broken leg affects locomotion;
- broken wing affects flight;
- severed tail removes tail actions;
- broken armor exposes vulnerable structure;
- damaged eye affects perception/accuracy.

Harvest is derived from what remains physically usable. A destroyed unique structure cannot yield a pristine duplicate reward.

# 7. Architecture law

There is one authoritative game state.

```text
INPUT / AI INTENT
        ↓
ACTION REQUEST
        ↓
VALIDATION
        ↓
DOMAIN RESOLUTION
        ↓
AUTHORITATIVE STATE + DOMAIN EVENTS
        ↓
SAVE / REPLAY / DEBUG
        ↓
PRESENTATION / ANIMATION / AUDIO / UI
```

UI, animation and rendering never secretly decide hits, severing, loot, tactical position or persistent progression.

# 8. Internal structure

The future source is planned around separated responsibilities:
- world/region/exploration domain;
- encounter/turn domain;
- creature/anatomy/damage domain;
- AI;
- harvest;
- inventory/equipment;
- crafting;
- research/progression;
- persistence;
- content definitions;
- aerial presentation;
- combat presentation;
- audio/VFX/UI;
- admin/debug/creator tooling;
- tests/validators.

See `SYSTEM_ARCHITECTURE_BLUEPRINT.md` and `CODE_GUIDE.md`.

# 9. Content structure

Content is data-driven where practical:
- species;
- anatomy;
- attacks;
- behavior profiles;
- weapons/techniques;
- materials;
- harvest sources;
- recipes;
- regions;
- encounter layouts;
- statuses/knowledge later.

Stable IDs are never replaced casually after saves depend on them.

See `CONTENT_DATA_GUIDE.md`.

# 10. Performance and bug isolation

The project must use explicit caps/budgets rather than letting systems grow unbounded.

Protect first:
1. input responsiveness;
2. gameplay correctness;
3. monster anatomy readability;
4. telegraphs;
5. camera stability;
6. frame pacing;
7. world readability;
8. audio cues;
9. decoration.

Development builds should be able to independently disable/isolate expensive systems such as particles, shadows, foliage, ambient wildlife, high-detail monster rendering, music, damage decals and roaming AI.

See `PERFORMANCE_BUDGETS_AND_CAPS.md`.

# 11. Admin / Creator system

The future Admin system is not just cheats. It is a creation and debugging workbench.

Planned capabilities:
- state inspectors;
- anatomy tree/part condition inspector;
- live combat debugger;
- typed admin test commands;
- creature/anatomy/attack editors;
- harvest simulator;
- encounter layout builder;
- region debug overlays;
- save inspector;
- deterministic replay;
- performance dashboard;
- content validation/import/export.

Creator tools operate through validated domain/content services; they do not become a hidden second rules engine.

See `ADMIN_CREATOR_SYSTEM.md`.

# 12. How development proceeds

The build order is deliberately layered:

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/CRAFTING → EXPLORATION DOMAIN → AERIAL PRESENTATION → COMPLETE VERTICAL LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT EXTENSIBILITY → WORLD EXPANSION`

See `IMPLEMENTATION_ROADMAP.md`.

# 13. First vertical slice

Only after explicit implementation authorization:
- one compact region;
- one hunter;
- one monster species/instance;
- one weapon family;
- aerial tracking/approach;
- same-world transition to first-person combat;
- roughly 6–8 meaningful targetable parts;
- tactical movement/cover/defense;
- break and sever behavior;
- monster capability changes;
- condition-based harvest;
- one craftable upgrade;
- save/reload;
- target Android phone verification.

Do not scale into a huge bestiary/map/crafting tree before this loop is proven.

# 14. Documentation order — basic to detailed

Read:
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `GAME_EXPERIENCE_BIBLE.md`
6. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
7. `NEW_GAME_MASTER_PLAN.md`
8. `MECHANICAL_SYSTEMS_GUIDE.md`
9. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
10. `CONTENT_DATA_GUIDE.md`
11. `CODE_GUIDE.md`
12. `PERFORMANCE_BUDGETS_AND_CAPS.md`
13. `ADMIN_CREATOR_SYSTEM.md`
14. `TESTING_VERIFICATION_PLAN.md`
15. `IMPLEMENTATION_ROADMAP.md`
16. `DEVELOPMENT_REFERENCE.md`
17. `EVOLVE_ALIGNMENT.md`
18. `NEW_GAME_DISCUSSION_CHECKLIST.md`

`DOCUMENTATION_INDEX.md` explains what each file owns.

# 15. Verification discipline

Use precise states:
- DESIGNED;
- IMPLEMENTED;
- STATIC_VERIFIED;
- CONTENT_VALIDATED;
- UNIT_TESTED;
- INTEGRATION_TESTED;
- COMPILED;
- APK_BUILD_VERIFIED;
- PHONE_RUNTIME_VERIFIED;
- VISUAL_QUALITY_VERIFIED;
- PERFORMANCE_VERIFIED.

Do not claim a higher state from lower evidence.

# 16. Current state

- NEW_GAME_DESIGN_RECORDED = YES
- PLAYER_EXPERIENCE_GUIDE = YES
- VISUAL_WORLD_BEHAVIOR_DESIGNED = YES
- MECHANICAL_SYSTEMS_GUIDE = YES
- SYSTEM_ARCHITECTURE_PLANNED = YES
- CONTENT_DATA_PIPELINE_PLANNED = YES
- CODE_STRUCTURE_PLANNED = YES
- PERFORMANCE_CAPS_PLANNED = YES
- ADMIN_CREATOR_SYSTEM_PLANNED = YES
- TESTING_PLAN_RECORDED = YES
- IMPLEMENTATION_ROADMAP_RECORDED = YES
- GAMEPLAY_SOURCE_CREATED = NO
- IMPLEMENTATION_AUTHORIZED = NO
- ENGINE_SELECTED = NO
- APK_BUILD_VERIFIED = NO
- PHONE_RUNTIME_VERIFIED = NO

The old frozen WorldLife Drive archive is historical residue only and is not new-game authority.