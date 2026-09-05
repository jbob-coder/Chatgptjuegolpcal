# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH FIRST MUDCREST HEAD SWEEP ANDROID BUILD VERIFIED / HUNTER DEFENSE CONSEQUENCE NEXT / PHONE QA DEFERRED-BATCH
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
- accepted shooter-style mobile controls retained;
- grounded stylized Hunter/Mudcrest/environment presentation.

Tracking/encounter:
- seven physical evidence items with disappearance/no-duplicate behavior;
- deterministic history/freshness/confidence/activity reasoning;
- no Monster GPS; audio optional;
- terminal `OBSERVATION_READY`;
- physical observation/engagement zones;
- explicit same-location ENGAGE into first-person combat staging.

Combat:
- deterministic initiative/round/activation shell;
- Hunter 4 AP / 1 RP / normalized Stamina 100 first-slice profile;
- Monster 4 AP internal activation budget / normalized reference Stamina 100;
- adjacent tactical-node movement on the authored Meadow graph;
- Hunter `POLEBLADE_MEASURED_CUT` through deterministic contact/hit quality/local protection;
- Mudcrest per-target normalized anatomy integrity;
- shared reaction window with `POLEBLADE_BLOCK = 1 RP + 6 Stamina` and free decline;
- first real Monster attack `M01_HEAD_SWEEP_GORE` at `2 AP / 14 Stamina`;
- physical attack legality, authoritative telegraph, shared reaction consumption and deterministic hostile contact trace;
- stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff.

Final Hunter health/damage is intentionally not fabricated yet.

## Current verified baseline

Verified source head:
`f7fe9d347921289ca104824e61fd82a2efc73fed`.

Head Sweep implementation:
`238f6bba98cb6dd7deb420bfe5196e08a3542279`.

QA-only repairs:
- `6cc493f3a9ce00b84279ac00e1985fc08276c4e0` — reaction documentation boundary gate;
- `0d843079bf6343cbb0b35d12264ce695ae5b5c5c` — anatomy structural-boundary gate;
- `bd732960051c9850dbec7beeaf856e73b478f9ad` — dedicated Head Sweep test physics synchronization;
- `f7fe9d347921289ca104824e61fd82a2efc73fed` — reaction regression isolates its mock from the production deferred hostile driver.

Production workflow `33932945947`: SUCCESS.
Job `101215138444`: SUCCESS.

Passed:
- manifest / production projection;
- combat/reaction/Head-Sweep/Hunter-attack/anatomy source preflights;
- Godot 4.7.2 parse/import;
- AppShell and Region smoke;
- production integration;
- combat shell + tactical movement;
- reaction regression;
- dedicated Mudcrest Head Sweep headless;
- Mudcrest anatomy headless;
- Hunter attack headless;
- Android debug APK export;
- artifact upload.

Artifact `9959201882`:
`UnnamedHuntRPG-Hunt01-MudcrestHeadSweep-debug`, 57,322,699 bytes, SHA-256 `b56070a42a9abd5ef534443750c441385b1f5f8327a48f7ea1080e490abe0ca8`.

Verification labels:
- current world/tracking/encounter/combat/Hunter attack/anatomy/reaction/Head Sweep: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_2026-09-04.md`.

## Explicitly incomplete

- Hunter defense consequence after hostile contact;
- final Hunter incoming HP/injury arithmetic;
- structural crack/break/sever/detached parts;
- status application/timing;
- remaining four normal Mudcrest attacks and deterministic behavior selection;
- Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence runtime;
- final phone/performance validation.

## Exact next action

`FIRST_SLICE_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_IMPLEMENTATION`.

Generic owner:
`game/scripts/gameplay/combat/`.

The slice must consume the Head Sweep's stable pending Hunter-damage handoff, keep replay idempotent, resolve no-contact cleanly, resolve the first executable Poleblade Block consequence, and apply Head Sweep's selected 10-Stamina guard-impact drain through combat-shell resource authority separately from the 6-Stamina reaction commitment. Any unresolved final Block balance must be visibly marked as a reversible first-slice fixture.

It must not invent final Hunter Max Health/damage/wound values. Contact that survives defense must leave a stable downstream pending health/injury handoff. Static/headless/Android-build verification is required; phone remains deferred.