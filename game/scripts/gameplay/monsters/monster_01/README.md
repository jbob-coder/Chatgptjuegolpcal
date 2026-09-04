# Monster-01 Gameplay Runtime — Mudcrest Raker

Purpose: own species-specific runtime consequences for `monster_r01_m01_0001` without moving those rules into the generic combat shell.

## Current owner

`hunt01_mudcrest_anatomy_runtime.gd`

This first bounded anatomy slice consumes the already-committed Hunter attack `damage_handoff` after generic combat has resolved legality, resource commitment, target contact/body fallback, hit quality and local protection.

Runtime laws:
- encounter `enc_r01_ef02_m01_0001` and Monster `monster_r01_m01_0001` remain stable;
- the eight player-facing target groups are preserved;
- `GENERAL_TORSO` exists only as the declared body-fallback target;
- anatomy never rerolls attack contact or hit quality;
- each committed attack supplies one stable `resolution_id`;
- replay/readback of the same resolution is idempotent and cannot reduce integrity twice;
- mismatched protection/identity/channel handoffs are rejected;
- per-target normalized integrity is tracked independently;
- this slice has no global Monster HP, defeat state or detachment state.

## Provisional integrity fixture

`PROVISIONAL_FIRST_SLICE_ANATOMY_INTEGRITY_FIXTURE`

The current normalized `100` integrity reference plus hit-quality/protection reductions exist only so the runtime can exercise deterministic state transitions and protection routing. They are not final balance values.

The fixture intentionally reflects only existing qualitative authority: hard horn/mineralized plates reduce CUTTING more than hide. Exact final damage arithmetic remains design-open.

## Explicitly not implemented here

- final health/damage balance;
- crack/break thresholds;
- sever thresholds;
- tail detachment;
- bleeding or other status effects;
- Monster reactions/attacks/AI;
- defeat/escape/harvest outcome.

Design authority:
`docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`.

Generic combat owner:
`game/scripts/gameplay/combat/README.md`.

Phone/user acceptance remains deferred-batch. Automated source/headless/Android build verification is required before this runtime is marked verified.
