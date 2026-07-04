# startup-coach

**Agent-based startup coaching skills for Claude Code — with a zero-hallucination protocol.**

Most AI startup advice fails the same way most startups fail: confident guesses presented as facts. This repo takes the opposite bet. Every skill here forces one discipline — **every claim about your market, your customers, or your business gets labeled `FACT` (with a source), `ASSUMPTION` (with a validation plan), or `UNKNOWN` (with a research step)**. The AI drafts hypotheses; only real customers validate them.

> Per Steve Blank: *there are no facts inside the building.* The AI is inside the building too.

## What you get

One **master skill** that diagnoses your situation and orchestrates the rest, plus ten standalone skills you can run individually:

| Skill | Framework | Author(s) | Use when |
|---|---|---|---|
| `/startup-coach` | Master orchestrator — routing, multi-agent dispatch, ledger merging, verification | — | Any startup question, any stage |
| `/facts-assumptions-unknowns` | **The Belief Ledger** — Facts / Assumptions / Unknowns with evidence grades | incubation-program practice | ALWAYS FIRST — the single source of truth |
| `/customer-discovery` | Customer Development interviews | Steve Blank & Bob Dorf; Giff Constable | Before/after talking to any customer |
| `/experiments` | Test cards — price tests, concierge MVPs, channel & smoke tests | David J. Bland & Osterwalder | When interviews can't answer it (esp. pricing) |
| `/problem-discovery` | Persona, Problem Statement, Empathy Map, Ecosystem & Workflow | Dave Gray (empathy map) et al. | "Who has this problem?" is fuzzy |
| `/jtbd` | Jobs to be Done + Market Definition | Clayton Christensen; Tony Ulwick | Defining your market by customer + job |
| `/where-to-play` | Market Opportunity Navigator | Marc Gruber & Sharon Tal | Choosing which market to pursue; pivots |
| `/value-proposition-canvas` | Value Proposition Canvas | Osterwalder, Pigneur, Bernarda, Smith | Shaping what you offer and why it matters |
| `/business-model-canvas` | Business Model Canvas + market types | Osterwalder & Pigneur; Blank | Turning a validated problem into a business |
| `/secondary-research` | Structured desk research | — | Converting assumptions to sourced facts |
| `/startup-scorecard` | Evidence-based self-evaluation (8 dimensions, 0–5) | incubation-program practice | Health check before demo days / funding / pivots |

The master skill launches **one subagent per framework in parallel** — each agent gets the founder's context verbatim, reads its framework's `SKILL.md` + `TEMPLATES.md`, and works under the full protocol — then a **verifier agent** hunts for unlabeled claims, unsourced numbers, invented customer evidence, and cross-document contradictions before you ever see the output. No subagent support in your environment? Every skill also runs inline.

**Every skill ships with a `TEMPLATES.md`** — fill-in markdown structures (F/A/U tables, the problem-statement mad-lib, interview debrief sheets, the three Where-to-Play worksheets, both VPC sides, the 9-block BMC, the scorecard) that agents and humans copy into the project's `discovery/` folder. The master skill's templates include the agent-prompt skeleton and the `00-CONTEXT.md` state file that lets any future session resume instead of re-analyzing.

## Install

```bash
git clone https://github.com/ajstars1/startup-coach.git
cd startup-coach
./install.sh          # copies skills into ~/.claude/skills/
```

Or copy any single skill folder into `~/.claude/skills/` (personal) or `your-project/.claude/skills/` (per-project).

## The architecture (v2): one ledger, many lenses

Every claim about your venture lives once, with a stable ID, in a **Belief Ledger** (`discovery/LEDGER.md`): `F#` facts (sourced), `A#` assumptions (with validation plans and **evidence grades E0–E4**), `U#` unknowns (with research steps). Framework skills are *lenses* that reference ledger IDs; interviews, experiments, and research are *movers* that change grades. Restated claims drift — referenced claims can't, and the verifier checks it mechanically. Full rationale: [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md).

