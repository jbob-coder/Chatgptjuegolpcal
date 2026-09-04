# REGION_01 — Acceptance Checklist

Status: DESIGN/PROTOTYPE GATES / HUNT-01 GEOMETRY SPECIFIED / NO ENGINE GRAYBOX IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Prevent Region 01 from being called complete because documentation, coordinates or terrain art exists.

The region advances through explicit gates.

Important current distinction:
- `IMPLEMENTATION_AUTHORIZED = YES` for current Stage-1 probe/bounded work;
- `PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`;
- `FINAL_ENGINE_SELECTED = NO`;
- no Region runtime/phone/performance PASS exists.

## Gate A — Documentation coherence

Required before region design is called `DESIGNED`:
- [x] package README exists;
- [x] sector topology exists;
- [x] terrain/ecology/mutation application exists;
- [x] tracking/escape contract exists;
- [x] encounter-footprint requirements exist;
- [x] streaming/performance plan exists;
- [x] visual-reference plan exists;
- [x] selected vs prototype vs open decisions are distinguished;
- [x] package states what it does not own;
- [x] shared spatial coordinate/dimension framework recorded;
- [x] Hunt-01 tracking->encounter integration recorded;
- [x] Hunt-01 graybox geometry specification/registry recorded;
- [x] root README/index/handoff/startup references reconciled and read back.

**Gate A status: PASS — Region 01 is DESIGNED at the documentation/geometry-specification level only.**

This does not imply engine graybox, production implementation, phone runtime or performance verification.

## Gate B0 — Hunt-01 build specification readiness

Before an engine Hunt-01 graybox build begins:
- [x] Hunt-01 route/evidence/Monster/tactical-node coordinates recorded;
- [x] required route width/grade/step targets recorded;
- [x] River Ford water/mud/bank dimensions recorded;
- [x] S01->S03 ascent/visibility-break dimensions recorded;
- [x] EF02 meadow/observation dimensions recorded;
- [x] tactical-node marker/link-clearance targets recorded;
- [x] boulder/tree primitive dimensions recorded;
- [x] Charge/pivot/body-force/escape clearance volumes recorded;
- [x] camera/streaming debug volumes recorded;
- [ ] engine-neutral build manifest/scene grouping recorded;
- [ ] machine-readable/static validation ownership recorded.

Current B0 next dependency:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`.

## Gate B — Graybox topology / geometry implementation

Required after the implementation gate permits the relevant engine/world slice:
- [ ] Hunt-01 S00->S01->S03 + EF02 primitive geometry actually built;
- [ ] Hunt-01 required route measures within approved range or revision is recorded;
- [ ] required-route grades/steps measured against geometry specification;
- [ ] River Ford water/mud/dry-bank geometry measured;
- [ ] S01->S03 route/visibility breaks physically built;
- [ ] EF02 tactical nodes/links physically reachable;
- [ ] boulder/tree cover lines physically validated;
- [ ] large Monster proxy crosses required Hunt-01 routes;
- [ ] Charge/pivot/escape clearances measured;
- [ ] no Hunt-01 accidental dead-end/softlock;
- [ ] camera transition clearance measured;
- [ ] streaming debug proxies carry no gameplay collision.

Broader Region graybox later still requires:
- [ ] all seven prototype sectors physically grayboxed;
- [ ] every canonical adjacency exists;
- [ ] every intended route traversable both directions;
- [ ] field camp and gate arrival read clearly;
- [ ] region never appears as one fully visible board from normal camera;
- [ ] landmarks orient player without mandatory permanent waypoint;
- [ ] sector boundaries do not create visible teleport/reset.

## Gate C — Tracking/persistent hunt

- [ ] evidence types can be placed/rendered in representative sectors;
- [ ] evidence age/cleanup is bounded;
- [ ] persistent Monster crosses at least two sector boundaries;
- [ ] same instance ID/state survives crossing;
- [ ] encounter escape returns same injured Monster to Region;
- [ ] player can reacquire through valid evidence/knowledge path;
- [ ] no duplicate Monster at old/new location;
- [ ] severed/broken anatomy persists;
- [ ] Crystal Energy/condition persists;
- [ ] save/reload behavior runtime-tested.

## Gate D — Terrain/effect interaction

- [ ] mud/water uses shared terrain/effect pipeline;
- [ ] root/cover geometry affects visibility/tactics through approved systems;
- [ ] rocky elevation is readable and does not become platforming friction;
- [ ] open meadow provides meaningfully different approach/combat behavior;
- [ ] no sector requires a private one-off stat formula;
- [ ] terrain effect calculations traceable in Admin/debug tools.

## Gate E — Encounter continuity

At least three graybox footprints must eventually pass:
- [ ] River Ford;
- [ ] Meadow Edge;
- [ ] Root/Boulder or Deep Nest.

For each:
- [ ] aerial engagement location matches first-person context;
- [ ] camera descent avoids severe clipping;
- [ ] target anatomy remains readable;
- [ ] cover/elevation/terrain remain coherent;
- [ ] player tactical nodes legal/reachable;
- [ ] Monster proxy fits/moves without invalid clipping;
- [ ] escape route maps back to correct Region route;
- [ ] return to exploration reconstructs correct world location/state.

## Gate F — Streaming robustness

- [ ] normal S00↔S01↔S03 transitions produce no loading screen;
- [ ] current/neighbor/logical fidelity state visible in debug overlay;
- [ ] sector border hysteresis prevents load thrashing;
- [ ] persistent Monster does not disappear when representation demotes;
- [ ] active-hunt destination gets preload priority;
- [ ] repeated loop traversal shows no unbounded memory growth;
- [ ] artificial slow-stream mode does not duplicate/corrupt actors;
- [ ] major hitches recorded/root-caused.

## Gate G — Android performance

Do not mark until target-device evidence exists.

- [ ] cold entry from settlement gate measured;
- [ ] Region traversal frame pacing measured;
- [ ] S01 water/mud stress measured;
- [ ] S05 foliage/occlusion stress measured;
- [ ] S04 long-sightline LOD stress measured;
- [ ] first-person promotion measured;
- [ ] memory peak/residency measured;
- [ ] thermal behavior sampled over representative hunt;
- [ ] suspend/resume tested in Region/encounter;
- [ ] no crash/ANR under representative loop.

Only then can Region 01 use `PERFORMANCE_VERIFIED`.

## Gate H — Visual quality

- [ ] player silhouette readable from aerial camera;
- [ ] first Monster silhouette/anatomy readable at intended distances;
- [ ] tracks/signs visible without excessive glow;
- [ ] sector identities visually distinct but ecologically coherent;
- [ ] full Region not exposed during normal play;
- [ ] first-person view holds up with representative assets;
- [ ] LOD transitions preserve gameplay-relevant forms;
- [ ] Settlement-to-Region visual handoff coherent.

## Gate I — Content expansion permission

Do not add many monsters/resources/side systems until:
- [ ] one primary hunt works through camp -> track -> encounter -> escape/kill -> harvest/return;
- [ ] Region 01 hosts the first Monster without special-case architecture;
- [ ] second route/footprint works without rewriting Region architecture;
- [ ] performance headroom exists on target Android.

## Current status

`DOCUMENTATION_PACKAGE = WRITTEN`
`ROOT_CONTINUITY_RECONCILIATION = COMPLETE`
`REGION_01_DESIGNED = YES / DOCUMENTATION_LEVEL`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_RECORDED = YES`
`HUNT01_BUILD_MANIFEST_VALIDATION_SPECIFICATION = NEXT`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`
`PHONE_RUNTIME_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`.
