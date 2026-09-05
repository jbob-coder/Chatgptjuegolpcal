# Hunt-01 Combat Runtime

Status: HUNTER HEALTH-INJURY IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-04

Purpose: own the generic production combat-domain runtime stack after explicit same-location ENGAGE while delegating species-specific anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, AP/RP/Stamina and Monster activation handshake.
- `hunt01_tactical_movement_runtime.gd` — adjacent tactical-node movement over authored links with terrain Stamina surcharge.
- `hunt01_reaction_window_runtime.gd` — hostile-action reaction lifecycle, including out-of-turn Field Poleblade Block commitment and explicit decline.
- `hunt01_hunter_attack_runtime.gd` — Field Poleblade `POLEBLADE_MEASURED_CUT` legality/contact/protection/anatomy handoff.
- `hunt01_hunter_defense_consequence_runtime.gd` — no-contact/Block consequence, guard impact Stamina and health/injury handoff.
- `hunt01_hunter_health_injury_runtime.gd` — normalized first-slice Hunter health/injury state, stable injury transactions and pending defeat boundary.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species anatomy consequence owner; generic combat does not absorb it.
- Monster normal attack runtime remains species-owned under `game/scripts/gameplay/monsters/monster_01/`.

Structural `crack/break/sever`, status consequences, and final damage/health arithmetic remain outside the turn shell/tactical movement owners and are resolved only by their dedicated downstream layers.

Stable combatants:
- encounter `enc_r01_ef02_m01_0001`;
- Hunter `hunter_player_0001`;
- Monster `monster_r01_m01_0001`.

## Existing verified combat laws

Hunter 4 AP / 1 RP, normalized first-slice Stamina 100, +10 passive Stamina once at Hunter activation start, authored 10-node/14-link tactical movement, `POLEBLADE_BLOCK = 1 RP + 6 Stamina`, Measured Cut `2 AP / 12 Stamina`, and Head Sweep `2 AP / 14 Stamina` remain unchanged.

Initiative currently uses the explicit design-contract tie example under `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`; it is not final character-stat balance.

Head Sweep's selected Block impact drain remains `10 Stamina`, applied separately through shell authority. The reversible Block fixture remains `PROVISIONAL_FIRST_SLICE_POLEBLADE_BLOCK_OUTCOME_FIXTURE`.

## Hunter health/injury first slice

Schema:
`uhr.hunt01.hunter_health_injury.v1`.

Fixture:
`PROVISIONAL_FIRST_SLICE_HUNTER_HEALTH_INJURY_FIXTURE`.

Normalized prototype Max Health = `100`.

Prototype base injury loads:
GRAZE `4`, SOLID `8`, CLEAN `12`.

Prototype residual percentages:
Strong Block `25%`, Partial Block `60%`, Broken Block `90%`, no active guard `100%`.

All health mutation is idempotent by hostile resolution ID and clamps at zero. These values are not final balance.

No gameplay armor profile is authored for the Hunter yet. The health owner explicitly records the missing-armor baseline instead of inferring protection from visual clothing/plates.

The current contact handoff does not distinguish horn penetration from impact-dominant contact, so this health slice emits no actual status request. It records candidate-only prerequisites where useful; status application remains downstream.

Zero health emits only `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME`; defeat behavior is not implemented here.

## Explicitly not implemented yet

- final Hunter Max Health/damage/armor balance;
- status application/stacking runtime;
- forced movement;
- final Block balance;
- structural crack/break/sever/tail detachment;
- Dodge/Parry/Brace resolution;
- Horn Charge / Shoulder Ram / Foreleg Stomp / Tail Sweep;
- deterministic multi-attack Monster behavior and Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence;
- Sprint/Dodge/forced-displacement movement.

Phone/user acceptance remains deferred-batch. This new health layer must pass its source/headless/Android-build gates before promotion.