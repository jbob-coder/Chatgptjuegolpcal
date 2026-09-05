# Hunt-01 Mudcrest Head Sweep Wound / Contact Classification Runtime

Status: IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-04

## Purpose

Turn the already-resolved `M01_HEAD_SWEEP_GORE` contact/defense/health consequence into a deterministic species/content classification that may emit a valid status application request without applying the status itself.

Owner:
`game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_wound_contact_runtime.gd`.

Schema:
`uhr.hunt01.mudcrest_wound_contact.v1`.

Fixture:
`PROVISIONAL_FIRST_SLICE_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_FIXTURE`.

## Authority boundary

`COMBAT_ATTACK_PACKET.md` requires:
- `SOLID/CLEAN` horn penetration before Head Sweep may request `status_bleeding +1`;
- `CLEAN` impact-dominant sweep before Head Sweep may request `status_off_balance`;
- no independent random status proc.

The existing hostile transaction has mixed `PIERCING + IMPACT` channels but no final penetration/dominance field. Mixed channels alone therefore do not establish either condition.

## Reversible first-slice classifier

Until authored wound/contact data becomes richer:
- no contact or zero applied injury → no status request;
- `BLOCK_STRONG` → no penetration/dominance claim;
- unguarded `GORE_SWEEP` + resolved injury + SOLID/CLEAN → provisional horn penetration → one Bleeding +1 request;
- CLEAN + `BLOCK_PARTIAL` or `BLOCK_BROKEN` + resolved injury → provisional impact-dominant residual force → one Off-Balance request;
- CLEAN unguarded GORE_SWEEP follows horn-penetration priority and does not simultaneously claim impact dominance.

This mapping is replaceable content tuning, not final physical simulation.

## Application request boundary

A qualifying classification emits a stable record with:
- `VALID_STATUS_APPLICATION_REQUEST`;
- request schema `uhr.status_application_request.v1`;
- stable application request ID derived from hostile resolution ID + status ID;
- target/source/action/resolution IDs;
- `ON_HIT_OR_DAMAGE_CONSEQUENCE` trigger;
- Bleeding `intensity_delta = 1` or Off-Balance apply/refresh mode;
- consumer marker `PENDING_GENERIC_STATUS_APPLICATION_RUNTIME`.

This layer does not apply, stack, tick, refresh, expire or remove a status. The generic status owner remains downstream.

## Transaction safety

Classification is idempotent by the original hostile `resolution_id`. It does not reroll contact, apply Health again, spend AP/RP/Stamina, change anatomy or move either actor.

## Integration

Head Sweep ordering becomes:

`CONTACT → DEFENSE/IMPACT → HEALTH/INJURY → SPECIES WOUND/CONTACT CLASSIFICATION → reaction close → Monster activation complete`.

The stable Head Sweep resolution records `wound_contact_classification` alongside the original damage handoff and defense consequence.

## Verification target

Static gate:
`HUNT01_MUDCREST_WOUND_CONTACT_SOURCE_STATIC_VERIFIED`.

Headless gate:
`HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME_VERIFIED`.

The dedicated production test proves Strong-Block no-request, real unguarded SOLID Bleeding request, synthetic CLEAN partial-guard Off-Balance request, replay idempotence and zero Health/resource mutation by the classifier. Android export remains required. Phone/performance remain deferred.