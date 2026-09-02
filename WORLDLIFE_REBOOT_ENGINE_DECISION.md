# WorldLife RPG — Reboot Engine Decision Gate

Status: `OPEN / DISCUSSION REQUIRED`
Date: 2026-09-02

No engine is approved yet.

## Current recommendation to test first

`Godot 4.7 + GDScript + Compatibility renderer`

Reason:

- one editor/runtime for aerial 2D/3D hybrid exploration and first-person 3D combat;
- native scene, animation, input, physics, resource and Android export workflows;
- Compatibility renderer is the lower-end OpenGL ES path and is appropriate to probe on older Android hardware;
- domain combat logic can remain data-driven and testable outside visual scripts.

## Alternative

`LibGDX + Kotlin`

Strong Android/runtime control, but substantially more custom scene/content/editor/animation tooling would need to be built.

## Not preferred by default

Continuing `Jetpack Compose + SceneView` for the reboot.

Reason: the new design needs enough game-engine functionality that continuing the old presentation stack would likely recreate too much engine infrastructure manually.

## Required proof before lock-in

On the actual target phone, build a tiny probe containing:

- landscape launch;
- aerial hybrid scene;
- one animated large creature;
- first-person close view;
- 2D UI overlay;
- touch input;
- scene transition;
- suspend/resume;
- frame-time/memory observation.

Engine decision is frozen only after this probe passes and the user approves the direction.
