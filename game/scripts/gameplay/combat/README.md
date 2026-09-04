# Hunt-01 Combat Runtime

Purpose: own the first production combat-domain runtime stack after explicit same-location ENGAGE while delegating species-specific anatomy state to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, one-normal-activation invariant, AP/RP refresh, normalized Hunter Stamina/recovery, normal action commitment, out-of-turn reaction resource commitment, Monster external-activation handshake and END TURN HUD.
- `hunt01_tactical_movement_runtime.gd` — adjacent tactical-node movement, authored adjacency, destination terrain Stamina surcharge, current node, Hunter relocation and movement trace/HUD.
- `hunt01_reaction_window_runtime.gd` — shared hostile-action reaction window identity/lifecycle, one normal reaction commitment, replay/readback idempotence, explicit decline/close handling and the first closed-cost Field Poleblade Block commitment.
- `hunt01_hunter_attack_runtime.gd` — Hunter Field Poleblade `POLEBLADE_MEASURED_CUT`: target-group selection, hard range/line-of-effect/resource legality, one bounded deterministic contact variance sample, hit-quality classification, local protection routing and a single committed anatomy transaction handoff.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species-specific normalized anatomy integrity consequence owner; intentionally outside the generic combat package.
- encounter runtime owns tracking completion → observation → explicit ENGAGE → same-location first-person staging, then creates the combat stack and injects the shared owners.
- later layers own Monster normal attacks/behavior, final damage balance, break/sever thresholds, status consequences and encounter outcomes.

First-slice identities:
- encounter `enc_r01_ef02_m01_0001`;
- Hunter `hunter_player_0001`;
- Monster `monster_r01_m01_0001`.

## Turn shell laws

- one normal activation per eligible actor per round;
- Initiative = `(2 × Agility) + Perception + explicit modifier`;
- ties: Agility DESC → Perception DESC → stable combatant ID ASC;
- no random opener;
- Hunter 4 AP / 1 RP;
- normalized first-slice Hunter Max Stamina 100;
- +10 passive Stamina once at Hunter normal activation start;
- unused AP does not bank;
- Monster uses a 4-AP internal budget;
- without a registered Monster activation driver, Monster activation still resolves explicit `WAIT_NO_ATTACK_RUNTIME`;
- a future Monster attack owner may register one external activation driver; the shell keeps the Monster as the current normal actor until that driver explicitly completes the activation;
- reaction spending is separate from normal-turn AP spending and cannot make the Hunter the current actor during the Monster activation;
- free exploration locomotion is locked after ENGAGE while first-person look remains available.

Initiative numbers currently use the explicit contract example as `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`:
- Hunter Agility 50 / Perception 40 / mod 0 → 140;
- Mudcrest Raker Agility 45 / Perception 50 / mod 0 → 140;
- Hunter wins the deterministic Agility tie-break.

## Adjacent tactical movement

- starts at `R01_EF02_N01`;
- consumes existing 10-node / 14-link Meadow graph;
- only direct authored links are legal;
- normal move costs 1 AP + destination primary-surface Stamina surcharge;
- Stable +0, Rough +1, Shallow Water +2, Mud +3;
- non-adjacent/unknown destinations reject without resource spend;
- movement changes only Hunter position; Monster transform remains unchanged;
- no random terrain slip roll;
- Sprint, Dodge movement and forced displacement are not implemented yet.

## Hunter reaction window

Schema:
`uhr.hunt01.reaction_window.v1`.

Selected invariant set:
- source hostile actor must own the current normal activation;
- stable reaction-window identity includes encounter, round, source actor, source action and source action sequence;
- only one normal reaction decision can be committed in one window;
- an overlapping/recursive normal window is rejected;
- repeated UI/readback of the same committed window cannot spend resources twice;
- closed-window readback is deterministic;
- decline is explicit and free;
- the reaction commitment records `PENDING_ATTACK_DEFENSE_RESOLUTION` rather than deciding Block success itself;
- reaction UI is hidden unless a hostile action opens a real window.

First implemented paid reaction:
`POLEBLADE_BLOCK`.

Cost:
- 1 RP;
- 6 Stamina.

The 1-RP law comes from the Action Economy Contract. The 6-Stamina Field Poleblade Block commitment is already recorded by the selected Monster-01 combat attack packet; this runtime does not promote any still-open Dodge/Parry/Brace Stamina values to final authority.

This prerequisite does not resolve Monster attack damage, Hunter health, Block strength, status effects or forced movement. Those remain downstream hostile-action resolution responsibilities.

## First Hunter attack — Measured Cut

Technical ID:
`POLEBLADE_MEASURED_CUT`.

Prototype contract:
- 2 AP;
- 12 Stamina;
- primary channel `CUTTING`;
- selected target group allowed;
- `ALLOW_BODY_FALLBACK`;
- maximum hit quality `CLEAN`;
- no independent critical-hit roll.

Player-facing target groups are the eight existing Mudcrest groups:
`HEAD`, `HORN_CREST`, `FORELEG_L`, `FORELEG_R`, `HINDLEG_L`, `HINDLEG_R`, `DORSAL_PLATES`, `TAIL`.

Working-melee legality uses the real tactical layout:
- runtime reads the manifest Monster `body_force` envelope;
- current tactical node must be within 3.5 m of that envelope;
- `R01_EF02_N09` is the current practical Measured Cut contact node;
- line of effect is physics-ray validated before commitment;
- AP/Stamina are validated before commitment and spent once through the turn shell.

Contact resolution remains `PROVISIONAL_FIRST_SLICE_CONTROL_FIXTURE` because final Hunter/Mudcrest combat statistics are balance-open:
- AttackControl base 70;
- explicit per-target control penalty;
- DefenseControl 55;
- one stable FNV-1a-derived variance sample in `[-6,+6]` per committed attack;
- control margin classifies `MISS / GRAZE / SOLID / CLEAN`;
- selected-part acquisition requires margin >= 6;
- legal body contact below that threshold falls back to `GENERAL_TORSO`.

After contact, generic combat records the local protection profile and builds one stable anatomy `resolution_id` from existing encounter/round/action identity. The Monster-01 runtime consumes that handoff exactly once; readback/replay does not reroll or double-apply it.

## Current anatomy integrity slice

The species runtime tracks normalized target integrity using `PROVISIONAL_FIRST_SLICE_ANATOMY_INTEGRITY_FIXTURE`.

The fixture is deliberately not final HP/armor balance. It only makes deterministic per-target integrity state executable now and reflects the existing qualitative rule that hard horn/mineralized plates resist CUTTING more than hide.

Structural thresholds are not evaluated. The runtime returns `NOT_EVALUATED_BREAK_SEVER_DEFERRED` rather than inventing crack/break/sever authority.

## Explicitly not implemented yet

- final damage/health arithmetic;
- crack/break/sever thresholds and structural state transitions;
- tail detachment;
- bleeding/status consequences;
- Dodge/Parry/Brace final reaction tuning and movement/outcome resolution;
- Monster normal attack runtime;
- Monster deterministic behavior runtime;
- defeat/escape outcome;
- Sprint/Dodge/forced-displacement movement.

Phone/user acceptance is deferred-batch. Static/headless/Android-build verification continues to gate each independently implementable production layer.
