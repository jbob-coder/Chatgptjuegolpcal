# Unnamed Hunt RPG — Content and Data Guide

Status: PLANNING CONTRACT / NO CONTENT PIPELINE IMPLEMENTED
Last reconciled: 2026-09-02

## Purpose

Define how monsters, anatomy, attacks, weapons, materials, recipes, regions and encounters should eventually be authored so the project scales structurally rather than through hard-coded special cases.

## 1. Data-first rule

Reusable gameplay content belongs in validated definitions wherever practical.

Do not hard-code one monster's body-part values directly inside combat UI or animation scripts.

Do not use display names as identity.

Every persistent/referenced content entity receives a stable ID.

## 2. Stable ID families

Recommended prefixes:
- `region_`
- `encounter_layout_`
- `species_`
- `monster_` for runtime instance IDs only;
- `part_`
- `attack_`
- `behavior_`
- `damage_profile_`
- `weapon_`
- `technique_`
- `armor_`
- `tool_`
- `item_`
- `material_`
- `harvest_`
- `recipe_`
- `status_`
- `cover_`
- `contract_`
- `npc_` later.

Rules:
- lowercase machine-readable IDs;
- immutable once used by released saves;
- unique globally within their type;
- never recycle a retired ID for unrelated content;
- display names/localization remain separate.

## 3. Species definition

A species definition should eventually include:
- stable species ID;
- display/localization key;
- ecology tags;
- scale/body plan;
- base attributes;
- anatomy definition reference;
- attack list;
- behavior profile;
- movement capabilities;
- resistances/protection model;
- status interactions;
- harvest source references;
- region/habitat tags;
- presentation references;
- bestiary knowledge stages.

## 4. Anatomy definition

Each body part should define only mechanically useful detail.

Fields/concepts:
- stable part ID;
- display/localization key;
- parent ID;
- children;
- part category;
- targetable flag;
- breakable flag;
- severable flag;
- base integrity/structure;
- break threshold/rules;
- sever threshold/rules;
- armor/hide/bone/tissue layers only if used by mechanics;
- exposure rules;
- functional capability tags;
- damage modifiers;
- harvest source references;
- visual target/attachment references later;
- severed-object presentation reference later.

Avoid anatomy detail that neither combat nor harvesting uses.

## 5. Attack definition

Attack data should describe both legality and consequence.

Potential fields:
- attack ID;
- owner species/weapon category;
- capability requirements;
- valid range bands;
- valid bearings;
- AP/stamina costs;
- accuracy profile;
- damage profile;
- break/sever contribution;
- statuses;
- target constraints;
- telegraph definition;
- reaction opportunities;
- cooldown/usage constraints if later adopted;
- AI scoring tags;
- presentation references.

## 6. Weapon definition

Potential fields:
- weapon ID;
- family/class;
- damage profiles;
- reach/range;
- available techniques;
- AP/stamina behavior;
- block/parry capability;
- harvest interaction only if intentionally designed;
- upgrade path reference;
- presentation/audio references;
- equipment requirements.

Weapon identity should come from tactical differences, not only larger numbers.

## 7. Material definition

Potential fields:
- material ID;
- display/localization key;
- category;
- stack behavior;
- quality model;
- weight/capacity only if inventory rules use it;
- crafting tags;
- trade value later;
- spoilage rules only if adopted;
- provenance/source metadata.

## 8. Harvest source definition

Every harvest source should link physical anatomy to material output.

Potential fields:
- harvest source ID;
- source part ID;
- material ID;
- original anatomical capacity;
- discrete or continuous type;
- minimum condition;
- quality mapping;
- preferred/required tool;
- damage-type penalties;
- clean-sever bonus/preservation rule;
- destroyed-state behavior;
- extraction time/difficulty;
- knowledge requirement if hidden.

Validator invariants:
- capacity cannot be negative;
- source part must exist;
- material must exist;
- unique physical structures cannot output impossible counts;
- destroyed-state rules cannot award an intact unique component unless explicitly justified.

