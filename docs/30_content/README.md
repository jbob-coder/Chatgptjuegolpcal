# 30_content — Reusable Content Packages

Status: ACTIVE CONTENT MAP / MONSTER 01 NORMAL ATTACK PACKET RECORDED
Last reconciled: 2026-09-03

## Purpose

Own reusable authored entity/content packages that configure shared gameplay rules without redefining them.

Current child areas:
- `hunters/` — hunter/player body/content packages;
- `monsters/` — species anatomy, attacks, behavior, Crystal/mutation and harvest relationships.

Future areas may include equipment, materials, recipes, status definitions, reusable terrain definitions and contracts where appropriate.

## Current entity packages

### Hunter Base 01
`hunters/HUNTER_BASE_01/README.md`
- neutral reusable hunter base for scale/rig/modular gear;
- not yet the final story protagonist.

### Monster 01 — Mudcrest Raker
Front door:
`monsters/MONSTER_01/README.md`.

Current authorities:
- `ANATOMY_AND_DAMAGE.md` — target groups, horn/plate break, leg impairment, tail sever;
- `COMBAT_ATTACK_PACKET.md` — five normal first-slice attacks, anatomy gates, costs, telegraphs, reactions, terrain/cover/status/guard-impact relationships;
- `BEHAVIOR_AND_REGION.md` — deterministic activity/combat-selection/retreat/Region 01 use;
- `CRYSTAL_AND_MUTATION.md` — Crystal/mutation direction and later berserk inputs.

Selected normal attacks:
- `M01_HORN_CHARGE`;
- `M01_HEAD_SWEEP_GORE`;
- `M01_SHOULDER_RAM`;
- `M01_FORELEG_STOMP`;
- `M01_TAIL_SWEEP`.

Content/behavior law:
`COMBAT_ATTACK_PACKET.md` decides whether an attack is currently legal; `BEHAVIOR_AND_REGION.md` may select only from legal candidates.

Destroyed anatomy cannot be bypassed by behavior, animation or UI.

## Content-package law

A content package separates:
- reusable definition;
- runtime instance state;
- presentation references;
- validation/test expectations.

Root authority:
`/CONTENT_DATA_GUIDE.md`.

Stable IDs are authority; display names are not identity.

Entity packages may reference Region 01 but cannot redefine its sector graph.

Entity packages configure shared combat/status/terrain/behavior/Crystal systems but may not silently fork generic formulas or timing laws.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`

## Exact next Monster 01 dependency

`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`.