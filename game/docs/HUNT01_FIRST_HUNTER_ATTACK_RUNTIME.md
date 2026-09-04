# Hunt-01 First Hunter Attack Runtime

Status: IMPLEMENTATION INTEGRATION IN PROGRESS

This runtime slice introduces exactly one real Hunter attack after the existing same-location encounter, deterministic turn shell and adjacent tactical movement:

`POLEBLADE_MEASURED_CUT`

Selected prototype contract:
- 2 AP;
- 12 Stamina;
- CUTTING damage channel;
- selected Mudcrest target group;
- `ALLOW_BODY_FALLBACK`;
- hit-quality ceiling `CLEAN`;
- no independent critical-hit roll;
- one deterministic FNV-1a-derived bounded variance sample per committed attack;
- hard range/line-of-effect/resource validation before commitment;
- local target protection is recorded before the future anatomy-damage handoff.

Working-melee prototype:
- uses the existing `R01_EF02` tactical-node graph and authored Monster body-force envelope;
- Measured Cut is legal only when the current tactical node is within 3.5 m of that body-force envelope;
- on the current first-slice graph, this makes positioning toward `R01_EF02_N09` materially relevant instead of allowing attacks from any node.

Current target groups are the eight already-authoritative Mudcrest groups:
`HEAD`, `HORN_CREST`, `FORELEG_L`, `FORELEG_R`, `HINDLEG_L`, `HINDLEG_R`, `DORSAL_PLATES`, `TAIL`.

Current resolution fixture:
- provisional AttackControl base 70;
- provisional DefenseControl 55;
- explicit target-control penalties;
- one deterministic variance sample in [-6,+6];
- margin maps to `MISS / GRAZE / SOLID / CLEAN`;
- selected-part acquisition requires margin >= 6;
- legal body contact below selected-part acquisition falls back to `GENERAL_TORSO` because Measured Cut permits body fallback.

These control numbers are `PROVISIONAL_FIRST_SLICE_CONTROL_FIXTURE`, not final Hunter/Mudcrest balance.

Deliberately not in this slice:
- health arithmetic;
- tissue/structure integrity loss;
- horn/plate break;
- tail sever;
- bleeding/status application;
- Monster reaction selection;
- Monster attack runtime;
- defeat/escape outcome.

The next combat layer consumes the emitted `damage_handoff` and adds bounded anatomy-damage/integrity consequences without changing this action-economy/contact trace.

Phone/user acceptance remains deferred-batch and does not block independent development. Automated static/headless/Android-build gates remain required.
