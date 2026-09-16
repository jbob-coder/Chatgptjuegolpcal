# Shooter RPG — Project Identity and Isolation Contract

Status: AUTHORITATIVE / STANDALONE PROJECT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Identity

Shooter RPG is a new game created as its own project.

It is not related to the previous monster-hunting game except that both currently exist in the same repository history.

## Isolation contract

Repository ancestry must never be treated as design inheritance.

By default, Shooter RPG imports NOTHING from previous games.

Explicit import is required before reusing:
- code;
- data schemas;
- saves;
- gameplay systems;
- characters;
- creatures;
- lore;
- maps;
- UI;
- progression;
- economy;
- NPC simulation;
- art assets;
- tests;
- build evidence;
- technical budgets.

## Current inherited files

The branch contains older files because it was forked from an existing repository branch. Those files are retained to avoid destructive cleanup before the new project's structure is established.

They should be treated as:
`LEGACY_PRESENT_IN_REPOSITORY / NOT_SHOOTER_RPG_AUTHORITY`.

## New implementation lineage

When coding starts, use a dedicated root such as:
`shooter_game/`

The Shooter RPG project should then gain its own:
- engine/project configuration;
- source packages;
- assets;
- save/version lineage;
- tests;
- CI workflows;
- Android application/package identity;
- documentation;
- build artifacts.

## Current confirmed creative direction

- pixel-style 3D presentation;
- third-person presentation inspired by the selected reference image;
- shooter/RPG identity;
- mobile/Android usability is an important target;
- exact gameplay details are still being designed.

## Canonical reference

`Shooter RPG - Pixel Visual Reference ORIGINAL.png`
Google Drive ID: `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

This image defines visual inspiration only. It does not import the previous game's world or mechanics.
