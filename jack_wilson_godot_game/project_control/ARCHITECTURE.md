# Repository Architecture Contract

AUTHORITY: SOURCE-007 / D-0008
STATUS: PIECE-012_ACTIVE

## Primary rule
Every project artifact belongs to exactly one primary plane. Do not mix planes merely because files are related.

## 1. USER_SURFACE
Canonical area: `docs/user/`
Purpose: concise information the user benefits from reading directly.
Authority rule: projection only; NOT AUTHORITATIVE. User-surface files may summarize canonical control/runtime state but may not independently redefine it.
Allowed examples: current status, playable summary, controls, questions requiring a user decision.
Forbidden examples: runtime `.gd`/`.tscn` content, canonical QA history, independent source-of-truth state.

## 2. CONTROL_PLANE
Canonical areas: `project_control/` and technical authority records under `docs/godot/`.
Purpose: persistent engineering state, decisions, questions, unknowns, sources, regressions, registries, histories, architecture, and technical provenance.
Authority rule: canonical for project-management/control facts according to the source hierarchy.
Current compatibility mode: `FLAT_COMPATIBILITY`. Existing control records remain at their current flat paths during Piece 012. Piece 013 will migrate them into ownership folders atomically and update every validator/reference in the same bounded piece.

## 3. GAME_RUNTIME
Canonical areas: `project.godot`, `scenes/`, `data/`, `scripts/` except `scripts/qa/`, and future `assets/`.
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

## Graph semantics reserved for Piece 014
NODES = VERBS / ACTIONS.
EDGES = NOUNS / RESOURCES.
The graph is not implemented in Piece 012; this statement fixes semantics only so later implementation cannot invert them.

## Future migration
Piece 013 will create ownership folders such as `project_control/state/`, `knowledge/`, `history/`, and `registry/` as justified, move existing canonical records, and update QA references atomically. Until then, registry `planned_path` values are plans, not current locations.
