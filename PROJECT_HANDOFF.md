# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH HUNTER REACTION WINDOW BUILD VERIFIED / FIRST MUDCREST ATTACK NEXT / PHONE QA DEFERRED-BATCH
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
- accepted shooter-style mobile control law retained;
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
- Hunter 4 AP / 1 RP / normalized Stamina 100;
- Monster 4 AP internal activation budget / normalized reference Stamina 100;
- adjacent tactical-node movement on the authored Meadow graph;
- Hunter `POLEBLADE_MEASURED_CUT` through deterministic contact/hit quality/local protection;
- species-owned Mudcrest per-target normalized anatomy integrity;
- shared Hunter reaction-window runtime with stable transaction identity and out-of-turn RP/Stamina commitment.

First implemented reaction:
`POLEBLADE_BLOCK` = `1 RP + 6 Stamina`.

The reaction runtime preserves the hostile Monster as current normal actor, enforces one reaction decision per window, rejects recursive/overlapping windows, provides explicit decline/close semantics and prevents duplicate resource spend.

## Current verified baseline

Verified reaction-layer source head:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Reaction implementation commit:
`f1e5e3ba80ae7e42943b6b82436426497bfd0c34`.

Integration synchronization repair:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Production workflow:
`33884922855` — SUCCESS.

Passed:
- manifest / production projection;
- combat/reaction/Hunter-attack/anatomy source preflights;
- Godot 4.7.2 parse/import;
- AppShell smoke;
- Region-01 smoke;
- Hunt-01 production integration headless;
- combat turn shell + tactical movement headless;
- Hunter reaction window headless;
- Mudcrest anatomy integrity headless;
- first Hunter attack + anatomy integration headless;
- Android debug APK export;
- artifact upload.

The initial reaction run `33854902520` failed only because the existing integration helper returned immediately after EV07 evidence collection before the observation Area3D state consumer necessarily settled. The final repair adds physics/process settling to the test helper. No gameplay coordinates, zone radii, control behavior or encounter rules changed.

Verification labels:
- world/tracking/encounter/combat/Hunter attack/Mudcrest anatomy/Hunter reaction: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- post-tracking phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME_2026-09-04.md`.

## Explicitly incomplete

- final Hunter incoming-damage / HP arithmetic;
- structural crack/break/sever and detached parts;
- status application/timing;
- Monster normal attack packet beyond the upcoming first attack;
- deterministic Monster behavior selection;
- Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence;
- final phone/performance validation.

## Deferred phone validation

Batch later:
- observation/ENGAGE and same-location first-person transition;
- tactical movement UX/readability;
- Measured Cut/anatomy feedback;
- reaction-window UX;
- future Monster attack/defense feedback;
- final dimensional route validation where applicable;
- sustained performance/thermal behavior.

Stage-1 shooter-style controls remain previously user accepted 100%; that does not automatically phone-verify later production layers.

## Exact next action

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`

Species owner:
`game/scripts/gameplay/monsters/monster_01/`.

Required invariants:
- attack ID `M01_HEAD_SWEEP_GORE`;
- exact commitment `2 AP / 14 Stamina`;
- register one real Monster activation driver through the verified shell handshake;
- preserve one damaging attack maximum per Monster activation;
- validate head capability, close front/front-flank relation, sweep clearance and full-cover legality before commitment;
- produce an authoritative head-sweep telegraph;
- open the shared reaction window before hostile resolution;
- allow the currently implemented normal Poleblade Block path and explicit decline;
- deterministic replay/readback; no hidden reroll or double resource spend;
- use generic combat resolution for one contact/hit-quality/protection trace;
- emit a stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff because final Hunter health/damage numbers remain open;
- complete the Monster activation after that committed handoff;
- static/headless/Android-build verification required;
- phone remains deferred.

Do not add Horn Charge, Shoulder Ram, Stomp, Tail Sweep, Berserk, structural break/sever, defeat/escape or harvest in this bounded piece.