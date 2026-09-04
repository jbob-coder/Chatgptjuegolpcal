# REGION_01 — Acceptance Checklist

Status: DESIGN/BUILD-SPEC GATES / HUNT-01 MANIFEST + VALIDATION CONTRACT RECORDED / ENGINE GRAYBOX NOT STARTED
Last reconciled: 2026-09-03

## Purpose

Prevent Region 01 from being called complete because documents, coordinates or terrain art exist.

The Region advances through explicit evidence gates.

## Gate A — Documentation coherence

Required before Region design is called `DESIGNED`:
- [x] package README exists;
- [x] sector topology exists;
- [x] terrain/ecology/mutation application exists;
- [x] tracking/escape contract exists;
- [x] encounter-footprint requirements exist;
- [x] streaming/performance plan exists;
- [x] visual-reference plan exists;
- [x] selected/prototype/open decisions are distinguished;
- [x] package states what it does not own;
- [x] root README/index/handoff/startup references reconciled.

**Gate A: PASS — documentation-level Region design only.**

## Gate B0 — Hunt-01 build specification readiness

This gate can pass before engine scene construction.

Required:
- [x] first physical Hunt-01 route selected;
- [x] stable evidence/Monster/node coordinates recorded;
- [x] required route length target recorded;
- [x] route width/grade/step targets recorded;
- [x] River Ford water/mud/bank dimensions recorded;
- [x] Meadow/observation dimensions recorded;
- [x] physical cover primitives/tolerances recorded;
- [x] Monster Charge/pivot/body-force/escape clearances recorded;
- [x] camera clearance debug volumes recorded;
- [x] streaming proxy volumes recorded;
- [x] engine-neutral build hierarchy recorded;
- [x] machine-readable build manifest recorded;
- [x] explicit validation rules recorded;
- [x] build-only coordinates distinguished from stable gameplay coordinates.

**Gate B0: PASS — build specification ready for manifest static validation.**

This does not imply a scene exists.

## Gate B1 — Manifest static validation

Required before the manifest is called statically verified:
- [ ] executable validator exists;
- [ ] schema/identity passes;
- [ ] build IDs unique;
- [ ] group refs valid/no cycles;
- [ ] stable coordinate copies match source owner;
- [ ] evidence containment passes;
- [ ] N01–N10 bounds pass;
- [ ] 14 link distances recompute within tolerance;
- [ ] stream proxies are classified non-colliding;
- [ ] terrain tags are valid;
- [ ] debug entries have no gameplay authority;
- [ ] build-only controls remain non-authoritative;
- [ ] required manifest families/counts present;
- [ ] validator reports scene/runtime/phone checks NOT EXECUTED.

**Gate B1: NEXT / NOT EXECUTED.**

## Gate B — Graybox topology

Required after production engine/world implementation gate permits a real scene:
- [ ] Hunt-01 required S00→S01→S03 route physically grayboxed first;
- [ ] route measured 285–315 m after smoothing or approved correction recorded;
- [ ] required route slopes/steps pass;
- [ ] S02 wrong-route mouth remains physically usable;
- [ ] Ford water/mud/banks match build targets;
- [ ] S01→S03 Raker corridor fits;
- [ ] EF02 floor/observation ramp exists;
- [ ] 10 tactical nodes physically reachable through recorded links;
- [ ] boulder/tree relationships pass;
- [ ] Charge/pivot/body-force/escape clearances pass;
- [ ] camera-clearance checks pass;
- [ ] stream debug proxies exist without gameplay collision;
- [ ] no accidental dead-end/softlock;
- [ ] no visible teleport/reset at sector boundaries.

Full seven-sector graybox remains a later Region gate; first-slice Hunt-01 proof comes first.

## Gate C — Tracking/persistent hunt

- [ ] evidence types can be rendered/inspected;
- [ ] evidence age/cleanup bounded;
- [ ] same persistent Monster crosses required sector boundaries;
- [ ] encounter escape returns same injured Monster;
- [ ] reacquisition through valid evidence/knowledge path;
- [ ] no duplicate Monster;
- [ ] anatomy/Core/Berserk state persists;
- [ ] save/reload tested at defined checkpoints.

## Gate D — Terrain/effect interaction

- [ ] mud/water uses shared terrain/effect pipeline;
- [ ] root/cover geometry affects visibility/tactics through approved systems;
- [ ] open meadow produces meaningfully different approach/combat;
- [ ] no private one-off terrain formula;
- [ ] terrain effects are traceable in debug tooling.

## Gate E — Encounter continuity

For the first EF02 proof:
- [ ] aerial engagement location matches first-person context;
- [ ] camera descent avoids clipping;
- [ ] target anatomy readable;
- [ ] cover/elevation/terrain coherent;
- [ ] tactical nodes legal/reachable;
- [ ] Monster proxy fits/moves;
- [ ] escape maps to correct Region route;
- [ ] return to exploration reconstructs correct location/state.

Later expansion still requires additional footprint proofs.

## Gate F — Streaming robustness

- [ ] normal boundary crossing produces no loading screen where intended;
- [ ] fidelity state visible in debug overlay;
- [ ] hysteresis prevents thrashing;
- [ ] persistent Monster never disappears due presentation demotion;
- [ ] active-hunt destination preload priority works;
- [ ] repeated traversal shows no unbounded memory growth;
- [ ] slow-stream test does not duplicate/corrupt actors.

## Gate G — Android performance

Do not mark until direct selected-target-device evidence exists.

- [ ] cold Region entry measured;
- [ ] traversal frame pacing measured;
- [ ] S01 water/mud stress measured;
- [ ] S05 foliage stress measured later;
- [ ] first-person promotion measured;
- [ ] memory/thermal/suspend-resume measured;
- [ ] no crash/ANR over representative loop.

Only then can `PERFORMANCE_VERIFIED` be used.

## Gate H — Visual quality

- [ ] Hunter silhouette readable aerially;
- [ ] Monster silhouette/anatomy readable;
- [ ] evidence visible without excessive glow;
- [ ] sector identities coherent/distinct;
- [ ] first-person representation holds up;
- [ ] LOD preserves gameplay forms.

## Gate I — Content expansion permission

Do not add broad content until:
- [ ] one primary hunt works camp→track→encounter→escape/kill→harvest/return;
- [ ] Region hosts Monster 01 without special-case architecture;
- [ ] second route/footprint works without rewriting foundations;
- [ ] target Android performance headroom exists.

## Current authorization distinction

`IMPLEMENTATION_AUTHORIZED = YES`
for bounded Stage-1 probe/design/specification/QA work.

`PRODUCTION_REGION_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

Do not collapse these into one ambiguous yes/no statement.

## Current status

`DOCUMENTATION_PACKAGE = WRITTEN`
`REGION_01_DESIGNED = YES / DOCUMENTATION+BUILD-SPEC LEVEL`
`HUNT01_BUILD_SPEC_GATE_B0 = PASS`
`HUNT01_MANIFEST_STATIC_GATE_B1 = NOT_EXECUTED`
`HUNT01_GRAYBOX = NOT_STARTED`
`REGION_01_RUNTIME_IMPLEMENTED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`.

Exact next:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.
