# Unnamed Hunt RPG — Testing and Verification Plan

Status: PLANNING CONTRACT / NO TEST SUITE IMPLEMENTED
Last reconciled: 2026-09-02

## Purpose

Define how correctness, performance, save safety and Android runtime behavior will be verified as the game is built.

## 1. Verification vocabulary

Use exact gates:
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

Never promote one gate into another.

## 2. Test layers

### Domain unit tests
Verify pure gameplay rules.

Examples:
- AP/stamina costs;
- illegal action rejection;
- target exposure;
- break/sever transitions;
- capability removal;
- harvest capacity;
- inventory/crafting consumption;
- knowledge visibility;
- AI legal action filtering.

### Content validation
Verify definitions/references.

### Integration tests
Verify subsystem handoffs.

Critical chains:
- exploration → encounter;
- encounter → monster escape/world;
- encounter → kill/harvest;
- harvest → inventory;
- inventory → crafting;
- save/reload across each state.

### Replay/regression fixtures
Save representative encounter states/seeds/actions so bugs can be reproduced.

### Runtime/device tests
Verify touch, camera, rendering, lifecycle and performance.

## 3. Core invariants

Tests must protect at least:
- state cannot reference missing stable IDs;
- AP/stamina cannot spend below legal bounds;
- severed part cannot remain functionally attached;
- destroyed unique part cannot yield intact duplicate structure;
- harvest cannot exceed capacity;
- monster cannot choose attack whose capability is disabled;
- tactical node occupancy/adjacency remains valid;
- world monster and combat monster are the same runtime instance lineage;
- encounter conclusion cannot award harvest twice;
- crafting cannot create output without consuming required materials;
- UI/admin cannot mutate authoritative state outside approved command paths.

## 4. Determinism tests

For systems using seeded RNG:
- same initial state + definitions + seed + actions → same authoritative result;
- replay fixtures remain stable unless an intentional rules change updates them;
- randomness does not violate physical invariants.

## 5. Save tests

Once persistence begins:
- round-trip current save;
- missing optional fields repaired/defaulted;
- invalid references rejected/repaired according to policy;
- migration fixtures for every released schema;
- active encounter save/reload;
- escaped injured monster save/reload;
- harvested capacity save/reload;
- app background/resume.

## 6. Combat test matrix

Representative cases:
- valid/invalid range;
- valid/invalid bearing;
- cover interaction;
- target hidden/exposed;
- hit/miss;
- armor/hide interaction;
- break exactly at threshold;
- sever exactly at threshold;
- overkill/destroy;
- capability removal;
- reaction resource used once;
- monster flee condition;
- player escape;
- status application/removal.

## 7. Harvest test matrix

- intact part;
- wounded part;
- broken attached part;
- clean sever;
- destroyed part;
- burned/crushed/shattered condition where supported;
- correct/wrong tool;
- different skill/method;
- unique discrete part;
- continuous resource like hide/meat;
- repeated extraction cannot exceed remaining capacity.

## 8. AI tests

- only legal actions considered;
- anatomy-disabled attack excluded;
- flee action considered at configured condition;
- cover/player position influences scoring when designed;
- deterministic selection with fixed seed/tie rules;
- no infinite decision loop.

## 9. Performance tests

Use fixed benchmark scenes:
- empty/minimal region baseline;
- representative exploration density;
- worst supported nearby-monster density;
- first-person combat with maximum intended VFX/wounds;
- transition stress loop;
- long-session memory/thermal test;
- save/load stress case.

Record device, build SHA/version, settings and content version with results.

## 10. Android runtime checklist

- install/update;
- cold launch;
- title/menu;
- new game/load;
- landscape orientation;
- touch movement;
- aerial camera;
- region transition;
- encounter transition;
- combat actions;
- target selection;
- break/sever visuals;
- harvest;
- crafting;
- save/reload;
- suspend/resume;
- screen lock/unlock;
- audio focus/interruption;
- low-memory/reload behavior where practical;
- no ANR/crash;
- performance/thermal check.

## 11. Visual quality tests

Check on real phone:
- hunter readable from aerial camera;
- monster silhouette readable;
- tracks/navigation clues visible;
- cover/hazards understandable;
- 2D/3D layers visually cohesive;
- first-person monster anatomy targetable;
- broken/severed state matches gameplay;
- combat UI does not cover critical anatomy;
- text/touch targets usable;
- camera transition spatially coherent.

## 12. Audio tests

- telegraph sounds audible under music;
- impact materials differentiated when intended;
- no runaway overlapping voices;
- music state transitions correct;
- suspend/resume/audio focus stable;
- mute/volume settings work.

## 13. Admin/tool tests

Admin commands must test:
- authorization/dev gating;
- validation;
- invariant preservation;
- readback after mutation;
- test-save isolation;
- creator definition validation;
- deterministic replay capture/load.

## 14. Bug severity

- BLOCKER: cannot launch/play/save or corrupts core data.
- CRITICAL: severe progression/save/combat correctness failure.
- HIGH: major mechanic/visual/input failure with no reasonable workaround.
- MEDIUM: significant defect but core loop remains usable.
- LOW: polish/minor visual/text issue.

Fix highest-severity root cause first.

## 15. Release gate principle

A build intended for actual playtesting must not be described as verified unless the relevant checks actually ran.

Document:
- source commit;
- content version;
- build result;
- test results;
- APK checksum/signature where used;
- target device;
- runtime observations;
- known issues.

## 16. First vertical-slice acceptance gate

The slice is successful only if:
- player can launch on target phone;
- explore one region;
- identify/approach monster;
- transition coherently to combat;
- reposition/use cover;
- target anatomy;
- break and sever at least one defined part;
- monster behavior changes from damage;
- finish/exit encounter;
- harvest condition affects yield;
- craft one upgrade;
- save/reload preserves state;
- no blocker/critical defects remain;
- performance meets the selected target or has a documented acceptable fallback.