## 9. Recipe definition

Potential fields:
- recipe ID;
- output item/upgrade ID;
- material requirements;
- quantity;
- minimum quality where meaningful;
- prerequisite research/rank;
- service/tool requirement;
- upgrade branch/predecessor;
- presentation references.

Recipes should create hunting goals that correspond to real monster anatomy.

## 10. Region definition

Potential fields:
- region ID;
- biome/theme;
- scene/presentation reference;
- playable bounds/sectors;
- traversal/collision data reference;
- monster habitat/spawn definitions;
- camps/safe points;
- gathering definitions;
- track/evidence locations/rules;
- encounter layout references;
- hazards;
- weather/time profiles;
- exits/connections;
- audio/lighting profile.

The render scene is not the sole source of traversal or encounter rules.

## 11. Encounter layout definition

Potential fields:
- layout ID;
- source region/area tag;
- tactical nodes;
- node adjacency;
- range relationships;
- bearing relationships;
- cover nodes;
- elevation;
- hazards;
- escape nodes;
- visual anchors;
- allowed creature scale/categories.

This is how aerial terrain becomes first-person tactical space without duplicating unrelated battle arenas.

## 12. Behavior profile

Species behavior should be configurable rather than one giant AI script.

Potential inputs/weights:
- aggression;
- caution;
- territoriality;
- flee threshold;
- pain response;
- rage response;
- preferred range;
- cover-breaking tendency;
- attack-family preferences;
- injured-part compensation;
- pack behavior later.

AI still operates only on legal actions returned by domain rules.

## 13. Status definition

Potential fields:
- status ID;
- duration model;
- stack behavior;
- affected stats/capabilities;
- application/resistance rules;
- removal/cure rules;
- visual/audio indicators;
- persistence across encounters if applicable.

Avoid status proliferation before the base combat loop is proven.

## 14. Knowledge/bestiary stages

Content should support staged knowledge.

Possible levels:
- unknown;
- observed;
- identified;
- researched;
- mastered.

Each stage can reveal subsets of:
- species name;
- habitat;
- tracks;
- anatomy labels;
- weaknesses;
- attack tells;
- harvest sources;
- preferred hunting methods.

## 15. Asset/content linkage

Data references assets through stable resource keys/paths appropriate to the selected engine.

Examples:
- species model/rig;
- animation set;
- body-part target anchor;
- damage visual variant;
- severed part mesh;
- material textures;
- sounds;
- VFX;
- UI icon.

Missing presentation assets should be caught by validation for production content, but domain tests should not require heavyweight rendering assets.

## 16. Content validation pipeline

Before content enters a playable build, validators should check:
- duplicate IDs;
- broken references;
- anatomy cycles;
- missing parents;
- invalid thresholds;
- attack requiring nonexistent capability;
- harvest source missing anatomy/material;
- recipe missing material/output;
- region missing encounter references;
- impossible quantities;
- missing required production presentation references;
- save compatibility implications for changed released IDs.

## 17. Content package rule

A new monster is not complete because its model exists.

Minimum monster package eventually includes:
1. species definition;
2. anatomy graph;
3. targetable parts;
4. attacks;
5. behavior profile;
6. harvest sources;
7. knowledge/bestiary data;
8. visual model/rig;
9. body target anchors/collision volumes;
10. damage/sever presentation references;
11. animation set;
12. audio cues;
13. validation tests;
14. at least one encounter test.

## 18. First-slice content limit

The first vertical slice should intentionally contain:
- 1 region;
- 1 monster species;
- 1 monster instance flow;
- 1 weapon family;
- 6–8 meaningful targetable parts;
- small attack set;
- small material set;
- 1–3 recipes, with at least one upgrade needed for the loop;
- small set of cover/hazard definitions.

Do not build a content factory before these definitions survive real gameplay and target-device testing.