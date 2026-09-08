# Hunt-01 Mudcrest Tail Sweep Attack Runtime

Status: BOUNDED IMPLEMENTATION CANDIDATE — VERIFY BEFORE PROMOTION
Date: 2026-09-08
Owner: `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`
Schema: `uhr.hunt01.mudcrest_attack.v1`
Attack: `M01_TAIL_SWEEP`
Capability: `CAP_M01_TAIL_SWEEP`

## Scope

This slice adds the selected intact-tail Mudcrest rear/flank attack to the existing Monster-01 attack owner. It does not add a second activation scheduler or AI chooser.

Selected authoritative values already recorded in `COMBAT_ATTACK_PACKET.md`:
- `3 AP`;
- `18 Stamina`;
- pure `IMPACT` contact channel;
- standard successful Poleblade Block impact drain `14 Stamina` after the existing `6 Stamina` Block commitment;
- rear/flank role;
- `TAIL_DISTAL` attached requirement;
- hindquarter pivot and sweep-arc clearance requirements;
- Off-Balance may be requested from qualifying impact;
- no generic Bleeding request.

## User-authorized creative canon fill

The attack packet did not select an exact Tail Sweep reach. The active Hunt-01 manifest already owns an authored Mudcrest pivot-clearance radius of `8 m`. With the user's 2026-09-08 permission to fill unresolved original game values, this slice selects a reversible working Tail Sweep body-envelope reach of `8.0 m`, tied directly to that existing pivot clearance.

Classification:
`USER_AUTHORIZED_CREATIVE_CANON_PROVISIONAL`

This value is game canon/prototype balance data, not source-novel reconstruction fact. It may be retuned later without changing provenance.

The rear/flank working gate is similarly represented as a deterministic forward-vector dot threshold of `<= 0.25`. It exists to make the current authored N10 flank position executable and reproducible. It is provisional gameplay geometry, not a universal biological fact.

## Runtime behavior

The existing Monster-01 activation owner now evaluates:
1. legal Tail Sweep for a rear/flank threat;
2. otherwise legal Head Sweep;
3. otherwise completes the Monster activation without inventing another attack.

Tail Sweep legality requires:
- current Monster activation;
- existing `TAIL` anatomy state and no explicit detached/severed distal state;
- target within the selected `8.0 m` body-envelope reach;
- rear/flank bearing relation;
- Monster still inside the authored pivot-clearance region;
- clear physical line/arc to Hunter body;
- at least `3 AP` and `18 Stamina`.

The runtime consumes the existing manifest `pivot`, `body_force` and `charge` forward-vector data. Presentation cannot override legality.

## Reaction and consequence routing

The current executable reaction owner only implements:
- `POLEBLADE_BLOCK`;
- explicit decline.

Dodge, Parry and Reactive Brace remain design-legal concepts but are not fabricated as executable reactions in this slice.

On Block:
- existing reaction runtime spends `1 RP + 6 Stamina`;
- existing Hunter defense runtime performs the separate `14 Stamina` impact-drain transaction;
- no second guard system is introduced.

Tail Sweep uses the same single seeded FNV-1a variance boundary as Head Sweep. There is no extra status roll or proc RNG.

## Status boundary

The species wound/contact classifier now accepts `M01_TAIL_SWEEP` pure-Impact handoffs.

Qualifying `SOLID` or `CLEAN` Tail Sweep impact with resolved injury may emit one `status_off_balance` request unless a strong Block absorbed the qualifying stability consequence. The generic status-application runtime owns the actual Off-Balance instance.

This slice explicitly does not emit:
- Bleeding from Tail Sweep;
- Staggered.

`Staggered` remains pending because its existing contract is not yet an implemented application owner for this bounded slice.

## Anatomy boundary

This slice proves only the intact-tail attack path. The current anatomy runtime has `TAIL` as a stable target group but does not yet own structural sever thresholds. Therefore the Tail Sweep capability reports a provisional baseline `TAIL_DISTAL attached` state and does not invent a cut/sever threshold.

Excluded:
- Tail sever thresholds;
- Tail detachment runtime;
- stump fallback attack;
- structural crack/break thresholds;
- harvest consequences from severing.

When a later verified anatomy owner exposes an explicit detached/severed distal state, `CAP_M01_TAIL_SWEEP` must become unavailable immediately.

## Verification gates

Required before promotion:
- existing Head Sweep static/runtime regression remains green;
- Tail Sweep static preflight green;
- dedicated Tail Sweep headless runtime test green;
- broad repository regression green;
- Android debug build green.

Dedicated runtime test proves:
- N08 forward-side position does not falsely select Tail Sweep;
- authored N08→N10 movement enters legal flank relation;
- exact `3 AP / 18 Stamina` commitment;
- pivot/arc/line legality snapshot;
- one reaction window;
- exact `14 Stamina` Block impact drain through existing defense owner;
- deterministic Tail Sweep variance;
- pure Impact routing;
- generic Off-Balance application;
- no Bleeding/Staggered claim;
- explicit decline path;
- no mutation of Mudcrest anatomy by incoming Hunter damage.

## Non-claims

This file does not claim:
- final Tail Sweep damage balance;
- final Tail Sweep reach or angular tuning;
- final Monster Max Stamina;
- Tail sever thresholds;
- Staggered runtime;
- other three Mudcrest normal attacks;
- behavior-runtime completion;
- phone acceptance;
- performance verification.
