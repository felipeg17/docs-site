# Pocket Timer docs

The user documentation of Pocket Timer, a small command-line focus timer, as Markdown pages in `docs/`.
There is no application code here: the output is documentation, and the "test" checks links.
Readers use these pages offline, so a broken link or an external URL is a bug.

## Layout
- `docs/*.md`: the pages. `docs/index.md` is the entry point and lists every page.
- `docs/allowed-links.txt`: the only external URLs allowed. Only a human edits it.
- `tools/check_links.py`: the link checker (standard library only).
- `gates/`: the human's automatic checks. `gates/no-external-links.sh` rejects any `http(s)` URL not in `docs/allowed-links.txt`.
- `factory.sh`, `lib/`, `doctor.sh`, `dashboard/`, `.claude/agents/`: the factory itself. Not documentation.

## Commands
- Run `python3 tools/check_links.py` from the repo root. It must end with `0 broken link(s)` before any PR.
- Run `bash gates/no-external-links.sh`. It must print `No external links.`

## How the link check works
- It checks every relative link `[text](page.md)` and anchor `page.md#slug` in `docs/*.md`.
- An anchor is the GitHub slug of a heading: lowercase, punctuation removed, spaces become `-`.
  Example: `## Where is my history stored?` becomes `#where-is-my-history-stored`.
- If you rename a heading, update every link to its anchor.

## Conventions
- One `# Title` per page, then `##` sections. Short paragraphs, second person ("you"), present tense.
- Commands in backticks: `pocket start`. Config keys as `key = value`.
- Every page is linked from `docs/index.md` as `- [Title](page.md): one-line summary.`
- Link to sections with `page.md#section-slug`. Do not use external links.
- Use only the commands, flags and config keys that the ticket or the existing pages give.
  Do not invent commands, versions or install steps.

## Do not change
- Only the paths in SCOPE (`factory.conf`, currently `docs/`) may change.
- Do not touch `factory.sh`, `factory.conf`, `lib/`, `gates/`, `.claude/`, `tools/`, `doctor.sh`, `dashboard/`,
  `docs/allowed-links.txt` or this file.
- Change only the pages that the ticket needs. Do not rewrite or restyle other pages.
- Phase state lives in `.factory/` as Markdown files.
