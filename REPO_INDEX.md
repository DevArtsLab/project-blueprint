# REPO_INDEX.md - project-blueprint

> Single source of truth for what lives in this repository.
> Regenerate when files or folders are added, removed, or substantially rewritten.
>
> **Last updated:** 2026-11-01

## Top-level

| Path            | What it is                                                     |
| --------------- | -------------------------------------------------------------- |
| `README.md`     | Entry point; usage                                             |
| `REPO_INDEX.md` | This index                                                     |
| `AGENTS.md`     | Agent-facing conventions; foundation adoption                  |
| `copier.yml`    | Copier contract: fields, defaults, slug validation             |
| `*.jinja`       | Scaffold files rendered into generated projects                |
| `.gitignore`    | Ignore rules (shared with scaffold)                            |
| `LICENSE`       | MIT, DevArts Lab (repo's own; `LICENSE.jinja` is the scaffold) |
| `SECURITY.md`   | Disclosure contact, supported versions (shared)                |
| `project.json`  | This repo's workspace-store declaration                        |
| `.agents/`      | Project-scope ai-config: config, skills (project-only)         |
