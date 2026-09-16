# Shooter RPG — Mature 21+ Content Standard

Status: AUTHORITATIVE CREATIVE TONE / INTERNAL 21+ TARGET
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Purpose

Shooter RPG is designed for an adult audience. The project uses a **21+ mature target** as an internal creative standard.

This is not a claim that ESRB, PEGI, Google Play, Apple, or another ratings body/storefront has assigned an official age rating. Formal classification will be determined from the actual shipped content later.

## Tone

The world may be harsh, dangerous, morally complicated and emotionally consequential. Mature material should support atmosphere, stakes, character and player decisions rather than exist only for shock value.

Allowed mature themes can include:
- lethal firearm violence;
- blood and visible injury;
- death and aftermath;
- strong language where character/context supports it;
- criminal activity, corruption and exploitation as story subjects;
- alcohol, tobacco or fictional intoxicants as world/story elements;
- grief, betrayal, trauma, coercive institutions and moral compromise;
- difficult decisions without a clearly correct answer.

## Violence standard

Weapons should feel dangerous rather than weightless.

Preferred direction:
- strong readable hit feedback;
- blood where appropriate;
- injuries may remain visible;
- environmental aftermath may communicate that violence occurred;
- gore can exist when justified by weapon/enemy/scene context, but should not become constant visual noise that damages readability or performance.

Pixel styling does not require sanitizing consequences.

## Adult relationship standard

Romance and sexual themes may exist later if they serve the game, but they are not required for the first vertical slice.

Hard project rule:
- any character participating in romantic or sexual content must be explicitly an adult and at least 21 years old in canon;
- minors are never sexualized;
- family/guardian relationships are never treated as sexual content;
- consent and relationship state must be authored deliberately rather than inferred from a generic score.

Mature intimacy, if added later, is narrative content and must not be an accidental result of procedural NPC state.

## Language

Dialogue may use strong profanity when it fits the speaker and situation. Profanity should not replace characterization.

## Vice / substances

Adult locations or characters may include bars, drinking, smoking, gambling references, debt, black markets or other vice-oriented worldbuilding when useful to story and setting.

These are not automatically progression systems. Real-money gambling, predatory monetization and pay-to-win design are outside the foundation.

## Narrative consequences

Mature choices should produce believable persistent consequences where the system supports them. Examples include choosing survival over helping someone, cooperating with corrupt authorities for access, deciding whether to expose or conceal information, or choosing lethal/nonlethal outcomes where authored alternatives exist.

Avoid fake choices that immediately collapse back into identical state.

## First vertical slice boundary

`SHOOTER_RPG_VERTICAL_SLICE_001` does not need romance, explicit sexual content, heavy gore or a large narrative system to prove the adult tone.

The first slice can establish maturity through grounded firearm consequences, adult dialogue tone, environmental storytelling, danger/aftermath and restrained blood/injury treatment when combat implementation reaches that layer.

Core control, camera, shooting, readability, pixel presentation and Android usability remain the first priorities.

## Implementation separation

Where practical, mature presentation intensity should be data/configuration-driven rather than embedded in hit/damage authority. This preserves the ability to tune blood/gore presentation later without rewriting core combat logic.

## Authority

This document controls Shooter RPG's audience/tone direction. It imports no mature-content rules or story material from previous games.
