# Architecture (v2)

## The problem v2 solves

v1 organized work around **frameworks**: each skill produced its own document. Dogfooding exposed the structural flaw — parallel documents restate the same claims, and restated claims **drift** (one doc holds a cause open as unknown; another hardens it into a conclusion). A verifier agent can catch drift, but good architecture prevents it.

## The spine: one Belief Ledger

Every startup claim lives in exactly one place — `discovery/LEDGER.md` — as a numbered item:

- **F# — Facts**: verifiable, with a source.
- **A# — Assumptions**: believed, with a validation plan, a pass/fail signal, and an **evidence grade**.
- **U# — Unknowns**: must-know, with a research step.

Everything else is a **lens or a mover**:

```
                    ┌───────────────────────────┐
    LENSES          │      BELIEF LEDGER        │        MOVERS
 (generate &        │  F1..Fn  A1..An  U1..Un   │   (change grades &
  reference items)  │  every item has an ID     │    move items)
                    └───────────────────────────┘
 /problem-discovery      ▲            ▲             /customer-discovery
 /jtbd                   │ reference  │ deltas      /experiments
 /where-to-play          │ by ID      │             /secondary-research
 /value-proposition-canvas                          (artifact audits)
 /business-model-canvas
 /startup-scorecard  ← reads grades, never writes optimism
```

**The one rule that prevents drift:** a framework document may state a claim **only with its ledger ID attached** (`[A4]`, `[F7]`). New claims are proposed as ledger additions in the doc's closing "Ledger delta" section — the master coach merges them. The verifier can then check mechanically: *any labeled claim without an ID or a NEW-proposal is a violation.*

## Evidence grades (E0–E4)

Binary "validated ✓" is how founders lie to themselves. Every assumption carries the strongest evidence grade it has earned:

| Grade | Meaning | Examples |
|---|---|---|
| **E0** | Opinion / compliment | "great idea!", advisor enthusiasm, AI reasoning |
| **E1** | Story of past behavior, told to you | "last time, I made three trips…" |
| **E2** | Observed behavior or artifact | logs, workarounds seen in the field, a lapsed customer who returned |
| **E3** | Commitment | gave real time, made introductions (names/numbers), scheduled a next step, put reputation on the line |
| **E4** | Transaction | paid, pre-paid, repeat purchase |

Default bars (guidance, not dogma): an assumption is **working-validated at E3 from ≥3 independent sources**, and **strongly validated at E4**. Pricing and willingness-to-pay claims accept nothing below E4 — only refusable prices produce truth. n=1 at any grade is a direction, not a verdict. E0 counts for nothing, ever.

## The loop (the actual product)

Canvases are outputs; the loop is the operating system. Weekly:

1. **INVENTORY** — what evidence already exists in drawers? (logs, analytics, inboxes, old posts' reach, sales registers, config files). Audit artifacts before trusting memory — the cheapest facts are already lying around, and founder memory routinely contradicts the record.
2. **GATE CHECK** — which validation gate is the venture at? (Gates = ordered kill-questions; everything else waits.)
3. **SELECT** — the cheapest decisive test for the riskiest belief (interview via `/customer-discovery`, experiment via `/experiments`, desk research via `/secondary-research`).
4. **RUN** — the founder runs it. Founders do discovery; the AI prepares and debriefs.
5. **DEBRIEF** — ledger deltas: grades moved, items added/killed, decisions logged with reopen-conditions.
6. **PERSIST** — update `discovery/00-CONTEXT.md` (OPEN LOOP section) so the next session resumes, never re-analyzes.

## Roles in one line each

- `/startup-coach` — routes founder problems to skills, dispatches agents in waves, verifies, synthesizes, keeps the loop turning.
- `/facts-assumptions-unknowns` — owns the ledger format and the movement discipline.
- `/experiments` — turns risky beliefs into cheap test cards (Bland & Osterwalder practice) and grades their results.
- `/customer-discovery` — interviews in, evidence grades out.
- `/secondary-research` — assumptions → sourced facts, or honest UNKNOWNs.
- Lenses (`/problem-discovery`, `/jtbd`, `/where-to-play`, `/value-proposition-canvas`, `/business-model-canvas`) — structure thinking, reference the ledger, propose deltas.
- `/startup-scorecard` — reads the ledger's grades and scores the venture on evidence, never optimism.

## Why agents

One subagent per framework keeps each lens honest (it reads its own reference material and works only from founder context + ledger), enables parallelism, and — critically — allows an **adversarial verifier** that never shares context with the writers. The verifier checks: unlabeled claims, IDs missing, numbers without sources, invented customer evidence, grade inflation, cross-document contradictions, and spot-checks risky facts independently.
