# Monster-01 Gameplay Runtime — Mudcrest Raker

Status: ANATOMY + HEAD SWEEP BUILD VERIFIED / TAIL SWEEP IMPLEMENTED / AUTOMATED TAIL VERIFICATION PENDING
Last reconciled: 2026-09-13

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

Species-owned hostile-action driver. It is still the single external Monster activation driver registered with the generic combat shell.

Implemented attacks:

`M01_HEAD_SWEEP_GORE`
- capability `CAP_M01_HEAD_ATTACK`;
- `2 AP / 14 Stamina`;
- close front/front-flank pressure;
- `GORE_SWEEP`;
- `PIERCING + IMPACT`;
- successful Poleblade Block impact profile `10 Stamina`.

`M01_TAIL_SWEEP`
- capability `CAP_M01_TAIL_SWEEP`;
- `3 AP / 18 Stamina`;
- rear/flank defensive arc;
- `TAIL_SWEEP_IMPACT`;
- pure `IMPACT`;
- successful Poleblade Block impact profile `14 Stamina`;
- intact `TAIL_DISTAL` required by the authored capability contract.

The attack runtime registers through the turn shell's external Monster-activation handshake. The shell remains authoritative for normal actor ownership, AP/Stamina commitment and activation completion. The generic reaction owner remains `game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`.

Deterministic normal-action priority in the current slice is:
1. legal rear/flank Tail Sweep;
2. established Head Sweep fallback;
3. wait/no-attack when neither implemented attack is legal.

This extends the existing owner; it does not create another scheduler or Monster activation driver.

## Head/horn capability boundary

The anatomy runtime does not yet own crack/break/sever structural states. Therefore normalized HEAD/HORN_CREST integrity is not interpreted as an invented broken-horn capability transition.

The Head Sweep slice records:
`PROVISIONAL_BASELINE_HEAD_HORNS_USABLE_NO_BREAK_STATE_RUNTIME`.

Until structural break runtime exists, the executable Head Sweep uses the baseline horned `GORE_SWEEP` packet. The future both-horns-broken IMPACT profile remains deferred.

## Tail capability boundary

The anatomy contract defines `TAIL_BASE` and `TAIL_DISTAL`, but numeric sever thresholds remain open. Current production anatomy exposes the `TAIL` target group and no structural detachment owner.

The Tail Sweep slice therefore records:
`PROVISIONAL_BASELINE_TAIL_DISTAL_ATTACHED_NO_SEVER_STATE_RUNTIME`.

The current `TAIL` integrity value is trace/readback data only. It is not converted into a sever state.

## Geometry boundaries

Head Sweep consumes:
- existing Monster `body_force` envelope;
- provisional `3.5 m` practical body-envelope contact boundary;
- existing authored charge lane as stable forward-facing reference;
- front/front-flank forward-half-plane check;
- physics line-of-effect.

Tail Sweep consumes:
- the same authoritative body-force envelope;
- authored pivot center/radius;
- authored forward reference;
- reversible `6.0 m` body-envelope reach derived from real tactical node `R01_EF02_N10`;
- reversible rear/flank threshold `forward_dot <= 0.25`;
- four real physics pivot-clearance probes across the authored `8 m` pivot radius;
- physics line-of-effect/arc blocker validation.

The Tail Sweep geometry values are first-slice fixtures pending final animation/reach evidence.

## Presentation assets

`game/assets/effects/mudcrest_head_sweep_telegraph.tscn`
and
`game/assets/effects/mudcrest_tail_sweep_telegraph.tscn`

Both are non-colliding presentation assets. They appear only during the corresponding committed attack's reaction window and own no legality, collision or damage.

## Wound/contact owner

`hunt01_mudcrest_wound_contact_runtime.gd` remains the Monster-01 species/content qualifier.

Head Sweep retains its established horn-penetration/Bleeding and impact-dominance rules.

Tail Sweep adds:
- SOLID pure Impact with resolved injury and no Strong Block → one Off-Balance request;
- CLEAN pure Impact → Staggered is explicitly pending because no generic Staggered owner exists;
- no Tail Sweep Bleeding path.

## Provisional hostile-resolution fixtures

Head Sweep:
`PROVISIONAL_FIRST_SLICE_MUDCREST_HEAD_SWEEP_CONTROL_FIXTURE`.

Tail Sweep:
`PROVISIONAL_FIRST_SLICE_MUDCREST_TAIL_SWEEP_CONTROL_FIXTURE`.

Both use one deterministic FNV-1a bounded variance sample. No engine/global RNG is used.

## Explicitly not implemented here

- final Hunter health/damage/armor balance;
- structural crack/break/sever thresholds;
- both-horns-broken Head Sweep profile switching;
- tail detachment;
- Staggered runtime;
- Tail Sweep forced displacement/knockdown;
- Horn Charge;
- Shoulder Ram;
- Foreleg Stomp;
- Berserk;
- full deterministic multi-attack behavior tree;
- Monster defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence.

Design authorities:
- `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`;
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`.

Generic combat owner:
`game/scripts/gameplay/combat/README.md`.

Tail Sweep implementation note:
`game/docs/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME.md`.

Phone/user acceptance remains deferred-batch. Static/headless/Android build verification must pass before the Tail Sweep slice is promoted from implemented to verified.
