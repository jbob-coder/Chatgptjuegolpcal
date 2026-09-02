# REGION_01 — Acceptance Checklist

Status: DESIGN/PROTOTYPE GATES / NO IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Prevent Region 01 from being called complete because terrain art exists.

The region advances through explicit gates.

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
- [ ] root index/handoff/startup references reconciled and read back.

## Gate B — Graybox topology

Required after implementation authorization/engine selection:
- [ ] all seven prototype sectors physically grayboxed;
- [ ] every canonical adjacency exists;
- [ ] every route is traversable both directions where intended;
- [ ] no accidental dead-end/softlock;
- [ ] field camp and gate arrival read clearly;
- [ ] region never appears as one fully visible board from normal camera;
- [ ] landmarks orient player without mandatory permanent waypoint;
- [ ] route length/traversal density measured;
- [ ] large monster proxy can cross intended routes;
- [ ] sector boundaries do not create visible teleport/reset.

## Gate C — Tracking/persistent hunt

- [ ] evidence types can be placed/rendered in representative sectors;
- [ ] evidence age/cleanup is bounded;
- [ ] persistent monster crosses at least two sector boundaries;
- [ ] same instance ID/state survives crossing;
- [ ] encounter escape returns same injured monster to region;
- [ ] player can reacquire monster through valid evidence/knowledge path;
- [ ] no duplicate monster at old/new location;
- [ ] severed/broken anatomy persists;
- [ ] crystal energy/condition persists;
- [ ] save/reload behavior tested after final save policy exists.

## Gate D — Terrain/effect interaction

- [ ] mud/water uses shared terrain/effect pipeline;
- [ ] root/cover geometry affects visibility/tactics through approved systems;
- [ ] rocky elevation is readable and does not become platforming friction;
- [ ] open meadow provides meaningfully different approach/combat behavior;
- [ ] no sector requires a private one-off stat formula;
- [ ] terrain effect calculations are traceable in Admin/debug tools.

## Gate E — Encounter continuity

At least three graybox footprints must pass:
- [ ] River Ford;
- [ ] Meadow Edge;
- [ ] Root/Boulder or Deep Nest.

For each:
- [ ] aerial engagement location matches first-person context;
- [ ] camera descent avoids severe clipping;
- [ ] target anatomy remains readable;
- [ ] cover/elevation/terrain remain coherent;
- [ ] player tactical nodes are legal/reachable;
- [ ] monster proxy fits/moves without invalid clipping;
- [ ] escape route maps back to correct region route;
- [ ] return to exploration reconstructs correct world location/state.

## Gate F — Streaming robustness

- [ ] normal S00↔S01↔S03 etc. transitions produce no loading screen;
- [ ] current/neighbor/logical fidelity state visible in debug overlay;
- [ ] sector border hysteresis prevents load thrashing;
- [ ] persistent monster does not disappear when representation demotes;
- [ ] active-hunt destination gets preload priority;
- [ ] repeated loop traversal shows no unbounded memory growth;
- [ ] artificial slow-stream mode does not duplicate/corrupt actors;
- [ ] major hitches recorded and root-caused.

## Gate G — Android performance

Do not mark until actual target device is selected.

- [ ] cold entry from settlement gate measured;
- [ ] region traversal frame pacing measured;
- [ ] S01 water/mud stress measured;
- [ ] S05 foliage/occlusion stress measured;
- [ ] S04 long-sightline LOD stress measured;
- [ ] first-person promotion measured;
- [ ] memory peak/residency measured;
- [ ] thermal behavior sampled over a representative hunt;
- [ ] suspend/resume tested in region/encounter;
- [ ] no crash/ANR under representative loop.

Only then can the package use `PERFORMANCE_VERIFIED`.

## Gate H — Visual quality

- [ ] player silhouette readable from aerial camera;
- [ ] first monster silhouette/anatomy readable at intended distances;
- [ ] tracks/signs visible without excessive glow;
- [ ] sector identities visually distinct but ecologically coherent;
- [ ] full region not exposed during normal play;
- [ ] first-person view holds up with representative assets;
- [ ] LOD transitions preserve gameplay-relevant forms;
- [ ] settlement-to-region visual handoff feels coherent.

## Gate I — Content expansion permission

Do not add many monsters/resources/side systems until:
- [ ] one primary hunt works through camp → track → encounter → escape/kill → harvest/return;
- [ ] Region 01 can host the first monster without special-case code;
- [ ] second route/footprint works without rewriting region architecture;
- [ ] performance headroom exists on target Android.

## Current status

`DOCUMENTATION_PACKAGE = WRITTEN`
`ROOT_CONTINUITY_RECONCILIATION = PENDING THIS PASS`
`GRAYBOX = NOT STARTED`
`IMPLEMENTATION = NOT AUTHORIZED`
`REGION_01_DESIGNED = PENDING ROOT READBACK/RECONCILIATION`
