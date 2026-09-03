# Unnamed Hunt RPG — New Chat Continuation Prompt

Use the prompt below in a new ChatGPT conversation when continuing this project.

---

@GitHub

You are continuing active development of my Android game project in repository:
`jbob-coder/Chatgptjuegolpcal`

Active branch:
`worldlife-reference-docs`

This project is the new Android-targeted monster-hunting RPG currently using the working name `Unnamed Hunt RPG`.

**WorldLife is abandoned as the active game. Do not resurrect or reuse WorldLife gameplay architecture, saves, coordinates, NPC systems, or old source unless the current repository explicitly says something is still authoritative.**

## FIRST ACTION — DO NOT SKIP

Before coding, designing, documenting, generating assets, fixing bugs, or making assumptions:

1. Fetch and read the CURRENT repository copy of `EVOLVE_ALIGNMENT.md` from the active branch.
2. Then read `PROJECT_HANDOFF.md`.
3. Read `START_HERE_NEW_CHAT.md`.
4. Read `DOCUMENTATION_INDEX.md`.
5. Read the newest specialized handoff relevant to the current task.
6. Read the owning source/package/files for the exact bounded piece.
7. Reconstruct the real current project state from those files and current build/device evidence.

Do **not** use old chat memory, prior summaries, or assumptions as the authority when current repository/source/device evidence exists.

## MANDATORY EVOLVE LOOP

Follow the current EVOLVE contract exactly.

At minimum:

`READ EVOLVE`
→ `READ CURRENT STATE/HANDOFF`
→ `VERIFY STATE`
→ `IDENTIFY EXACTLY ONE SMALL PIECE`
→ `IDENTIFY OWNER + READINESS GATE`
→ `STATE THE EXACT CURRENT BOUNDED ACTION TO ME`
→ `RESEARCH IF REQUIRED`
→ `IMPLEMENT OR DOCUMENT`
→ `TEST AT THE HIGHEST AVAILABLE LEVEL`
→ `INSPECT FOR REGRESSION`
→ `FIX FAILURES WITHIN THE SAME PIECE`
→ `UPDATE OWNING DOCS/HANDOFF`
→ `SAVE/COMMIT`
→ `READ BACK THE SAVED RESULT`
→ `MARK EXACT STATUS`
→ `SELECT EXACT NEXT PIECE`
→ `WRITE THAT NEXT PIECE INTO EVOLVE`
→ `STATE THE SAME NEXT ACTION TO ME`

Do not combine unrelated systems just to move faster.

Do not start the next unrelated piece until the current piece has reached its correct verification/documentation boundary.

## REQUIRED NEXT-ACTION RULE

This is mandatory for every work pass.

Before ending your response:

1. Decide exactly what **you will do next**.
2. Update `EVOLVE_ALIGNMENT.md` so that exact next action is recorded in the repository.
3. Keep implementation and independent-design next actions separate when both exist.
4. Tell me the same next action in the chat.
5. Use explicit wording:

`NEXT THING I WILL DO: <one exact bounded action>`

If blocked on my phone test, device evidence, or another external requirement, use:

`BLOCKER: <exact missing evidence/action>`
`NEXT THING I WILL DO AFTER THAT: <one exact bounded action>`

Do not end with vague wording such as `continue`, `keep working`, `improve the game`, or `do more testing`.

**The next step must never exist only in chat. It must also be written into EVOLVE before the work pass is considered closed.**

## DEVELOPMENT PRINCIPLES

- Quality over speed.
- Evidence over confidence.
- Root-cause fixes over patches.
- Current source/repository/device evidence over memory.
- One bounded piece at a time.
- Build starting/foundation elements first before trying to create the whole game.
- Never claim Godot parse, editor run, APK build, phone runtime, performance, or visual verification unless that exact gate was actually executed.
- If the highest required environment is unavailable, stop at the highest verified gate and record the blocker.
- Preserve stable IDs, documented contracts, protected behavior, and source ownership.
- Do not silently change user-approved controls, camera behavior, settings behavior, or other protected contracts. Read their owning README/contract first and explicitly warn/document any change.

## BUILD READINESS

Use the current repository Build Readiness Gate Matrix.

Every open requirement belongs to one of:

- `MUST_EXIST_BEFORE_ENGINE_PROBE`
- `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`
- `MUST_EXIST_BEFORE_COMBAT`
- `MUST_EXIST_BEFORE_VERTICAL_SLICE`
- `CAN_WAIT_UNTIL_EXPANSION`

An open question blocks only the earliest implementation gate that genuinely needs its answer.

Do not hold early implementation because expansion-level lore/content is still open.

## CURRENT PROJECT CONTINUITY

Do not trust the following as a replacement for repository readback; it is only orientation for finding the correct files:

- Android baseline phone: Samsung Galaxy A03s.
- Stage-1 candidate stack has been Godot 4.7 family + GDScript + GL Compatibility/OpenGL3.
- The Stage-1 probe is isolated under `probes/android_stage1/` and must not silently become the production game architecture.
- Control/camera behavior has a protected authority under `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.
- Combat design authorities are under `docs/20_gameplay/combat/`.
- The latest exact next actions must be taken from the CURRENT `EVOLVE_ALIGNMENT.md`, not from this prompt.

## COMMUNICATION

Be precise and direct.

Before beginning the bounded work, tell me what exact piece you are taking and why it is the highest-value valid next piece under EVOLVE.

After completing it, report:
- what changed;
- what was verified;
- what remains unverified;
- any new blocker;
- the exact next action you wrote into EVOLVE.

Then end with:

`NEXT THING I WILL DO: ...`

or, if blocked:

`BLOCKER: ...`
`NEXT THING I WILL DO AFTER THAT: ...`

Start now by reading the current repository state. Do not begin coding before that read/verification step.
