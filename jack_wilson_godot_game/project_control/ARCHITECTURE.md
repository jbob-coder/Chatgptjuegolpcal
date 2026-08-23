# Repository Architecture Contract

AUTHORITY: SOURCE-007 / D-0008
STATUS: PIECE-014_COMPLETE_PIECE-015_NEXT

## Primary rule
Every project artifact belongs to exactly one primary plane. Do not mix planes merely because files are related.

## 1. USER_SURFACE
Canonical area: `docs/user/`
Purpose: concise information the user benefits from reading directly.
Authority rule: projection only; NOT AUTHORITATIVE. User-surface files may summarize canonical control/runtime state but may not independently redefine it.
Allowed examples: current status, playable summary, controls, questions requiring a user decision.
Forbidden examples: runtime `.gd`/`.tscn` content, canonical QA history, independent source-of-truth state.

## 2. CONTROL_PLANE
Canonical areas: `project_control/` and technical/source authority records under `docs/godot/` and `docs/world/`.
Purpose: persistent engineering state, decisions, questions, unknowns, sources, regressions, registries, histories, architecture, and technical provenance.
Authority rule: canonical for project-management/control facts according to the source hierarchy.
Current compatibility mode: `FLAT_COMPATIBILITY`. Existing control records remain at their current flat paths. The atomic ownership-folder migration remains authorized but is deferred to Piece 039 by the newer city-spatial directive.

## 3. GAME_RUNTIME
Canonical areas: `project.godot`, `scenes/`, `data/`, `scripts/` except `scripts/qa/`, and future `assets/`. `data/world/**` is explicitly owned by world spatial runtime data.
Purpose: content read or executed by the game and its runtime implementation.
Authority rule: canonical for implemented game behavior/data, subject to user/source authority and tests.
Forbidden: project-control ledgers and user projections.

## 4. VERIFICATION
Canonical areas: `tests/` and `scripts/qa/`.
Purpose: static/runtime tests, QA gates, routing/state validation, regression protection.
Authority rule: evidence/gate layer; tests do not redefine desired behavior merely to pass.

## Routing precedence
Rules use FIRST_MATCH_WINS. Specific paths must precede broad paths. In particular `scripts/qa/**` routes to VERIFICATION before `scripts/**` routes to GAME_RUNTIME.

## Canonical vs projection
Prefer one canonical fact, one canonical path, one owner, and many generated/derived views. Never maintain two independently editable authoritative copies of the same state.

## File creation gate
Before creating a file determine:
1. What is it?
2. Which plane owns it?
3. Who needs to see it?
4. Is it authoritative or a projection?
5. What is its canonical path?
If those answers are not clear, do not create the file yet.

## World spatial authority
`docs/world/**` contains readable projections of pinned authoritative Drive sources. `data/world/**` contains compact machine-readable runtime projections. Neither may silently invent coordinates. The active construction guard requires full polygon/Z ownership checks before any world geometry is published.

## World coordinate authority
Absolute Asterline vectors use `[east_m, north_m, up_m]`. Runtime-local Godot vectors are derived by the versioned Piece 014 contract at `data/world/asterline/coordinate_transform.json`; source `[E,N,U]` maps to local `[E-E0,U-U0,-(N-N0)]`. Source data, saves, and future network state must retain absolute source coordinates plus stable IDs. No subsystem may invent a second axis swap or persist unlabeled transient local coordinates.

## Graph semantics reserved for Piece 040
NODES = VERBS / ACTIONS.
EDGES = NOUNS / RESOURCES.
The graph is not implemented; this statement fixes semantics only so later implementation cannot invert them.

## Future migration
Piece 039 will create ownership folders such as `project_control/state/`, `knowledge/`, `history/`, and `registry/` as justified, move existing canonical records, and update QA references atomically. Until then, registry `planned_path` values are plans, not current locations.
