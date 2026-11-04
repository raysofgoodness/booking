# Booking Platform — Agent Instructions

## Working Mode (Human-First Learning)

- **Human implements by default (`ready-for-human`):** The developer writes the code for each ticket to deeply understand every layer for interviews.
- **Agent role:** Do NOT autonomously write the full ticket implementation unless the user explicitly asks for help or gets stuck on a step. By default, explain concepts, verify schemas/queries/code, run reviews (`/code-review`), and guide through edge cases.

## Agent skills

### Issue tracker

Local markdown files under `.scratch/<feature>/` (ignored by Git). See `docs/agents/issue-tracker.md`.

### Triage labels

Default five canonical triage roles (`needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`). See `docs/agents/triage-labels.md`.

### Domain docs

Single-context layout (`GLOSSARY.md` + `docs/adr/` at the repo root). See `docs/agents/domain.md`.
