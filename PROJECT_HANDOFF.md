# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH HUNTER DEFENSE CONSEQUENCE ANDROID BUILD VERIFIED / HUNTER HEALTH-INJURY NEXT / PHONE QA DEFERRED-BATCH
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
- generic Hunter defense consequence runtime;
- Head Sweep Block impact drain `10 Stamina` applied separately from the 6-Stamina reaction commitment;
- impact drain clamps to available Stamina and is replay-idempotent;
- provisional `BLOCK_STRONG / BLOCK_PARTIAL / BLOCK_BROKEN` outcome fixture;
- stable `PENDING_HUNTER_HEALTH_INJURY_RUNTIME` handoff.

Final Hunter health/damage is intentionally not fabricated as final balance.

## Current verified baseline

Verified source head:
`598abcd66ba3333808fc2fe54c873c8cb5df01f9`.

Production workflow `33933869555`: SUCCESS.
Job `101217865434`: SUCCESS.

Passed:
- manifest / production projection;
- all current combat source preflights including Hunter defense consequence;
- Godot 4.7.2 parse/import;
- AppShell and Region smoke;
- production integration;
- combat shell + tactical movement;
- reaction regression;
- Head Sweep regression;
- dedicated Hunter defense-consequence headless;
- Mudcrest anatomy headless;
- Hunter attack headless;
- Android debug APK export;
- artifact upload.

Artifact `9959508072`:
`UnnamedHuntRPG-Hunt01-HunterDefense-debug`, 57,342,853 bytes, SHA-256 `8eacdaa455574046381c7f153f20dceef59a3d4a9071e091f9c9b2b0691fa51d`.

Verification labels:
- current stack through defense consequence: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_2026-09-04.md`.

## Explicitly incomplete

- Hunter health/injury mutation after residual hostile contact;
- final Hunter Max Health/damage/armor balance;
- structural crack/break/sever/detached parts;
- status application/timing;
- remaining four normal Mudcrest attacks and deterministic behavior selection;
- Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence runtime;
- final phone/performance validation.

## Exact next action

`FIRST_SLICE_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTATION`.

Generic owner:
`game/scripts/gameplay/combat/`.

Consume the stable `PENDING_HUNTER_HEALTH_INJURY_RUNTIME` transaction exactly once. Because `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md` and Combat Resolution still mark Max Health, armor values and final damage formulas as balance-open, use a clearly named reversible normalized first-slice fixture rather than claiming final balance. Preserve Head Sweep hit quality/channels/defense result in trace, clamp health at zero, expose stable injury/status requests, and leave actual status application plus defeat/outcome to downstream owners. Static/headless/Android-build verification is required; phone remains deferred.