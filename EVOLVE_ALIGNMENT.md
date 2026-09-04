# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH HUNTER REACTION WINDOW BUILD VERIFIED / PHONE VALIDATION BATCHED
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

### World / tracking / encounter

IMPLEMENTED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED:
- continuous Hunt-01 world foundation;
- seven physical evidence clues;
- deterministic evidence history/freshness/confidence/activity interpretation;
- no Monster GPS and audio-optional tracking;
- terminal `OBSERVATION_READY`;
- physical observation/engagement zones;
- explicit same-location ENGAGE into first-person combat staging.

### Combat foundation

IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED:
- deterministic initiative/round/activation shell;
- authored adjacent tactical-node movement on the 10-node / 14-link Meadow graph;
- Hunter `POLEBLADE_MEASURED_CUT` through hard legality, committed resources, deterministic contact/hit quality, local protection routing and species anatomy handoff;
- Mudcrest normalized per-target anatomy integrity runtime using an explicitly provisional first-slice arithmetic fixture;
- stable anatomy transaction identity and idempotent replay/readback.

### Hunter reaction window

IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Generic owner:
`game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`.

Stable schema:
`uhr.hunt01.reaction_window.v1`.

First implemented paid reaction:
`POLEBLADE_BLOCK` = `1 RP + 6 Stamina`.

Verified invariants:
- hostile source actor remains the current normal actor;
- one normal reaction decision maximum per window;
- stable encounter/round/source/action/sequence identity;
- overlapping/recursive windows reject;
- repeated UI/readback cannot double-spend RP/Stamina;
- explicit free decline and deterministic closed-window readback;
- reaction commitment does not fabricate Block outcome or Hunter damage.

Final verified source head for this layer:
`be389c393f993c0cbab60c0e15688f827951f8f8`.

Production workflow:
`33884922855` — SUCCESS.

The same run passed manifest/projection, all combat source preflights, Godot 4.7.2 import/parse, AppShell/Region smoke, production integration, combat/tactical movement, reaction, anatomy, Hunter-attack headless gates, Android export and artifact upload.

Initial reaction production run `33854902520` exposed an existing test synchronization race at EV07. The final repair added physics/process settling after evidence collection before derived encounter-state assertions. No gameplay source or authored coordinates/radii changed.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME_2026-09-04.md`.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Structural break/sever, detached parts, status effects, Monster normal attacks/behavior, Hunter incoming-damage runtime, defeat/escape, harvesting, inventory, crafting, settlement services and persistence remain incomplete.

## Exact next bounded piece

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`

Owner/dependencies:
1. species attack owner belongs under `game/scripts/gameplay/monsters/monster_01/`;
2. attack ID is `M01_HEAD_SWEEP_GORE` from `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
3. commitment is exactly `2 AP / 14 Stamina`;
4. use the real Monster normal activation through the verified shell external-driver handshake;
5. validate head capability, close front/front-flank relation, sweep clearance and no full solid cover before commitment;
6. emit one authoritative telegraph and open the verified shared reaction window;
7. first executable reaction path may use `POLEBLADE_BLOCK`; explicit decline must remain legal;
8. use the generic combat-resolution contract for one deterministic hostile contact/hit-quality/protection trace;
9. final Hunter health/damage numbers remain open, so emit a stable committed `PENDING_HUNTER_DAMAGE_RUNTIME` handoff rather than fabricate final HP arithmetic;
10. complete the Monster activation deterministically after the hostile resolution handoff is committed;
11. add source/static, headless and Android-build verification; phone remains deferred;
12. do not bundle Horn Charge, Shoulder Ram, Stomp, Tail Sweep, Berserk, structural break/sever, defeat/escape or harvest into this piece.