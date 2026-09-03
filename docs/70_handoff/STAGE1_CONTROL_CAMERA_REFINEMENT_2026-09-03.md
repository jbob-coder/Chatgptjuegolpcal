# Stage 1 Control / Camera Refinement — 2026-09-03

Status: SOURCE + REGRESSION GUARDS RECORDED / CI + GALAXY A03s RETEST PENDING

## Trigger

Direct Galaxy A03s feedback on the camera-follow build:
- camera-follow concept works, but turning is too aggressive;
- user requested a Settings button;
- Settings should use tabs;
- one tab should expose `Look Speed`;
- old four directional touch keys should be replaced by an analog joystick for better control;
- the setting/decision must be saved and documented so future work does not silently change it without warning.

This user feedback supersedes the prior camera-retune waiting state for this bounded control/camera piece.

## Bounded scope

Implemented only the Stage-1 control/camera foundation refinement:
1. analog movement joystick;
2. calmer tunable camera/Hunter heading response;
3. Settings button + tabbed Settings overlay;
4. persisted Look Speed;
5. durable protected-behavior README;
6. executable static regression guards preventing silent reversion.

Not included:
- Monster placeholder collision repair;
- combat;
- Monster AI/damage/navigation;
- production settings architecture;
- production UI art;
- right-stick/free-look combat camera system;
- final accessibility tuning.

## Source changes

`probes/android_stage1/scripts/probe_world.gd`
- old four-button boolean movement removed;
- analog joystick vector added;
- joystick touch ownership/reset logic added;
- analog magnitude/deadzone handling added;
- Settings open state zeros movement;
- Look Speed persisted with Godot `ConfigFile`;
- settings path: `user://stage1_settings.cfg`;
- key: `controls/look_speed`;
- default Look Speed: `35%`;
- Hunter turn and aerial-camera follow response now derive from Look Speed;
- aerial camera continues updating during first-person mode to avoid stale return framing.

`probes/android_stage1/scenes/probe_world.tscn`
- removed Up/Down/Left/Right Button nodes;
- added lower-left `MoveJoystick` + `Knob`;
- added top-right `SETTINGS` button;
- added tabbed `SettingsOverlay`;
- added `Controls` tab with `Look Speed` slider;
- added `Display` placeholder tab only;
- retained AERIAL/FIRST PERSON toggle.

## Protected continuity authority

Created:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Primary law:
**do not silently replace, remove or materially retune the approved joystick/settings/look-speed/camera behavior.**

A future change must state the reason, preserve prior behavior/value in the record, update regression guards, rebuild, and re-test on Galaxy A03s.

## Regression guard

`probes/android_stage1/tests/static_preflight.py` now checks for:
- MoveJoystick;
- joystick Knob;
- Settings button;
- tabbed Settings overlay;
- Controls tab;
- Look Speed slider/signal;
- stable persistence path/key;
- default Look Speed 35%;
- joystick handlers;
- camera synchronization;
- absence of the old four arrow Button nodes;
- existence of the protected control-camera README.

This turns the continuity requirement into an executable build guard.

## Phone acceptance test for this exact refinement

On the Galaxy A03s:
1. drag joystick partially and verify slower analog movement magnitude;
2. drag fully and verify full movement;
3. verify diagonal motion;
4. release joystick and verify immediate stop/no stuck input;
5. open Settings and verify movement is reset;
6. Controls tab → set Look Speed low/high and verify turn response changes;
7. choose preferred Look Speed and close Settings;
8. restart app and confirm value persists;
9. verify camera remains behind/follows Hunter heading without aggressive snapping at the chosen value;
10. verify first-person/aerial toggling still preserves position.

## Separate known next defect

The brown Monster placeholder still has no trustworthy solid collision and remains independently recorded as:
`MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`.

Do not repair it until this current control/camera build completes CI and receives phone evidence, unless a new explicit user instruction supersedes that sequencing.
