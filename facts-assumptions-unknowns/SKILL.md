---
name: facts-assumptions-unknowns
description: The Belief Ledger — the single source of truth for everything a startup believes. Sorts every claim into verifiable FACTS (with sources), ASSUMPTIONS (with validation plans and evidence grades E0–E4), and UNKNOWNS (with research steps), each with a stable ID that all other frameworks reference. Use FIRST before any other startup framework, when someone says "we know our customers want this", or whenever a plan is being built on unverified beliefs.
---

# Facts vs Assumptions vs Unknowns — The Belief Ledger

The epistemic spine of the whole system. Every claim about the venture lives HERE, once, with a stable ID (`F1…`, `A1…`, `U1…`). Framework skills are *lenses* that reference ledger items by ID; interviews (`/customer-discovery`), experiments (`/experiments`), and desk research (`/secondary-research`) are *movers* that change grades and move items between lists. One ledger, many views — restated claims drift; referenced claims can't.

## The three lists

1. **FACTS (F#)** — objectively true and verifiable, **with a source** (document, URL, log path, artifact).
   - "We conducted 20 customer interviews" — fact, if the debriefs exist.
   - "The market is $5B" — fact **only if sourced from a credible report**; otherwise an assumption wearing a suit.
2. **ASSUMPTIONS (A#)** — believed true; each carries a **validation method, a numeric pass/fail signal, and its current evidence grade**:

   | Grade | Meaning |
   |---|---|
   | **E0** | Opinion, compliment, AI reasoning — counts for nothing |
   | **E1** | Story of past behavior, told to you |
   | **E2** | Observed behavior or artifact (logs, workarounds seen, a lapsed customer who returned) |
   | **E3** | Commitment — real time given, actual introductions, scheduled next step |
   | **E4** | Transaction — money paid, repeat purchase |

   Bars: **working-validated = E3 from ≥3 independent sources · strongly validated = E4 · pricing/willingness-to-pay claims accept only E4** (a survey answer about price is E0–E1 no matter the sample size). n=1 at any grade is a direction, not a verdict.
3. **UNKNOWNS (U#)** — must-know, not yet researched; each with a concrete research step (interview question / artifact audit / desk-research query / expert).

## Procedure

1. **Interrogate every "fact" the founder states.** No source → demote to Assumption, say so. Founder launch memories deserve special suspicion — **audit artifacts first** (logs, analytics, configs, inboxes, old posts' reach): "we got zero response" has three causes — nobody saw it, the pipe was broken, nobody cared — and only the record distinguishes them.
2. **Surface hidden assumptions**: channel beliefs, trust beliefs, pricing beliefs, segment beliefs, "our launch reached people" — and the meta-assumption "our silence proved no demand."
3. Every Assumption gets: validation method + numeric pass/fail + current grade (usually E0–E1 at the start — write it honestly).
4. Every Unknown gets: the concrete step and who/what answers it.
5. Web research may convert items to Facts — **every conversion needs a URL**.
6. Maintain **stable IDs forever**: answered Unknowns get struck through with their answer and date, never deleted or renumbered — the ledger is also the venture's learning history.
7. Close with **"this week's moves"** (which items can change lists/grades this week, via what) and the **gates** — the ordered kill-questions; everything else waits.

**Anti-hallucination rule:** you may ADD assumptions and unknowns the founder missed; you may NOT add facts the founder didn't state unless you fetched a citable source yourself.

## Ledger deltas (how movers report)

`A7: E1 → E4-pass at ₹100 (price test, 2026-07-12)` · `U3 → answered: word-of-mouth via friend (interview #1)` · `NEW A14: parking friction drives home-service demand [E1, interview #1]` · `KILLED A5: disproven by …`

The master coach is the only writer of the ledger file; everyone else proposes deltas.

*The ledger is a hypothesis map and a learning history, not a verdict. Underlying discipline: Steve Blank's hypothesis testing (Customer Development); evidence-grading practice follows the commitment logic of Constable's* Talking to Humans *and Bland & Osterwalder's* Testing Business Ideas.

**Fill-in templates:** `TEMPLATES.md` in this skill's folder — the ledger lives at `discovery/LEDGER.md` in your project.
