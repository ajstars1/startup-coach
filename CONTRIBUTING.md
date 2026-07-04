# Contributing

PRs welcome. Two kinds are especially valuable:

1. **New framework skills** — one folder, one `SKILL.md`, frontmatter with `name` + trigger-rich `description`. The bar: the skill must teach the framework faithfully (credit the authors, link the original source), embed the Zero-Hallucination Protocol (all six rules), and end its outputs with "what to validate next". Don't redistribute copyrighted worksheets/books — teach the method, link the source.
2. **Field reports** — you used a skill with a real startup and something was wrong, missing, or magic. Open an issue with what happened.

Ground rules:
- Every claim template in a skill must force `[FACT — source]` / `[ASSUMPTION — validation]` / `[UNKNOWN — research step]` labeling.
- No skill may present AI-drafted customer statements as evidence, ever.
- Keep skills self-contained (no absolute paths, no private materials) and under ~100 lines where possible — skills are loaded into context.
- Test locally: copy the folder into `~/.claude/skills/`, start a fresh session, invoke it against a real (or realistic) founder scenario.

Commit style: conventional commits (`feat:`, `fix:`, `docs:`).
