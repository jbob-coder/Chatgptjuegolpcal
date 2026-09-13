# Hunt-01 Mudcrest Tail Sweep Attack Runtime

Status: IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-13

## Purpose

Add the first intact-tail rear/flank hostile action to the existing Monster-01 attack owner without introducing another scheduler, another Monster activation driver, structural sever thresholds or a new status system.

Runtime owner:
`game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`.

Attack:
`M01_TAIL_SWEEP`.

Capability:
`CAP_M01_TAIL_SWEEP`.

## Authored attack packet

The selected Monster-01 content contract supplies:
- `3 AP`;
- `18 Stamina`;
- pure `IMPACT`;
- successful Poleblade Block impact drain `14 Stamina` after the normal Block commitment;
- rear/flank role;
- hindquarter pivot/arc-clearance requirement;
- `TAIL_DISTAL` attached capability requirement;
- SOLID contact may request Off-Balance;
- CLEAN contact may request Staggered.

This runtime does not change those content values.

## Reversible geometry/control fixture

Exact animation reach and final control balance are not yet production-tuned.

The first executable slice uses:
- existing Hunt-01 `body_force` envelope;
- existing authored pivot center/radius;
- existing authored charge lane as stable Mudcrest forward reference;
- `6.0 m` maximum distance outside the body-force envelope, derived from the real authored N10 flank node;
- provisional rear/flank requirement `forward_dot <= 0.25`;
- four real physics pivot-clearance probes across the authored `8 m` pivot radius;
- real physics line-of-effect to the Hunter;
- one deterministic FNV-1a bounded variance sample, shared with the established Monster attack owner.

Fixture:
`PROVISIONAL_FIRST_SLICE_MUDCREST_TAIL_SWEEP_CONTROL_FIXTURE`.

These range/bearing/control values are replaceable tuning fixtures, not final balance.

## Structural boundary

The current anatomy runtime has no crack/break/sever threshold owner.

Tail Sweep therefore reads the existing `TAIL` target state only to prove the anatomy owner exists and records:

`PROVISIONAL_BASELINE_TAIL_DISTAL_ATTACHED_NO_SEVER_STATE_RUNTIME`.

Normalized integrity is not interpreted as a sever threshold. This slice does not detach, break or mutate the tail.

When a future structural owner establishes `TAIL_DISTAL` severed, the authored capability contract requires Tail Sweep to become illegal immediately. That transition is not fabricated here.

## Reaction and consequence flow

The existing Monster attack driver remains the only external Monster activation driver.

At a legal rear/flank relation:

`Monster activation → Tail Sweep legality → 3 AP / 18 Stamina commit → telegraph → shared reaction window → Block/decline → one seeded contact resolution → generic defense → generic Hunter health → Mudcrest wound/contact qualification → reaction close → encounter outcome boundary → Monster activation complete`.

The first executable paid reaction remains `POLEBLADE_BLOCK`; explicit decline remains free through the shared reaction owner.

Tail Sweep records a `14 Stamina` successful Block impact drain and routes it through the existing generic Hunter defense consequence owner.

## Status boundary

Tail Sweep is pure Impact.

First-slice content qualification:
- MISS/no injury → no status request;
- funded `BLOCK_STRONG` → no Off-Balance request;
- SOLID Impact with resolved injury and no Strong Block → one valid `status_off_balance` request to the existing generic status application owner;
- CLEAN Impact records `TAIL_SWEEP_CLEAN_IMPACT_STAGGERED_PENDING`.

The generic Staggered owner does not exist yet. CLEAN Tail Sweep therefore does not fabricate Staggered and does not convert Staggered into Off-Balance.

Tail Sweep has no Bleeding path.

## Presentation asset

`game/assets/effects/mudcrest_tail_sweep_telegraph.tscn`

The asset is a non-colliding threat band. It communicates the committed rear/flank sweep while the shared reaction window is open. It owns no legality, hit detection, damage or status state.

## Compatibility extension

`game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd` now accepts both current Monster attack IDs:
- `M01_HEAD_SWEEP_GORE`;
- `M01_TAIL_SWEEP`.

No health/damage constants were changed. Tail Sweep reuses the already documented provisional Health fixture.

`game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_wound_contact_runtime.gd` remains the one Monster-01 content qualifier and now has a Tail Sweep consequence path in addition to the established Head Sweep path.

## Verification plan

Static gate:
`HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_SOURCE_STATIC_VERIFIED`.

Dedicated headless gate:
`HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_VERIFIED`.

The production test uses the real Region-01 scene, completes tracking/ENGAGE, follows authored tactical links `N01 → N02 → N05 → N08 → N10`, verifies the real rear/flank geometry, Block drain, deterministic seeded outcomes, Off-Balance application, CLEAN/Staggered pending boundary, telegraph lifecycle, anatomy isolation and Head Sweep regression preservation through the full existing pipeline.

Android build verification and artifact identity are pending the production workflow.

## Explicit exclusions

This slice does not claim:
- final Tail Sweep reach/control balance;
- structural crack/break/sever thresholds;
- tail detachment;
- Staggered runtime;
- forced displacement/knockdown;
- Bleeding periodic HP magnitude;
- Monster escape/death;
- harvest/inventory/crafting;
- phone acceptance;
- sustained Android performance.
