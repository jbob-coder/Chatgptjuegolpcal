# Hunt-01 Combat Runtime

Status: THROUGH HUNTER DEFENSE CONSEQUENCE ANDROID BUILD VERIFIED / HUNTER HEALTH-INJURY NEXT
Last reconciled: 2026-09-04

Purpose: own the generic production combat-domain runtime stack after explicit same-location ENGAGE while delegating species-specific anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, one-normal-activation invariant, AP/RP refresh, normalized Stamina/recovery, normal action commitment, out-of-turn reaction resource commitment and Monster external-activation handshake.
- `hunt01_tactical_movement_runtime.gd` — adjacent authored tactical-node movement and terrain Stamina surcharge.
- `hunt01_reaction_window_runtime.gd` — hostile-action reaction lifecycle, idempotent commitment, free decline and first paid Field Poleblade Block.
- `hunt01_hunter_attack_runtime.gd` — Field Poleblade `POLEBLADE_MEASURED_CUT` legality/contact/protection/anatomy handoff.
- `hunt01_hunter_defense_consequence_runtime.gd` — generic hostile defense consequence, no-contact handling, Block impact Stamina and downstream health/injury handoff.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species-specific normalized anatomy integrity consequence owner.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd` — species-owned first Mudcrest normal attack runtime beginning with `M01_HEAD_SWEEP_GORE`.
- encounter runtime owns tracking completion → observation → explicit ENGAGE → same-location first-person staging, then creates the combat stack.

First-slice identities:
- encounter `enc_r01_ef02_m01_0001`;
- Hunter `hunter_player_0001`;
- Monster `monster_r01_m01_0001`.

## Turn/resource laws

- one normal activation per eligible actor per round;
- Hunter 4 AP / 1 RP;
- normalized first-slice Hunter Max Stamina 100;
- +10 passive Stamina once at Hunter normal activation start;
- unused AP does not bank;
- Monster uses a 4-AP internal budget;
- reaction spending is separate from normal-turn AP spending;
- exactly one Monster activation driver may be registered;
- free exploration locomotion is locked after ENGAGE while first-person look remains available.

Initiative currently uses the explicit contract example as `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; final stats remain balance-open.

## Tactical movement

The Hunter starts at `R01_EF02_N01` on the existing 10-node / 14-link Meadow graph. Only direct authored links are legal. Normal movement is 1 AP plus destination terrain Stamina surcharge: Stable +0, Rough +1, Shallow Water +2, Mud +3. Sprint, Dodge movement and forced displacement are not implemented yet.

## Reaction window

Schema `uhr.hunt01.reaction_window.v1`.

`POLEBLADE_BLOCK = 1 RP + 6 Stamina`.

The reaction owner commits a defense choice but does not decide the final defense consequence itself. Decline is explicit/free; one normal reaction decision is allowed per window; replay/readback cannot spend twice.

## Hunter Measured Cut

`POLEBLADE_MEASURED_CUT` = 2 AP / 12 Stamina / CUTTING. Physical legality consumes the actual Monster body envelope and physics line of effect. Contact uses the named provisional deterministic control fixture and routes one stable transaction into Mudcrest anatomy.

## Mudcrest anatomy

The species anatomy owner uses `PROVISIONAL_FIRST_SLICE_ANATOMY_INTEGRITY_FIXTURE`. Structural thresholds are not yet evaluated; crack/break/sever/status consequences remain separate owners.

## Mudcrest Head Sweep

`M01_HEAD_SWEEP_GORE` = 2 AP / 14 Stamina, `PIERCING + IMPACT`, close front/front-flank. It consumes the real body envelope, authored forward reference and physics cover path, emits the non-colliding threat-band telegraph, opens the reaction window, resolves one deterministic contact sample and creates a stable hostile handoff.

## Hunter defense consequence

Generic owner:
`hunt01_hunter_defense_consequence_runtime.gd`.

Schema:
`uhr.hunt01.hunter_defense_consequence.v1`.

Verified rules:
- consumes each `PENDING_HUNTER_DAMAGE_RUNTIME` ID once;
- MISS/no-contact mutates nothing;
- Field Poleblade guard consumes Head Sweep's selected `10 Stamina` impact drain separately from the already-spent 6-Stamina Block commitment;
- impact drain uses shell resource authority and clamps to available Stamina;
- replay cannot double-drain;
- `PROVISIONAL_FIRST_SLICE_POLEBLADE_BLOCK_OUTCOME_FIXTURE` maps fully funded GRAZE/SOLID to Strong, fully funded CLEAN to Partial, and insufficient impact reserve to Broken;
- residual force becomes `PENDING_HUNTER_HEALTH_INJURY_RUNTIME`.

This fixture is not final Block balance.

## Explicitly not implemented yet

- Hunter health/injury mutation and final health balance;
- authored Hunter gameplay armor/protection values;
- final Block balance;
- crack/break/sever structural transitions and tail detachment;
- status application;
- Dodge/Parry/Brace resolution;
- Horn Charge / Shoulder Ram / Foreleg Stomp / Tail Sweep;
- deterministic multi-attack Monster behavior and Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence;
- Sprint/Dodge/forced-displacement movement.

## Current automated evidence

Source head `598abcd66ba3333808fc2fe54c873c8cb5df01f9`.
Production workflow `33933869555`: SUCCESS.
Artifact `9959508072`: `UnnamedHuntRPG-Hunt01-HunterDefense-debug`.

Phone/user acceptance is deferred-batch. Static/headless/Android-build verification continues to gate each independently implementable production layer.