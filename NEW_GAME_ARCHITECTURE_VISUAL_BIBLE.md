# Unnamed Hunt RPG — Architecture and Visual Bible

Status: DESIGN TARGET / NO IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose
Define how the new game's code, data, presentation, art, scale, animation, saves, tools, and verification should behave before implementation starts.

## Architecture laws

1. One authoritative game state.
2. Exploration, combat, harvest, crafting, progression, and save systems operate on the same domain data.
3. Presentation requests actions and renders results; it does not invent outcomes.
4. Stable IDs exist for persistent/content entities.
5. Content definitions are data-driven where practical.
6. Save formats are versioned and repaired deliberately.
7. Randomness is seedable/loggable where reproducibility matters.
8. Every major system exposes validation/invariants.
9. Debug tools call the same authoritative domain paths or explicitly marked admin paths.
10. No hidden gameplay state lives only in UI nodes/widgets.

## Proposed domain separation

- App/Game shell: lifecycle, navigation, platform integration.
- Exploration domain: region state, player position, roaming creatures, interactables, tracking.
- Encounter domain: initiative, AP/reactions, tactical nodes, cover, attacks, anatomy, statuses.
- Creature domain: species definitions, monster instances, anatomy, behavior parameters.
- Harvest domain: surviving material capacities, extraction methods, quantity/quality.
- Inventory/crafting domain: items, materials, recipes, equipment.
- Progression/research domain: mastery, bestiary knowledge, rank/perks.
- Persistence domain: save schema, migration/repair, serialization.
- Presentation: aerial exploration, first-person combat, UI, animation, audio/VFX.
- Debug/creator tooling: inspectors, encounter presets, creature/anatomy validation, deterministic replay helpers.

## Proposed authoritative state flow

Input → ActionRequest → Validate → Resolve → DomainEvents + StateChange → Persist/Log → Presentation

## Stable ID policy

Never use display names as persistent identity.

Example families:
- region_*;
- encounter_*;
- species_*;
- monster_*;
- part_*;
- attack_*;
- weapon_*;
- item_*;
- material_*;
- recipe_*;
- cover_*;
- quest_*;
- npc_*.

IDs are immutable after released saves depend on them.

## Combat data rules

Attacks define:
- AP/stamina/reaction costs;
- range/bearing legality;
- accuracy profile;
- damage profile;
- body-part targeting constraints;
- status/break/sever interactions;
- weapon/tool requirements;
- telegraph/reaction relationships.

Body parts define:
- integrity/structure;
- parent attachment;
- armor/tissue/bone layers as needed;
- target difficulty/exposure;
- break/sever rules;
- functional consequences;
- material capacities.

Monster behavior consumes authoritative combat facts. It must not depend on animation completion to decide its strategy.

## Harvest rules

Each material source links to anatomy.

Harvest result must be explainable from:
- original anatomical capacity;
- remaining part condition/mass;
- damage method;
- sever/break/destruction state;
- contamination/status;
- harvesting tool;
- harvesting skill/perk;
- harvesting method/time choice.

The result screen should be able to explain major losses/bonuses in plain language.

## Save rules

The new game begins with a new schema lineage. WorldLife schema 4 is not inherited.

Save must eventually preserve:
- player progression/equipment/inventory;
- world/region position/state;
- active hunt/contract state;
- persistent monster instance condition if hunts can span encounters;
- bestiary/research knowledge;
- materials/crafting progression;
- settings;
- RNG/sequence information only where necessary for deterministic continuity.

Before changing save shape:
- define defaults;
- define migration/repair;
- add round-trip/legacy tests;
- increment schema when contract changes materially.

## Exploration visual direction

Target: aerial angled 2.5D/hybrid presentation with grounded scale.

Priorities:
- readable silhouettes;
- clear vertical layering;
- paths and boundaries understandable without HUD clutter;
- monster scale readable from above;
- cover/hazards visually identifiable;
- cohesive 2D/3D materials and lighting;
- restrained camera movement to avoid mobile nausea and touch complexity;
- sectorized scenes rather than one enormous always-active map.

Potential mix:
- 3D terrain and large structures;
- 3D monsters and player if needed for combat continuity;
- billboard/impostor vegetation/details where appropriate;
- 2D decals/effects/UI markers used sparingly;
- 3D collision/navigation authority independent from decorative layers.

## First-person combat visual direction

Combat must feel spatial, not like a flat menu.

Requirements:
- player sees current tactical bearing and distance;
- monster anatomy is readable;
- targeted part is clearly identified without neon clutter;
- cover edges/occlusion are legible;
- movement between tactical nodes is animated but state changes resolve authoritatively;
- attack telegraphs are readable;
- broken/severed part state has clear visual consequence;
- UI remains usable on a landscape phone.

Potential UI layers:
- minimal combat status strip;
- AP/stamina/reaction resources;
- contextual action bar/radial selector;
- body-part targeting overlay only when selecting a target;
- cover/position options when movement is selected;
- combat log/details expandable rather than always occupying screen.

## Body damage visual policy

Open decision: stylized vs explicit gore.

Regardless of intensity:
- damage state must be readable;
- severed parts must match authoritative anatomy state;
- no visual sever if the domain says the part remains attached;
- detached parts that matter for harvesting need a stable encounter identity/reference;
- effects must be performant and bounded on Android.

## Character/monster art strategy

Use reusable rigs/materials and modular content rather than unique heavy assets everywhere.

Monster production pipeline should eventually require:
1. species concept/anatomy sheet;
2. stable part hierarchy;
3. gameplay dimensions/scale;
4. rig/skeleton;
5. damage/sever attachment rules;
6. collision/target volumes;
7. animation set;
8. LOD strategy;
9. material/texture budget;
10. validation checklist.

## Animation authority

Animation represents state.

Examples:
- injured leg state selects limp locomotion;
- severed tail removes tail animation branch;
- stagger event triggers stagger animation;
- tactical move event triggers camera/player movement between nodes;
- attack event plays after action resolution inputs are fixed.

Animation events may signal presentation timing but must not secretly determine authoritative hit/loot results.

## Mobile performance principles

- design for the actual target phone, not desktop first;
- profile CPU/GPU/memory/frame pacing on device;
- cap visible creature/prop/effect counts;
- pool/reuse effects;
- use LOD/impostors where helpful;
- minimize material/draw-call explosion;
- stream regions/scenes;
- keep collision/AI active only where needed;
- separate simulation population from rendered population;
- prefer stable 30/60 fps targets over uncontrolled visual complexity.

## Content scaling principle

First prove one complete hunt. Then scale through data/templates.

NOW: one region, one creature, one weapon family, one complete harvest/craft loop.
NEXT: second creature/weapon to prove extensibility.
LATER: biome, bestiary, progression, hubs, contracts, story, economy, broader systems.

## Creator/debug tooling target

Eventually provide:
- creature definition inspector;
- anatomy tree inspector;
- part condition editor;
- attack definition validator;
- encounter preset builder;
- cover-node validator;
- harvest simulation calculator;
- item/material/recipe inspector;
- deterministic combat replay/log viewer;
- save-state inspector;
- stable ID validator;
- performance/debug overlay.

These tools are targets, not currently implemented.

## Verification vocabulary

Use distinct states:
- DESIGNED;
- IMPLEMENTED;
- STATIC_VERIFIED;
- TESTED;
- COMPILED;
- APK_BUILD_VERIFIED;
- PHONE_RUNTIME_VERIFIED;
- VISUAL_QUALITY_VERIFIED;
- PERFORMANCE_VERIFIED.

Never promote one gate into another without evidence.
