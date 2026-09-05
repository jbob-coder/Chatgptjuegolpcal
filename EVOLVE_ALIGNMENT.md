# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH HUNTER HEALTH-INJURY ANDROID BUILD VERIFIED / PHONE VALIDATION BATCHED
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

Current production world remains the continuous 440×440 m Hunt-01 foundation. `probes/android_stage1/` remains evidence only.

## Verified production stack

IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED:
- continuous Hunt-01 world foundation;
- seven physical tracking clues through terminal `OBSERVATION_READY`;
- physical observation/engagement zones and explicit same-location ENGAGE;
- deterministic initiative/round/activation shell;
- authored 10-node / 14-link tactical movement graph;
- Hunter `POLEBLADE_MEASURED_CUT` through legality/contact/protection/anatomy handoff;
- Mudcrest normalized per-target anatomy integrity with stable idempotent transactions;
- generic Hunter reaction window, including `POLEBLADE_BLOCK = 1 RP + 6 Stamina` and free decline;
- species-owned `M01_HEAD_SWEEP_GORE` hostile transaction at exactly `2 AP / 14 Stamina`;
- physical body-envelope/front-front-flank/full-cover legality;
- authoritative Head Sweep telegraph;
- deterministic hostile contact/hit-quality/protection trace;
- generic Hunter defense-consequence owner, including separate 10-Stamina Head Sweep guard-impact drain;
- reversible `BLOCK_STRONG / BLOCK_PARTIAL / BLOCK_BROKEN` first-slice fixture;
- generic Hunter health/injury owner consuming residual hostile force exactly once;
- normalized Health 100 first-slice fixture with GRAZE/SOLID/CLEAN base loads 4/8/12;
- reversible defense residual percentages Strong 25%, Partial 60%, Broken 90%, No Guard 100%;
- health clamp at zero and idempotent injury transactions;
- explicit no-authored-gameplay-armor baseline instead of inferring protection from art;
- zero Health emits only `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME`;
- status possibilities are candidate-only until species/content-owned wound/contact qualification exists.

Hunter health owner:
`game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd`.

Schema:
`uhr.hunt01.hunter_health_injury.v1`.

Fixture:
`PROVISIONAL_FIRST_SLICE_HUNTER_HEALTH_INJURY_FIXTURE`.

Health implementation commit:
`057928b30ddef3eac83a316a62c48b5e3fa22632`.

QA/documentation compatibility repairs:
- `da2ee5698a7b7c640b8d848fc0cde3d9f877921e`;
- `06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.

Verified production head:
`06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.

Production workflow:
`33934988066` — SUCCESS.

Workflow job:
`101221044355` — SUCCESS.

Artifact:
- ID `9959871663`;
- name `UnnamedHuntRPG-Hunt01-HunterHealth-debug`;
- size `57,365,013` bytes;
- SHA-256 `ebb15c4b124e9b046e4194951414bc01cdcd5c28a8136d7ebb2f8b694fcf1f66`;
- APK output `UnnamedHuntRPG-Hunt01-HunterHealth-debug.apk`.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

The numeric Health/load/residual values above are executable prototype balance, not final Max Health/damage/armor rules. The current Hunter has no authored gameplay armor profile. Status application, forced movement, structural crack/break/sever/detachment, remaining Mudcrest attacks/behavior, defeat/escape/reacquisition, harvest, inventory, crafting, settlement services and persistence runtime remain incomplete.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_HEALTH_INJURY_RUNTIME_2026-09-04.md`.

## Exact next bounded piece

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_RUNTIME_IMPLEMENTATION`

Required boundary:
1. species/content ownership belongs under `game/scripts/gameplay/monsters/monster_01/` because Monster attack content decides whether a successful consequence qualifies for a status request;
2. consume the already-resolved Head Sweep contact + defense + health/injury result without re-rolling attack/contact or re-applying Health;
3. produce one stable idempotent wound/contact classification keyed to the hostile resolution ID;
4. use `COMBAT_ATTACK_PACKET.md` as authority: Bleeding requires a qualifying horn-penetration wound; Off-Balance requires qualifying CLEAN impact-dominant contact;
5. the current `PIERCING + IMPACT` packet alone is insufficient to claim penetration or impact dominance, so any first executable classifier mapping must be explicitly named and reversible rather than silently assumed final;
6. emit an explicit application-request record only when the classifier establishes all prerequisites; otherwise emit an explicit no-request/blocked-prerequisite result;
7. do not mutate/apply/status-stack/tick/expire effects in this layer—the generic status owner consumes valid requests later;
8. do not change Health, Stamina, AP/RP, anatomy, Monster capability or physical coordinates;
9. add source/static, dedicated headless, regression and Android-build verification;
10. phone/performance remain deferred.

Do not bundle the status scheduler, structural break/sever, other Mudcrest attacks, defeat/escape or harvest into this piece.