# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is a completely new game using the same repository/project area that previously contained WorldLife RPG.

WorldLife is no longer the active project. Do not resume WorldLife phone stabilization, life-sim systems, apartment work, city expansion, or Admin Panel development.

The working label `Unnamed Hunt RPG` is temporary until the user chooses a final name.

## Mandatory read order

Before consequential work read:
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `NEW_GAME_MASTER_PLAN.md`
5. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`
6. `NEW_GAME_DISCUSSION_CHECKLIST.md`
7. verified source/tests only after implementation begins.

## Current directive

The user wants:
- aerial/top-down angled 2D/3D hybrid exploration;
- first-person turn-based combat when a battle starts;
- tactical movement and positioning options;
- cover where the environment supports it;
- selectable attack types and selectable body parts;
- authoritative break/sever/destroy anatomy states;
- monster behavior altered by damaged anatomy;
- harvesting whose quantity/quality depends on how much usable material remains on each part;
- crafting/progression connected to harvested materials;
- comprehensive planning and EVOLVE documentation before creation.

## Implementation hold

The user explicitly required discussion after the planning/recording pass.

Therefore:
- GAMEPLAY_SOURCE_CREATED = NO
- IMPLEMENTATION_AUTHORIZED = NO
- ENGINE_SELECTED = NO
- NEXT_ACTION = DESIGN_DISCUSSION

Do not create gameplay code, APKs, scenes, combat prototypes, or final assets until explicitly authorized.

## Architecture law

Input → Domain Request → Validate/Resolve → Authoritative State/Events → Persistence/Debug → Presentation

Aerial and first-person presentation must not independently decide gameplay outcomes.

## First implementation milestone after approval

One complete vertical hunt slice only:
- one region;
- one creature;
- one encounter transition;
- first-person tactical battle;
- meaningful anatomy break/sever interaction;
- condition-based harvest;
- one craftable upgrade;
- save/reload;
- target Android phone verification.

## WorldLife cleanup status

WorldLife is inactive and being removed from the active documentation/source area.

The same repository/location remains because the user explicitly wants it reused for the new game.

Permanent deletion of the frozen Google Drive WorldLife archive was attempted but blocked by the platform safety layer. Do not claim that Drive archive is deleted. It is historical residue only and must not be used as new-game authority.
