# 50_technical — Architecture, Code and Platform Mapping

Purpose: technical ownership, platform evidence and implementation-facing documentation once matching source exists.

Belongs here:
- engine/platform probe decisions;
- domain/module architecture;
- engine-specific scene/module maps after probe evidence;
- persistence/save schemas when implemented;
- streaming implementation mapping;
- Android lifecycle/platform notes;
- actual build/install documentation;
- import/export pipeline tied to real tools/assets;
- subsystem READMEs beside/source-linked to implementation.

## Current engine/platform authority

`ENGINE_ANDROID_PROBE_DECISION.md`

Current Stage 1 candidate:
- Godot 4.7 family;
- GDScript;
- GL Compatibility renderer;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-probe target.

Godot remains `PROBE_PENDING`; do not label it the final production engine until the Galaxy A03s acceptance gate passes.

## Current matching source

Probe-only implementation root:
`/probes/android_stage1/`

Current source status:
- Godot project configuration created;
- Boot/title scene created;
- primitive 3D probe scene created;
- Hunter/Monster placeholders created;
- touch/WASD probe input created;
- aerial↔first-person toggle created;
- runtime renderer/FPS/debug-memory HUD created;
- Android export setup documented;
- phone test protocol documented;
- GitHub source readback completed;
- Godot parse/editor run NOT yet verified;
- APK/phone runtime NOT yet verified.

Implementation handoff:
`../70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`.

Important quality rule:
**the Stage 1 probe is disposable evidence-gathering source and is not automatically the production game/domain source.**

If the probe passes, later production source should be created under a separately approved Stage 2 structure.

## Build-readiness governance

`../00_project/BUILD_READINESS_GATE_MATRIX.md`

Technical work must obey the first stage that consumes a decision:
- engine probe prerequisites;
- domain prerequisites;
- combat prerequisites;
- vertical-slice prerequisites;
- expansion-only questions.

## Existing engine-neutral authorities

- `/SYSTEM_ARCHITECTURE_BLUEPRINT.md`;
- `/CODE_GUIDE.md`;
- `/DEVELOPMENT_REFERENCE.md`;
- `/IMPLEMENTATION_ROADMAP.md`;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md`.

Important rules:
- do not create detailed class/API/scene documentation for code that does not exist;
- implementation claims require verified current source;
- build success is not phone-runtime verification;
- desktop runtime is not Galaxy A03s verification;
- source readback is not Godot parse verification;
- engine-specific architecture should be added only as the real probe/project creates evidence.

World packages may specify desired streaming relationships; this area documents how the verified engine implements them.
