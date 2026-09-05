# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH HUNTER HEALTH-INJURY ANDROID BUILD VERIFIED / HEAD SWEEP WOUND-CONTACT CLASSIFICATION NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-04

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/exploration:
- continuous 440×440 m Hunt-01 physical foundation;
- 6.25 m/s Hunter exploration speed;
- accepted shooter-style mobile controls retained.

Tracking/encounter:
- seven physical evidence items with disappearance/no-duplicate behavior;
- deterministic tracking reasoning;
- no Monster GPS;
- terminal `OBSERVATION_READY`;
- physical observation/engagement zones;
- explicit same-location ENGAGE into first-person combat staging.

Combat:
- deterministic initiative/round/activation shell;
- Hunter 4 AP / 1 RP / normalized Stamina 100 first-slice profile;
- Monster 4 AP internal activation budget;
- adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT`;
- Mudcrest per-target normalized anatomy integrity;
- shared reaction window with `POLEBLADE_BLOCK = 1 RP + 6 Stamina` and free decline;
- first real Monster attack `M01_HEAD_SWEEP_GORE` at `2 AP / 14 Stamina`;
- physical attack legality, telegraph and deterministic hostile contact;
- generic Hunter defense consequence runtime;
- separate Head Sweep Block impact drain `10 Stamina`;
- provisional Strong/Partial/Broken Block classification;
- generic Hunter health/injury runtime;
- provisional normalized Health 100, GRAZE/SOLID/CLEAN base loads 4/8/12 and defense residuals 25/60/90/100%;
- health is replay-idempotent and clamps at zero;
- visual armor does not become hidden gameplay armor;
- zero Health emits pending defeat/outcome only;
- status application remains deferred until Head Sweep wound/contact qualification exists.

## Current verified baseline

Health implementation:
`057928b30ddef3eac83a316a62c48b5e3fa22632`.

Same-layer QA/documentation repairs:
`da2ee5698a7b7c640b8d848fc0cde3d9f877921e`, `06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.

Verified source head:
`06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.

Production workflow `33934988066`: SUCCESS.
Job `101221044355`: SUCCESS.

Passed:
- manifest / production projection;
- all current combat source preflights including Hunter health/injury;
- Godot 4.7.2 parse/import;
- AppShell and Region smoke;
- production integration;
- combat shell + tactical movement;
- reaction regression;
- Head Sweep regression;
- Hunter defense consequence regression;
- dedicated Hunter health/injury headless;
- Mudcrest anatomy headless;
- Hunter attack headless;
- Android debug APK export;
- artifact upload.

Artifact `9959871663`:
`UnnamedHuntRPG-Hunt01-HunterHealth-debug`, 57,365,013 bytes, SHA-256 `ebb15c4b124e9b046e4194951414bc01cdcd5c28a8136d7ebb2f8b694fcf1f66`.

Verification labels:
- stack through Hunter health/injury: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_HEALTH_INJURY_RUNTIME_2026-09-04.md`.

## Explicitly incomplete

- final Hunter Max Health/damage/armor balance;
- Head Sweep horn-penetration / impact-dominance wound classification;
- valid status application requests and status application/timing;
- structural crack/break/sever/detached parts;
- remaining four normal Mudcrest attacks and deterministic behavior selection;
- Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence runtime;
- final phone/performance validation.

## Exact next action

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_RUNTIME_IMPLEMENTATION`.

Species/content owner under `game/scripts/gameplay/monsters/monster_01/` must classify the already-resolved Head Sweep wound/contact once, using the Monster attack packet's exact Bleeding and Off-Balance prerequisites. It must not reroll contact or mutate Health. Because current `PIERCING + IMPACT` data does not prove horn penetration or impact dominance by itself, any executable first-slice mapping must be explicitly provisional/reversible. Emit valid status requests only after prerequisites are established; status scheduling/application remains downstream.