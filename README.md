# startup-coach

**Agent-based startup coaching skills for Claude Code — with a zero-hallucination protocol.**

Most AI startup advice fails the same way most startups fail: confident guesses presented as facts. This repo takes the opposite bet. Every skill here forces one discipline — **every claim about your market, your customers, or your business gets labeled `FACT` (with a source), `ASSUMPTION` (with a validation plan), or `UNKNOWN` (with a research step)**. The AI drafts hypotheses; only real customers validate them.

> Per Steve Blank: *there are no facts inside the building.* The AI is inside the building too.

## What you get

One **master skill** that diagnoses your stage and orchestrates the rest, plus nine standalone framework skills you can run individually:

| Skill | Framework | Author(s) | Use when |
|---|---|---|---|
| `/startup-coach` | Master orchestrator — stage diagnosis + multi-agent dispatch | — | Any startup question, any stage |
| `/facts-assumptions-unknowns` | Facts vs Assumptions vs Unknowns | incubation-program practice | ALWAYS FIRST — the hallucination firewall |
| `/customer-discovery` | Customer Development interviews | Steve Blank & Bob Dorf; Giff Constable | Before/after talking to any customer |
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

## The Zero-Hallucination Protocol

Embedded in every skill; the whole repo in six rules:

1. Every claim is labeled `[FACT — source]`, `[ASSUMPTION — how to validate]`, or `[UNKNOWN — how to find out]`.
2. Never invent numbers. No citable source → it's an UNKNOWN, with the research step that would answer it.
3. Never invent customer evidence. No fabricated quotes, no personas presented as real people. AI-drafted customer claims are ASSUMPTIONS until validated in real interviews.
4. Framework mechanics come from the referenced sources, with authors credited — not improvised.
5. Filled canvases are hypothesis drafts, never conclusions. Every output ends with *what to validate next, and how*.
6. Compliments are not validation. Money, time, and introductions are (Constable, *Talking to Humans*).

## Design principles

- **Stage-aware.** No idea yet → start from your abilities (Where to Play, Worksheet 1). Raw idea → F/A/U + secondary research + go/no-go. Validating → discovery loop. Scaling → business model + unit economics. The master skill routes you.
- **Founders do discovery.** These skills prepare and debrief customer interviews; they never pretend to replace them.
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
