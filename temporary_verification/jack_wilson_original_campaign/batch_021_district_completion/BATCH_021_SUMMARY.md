# Batch 021 — Immediate District Completion V2

Batch 021 converts the immediate pre-academy civilian district from a sparse service shell into a deterministic, offscreen-simulatable district while preserving the 2670-era working guardrail and the source-boundary rules.

It adds a 72-resident / 28-household reversible filler census; deterministic schedule templates; a seven-person active service roster; local media/communications/VR; power-water-waste-comms topology and failure effects; local transit; a generated clinic treatment room; public safety kiosk; media commons; public sanitation; market replenishment; sparse postwar urban ecology; bounded local civil-service administration; price/wage/budget balance; residential-building boundaries; social institutions; public health/sanitation; an entity registry; and an anchored district simulation state.

The location graph now has 18 READY nodes and 5 explicit boundaries. The old dangling `SRC_BUS_INTERIOR` link is replaced by `BOUNDARY_T0_TRANSPORT_INTERIOR_01`, so the T0 transport interior remains deliberately ungenerated until that event requires it. The clinic treatment room is now READY while its back office remains boundary-gated.

The active world-status and readiness-metrics records were also refreshed in V2 so they no longer report Batch 020's 14-location / 2-boundary state. The coverage matrix and gap ledger were corrected to say seven active service workers and 18 READY / 5 boundary locations.

The global record surface covers all 40 tracked domains as either READY or PARTIAL. The gap ledger has no MISSING entries; remaining unresolved facts are 5 UNKNOWN, 12 PARTIAL and 3 BLOCKED_SOURCE_READING_PAUSED. This does not claim that the source world is fully reconstructed. It means every currently identified deficiency has a named state and resolution rule rather than being invisible.

No raw novel text was opened, `SAVE_000002` was not mutated, and no game time advanced.
