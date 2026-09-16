# Shooter RPG — Standalone New Game

Status: NEW PROJECT / DESIGN RESET / PIXEL VISUAL REFERENCE SELECTED / NO GAMEPLAY IMPLEMENTATION CLAIMED
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project identity

`Shooter RPG` is a **new standalone game**.

It is NOT a visual branch, remake, migration, sequel, subsystem, or continuation of Unnamed Hunt RPG, WorldLife RPG, or any other previous game in this repository.

The `shooter-rpg` branch was technically created from an older repository branch, so inherited files and Git history are present. That ancestry is a repository fact only. It does not make the projects related.

## Hard separation rule

Do not automatically reuse or inherit previous-game:
- gameplay code;
- combat rules;
- monster/anatomy systems;
- body-part break/sever systems;
- harvesting/crafting;
- lore, factions, settlements, characters or creatures;
- save formats;
- progression/level rules;
- mining/crystal systems;
- Diamond Watch;
- NPC relationship systems;
- world maps;
- UI structure;
- performance/storage limits;
- build evidence;
- test results;
- Android artifacts.

Any previous-game concept may enter Shooter RPG only after the user explicitly chooses to import it or a new Shooter RPG design document independently adopts it.

## Confirmed Shooter RPG direction

Currently confirmed:
- standalone new game;
- working project/branch name: `Shooter RPG` / `shooter-rpg`;
- pixel-style visual direction;
- the saved generated pixel image is the primary visual mood/composition reference;
- Android/mobile considerations remain relevant because the user is developing for phone, but Shooter RPG must establish its own technical requirements rather than inherit another game's limits.

Everything else remains open until designed for this game.

## Canonical visual reference

Original PNG saved in Google Drive:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Drive file ID: `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG copy:
- `Shooter RPG - Pixel Visual Reference.jpg`
- Drive file ID: `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

Names, quests, NPC names, item counts, settlement names, monster details and button text visible in the generated image are concept placeholders unless separately approved.

## Source isolation

Existing inherited `game/`, Hunt-01 files, old design bibles, old workflows and old build evidence belong to previous projects unless a future Shooter RPG decision explicitly imports a specific piece.

A new Shooter RPG implementation should use its own project root/package namespace and its own tests/build evidence. Do not silently treat old green CI as proof for Shooter RPG.

Recommended future implementation root: `shooter_game/`.

## Current objective

Before coding, define Shooter RPG from zero at the player-experience level:
1. exact camera/perspective;
2. movement and aiming model;
3. what makes it a shooter;
4. weapon/combat loop;
5. RPG progression depth;
6. world structure and travel;
7. interaction/NPC scope;
8. UI/HUD on phone;
9. pixel rendering/art pipeline;
10. smallest complete playable vertical slice.

Do not import previous-game mechanics to fill gaps.

For continuation, start with `START_HERE_NEW_CHAT.md`.
