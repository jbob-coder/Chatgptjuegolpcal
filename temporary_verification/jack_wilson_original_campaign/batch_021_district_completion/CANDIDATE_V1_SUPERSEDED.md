# Batch 021 pre-validation transport fragments — superseded

The earlier `BATCH_021_BUNDLE_GZIP_B64.part001` and `.part002` commits were staged before final validation discovered stale Batch 020 counts in `222_WORLD_BASE_STATUS.json` and `226_READINESS_METRICS_V2.json`, plus stale service/location wording in the coverage/gap audit.

Do not reassemble or promote those fragments.

The authoritative Batch 021 candidate is V2: the V2 correction overlay plus `BATCH_021_MANIFEST.json`, `BATCH_021_checksums.sha256`, `BATCH_021_VALIDATION.md`, and `BATCH_021_SUMMARY.md`. Git history is intentionally preserved rather than rewritten.
