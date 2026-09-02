# WorldLife RPG — Reboot Discussion Checklist

Status: `OPEN QUESTIONS / NO IMPLEMENTATION`
Last reconciled: 2026-09-02.

Use this file during the design conversation. Decisions move into `WORLDLIFE_REBOOT_MASTER_PLAN.md` once approved.

## A. Identity / setting

- [ ] Final game name.
- [ ] Keep or retire `WorldLife` branding for the new game.
- [ ] Setting: fantasy / modern fantasy / science fiction / post-apocalyptic / other.
- [ ] Player role and reason for hunting.
- [ ] Tone: grounded, dark, adventurous, heroic, survival-heavy, other.
- [ ] World structure: one region, multiple biomes, open zones, mission maps, other.

## B. Exploration presentation

- [ ] Orthographic angled 3D vs perspective aerial camera.
- [ ] 3D monsters + 3D terrain + 2D/billboard details vs another hybrid.
- [ ] Camera rotation: fixed / 90-degree steps / limited free rotation.
- [ ] Movement: virtual stick / tap-to-move / hybrid.
- [ ] Tracking depth: simple clues vs full trail/ecology system.
- [ ] Stealth/ambush at launch or later.
- [ ] Day/night/weather at launch or later.

## C. Combat structure

- [ ] AP pool vs Move + Main + Reaction.
- [ ] Solo-only vs companions/party.
- [ ] Initiative system.
- [ ] Position model: tactical nodes / range bands / compact grid.
- [ ] Cover model depth.
- [ ] Reaction system depth.
- [ ] Player limb injuries yes/no.
- [ ] Retreat/flee rules.
- [ ] Death/failure penalty.
- [ ] Persistent wounded monsters that can escape and be tracked again yes/no.

## D. Weapons

- [ ] Launch weapon families.
- [ ] Melee/ranged balance.
- [ ] Damage types retained: cutting / piercing / blunt.
- [ ] Ammunition/reload mechanics.
- [ ] Durability/sharpening mechanics yes/no.
- [ ] Weapon techniques/skills depth.

## E. Anatomy / harvesting

- [ ] How detailed anatomy should be per monster.
- [ ] Break vs sever vs destroy rules.
- [ ] How visible exact part condition should be to the player.
- [ ] Harvest as menu choice vs small interactive process.
- [ ] Harvest tools/skills.
- [ ] Material quality tiers vs continuous quality.
- [ ] Carcass persistence yes/no.
- [ ] Decomposition/time pressure yes/no.

## F. Progression

- [ ] Equipment-driven progression as primary yes/no.
- [ ] Character levels yes/no.
- [ ] Skill trees/perks.
- [ ] Weapon mastery.
- [ ] Hunting rank/reputation.
- [ ] Crafting depth.
- [ ] Bestiary/research progression.

## G. World/RPG layer

- [ ] Hub/town structure.
- [ ] Quest/contract structure.
- [ ] Story importance.
- [ ] NPC relationships.
- [ ] Economy/merchants.
- [ ] Property/base upgrades.
- [ ] Whether any previous life-sim concepts survive the reboot after old code is removed.

## H. Visual direction

- [ ] Stylized realism confirmed or changed.
- [ ] Creature art direction.
- [ ] Character art direction.
- [ ] Biome/environment references.
- [ ] Gore/wound visibility level.
- [ ] HUD density.
- [ ] First-person combat framing.

## I. Technology

- [ ] Exact target Android phone/model/GPU.
- [ ] Minimum Android requirement.
- [ ] Godot 4.7 Compatibility vs LibGDX/Kotlin vs other.
- [ ] Package ID strategy.
- [ ] Signing key strategy.
- [x] Reuse the same active GitHub/Google Drive project area for the new game.
- [ ] Exact cleaned folder/root layout inside that project area.
- [ ] Local-phone build/test workflow.

## J. Legacy cleanup

Resolved:

- [x] Remove the old WorldLife active implementation from the active project area.
- [x] Remove old active APK/build/runtime artifacts from the area used by the reboot.
- [x] Do not carry old gameplay code into the new source tree by default.
- [x] Reuse the same project area after cleanup rather than creating a separate active project area.
- [x] A rollback-only archive may remain outside the active source/work area for EVOLVE recovery; it must not be treated as active code.

Still to decide before cleanup execution reaches device/account data:

- [ ] Whether the installed old package/save data on the phone should also be erased.
- [ ] Whether the reboot keeps the same Android package ID/signing lineage or uses a new one.
- [ ] Whether any old art/content assets are intentionally salvaged after provenance/fit review, or all are discarded.

Cleanup is approved as a project decision, but the current milestone remains documentation/discussion only. No reboot gameplay code is created until the user ends the discussion hold.
