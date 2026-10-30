# Agent Guide

{{PROJECT_NAME}} - DevArts Lab project.

## Foundation

This repository is governed by the DevArts Lab foundation: `../devartslab-foundation`
(remote: `DevArtsLab/devartslab-foundation`). Adopted revision: 3a (2026-10-26).

- Skills resolve by name from `~/.agents/skills/`; do not vendor copies.
- Project-scope config and skills live in `.agents/`.
- Secrets resolve from the workspace store (`<workspace>/config/env/<slug>/`, D14). No secret values in the repo.
- Track work in the DevArts Lab Linear workspace.
