# Persistent Gameplay World-State Protocol — 2026-09-08

Status: ACTIVE PROJECT REQUIREMENT
Scope: Unnamed Hunt RPG persistent play, story continuity, cross-chat recovery, spatial evidence, and gameplay recording.

## 1. Player action authority

`PLAYER_ACTION_AUTHORITY = USER_ONLY`

The user exclusively controls the user's character. ChatGPT must not make a meaningful action for the user's character unless the user explicitly directs it. This includes movement, speech, attacks, reactions, item use, ability use, resource spending, quest acceptance, travel, sleep, tactical choices, relationship decisions, and other consequential actions.

At a user-character decision point, the user character remains in `WAITING_FOR_USER_ACTION` until the user acts.

Godmode Auto-Run does not override `PLAYER_ACTION_AUTHORITY = USER_ONLY`.

## 2. AI-character authority

ChatGPT controls its own persistent in-world character and may make decisions for that character according to established game rules, knowledge, personality, resources, injuries, position, and consequences.

NPCs, monsters, environment, time, and world simulation remain Game Master/world-engine responsibilities subject to established authority and deterministic/recorded rules where applicable.

## 3. Canonical spatial state

Every consequential gameplay checkpoint must preserve spatial state at the highest supported precision.

For actors and movable entities record when applicable:
- `space_id`
- `region_id`
- `site_id`
- `building_id`
- `floor_id`
- `room_id`
- world coordinates `(x, y, z)`
- local coordinates relative to the owning spatial frame
- facing/orientation when materially relevant
- previous coordinates
- movement path or route IDs when available
- precision/evidence class

Exact runtime coordinates are authority when produced by the running game. Relative-only story evidence must remain relative; never invent exact coordinates merely to fill a numeric field.

## 4. Building and interior geometry state

Buildings are persistent world objects, not narrative backdrops. The background state must preserve enough geometry and detail to reconstruct the building consistently in later sessions and new chats.

For each building, record as available or author as `USER_AUTHORIZED_CREATIVE_CANON` when a game-facing gap must be filled:

### Identity and placement
- stable `building_id`
- site/region hierarchy
- coordinate frame and origin
- world placement coordinates
- orientation/yaw
- exterior footprint or corner anchors
- neighboring structures and access routes

### Exterior dimensions
- overall length, width, and height
- footprint geometry
- floor count
- foundation/elevation relation
- roof type, roof height/slope when relevant
- wall thickness when established
- exterior door/window positions and sizes
- balconies, porches, ramps, ladders, exterior stairs, loading areas, and other attached structures

### Floor geometry
For each floor:
- floor elevation
- floor-to-floor height
- ceiling height
- usable floor area when known
- hallway dimensions
- stair/ladder/elevator geometry and endpoints
- shafts, voids, atriums, crawlspaces, basements, attics, and roof access

### Room geometry
For each room/space:
- stable `room_id`
- parent floor/building
- local origin
- length/width/height or qualified shape dimensions
- doorways and connected spaces
- window placement
- cover positions
- furniture/interactable placement
- important object coordinates
- collision/nav constraints
- concealment/visibility considerations where gameplay-relevant

### Construction and condition
- structural materials
- wall/floor/roof material
- doors/windows/barriers
- condition/damage
- broken or blocked passages
- hazards
- lighting sources/state
- utilities or mechanisms when relevant
- weather exposure or environmental effects

### Gameplay state
- occupants and their coordinates when relevant
- ownership/control/access permissions
- discovered vs undiscovered areas
- locked/open/broken states
- loot/interactables and their positions
- cover/line-of-sight-relevant geometry
- persistent destruction or modifications caused by gameplay

## 5. Dimension evidence discipline

Every dimension must preserve provenance and precision rather than becoming a naked number.

Recommended fields:
- `measurement_kind`
- `raw_value`
- `raw_unit`
- normalized SI value when applicable
- range/tolerance
- qualifier (`EXACT`, `APPROXIMATE`, `RELATIVE_ONLY`, `UNKNOWN`)
- coordinate frame
- source/provenance
- evidence class
- confidence
- derivation/dependencies if calculated

If the game runtime provides an exact numeric dimension, record it exactly. If only a qualitative relationship exists, preserve it as qualitative. If a missing game-facing value is intentionally authored under the user's creative-fill permission, mark it `USER_AUTHORIZED_CREATIVE_CANON` and keep it reversible/tunable unless explicitly frozen.

## 6. Gameplay evidence ledger

Every consequential action should generate enough evidence to reconstruct what happened and why. Record when applicable:
- action/event ID
- acting character/entity
- timestamp/turn/round
- before/after coordinates
- location/building/floor/room
- resources before/after
- inventory/equipment changes
- ability/status/injury changes
- dialogue/knowledge changes
- NPC/world reactions
- environmental or building-state changes
- causal links
- source of randomness/determinism when used
- resulting checkpoint ID

## 7. Cross-chat checkpoint

A verified checkpoint must be sufficient for a new chat to reconstruct:
- user-character exact current state and position
- AI-character exact current state and position
- NPC/monster states that matter
- current time/round/turn
- active encounter/quest/story state
- inventory/resources/abilities/status/injuries
- relationships and knowledge
- world changes
- current building/interior geometry and object placement around the active scene
- unresolved decisions/unknowns
- last verified action/event
- next legal user decision point

No new chat may retcon a verified checkpoint merely because conversational memory is incomplete. Persistent project authority wins.

## 8. Story presentation

The user-facing gameplay output should normally be presented as immersive story/RPG prose rather than raw state tables.

Presentation order:
1. narrative scene and consequences;
2. dialogue and character reactions;
3. spatially coherent movement/combat/environment description;
4. stop at the user's next meaningful decision when their character must act;
5. optionally show a compact status/evidence footer when it materially helps play.

The full coordinate, dimension, building, inventory, causality, and checkpoint bookkeeping is maintained in the background persistence layer even when not shown in prose.

## 9. Non-retcon rule

Verified geometry and gameplay state remain authoritative until an in-world event changes them. A door that was destroyed stays destroyed; an object moved to a new coordinate stays there; a room does not change size between chats; an NPC cannot occupy incompatible locations at the same time; resources do not restore without a supported mechanic; and the user's character never performs an uncommanded action.

## 10. Relationship to source reconstruction and originality

Source reconstruction remains quarantined evidence. Production game identities and game-facing gap fills must follow the originality rules and must not import prohibited source-story identity-bearing names or vampire content into the shipped game.

Creative fills are permitted only as clearly labeled game/story canon and must never rewrite source evidence as though the source stated them.
