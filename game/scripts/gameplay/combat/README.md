# Hunt-01 Combat Runtime

Purpose: provide the first authoritative combat-domain runtime after the same-location encounter is explicitly staged.

Owner boundary:
- encounter runtime owns observation, explicit ENGAGE and same-location first-person staging;
- `hunt01_combat_turn_shell_runtime.gd` owns deterministic initiative snapshots, round roster/slot state, normal activation ownership, AP/RP refresh, normalized first-slice Hunter Stamina storage/recovery, resource commitment and the temporary turn-shell HUD;
- `hunt01_tactical_movement_runtime.gd` owns first-slice adjacent tactical-node movement, authored adjacency validation, destination terrain Stamina surcharge, current tactical-node state, physical Hunter relocation on the existing Meadow graph and movement trace/HUD;
- later combat layers own Sprint/Dodge movement extensions, attacks, reactions, hit resolution, anatomy damage, statuses, Monster behavior and encounter outcomes.

First-slice runtime identities:
- encounter `enc_r01_ef02_m01_0001`;
- Hunter combatant `hunter_player_0001`;
- Monster combatant `monster_r01_m01_0001`.

Selected turn-shell laws:
- exactly one normal activation per eligible actor per round;
- Initiative ordering uses `(2 × Agility) + Perception + explicit modifier`;
- ties resolve Agility DESC → Perception DESC → stable combatant ID ASC;
- no random opener roll;
- Hunter normal activation refreshes to 4 AP / 1 RP;
- unused AP never banks;
- Hunter normalized first-slice Stamina reference is 100 with +10 passive recovery once at normal activation start;
- Monster uses the already-selected 4-AP internal normal-activation budget but no player-facing AP UI;
- the Monster currently performs an explicit `WAIT_NO_ATTACK_RUNTIME` placeholder activation because attack/behavior runtime is not part of this layer;
- free exploration locomotion is locked after ENGAGE so 6.25 m/s roaming cannot bypass AP-governed tactical movement;
- first-person look remains available.

## Adjacent tactical-node movement

Current first-slice runtime scope:
- starts on authored entry node `R01_EF02_N01`;
- loads the existing 10-node / 14-link `R01_EF02` graph from the Hunt-01 manifest projection;
- exposes only directly linked destinations;
- normal adjacent move costs `1 AP` plus the destination primary-surface Stamina surcharge;
- Stable Ground `+0`, Rough Ground `+1`, Shallow Water `+2`, Mud `+3` Stamina;
- current Meadow proof uses Stable/Rough nodes but the complete selected first-slice surcharge map is encoded once in the runtime;
- movement hard-rejects non-adjacent/unknown destinations and spends nothing on rejection;
- the combat shell remains the sole AP/Stamina commitment authority;
- committed movement relocates only the Hunter to the authored destination X/Z on the already-flat production foundation, preserving the current physical Y and same Monster world transform;
- each move records origin/destination node, primary surfaces, tags, AP/Stamina cost, terrain surcharge, footing and legality result;
- tactical-node UI is visible only after encounter entry because encounter staging reveals the node graph and starts this runtime;
- no random terrain slip roll exists.

Not implemented in this movement layer:
- Sprint;
- Dodge/reaction movement;
- forced displacement/knockback;
- line-of-effect/cover calculation;
- attack range or targeting;
- attack, damage, anatomy, status, defeat or escape resolution.

## Provisional initiative fixture

Concrete production Hunter/Mudcrest base attribute values are still balance-open in `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`. This shell therefore uses the explicit numerical example already recorded in `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md` as a transparent first-slice runtime fixture:

- Hunter: Agility 50 / Perception 40 / modifier 0 → Initiative 140;
- Mudcrest Raker: Agility 45 / Perception 50 / modifier 0 → Initiative 140.

The equal rating intentionally exercises the deterministic Agility tie-break, so the Hunter acts first. These values are `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`, not final character/species balance and must be replaced by authored stat data when that domain is implemented.

Phone/user acceptance is deferred-batch. Automated static/headless/Android-build verification still gates each independent combat layer.
