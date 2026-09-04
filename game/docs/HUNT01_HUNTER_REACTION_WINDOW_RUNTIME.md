# Hunt-01 Hunter Reaction Window Runtime

Status: IMPLEMENTATION SLICE / AUTOMATED VERIFICATION REQUIRED BEFORE PROMOTION
Last reconciled: 2026-09-04

## Bounded purpose

Implement the shared combat prerequisite needed before real Mudcrest attacks can replace the Monster scheduler placeholder.

Production owner:
`game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`.

The reaction owner does not belong to Monster-01 species code because reaction timing/resource laws are generic combat rules.

## Current first-slice contract

Stable schema:
`uhr.hunt01.reaction_window.v1`.

The runtime:
- opens only from the current hostile Monster normal activation;
- keys a window by encounter + round + source actor + source action + action sequence;
- permits at most one normal reaction decision in that window;
- rejects overlapping/recursive windows;
- supports deterministic readback of an already-open or closed transaction;
- prevents repeated UI/readback from spending reaction resources twice;
- exposes an explicit free decline path;
- closes only after the hostile-action resolver acknowledges a source-resolution status.

## Shell handshake

`hunt01_combat_turn_shell_runtime.gd` remains authoritative for resources and normal actor ownership.

The shell adds:
- one optional Monster activation driver registration;
- a bounded external Monster activation hold/complete handshake;
- `try_commit_reaction_cost(...)` for out-of-turn RP/Stamina commitment while the hostile source actor remains the current normal actor;
- per-window resource-commit idempotence.

The Hunter is never promoted to the current normal actor merely because a reaction window exists.

Without a Monster driver, the previous `WAIT_NO_ATTACK_RUNTIME` behavior remains intact, preserving existing tests and preventing a fake attack.

## First supported paid reaction

`POLEBLADE_BLOCK`.

Cost:
- `1 RP`;
- `6 Stamina`.

Authority boundary:
- one normal reaction / baseline `1 RP`: `ACTION_ECONOMY_CONTRACT.md`;
- Field Poleblade Block commitment `6 Stamina`: Monster-01 `COMBAT_ATTACK_PACKET.md`, where attack-specific impact drain is explicitly separate from the normal Block commitment.

No unselected final Dodge/Parry/Brace Stamina values are invented here.

## Resolution boundary

A committed Block returns:
`PENDING_ATTACK_DEFENSE_RESOLUTION`.

This prerequisite does not resolve Monster attack damage, Block strength/partial/broken outcome, Hunter health, displacement, status effects or anatomy consequences.

Those results belong to the later hostile-action resolver using the selected generic combat and Monster attack contracts.

## Player-facing UI

A `ReactionWindowPanel` is created under the combat HUD and remains hidden while no hostile action is offering a reaction.

When a future Monster attack opens a window, the first implemented choice is:
- `BLOCK • 1 RP + 6 Stamina`;
- `DECLINE REACTION`.

The Block control is disabled if the Hunter lacks required RP/Stamina. Decline remains a no-cost decision.

## Verification target

Static/source gate:
`tests/quality/hunt01/hunt01_reaction_window_preflight.py`.

Headless runtime gate:
`game/tests/hunt01_reaction_window_runtime_test.gd`.

The headless test uses the real production scene, real turn shell, real encounter stack and a minimal test-only Monster activation driver. It verifies the Monster remains the current normal actor while the Hunter spends reaction RP/Stamina out of turn, then resumes the real scheduler.

The test also verifies that this prerequisite does not change Mudcrest anatomy or apply a damage transaction.

Phone/user acceptance remains deferred-batch. Android build verification is required before this layer can be promoted beyond IMPLEMENTED.
