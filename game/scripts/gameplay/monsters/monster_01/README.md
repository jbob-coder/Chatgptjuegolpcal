# Monster-01 Gameplay Runtime — Mudcrest Raker

Status: ANATOMY + HEAD SWEEP + TAIL SWEEP STATIC/HEADLESS/ANDROID BUILD VERIFIED
Last reconciled: 2026-09-13

Purpose: own species-specific runtime state and hostile actions for `monster_r01_m01_0001` without moving those rules into the generic combat shell.

## Current owners

`hunt01_mudcrest_anatomy_runtime.gd` owns deterministic per-target integrity and rejects invalid/replayed handoffs. It does not own global Monster HP, defeat or structural detachment.

`hunt01_mudcrest_attack_runtime.gd` remains the single external Monster activation driver registered with the generic combat shell.

Implemented attacks:
- `M01_HEAD_SWEEP_GORE`: `CAP_M01_HEAD_ATTACK`, 2 AP / 14 Stamina, `GORE_SWEEP`, Piercing + Impact, successful Poleblade Block impact profile 10 Stamina;
- `M01_TAIL_SWEEP`: `CAP_M01_TAIL_SWEEP`, 3 AP / 18 Stamina, rear/flank defensive arc, `TAIL_SWEEP_IMPACT`, pure Impact, successful Poleblade Block impact profile 14 Stamina, current attached `TAIL_DISTAL` capability requirement.

Deterministic normal-action priority is legal rear/flank Tail Sweep, otherwise established Head Sweep, otherwise wait/no-attack when neither implemented attack is legal.

## Structural boundaries

Head and Tail capability reads do not invent crack/break/sever thresholds. Current runtime records `PROVISIONAL_BASELINE_HEAD_HORNS_USABLE_NO_BREAK_STATE_RUNTIME` and `PROVISIONAL_BASELINE_TAIL_DISTAL_ATTACHED_NO_SEVER_STATE_RUNTIME` until a future structural owner supplies authoritative transitions.

## Tail Sweep geometry/status boundary

Tail Sweep consumes the body-force envelope, authored pivot/forward reference, reversible N10-derived 6.0 m reach, reversible `forward_dot <= 0.25`, four physics pivot-clearance probes and physics line-of-effect. These are first-slice fixtures.

Species wound/contact qualification keeps SOLID pure Impact → one Off-Balance request when selected conditions are met; CLEAN pure Impact → Staggered pending because no generic Staggered owner exists at this baseline; no Tail Sweep Bleeding path.

## Verification

Tail Sweep verified source head `91f554d5ad53b69436f5ee4eb84aad2caa409a23`.
Workflow `34759688551`: SUCCESS; job `103730201523`: SUCCESS.
Artifact `10317819786`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, SHA-256 `5c02fe4b8e1a45a75f1068a68a8081a6e8847818a2763172aa1753f49acb2948`.

Phone/user acceptance remains deferred-batch; sustained performance is not verified.

## Explicitly not implemented here

Final damage/armor balance; structural thresholds/detachment; Staggered runtime; forced displacement/knockdown; Horn Charge; Shoulder Ram; Foreleg Stomp; Berserk; Monster defeat/escape/reacquisition; harvest/inventory/crafting/settlement/persistence.

Design authorities: `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`, `COMBAT_ATTACK_PACKET.md`, and `BEHAVIOR_AND_REGION.md`.
Tail Sweep runtime note: `game/docs/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME.md`.
