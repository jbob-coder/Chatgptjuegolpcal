# Design Decision Ledger

Stable ID: `LEDGER_DESIGN_DECISIONS_V1`  
Mode: append-only public rationale record.  
This ledger stores concise design decisions and evidence; it does not expose private chain-of-thought.

## DD-0001 — Expert routing is mandatory for consequential project work
- Date: 2026-08-18
- Status: CANDIDATE
- Primary expert: Game Systems Architect
- Decision: select one best-fit primary expert by dominant irreversible failure risk, with at most two supporting experts.
- Rationale: project tasks span simulation, state integrity, narrative agency, storage, balance, and research; a generic expert persona obscures which risk owns the decision.
- Alternatives considered: one permanent expert; unrestricted multi-role panel.
- Reversibility: high.
- Validation: YAML parse + deterministic route rules + root route within two reads.

## DD-0002 — Permit explicit original-canon fabrication
- Date: 2026-08-18
- Status: CANDIDATE
- Decision: unresolved design space may be filled as `ORIGINAL_CAMPAIGN_CANON` without waiting for source facts.
- Rationale: the user explicitly delegated canon creation; leaving every missing design choice unknown prevents the world from becoming complete.
- Constraint: invented material must never be mislabeled as source-confirmed.
- Reversibility: medium; use supersession/migration rather than silent retcon.

## DD-0003 — Separate project steward from in-world character
- Date: 2026-08-18
- Status: CANDIDATE
- Decision: project-level creative authority and the fictional character Sol Vale are separate security/knowledge domains.
- Rationale: an in-world participant with project-file or future-canon access would break fairness, knowledge modeling, and player agency.
- Reversibility: low; this is a foundational fairness invariant.

## DD-0004 — Sol Vale begins dormant and unintroduced
- Date: 2026-08-18
- Status: CANDIDATE
- Decision: create a complete character record now but do not place Sol into `SAVE_000002`, event history, relationships, or current scene.
- Rationale: authoring a character record should not silently advance the story.
- Reversibility: high; a later valid encounter can introduce Sol.

## DD-0005 — Sol receives no special ability in this batch
- Date: 2026-08-18
- Status: CANDIDATE
- Decision: ability assignment is deferred until an introduction/character-development batch can create the corresponding ability record and balance tests.
- Rationale: Batch 022's approved Stage-1 affected-file list did not include a new ability record, and inventing a dangling ability reference would violate the scope.
- Reversibility: high.

## DD-0006 — Creative autonomy uses an escalation boundary
- Date: 2026-08-18
- Status: CANDIDATE
- Decision: the steward decides reversible design gaps but asks for user input when the decision is fundamentally the player's voluntary action/personal preference, when equally authoritative directives conflict, or when real-world cost/permission is involved.
- Rationale: autonomy should reduce unnecessary questions without stealing player agency.
- Reversibility: high.
