# Hunt-01 Mudcrest Head Sweep Attack Runtime

Status: IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-04

## Bounded purpose

Implement the first real Mudcrest Raker hostile attack without fabricating final Hunter HP arithmetic or broad Monster AI.

Species owner:
`game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`.

Stable schema:
`uhr.hunt01.mudcrest_attack.v1`.

Attack:
`M01_HEAD_SWEEP_GORE`.

Exact selected commitment:
`2 AP / 14 Stamina`.

## Runtime sequence

1. the species runtime registers one Monster activation driver through the verified combat shell;
2. the real Monster normal activation remains authoritative;
3. the runtime validates baseline head capability, working-melee relation, front/front-flank bearing, sweep line/cover and Monster resources;
4. it commits exactly 2 AP / 14 Stamina once;
5. it emits the authoritative head-sweep telegraph and instantiates the non-colliding `mudcrest_head_sweep_telegraph.tscn` threat-band asset in the same physical world;
6. it opens the verified generic Hunter reaction window;
7. the first executable paid reaction is Field Poleblade Block at the already-verified 1 RP / 6 Stamina commitment; explicit decline remains free;
8. after the reaction decision, one deterministic FNV-1a bounded sample resolves provisional AttackControl/DefenseControl into contact and MISS/GRAZE/SOLID/CLEAN hit quality;
9. contact routes through either `FIELD_POLEBLADE_DIRECTIONAL_GUARD` or `HUNTER_BODY_PROTECTION_PENDING_RUNTIME`;
10. the runtime emits a stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff and closes the reaction window;
11. the telegraph visual disappears and the Monster activation completes through shell authority.

## Geometry / capability boundary

The selected packet requires close front/front-flank contact.

This first executable slice reuses the existing 3.5 m practical body-envelope working-melee fixture already used by the first Hunter contact prototype. It is explicitly provisional, not final animation reach.

Front/front-flank classification uses the forward half-plane of the already-authored Mudcrest charge lane from the Hunt-01 manifest. This is a stable geometry reference, not new damage balance.

The current anatomy runtime has normalized integrity but no authoritative structural break state. Therefore this attack does not infer broken horns from integrity values. The first slice records:
`PROVISIONAL_BASELINE_HEAD_HORNS_USABLE_NO_BREAK_STATE_RUNTIME`.

Until structural break runtime exists, the executable first attack uses the baseline `GORE_SWEEP` profile with `PIERCING + IMPACT` channels.

## Provisional hostile-resolution fixture

`PROVISIONAL_FIRST_SLICE_MUDCREST_HEAD_SWEEP_CONTROL_FIXTURE` exists only to make the attack transaction executable and deterministic while final character/defense numbers remain design-open.

It includes:
- provisional Mudcrest AttackControl;
- provisional Hunter DefenseControl;
- a provisional Block DefenseControl contribution;
- one bounded deterministic variance sample.

This does not select final balance.

## Block boundary

The Monster packet records a standard successful Poleblade Block impact drain of 10 Stamina after the normal 6-Stamina Block commitment.

This slice records that selected 10-Stamina profile in the pending Hunter-damage handoff but does not apply it yet because final `BLOCK_STRONG / BLOCK_PARTIAL / BLOCK_BROKEN` outcome classification is still open.

`guard_impact_drain_status = PENDING_FINAL_BLOCK_OUTCOME_RUNTIME`.

## Explicitly not implemented here

- final Hunter HP/damage arithmetic;
- final Block strong/partial/broken classification;
- forced movement/stagger/status consequences;
- horn/head structural break runtime;
- Horn Charge;
- Shoulder Ram;
- Foreleg Stomp;
- Tail Sweep;
- Berserk;
- deterministic multi-attack Monster behavior selection;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence.

## Verification target

Required gate:
`HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME_VERIFIED`.

Required automated chain:
- source/static preflight;
- Godot 4.7.2 import/parse;
- existing production integration regressions;
- existing combat/reaction/anatomy/Hunter-attack regressions;
- dedicated Head Sweep headless test;
- Android debug export and artifact upload.

Phone/user acceptance remains `DEFERRED_BATCH` and performance remains separately unverified.
