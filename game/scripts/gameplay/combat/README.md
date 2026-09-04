# Hunt-01 Combat Turn Shell Runtime

Purpose: provide the first authoritative combat-domain runtime after the same-location encounter is explicitly staged.

Owner boundary:
- encounter runtime owns observation, ENGAGE and same-location first-person staging;
- this package owns deterministic initiative snapshots, round roster/slot state, normal activation ownership, AP/RP refresh, normalized first-slice Hunter Stamina storage/recovery, resource commitment and the temporary turn-shell HUD;
- later combat layers own tactical movement, attacks, reactions, hit resolution, anatomy damage, statuses, Monster behavior and encounter outcomes.

First-slice runtime identities:
- encounter `enc_r01_ef02_m01_0001`;
- Hunter combatant `hunter_player_0001`;
- Monster combatant `monster_r01_m01_0001`.

Selected runtime laws:
- exactly one normal activation per eligible actor per round;
- Initiative ordering uses `(2 × Agility) + Perception + explicit modifier`;
- ties resolve Agility DESC → Perception DESC → stable combatant ID ASC;
- no random opener roll;
- Hunter normal activation refreshes to 4 AP / 1 RP;
- unused AP never banks;
- Hunter normalized first-slice Stamina reference is 100 with +10 passive recovery once at normal activation start;
- Monster uses the already-selected 4-AP internal normal-activation budget but no player-facing AP UI;
- the Monster currently performs an explicit `WAIT_NO_ATTACK_RUNTIME` placeholder activation because attack/behavior runtime is not part of this layer;
- free exploration locomotion is locked after ENGAGE so 6.25 m/s roaming cannot bypass future AP-governed tactical movement;
- first-person look remains available;
- no attack, damage, reaction, anatomy, status, defeat or escape resolution exists in this shell.

## Provisional initiative fixture

Concrete production Hunter/Mudcrest base attribute values are still balance-open in `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`. This shell therefore uses the explicit numerical example already recorded in `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md` as a transparent first-slice runtime fixture:

- Hunter: Agility 50 / Perception 40 / modifier 0 → Initiative 140;
- Mudcrest Raker: Agility 45 / Perception 50 / modifier 0 → Initiative 140.

The equal rating intentionally exercises the deterministic Agility tie-break, so the Hunter acts first. These values are `PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE`, not final character/species balance and must be replaced by authored stat data when that domain is implemented.

Phone/user acceptance is deferred-batch. Automated static/headless/Android-build verification still gates this layer.
