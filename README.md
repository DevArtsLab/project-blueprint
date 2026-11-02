# project-blueprint

Copier template for new workspace repositories.

## Layout

| Path         | Role                                        |
| ------------ | ------------------------------------------- |
| `copier.yml` | Field contract: names, defaults, validation |
| `template/`  | Scaffold rendered into generated projects   |

`template/` holds the files stamped into children; root files are this
repository's own docs. Shared generic files (`.gitignore`,
`.dev.vars.example`, `SECURITY.md`, `.agents/`, `md/`) exist in both places.

## Usage

```bash
copier copy --data-file <identity-manifest>.json --data slug=<slug> --defaults \
  <this-repo> <dest>
copier update <dest>   # after template changes, converge generated repos
```
