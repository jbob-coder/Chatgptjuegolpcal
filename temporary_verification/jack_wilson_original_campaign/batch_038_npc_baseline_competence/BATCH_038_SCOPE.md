# Batch 038 Scope — NPC Baseline Competence Materialization

Purpose: make existing NPC competence causally available before the first outcome that depends on it, without inventing ranks at install time and without contaminating Batch 036's post-start event ledger.

In scope:
- immutable pre-start baseline evidence schema;
- deterministic per-NPC seed registry for the seven start-district service NPCs;
- partial, no-reroll baseline competence materialization;
- service NPC rank-state V2 with separate baseline and post-start components;
- rank transaction V3 that combines baseline + post-start VXP without mixing provenance;
- gameplay state machine V3 with pre-resolution baseline gate.

Out of scope:
- assigning any exact ER/role/P rank during installation;
- inventing unknown abilities;
- materializing physical UCR channels for NPC combat;
- advancing SAVE_000002 or world time.

Guardrails: save_mutated=false; world_time_advanced=false; exact_ranks_awarded_during_install=false.
