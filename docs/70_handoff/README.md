# 70_handoff — Continuity and Migration Records

Purpose: make current work reconstructable without relying on chat memory.

Belongs here:
- bounded-piece handoffs;
- migration plans/readbacks;
- package status snapshots;
- supersession records;
- exact next-action records;
- source/build/runtime verification summaries once implementation exists.

Current root authority remains:
- `/PROJECT_HANDOFF.md`.

Current specialized handoffs:
- `ASSET_GENERATION_PASS_2026-09-02.md` — art/model reference-generation state;
- `COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md` — completed 4 AP / 1 RP combat-economy design pass;
- `STAGE1_PROBE_SKELETON_PASS_2026-09-02.md` — first actual Godot/Android probe source pass and exact verification boundary.

The root handoff stays the global entry point. Package-local READMEs contain local status; this folder stores durable continuity artifacts that do not own gameplay rules.

A handoff records facts and open work. It must not silently change mechanics or override an owning authority.

Verification language must remain precise:
source created/read back ≠ Godot parsed ≠ editor-run ≠ APK built ≠ phone-installed ≠ phone-runtime verified ≠ performance verified.