**Evidence grades** — because binary "validated ✓" is how founders lie to themselves:
`E0` opinion/compliment (counts for nothing) → `E1` told story → `E2` observed behavior/artifact → `E3` commitment (time, intros) → `E4` transaction. Working-validated = E3 ×3 independent sources; **pricing claims accept only E4** — only refusable prices produce truth.

## The Zero-Hallucination Protocol

Embedded in every skill; the whole repo in six rules:

1. Every claim is labeled `[FACT — source]`, `[ASSUMPTION — how to validate]`, or `[UNKNOWN — how to find out]` — and anchored to its ledger ID.
2. Never invent numbers. No citable source → it's an UNKNOWN, with the research step that would answer it.
3. Never invent customer evidence. No fabricated quotes, no personas presented as real people. AI-drafted customer claims are `[ASSUMPTION, E0]` until real customers move the grade.
4. Framework mechanics come from the referenced sources, with authors credited — not improvised.
5. Filled canvases are hypothesis drafts, never conclusions. Every output ends with a ledger delta + *what to validate next, at what evidence bar*.
6. Compliments are not validation (E0). Money, time, and introductions are (E3–E4) — Constable, *Talking to Humans*.

## Design principles

- **Loop-shaped, not canvas-shaped.** The weekly cadence — inventory existing evidence → gate check → pick the cheapest decisive test → run → debrief → persist — is the product; canvases are byproducts.
- **Artifacts before memory.** Intake starts by auditing what already exists (logs, analytics, configs, inboxes, old posts' reach) — founder memory routinely contradicts the record, and "zero response" has three different causes only artifacts can distinguish.
- **Stage- and problem-aware.** No idea yet → start from your abilities (Where to Play, Worksheet 1). Raw idea → ledger + research + go/no-go. Validating → the loop. Scaling → business model + unit economics. The master skill routes by the problem in front of you.
- **Founders do discovery.** These skills prepare and debrief customer interviews and experiments; they never pretend to replace them.
- **Evidence over enthusiasm.** "Not now" and "not for me" are treated as valid, valuable outcomes — the skills are built to never push "pursue" to please you.
- **Interview memory.** Skills write debriefs and F/A/U movements to `discovery/` in your project so any future session resumes instead of re-analyzing.

## Credits & further reading

These skills stand on published work by people who figured this out the hard way:

- **Steve Blank & Bob Dorf** — Customer Development, *The Startup Owner's Manual*, the free ["How to Build a Startup"](https://www.udacity.com/course/how-to-build-a-startup--ep245) course
- **Alexander Osterwalder & Yves Pigneur** (with Greg Bernarda, Alan Smith) — *Business Model Generation*, *Value Proposition Design* — [strategyzer.com](https://www.strategyzer.com/)
- **Marc Gruber & Sharon Tal** — *Where to Play* / Market Opportunity Navigator — [wheretoplay.co](https://wheretoplay.co/) (worksheets CC BY-NC-SA 4.0)
- **Giff Constable** (with Frank Rimalovski) — [*Talking to Humans*](https://www.talkingtohumans.com/) and [12 Tips for Early Customer Development Interviews](https://giffconstable.com/2010/07/12-tips-for-early-customer-development-interviews/)
- **Clayton Christensen** and **Tony Ulwick** — Jobs to be Done theory and Outcome-Driven Innovation
- **Dave Gray** (XPLANE) — the [Empathy Map](https://gamestorming.com/empathy-mapping/)
- **Eric Ries** — *The Lean Startup*, MVP, pivot

🙏 Shoutout to the **[Gopalakrishnan-Deshpande Centre for Innovation and Entrepreneurship (GDC), IIT Madras](https://gdc.iitm.ac.in/)** — the structure of these skills is inspired by the way their incubation programs sequence these frameworks and drill evidence-first thinking into founders.

## License

MIT — see [LICENSE](LICENSE). The referenced frameworks belong to their authors; this repo contains original instructional text that teaches an AI how to apply them honestly, and links to the originals rather than redistributing them.
