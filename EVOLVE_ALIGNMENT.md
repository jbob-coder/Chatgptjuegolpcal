# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH HUNTER DEFENSE CONSEQUENCE ANDROID BUILD VERIFIED / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-04

## Operating law

The game is the objective. Documentation preserves ownership, evidence, dimensions, coordinates and continuation.

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → CONTINUE`.

Current repository/source/build evidence outranks chat memory and older handoffs.

## User validation policy

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`
`PHONE_ACCEPTANCE_DOES_NOT_BLOCK_INDEPENDENT_LAYER_DEVELOPMENT = YES`

Do not convert automated evidence into a phone/performance claim.

## Protected controls / world foundation

Stage-1 shooter-style controls remain user accepted 100% and must not regress: direct continuous analog movement from the left joystick, independent right-side look, simultaneous move/look, no forced release/center/rebase logic, approximately 115° first-person FOV, and approximately 6.25 m/s exploration speed.

Current production world remains the continuous 440×440 m Hunt-01 foundation with grounded stylized Hunter/Mudcrest/environment presentation. `probes/android_stage1/` remains evidence only.

## Verified production stack

IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED:
- continuous Hunt-01 world foundation;
- seven physical evidence clues through terminal `OBSERVATION_READY`;
- physical observation/engagement zones and explicit same-location ENGAGE;
- deterministic initiative/round/activation shell;
- authored 10-node / 14-link tactical movement graph;
- Hunter `POLEBLADE_MEASURED_CUT` through legality/contact/protection/anatomy handoff;
- Mudcrest normalized per-target anatomy integrity with stable idempotent transactions;
- generic Hunter reaction window, including `POLEBLADE_BLOCK = 1 RP + 6 Stamina` and free decline;
- species-owned `M01_HEAD_SWEEP_GORE` hostile transaction at exactly `2 AP / 14 Stamina`;
- physical body-envelope/front-front-flank/full-cover legality;
- authoritative Head Sweep telegraph and non-colliding threat-band asset;
- deterministic hostile contact/hit-quality/protection trace;
- generic Hunter defense-consequence owner consuming `PENDING_HUNTER_DAMAGE_RUNTIME` exactly once;
- no-contact zero consequence;
- Field Poleblade Block impact drain applied separately from the reaction commitment through combat-shell resource authority;
- Head Sweep Block impact drain exactly `10 Stamina`, clamped to available Stamina with no debt;
- reversible first-slice `BLOCK_STRONG / BLOCK_PARTIAL / BLOCK_BROKEN` classification;
- stable downstream `PENDING_HUNTER_HEALTH_INJURY_RUNTIME` handoff without invented final HP arithmetic.

Hunter defense owner:
`game/scripts/gameplay/combat/hunt01_hunter_defense_consequence_runtime.gd`.

Schema:
`uhr.hunt01.hunter_defense_consequence.v1`.

Verified defense implementation head:
`598abcd66ba3333808fc2fe54c873c8cb5df01f9`.

Production workflow:
`33933869555` — SUCCESS.

Workflow job:
`101217865434` — SUCCESS.

Artifact:
- ID `9959508072`;
- name `UnnamedHuntRPG-Hunt01-HunterDefense-debug`;
- size `57,342,853` bytes;
- SHA-256 `8eacdaa455574046381c7f153f20dceef59a3d4a9071e091f9c9b2b0691fa51d`;
- APK output `UnnamedHuntRPG-Hunt01-HunterDefense-debug.apk`.

Defense balance fixture:
`PROVISIONAL_FIRST_SLICE_POLEBLADE_BLOCK_OUTCOME_FIXTURE`.

Current provisional mapping:
- fully funded GRAZE/SOLID Block → `BLOCK_STRONG`;
- fully funded CLEAN Block → `BLOCK_PARTIAL`;
- insufficient impact Stamina → `BLOCK_BROKEN`.

These values are executable prototype balance, not final rules.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Final Hunter health/injury arithmetic, final Block balance, authored Hunter armor/protection values, structural crack/break/sever/detachment, statuses, remaining Mudcrest attacks/behavior, defeat/escape/reacquisition, harvest, inventory, crafting, settlement services and persistence runtime remain incomplete.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_2026-09-04.md`.

## Exact next bounded piece

`FIRST_SLICE_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTATION`

Required boundary:
1. generic owner belongs under `game/scripts/gameplay/combat/`;
2. consume one stable `PENDING_HUNTER_HEALTH_INJURY_RUNTIME` handoff idempotently;
3. keep `NO_HUNTER_HEALTH_INJURY_CONSEQUENCE` as a zero-mutation readback path;
4. use an explicitly named reversible normalized first-slice health/injury fixture because final Max Health, armor and damage formulas remain balance-open;
5. preserve Head Sweep hit quality, `PIERCING + IMPACT` channels and defense outcome in the calculation trace;
6. no authored Hunter armor profile currently exists, so any executable baseline must state that absence explicitly instead of inferring protection from the visual model;
7. clamp health at zero and never allow negative health;
8. repeated resolution/readback cannot apply injury twice;
9. emit stable wound/status-request data only where the Monster attack packet already authorizes a request; do not apply status effects in this layer;
10. if health reaches zero, record a downstream pending defeat/outcome handoff but do not implement defeat/retreat here;
11. integrate into the real Head Sweep transaction after defense consequence and before Monster activation completion;
12. add source/static, dedicated headless, regression and Android-build verification;
13. phone/performance remain deferred.

Do not bundle status runtime, structural break/sever, other Mudcrest attacks, behavior/Berserk, defeat/escape or harvest into this piece.