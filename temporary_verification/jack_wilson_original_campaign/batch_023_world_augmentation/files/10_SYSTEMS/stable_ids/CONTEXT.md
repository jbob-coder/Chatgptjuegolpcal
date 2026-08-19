# Stable ID Shards

One job: keep the permanent ID registry auditable without forcing every run to load hundreds of IDs.

`../227_STABLE_ID_REGISTRY_V2.json` is the router and authority. Shards are generated/maintained as its human-editable surfaces.

Rules:
- IDs never change or get reused.
- `ABILITY_ORIG_001..300` is a fully published inclusive range; every member is equivalent to an individually listed published ID.
- A validation pass expands ranges and checks uniqueness across all shards.
- Load only the shard needed for the current entity unless auditing the complete registry.
