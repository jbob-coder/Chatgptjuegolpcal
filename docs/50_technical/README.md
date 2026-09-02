# 50_technical — Architecture, Code and Platform Mapping

Purpose: technical ownership and implementation-facing documentation once matching source exists.

Belongs here:
- domain/module architecture;
- engine-specific scene/module map after engine selection;
- persistence/save schemas when implemented;
- streaming implementation mapping;
- Android lifecycle/platform notes;
- actual build/install documentation;
- import/export pipeline tied to real tools/assets;
- subsystem READMEs beside/source-linked to implementation.

Current engine-neutral root authorities:
- `/SYSTEM_ARCHITECTURE_BLUEPRINT.md`;
- `/CODE_GUIDE.md`;
- `/DEVELOPMENT_REFERENCE.md`;
- `/IMPLEMENTATION_ROADMAP.md`.

Important rule: do not create detailed class/API/scene documentation for code that does not exist. Design architecture may be planned, but implementation claims require current verified source.

World packages may specify desired streaming relationships; this area eventually documents how the chosen engine implements them.
