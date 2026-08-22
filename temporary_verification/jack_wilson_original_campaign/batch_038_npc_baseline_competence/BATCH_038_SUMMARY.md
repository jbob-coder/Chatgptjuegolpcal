# Batch 038 Summary

Batch 038 closes the first-contact competence gap left after transactional rank evidence. Existing service NPCs can now have pre-existing professional competence materialized deterministically **before** an action or off-screen outcome needs it. That baseline history is stored separately from post-start gameplay evidence.

No ranks are assigned during installation. The seven service NPCs remain unassessed until a real trigger requires a domain. A fixed per-actor seed and dimension-specific substream make materialization reproducible and forbid rerolling for plot convenience.

Rank Update Transaction V3 computes effective rank evidence as baseline VXP + post-start VXP while preserving separate provenance. Gameplay State Machine V3 inserts `MATERIALIZE_REQUIRED_BASELINES` before action resolution and retains Batch 036's post-resolution rank-evidence transaction before save sealing.

Physical capability remains a separate system. If a direct conflict needs ungenerated NPC UCR/physiology, baseline competence materialization returns `PHYSICAL_CAPABILITY_MATERIALIZATION_REQUIRED` rather than inventing power.
