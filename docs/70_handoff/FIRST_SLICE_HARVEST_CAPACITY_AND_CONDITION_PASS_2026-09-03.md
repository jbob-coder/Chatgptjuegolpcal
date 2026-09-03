# First-Slice Harvest Capacity and Condition Pass — 2026-09-03

Status: BOUNDED GAMEPLAY-DESIGN PASS COMPLETE / NO HARVEST IMPLEMENTATION

## Bounded piece

`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`

The game remains the objective. This pass advances the hunt loop from combat anatomy consequences into finite recoverable materials while direct Galaxy A03s Stage-1 evidence remains deferred.

## Authorities reread

Current repository copies were reread for:
- `EVOLVE_ALIGNMENT.md`;
- `PROJECT_HANDOFF.md`;
- `START_HERE_NEW_CHAT.md`;
- `DOCUMENTATION_INDEX.md`;
- `docs/70_handoff/DEFEAT_RETREAT_BASELINE_PASS_2026-09-03.md`;
- `MECHANICAL_SYSTEMS_GUIDE.md`;
- `CONTENT_DATA_GUIDE.md`;
- Monster 01 `ANATOMY_AND_DAMAGE.md`;
- Defeat/Retreat outcome ownership;
- current gameplay/readiness/front-door maps.

## New reusable authority

`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Local front door:
`docs/20_gameplay/harvest/README.md`.

Selected generic laws:
- harvest sources have finite authored capacity;
- first slice uses material-specific capacity units, not final kilograms;
- condition bands map to preservation multipliers;
- clean sever preserves/transfers capacity rather than adding bonus matter;
- break/shatter may reduce capacity/quality without automatically deleting all material;
- carcass and detached-part containers own stable source lineages;
- extraction recovery efficiency is deterministic and clamped to `<=1.00`;
- partial harvesting depletes only successfully recovered quantity;
- no separate random harvest-roll layer;
- unique structures cannot duplicate through container transfer/save-load;
- Monster escape creates no carcass;
- Monster death creates one physical carcass harvest state from final anatomy;
- mutual terminal preserves carcass state without auto-crediting materials.

## Condition model

Generic preservation targets:
- PRISTINE = 1.00;
- GOOD = 0.90;
- DAMAGED = 0.70;
- POOR = 0.40;
- RUINED = 0.10;
- DESTROYED = 0.00.

`surviving_capacity = floor(original_capacity * preservation_multiplier)`.

Source-specific physical damage history chooses the condition band; one global anatomy label does not blindly decide every material.

## Monster 01 application

New content authority:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Selected first-slice materials/capacities:
- left horn: 4 horn units;
- right horn: 4 horn units;
- dorsal plate group: 8 plate units;
- torso hide: 12 hide units;
- distal-tail ridge: 5 ridge units;
- distal-tail tendon: 4 tendon units;
- dense structural bone: 8 units.

Pristine authored selected-source total:
`45` capacity units.

This is not guaranteed yield. Combat condition + extraction efficiency reduce actual recovered material.

Clean distal-tail sever transfers the same tail ridge/tendon lineages into one detached-tail container. Later Monster death may not recreate those sources on the carcass.

## Intended player consequence

A cleaner hunt can preserve significantly more usable material than a destructive one.

The contract therefore makes the user's core rule explicit:
**how the player damages/breaks/severs a part changes how much usable material remains to harvest.**

## Anti-duplication/persistence

Save/load must preserve source/container/lineage IDs, original/surviving/remaining/extracted capacities, condition/quality, and attached/detached ownership.

No reload may:
- restore depleted source capacity;
- respawn severed tail material on a carcass;
- create a second horn lineage;
- replay a committed extraction;
- create a second carcass for one dead Monster instance.

## Future verification

Generic contract records 28 minimum implementation tests.
Monster 01 packet records 16 content-specific tests.

No runtime verification is claimed because harvest/inventory source does not yet exist.

## Documentation/navigation reconciliation

This pass creates/maps:
- `docs/20_gameplay/harvest/README.md`;
- `docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`;
- `docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`;
- relevant gameplay/content/front-door/readiness/current-state files;
- this handoff.

## Verification boundary

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_VERIFIED = NO`.

Phone truth remains unchanged:
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact next independent non-phone action

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`

That next pass should define recovered-material ownership/storage/stack/provenance/quality/save-load transfer semantics before one-recipe crafting linkage. Do not bundle broad economy, many recipes or production implementation.