# Batch 039 Summary

Batch 039 gives the game an owned route for physical capability that Batch 038 intentionally left blocked.

When a direct physical action, contest, combat event, or off-screen material outcome needs an uninstantiated body capability, Gameplay State Machine V4 now routes to `ENGINE_PHYSICAL_CAPABILITY_MATERIALIZATION_V1` before `RESOLVE_ACTION`. The materializer commits only the minimum required physical dimensions using stable actor/channel substreams and the active species physiology rules. Already committed dimensions cannot be rerolled to make a scene easier or harder.

Biology is selected only after species/body-plan identity is established. Baseline humans, Kharvori, hybrids, and beasts follow different governed routes. Hybrids require ancestry/trait expression; beasts require a species record with the required body/channel fields. Unknown species returns `SPECIES_IDENTITY_MATERIALIZATION_REQUIRED` instead of silently treating the actor as human.

The seven current service NPCs receive locked physical seeds and empty physical profile slots only. No species, UCR channel, Power Rank, hidden ability, save state, or campaign time is changed by installation.
