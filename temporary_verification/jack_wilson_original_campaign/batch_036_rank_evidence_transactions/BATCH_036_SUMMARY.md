# Batch 036 Summary

Batch 036 makes the rank system transactional. Every eligible committed event receives a deterministic actor/event idempotency key. The engine scores general VXP using Batch 034, partitions role evidence without duplicating full credit across roles, applies qualitative promotion gates, and commits ledger/profile/rank-change state as one logical transaction.

The active gameplay state machine is superseded by V2, which processes rank evidence after off-screen simulation and before save sealing. A duplicate committed event is a no-op; a half-applied transaction blocks save sealing. Power Rank never gains XP and is only reassessed after material changes to capability, equipment, ability, injury/condition, or demonstrated combat efficiency.

Jack's new ledger begins empty at SAVE_000002: ER0, C0, H0, 0 VXP. No prior-life knowledge or retired Level value is converted into experience.
