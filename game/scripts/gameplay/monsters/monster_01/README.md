# Monster-01 Gameplay Runtime — Mudcrest Raker

Status: ANATOMY BUILD VERIFIED / FIRST HEAD SWEEP ATTACK IMPLEMENTED / AUTOMATED ATTACK VERIFICATION PENDING
Last reconciled: 2026-09-04

Purpose: own species-specific runtime state and hostile actions for `monster_r01_m01_0001` without moving those rules into the generic combat shell.

## Current owners

### `hunt01_mudcrest_anatomy_runtime.gd`

Consumes the already-committed Hunter attack anatomy handoff after generic combat has resolved legality, resource commitment, target contact/body fallback, hit quality and local protection.

Verified anatomy laws:
- encounter `enc_r01_ef02_m01_0001` and Monster `monster_r01_m01_0001` remain stable;
- the eight player-facing target groups are preserved;
- `GENERAL_TORSO` exists only as the declared body-fallback target;
- anatomy never rerolls attack contact or hit quality;
- each committed attack supplies one stable `resolution_id`;
- replay/readback of the same resolution is idempotent and cannot reduce integrity twice;
- mismatched protection/identity/channel handoffs are rejected;
- per-target normalized integrity is tracked independently;
- no global Monster HP, defeat state or detachment state exists here.

The current integrity fixture remains `PROVISIONAL_FIRST_SLICE_ANATOMY_INTEGRITY_FIXTURE`, not final balance.

### `hunt01_mudcrest_attack_runtime.gd`

Species-owned first hostile-action driver.

First implemented attack:
`M01_HEAD_SWEEP_GORE`.

Selected contract:
- capability `CAP_M01_HEAD_ATTACK`;
- exact cost `2 AP / 14 Stamina`;
- close front/front-flank pressure;
- baseline `GORE_SWEEP` profile;
- `PIERCING + IMPACT` channels;
- authoritative telegraph before resolution;
- shared generic Hunter reaction window;
- first executable paid reaction: `POLEBLADE_BLOCK`;
- explicit free decline;
- one deterministic contact/hit-quality trace;
- stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff.

The attack runtime registers through the turn shell's external Monster-activation handshake. The shell remains authoritative for normal actor ownership, AP/Stamina commitment and activation completion. The generic reaction owner remains `game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`.

## Head/horn capability boundary

The anatomy runtime does not yet own crack/break/sever structural states. Therefore normalized HEAD/HORN_CREST integrity is not interpreted as an invented broken-horn capability transition.

The first Head Sweep slice records:
`PROVISIONAL_BASELINE_HEAD_HORNS_USABLE_NO_BREAK_STATE_RUNTIME`.

Until structural break runtime exists, the executable first attack uses the baseline horned `GORE_SWEEP` packet. The future both-horns-broken IMPACT profile remains deferred.

## Head Sweep geometry boundary

The attack consumes the existing Hunt-01 manifest rather than creating a separate arena geometry model:
- existing Monster `body_force` envelope;
- provisional 3.5 m practical body-envelope contact boundary;
- existing authored Mudcrest charge lane as stable forward-facing reference;
- front/front-flank forward-half-plane check;
- physics ray to the Hunter so full solid cover blocks the sweep.

The 3.5 m boundary is a reversible first-slice geometry fixture until final animation/reach evidence closes exact distance.

## Presentation asset

`game/assets/effects/mudcrest_head_sweep_telegraph.tscn` is a non-colliding stylized threat-band asset. It appears only while a legal committed Head Sweep waits for the Hunter reaction and disappears after hostile resolution.

It communicates the real attack at the Monster's physical world location but does not own legality/collision/damage.

## Provisional hostile-resolution fixture

`PROVISIONAL_FIRST_SLICE_MUDCREST_HEAD_SWEEP_CONTROL_FIXTURE` exists to exercise deterministic hostile contact while final Hunter defense/damage values remain open.

It does not select final balance. No engine/global RNG is used.

The selected Monster packet records 10 Stamina standard successful Poleblade Block impact drain after the normal 6-Stamina Block commitment. This first attack records that 10-Stamina profile in the pending handoff but does not apply it until final Block outcome classification exists.

## Explicitly not implemented here

- final Hunter health/damage arithmetic;
- final Block strong/partial/broken outcome;
- crack/break/sever structural state transitions;
- both-horns-broken Head Sweep profile switching;
- tail detachment;
- bleeding or other status effects;
- Horn Charge;
- Shoulder Ram;
- Foreleg Stomp;
- Tail Sweep;
- Berserk;
- deterministic multi-attack Monster behavior selection;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence.

Design authorities:
- `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`.

Generic combat owner:
`game/scripts/gameplay/combat/README.md`.

Phone/user acceptance remains deferred-batch. Static/headless/Android build verification must pass before the Head Sweep slice is promoted from implemented to verified.