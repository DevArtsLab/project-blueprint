# Agent Guide

project-blueprint - DevArts Lab project. Copier template; `template/` is the
scaffold rendered into generated projects; root files are this repo's own docs.

## Foundation

This repository is governed by the DevArts Lab foundation: `../foundation`
(remote: `DevArtsLab/foundation`). Adopted revision: 3a (2026-10-26).

## Conventions

Stamped conventions for generated projects: `template/AGENTS.md.jinja`.
Template-specific: field contract in `copier.yml`; conditionals in Jinja
`{% if %}`, never post-render edits.
