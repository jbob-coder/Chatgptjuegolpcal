# Hunt-01 Combat Runtime

Status: REACTION WINDOW BUILD VERIFIED / FIRST MUDCREST HEAD SWEEP IMPLEMENTED / AUTOMATED ATTACK VERIFICATION PENDING
Last reconciled: 2026-09-04

Purpose: own the generic production combat-domain runtime stack after explicit same-location ENGAGE while delegating species-specific anatomy and Monster attack packets to the Monster package.

## Runtime ownership

- `hunt01_combat_turn_shell_runtime.gd` — deterministic initiative, round/slot state, one-normal-activation invariant, AP/RP refresh, normalized Hunter Stamina/recovery, normal action commitment, out-of-turn reaction resource commitment, Monster external-activation handshake and END TURN HUD.
- `hunt01_tactical_movement_runtime.gd` — adjacent tactical-node movement, authored adjacency, destination terrain Stamina surcharge, current node, Hunter relocation and movement trace/HUD.
- `hunt01_reaction_window_runtime.gd` — shared hostile-action reaction window identity/lifecycle, one normal reaction commitment, replay/readback idempotence, explicit decline/close handling and the first closed-cost Field Poleblade Block commitment.
- `hunt01_hunter_attack_runtime.gd` — Hunter Field Poleblade `POLEBLADE_MEASURED_CUT`: target-group selection, hard range/line-of-effect/resource legality, one bounded deterministic contact variance sample, hit-quality classification, local protection routing and a single committed anatomy transaction handoff.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd` — species-specific normalized anatomy integrity consequence owner; intentionally outside the generic combat package.
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd` — species-owned first Mudcrest Monster normal attack runtime, beginning with `M01_HEAD_SWEEP_GORE`; it consumes the generic turn-shell/reaction contracts rather than redefining them.
- encounter runtime owns tracking completion → observation → explicit ENGAGE → same-location first-person staging, then creates the combat stack and injects the shared/species owners.

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
- the species attack owner may register exactly one external Monster activation driver; the shell keeps the Monster as current normal actor until that driver explicitly completes the activation;
- reaction spending is separate from normal-turn AP spending and cannot make the Hunter current actor during the Monster activation;
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

Verified invariant set:
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
`POLEBLADE_BLOCK` = `1 RP + 6 Stamina`.

This generic owner does not resolve Monster damage, Hunter health, Block strong/partial/broken outcome, status effects or forced movement.

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

Player-facing target groups are:
`HEAD`, `HORN_CREST`, `FORELEG_L`, `FORELEG_R`, `HINDLEG_L`, `HINDLEG_R`, `DORSAL_PLATES`, `TAIL`.

Working-melee legality consumes the manifest Monster `body_force` envelope and the current practical 3.5 m body-envelope fixture. `R01_EF02_N09` is the current practical Measured Cut contact node. Line of effect is physics-ray validated before commitment.

Contact resolution remains `PROVISIONAL_FIRST_SLICE_CONTROL_FIXTURE` because final Hunter/Mudcrest combat statistics are balance-open. One FNV-1a bounded sample produces deterministic `MISS / GRAZE / SOLID / CLEAN`, selected-part acquisition/body fallback and local protection routing.

After contact, the species anatomy runtime consumes one stable `PENDING_ANATOMY_DAMAGE_RUNTIME` transaction without rerolling the generic attack.

## Mudcrest anatomy integrity

Species owner:
`game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`.

The current normalized target-integrity arithmetic is `PROVISIONAL_FIRST_SLICE_ANATOMY_INTEGRITY_FIXTURE`, not final damage/health arithmetic.

Structural thresholds are not evaluated. Crack/break/sever states and status consequences remain separate future owners; anatomy returns `NOT_EVALUATED_BREAK_SEVER_DEFERRED` instead of inventing them.

## First Mudcrest hostile attack — Head Sweep

Species owner:
`game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`.

Technical ID:
`M01_HEAD_SWEEP_GORE`.

Selected packet:
- capability `CAP_M01_HEAD_ATTACK`;
- exact commitment `2 AP / 14 Stamina`;
- close front/front-flank pressure;
- baseline `GORE_SWEEP` profile;
- channels `PIERCING + IMPACT`;
- one damaging attack maximum per Monster activation.

Legality consumes existing world authority rather than a disconnected attack arena:
- existing Monster `body_force` envelope;
- provisional 3.5 m practical body-envelope range;
- existing authored Mudcrest charge lane as forward-facing reference;
- front/front-flank forward-half-plane check;
- physics-ray cover/line path;
- Monster AP/Stamina authority from the shell.

A legal committed Head Sweep creates a species-owned telegraph and the non-colliding `game/assets/effects/mudcrest_head_sweep_telegraph.tscn` presentation asset, then opens the verified generic reaction window.

The first executable defense choices are:
- `POLEBLADE_BLOCK` at the verified 1 RP / 6 Stamina commitment;
- explicit free decline.

Hostile contact currently uses `PROVISIONAL_FIRST_SLICE_MUDCREST_HEAD_SWEEP_CONTROL_FIXTURE` with one deterministic FNV-1a sample. Block contributes only a provisional DefenseControl term; final `BLOCK_STRONG / BLOCK_PARTIAL / BLOCK_BROKEN` classification remains open.

The attack ends at a stable `PENDING_HUNTER_DAMAGE_RUNTIME` handoff. No final Hunter HP/damage amount is invented here. The Monster packet's selected 10-Stamina standard successful Block impact-drain profile is recorded but remains `PENDING_FINAL_BLOCK_OUTCOME_RUNTIME` until the downstream Hunter-damage/defense owner exists.

The anatomy runtime currently has no structural break state, so this first attack explicitly uses `PROVISIONAL_BASELINE_HEAD_HORNS_USABLE_NO_BREAK_STATE_RUNTIME`; normalized integrity is not interpreted as a broken horn.

## Explicitly not implemented yet

- final Hunter incoming damage/health arithmetic;
- final Block strong/partial/broken outcome;
- crack/break/sever structural state transitions;
- tail detachment;
- bleeding/status consequences;
- Dodge/Parry/Brace final tuning and movement/outcome resolution;
- Monster normal attack runtime beyond the first Head Sweep packet;
- Horn Charge / Shoulder Ram / Foreleg Stomp / Tail Sweep;
- deterministic multi-attack Monster behavior runtime and Berserk;
- defeat/escape/reacquisition outcome;
- harvest/inventory/crafting/settlement/persistence;
- Sprint/Dodge/forced-displacement movement.

Phone/user acceptance is deferred-batch. Static/headless/Android-build verification continues to gate each independently implementable production layer.