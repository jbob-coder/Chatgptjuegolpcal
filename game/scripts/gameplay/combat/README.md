# Hunt-01 Combat Runtime

Purpose: own the first production combat-domain runtime stack after explicit same-location ENGAGE.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, one-normal-activation invariant, AP/RP refresh, normalized Hunter Stamina/recovery, resource commitment and END TURN HUD.
- `hunt01_tactical_movement_runtime.gd` — adjacent tactical-node movement, authored adjacency, destination terrain Stamina surcharge, current node, Hunter relocation and movement trace/HUD.
- `hunt01_hunter_attack_runtime.gd` — first real Hunter weapon attack: Field Poleblade `POLEBLADE_MEASURED_CUT`, target-group selection, hard range/line-of-effect/resource legality, one bounded deterministic contact variance sample, hit-quality classification and local protection/anatomy handoff.
- encounter runtime owns tracking completion → observation → explicit ENGAGE → same-location first-person staging, then creates this combat stack.
- later layers own actual anatomy integrity/health loss, break/sever, status consequences, Monster reactions/attacks/behavior and encounter outcomes.

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
- Monster uses a 4-AP internal budget but currently resolves explicit `WAIT_NO_ATTACK_RUNTIME` because Monster attack behavior is a later layer;
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

## First Hunter attack — Measured Cut

Technical ID:
`POLEBLADE_MEASURED_CUT`

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

Working-melee legality uses the real tactical layout rather than a global attack button:
- runtime reads the manifest Monster `body_force` envelope;
- current tactical node must be within 3.5 m of that envelope;
- current first-slice graph makes `R01_EF02_N09` the practical Measured Cut contact node;
- line of effect is physics-ray validated before commitment;
- full blocked line of effect is hard illegal;
- AP/Stamina are validated before commitment and spent once through the turn shell.

Contact resolution currently uses a transparent `PROVISIONAL_FIRST_SLICE_CONTROL_FIXTURE` because final Hunter/Mudcrest combat statistics remain balance-open:
- AttackControl base 70;
- explicit per-target control penalty;
- DefenseControl 55;
- one stable FNV-1a-derived variance sample in `[-6,+6]` per committed attack;
- same authoritative seed inputs produce the same result;
- no UI/animation reopening rerolls it;
- control margin classifies `MISS / GRAZE / SOLID / CLEAN`;
- selected-part acquisition requires margin >= 6;
- legal body contact below that threshold falls back to `GENERAL_TORSO` under Measured Cut's declared fallback policy.

After contact, the runtime records local protection such as `MINERALIZED_DORSAL_PLATE`, `HARD_HORN_STRUCTURE`, limb hide or torso hide, then emits `PENDING_ANATOMY_DAMAGE_RUNTIME`.

## Explicitly not implemented yet

- anatomy integrity/health arithmetic;
- break/sever thresholds;
- horn/plate state changes;
- tail detachment;
- bleeding/status consequences;
- Monster reaction decision runtime;
- Monster normal attack runtime;
- defeat/escape outcome;
- Sprint/Dodge/forced-displacement movement.

Phone/user acceptance is deferred-batch. Static/headless/Android-build verification continues to gate each independently implementable production layer.
