# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

This is the new Android-targeted monster-hunting tactical RPG. WorldLife is abandoned and must not be resumed unless a current repository authority explicitly preserves something.

Working name: `Unnamed Hunt RPG`.

## Mandatory first read

Before every bounded pass:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. this file;
4. `DOCUMENTATION_INDEX.md`;
5. root `README.md`;
6. `docs/README.md`;
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
8. newest relevant `docs/70_handoff/`;
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Main working rule

The game is the objective.

Documentation must preserve:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

## Current engine/Android phase

Stage-1 automated foundation is advanced, but direct Galaxy A03s evidence remains required.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
`154/154 static`, `8/8 Monster collision`, `12/12 boundary`, `17/17 view continuity`, `47/47 lifecycle`, `20/20 performance telemetry`, Godot parse/smoke PASS, Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Phone regression + 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Combat/gameplay foundation

Seven generic combat contracts are recorded:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative / Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set.

They define the reusable mechanics. Monster-specific attacks do not belong in the generic combat folder.

## Monster 01 normal combat packet

Monster 01 — Mudcrest Raker.

Read in this order:
1. `docs/30_content/monsters/MONSTER_01/README.md`;
2. `ANATOMY_AND_DAMAGE.md`;
3. `COMBAT_ATTACK_PACKET.md`;
4. `BEHAVIOR_AND_REGION.md`;
5. `CRYSTAL_AND_MUTATION.md` when Crystal/berserk state is relevant.

Normal attack packet:
- Horn Charge — 4 AP / 30 Stamina;
- Head Sweep/Gore — 2 / 14;
- Shoulder Ram — 3 / 22;
- Foreleg Stomp — 2 / 12;
- Tail Sweep — 3 / 18.

Core Monster 01 attack laws:
- internal 4-AP normal activation budget;
- max one damaging attack per activation;
- no attack ignores destroyed anatomy;
- all selected normal attacks have authoritative telegraphs/reaction windows;
- no separate random status-proc roll;
- no normal attack spends Crystal Energy by default;
- behavior selects only currently legal attacks;
- physical cover/terrain clearance cannot be bypassed by animation.

Examples:
- full Horn Charge disappears when horn/forequarter capability is lost;
- both horns broken make Head Sweep/Gore an impact-only Head Sweep;
- severed distal tail removes Tail Sweep;
- full Horn Charge cannot be normally Poleblade-Blocked/Parried.

Authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Pass record:
`docs/70_handoff/MONSTER_01_COMBAT_ATTACK_PACKET_PASS_2026-09-03.md`.

No combat runtime is claimed.

## Current planned sequence

Completed:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Normal Attack Packet`.

Next:
`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`
→ Solo/Party baseline
→ Defeat/Retreat baseline
→ implementation after prerequisite engine/domain gates.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`.

That pass may define only berserk entry, Crystal Energy/strain drain, visible tell, bounded changes to existing anatomy-legal attack availability/commitment/priority, and stop/critical/death behavior.

Do not combine it with party design, defeat/retreat resolution or production implementation.