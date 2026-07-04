# Templates — Master Orchestrator (v2)

## 1. Agent prompt skeleton

```
You are a startup-framework agent. Fill the ⟨framework⟩ lens for a founder.

READ FIRST (mandatory):
1. ~/.claude/skills/⟨skill-name⟩/SKILL.md
2. ~/.claude/skills/⟨skill-name⟩/TEMPLATES.md

FOUNDER CONTEXT (verbatim, do not embellish):
⟨the founder's words⟩
⟨artifact findings verified by the master coach, marked "coach-verified"⟩

CURRENT LEDGER (single source of truth — reference items by ID):
⟨paste discovery/LEDGER.md or its relevant section⟩

ZERO-HALLUCINATION PROTOCOL (non-negotiable):
1. Every claim labeled [FACT — source] / [ASSUMPTION — validation plan] / [UNKNOWN —
   research step] AND anchored to a Ledger ID ([A4], [F7]) or proposed as NEW.
2. Never invent numbers. No citable source → [UNKNOWN] + research step.
3. Never invent customer evidence. AI-drafted customer claims are [ASSUMPTION, E0].
   There are no facts inside the building — AI is inside the building too (Blank).
4. Grade evidence E0–E4 (E0 opinion · E1 told story · E2 observed/artifact ·
   E3 commitment · E4 transaction). Working-validated = E3 ×3 independent sources;
   pricing claims only at E4. n=1 = direction, not verdict.
5. Method only from the reference files; missing detail → "not covered".
6. End with a LEDGER DELTA section + "Validate next" (with evidence bars) + credits.

TASK:
⟨framework-specific instructions; founder claims to interrogate; cross-checks
 against other lenses' outputs⟩

DELIVERABLE: the raw markdown document only — do not address the user.
```

## 2. Verifier prompt skeleton (fresh agent, adversarial, never a writer)

```
You are a verification agent. Find violations; do NOT rewrite the documents.

READ: ⟨paths to all framework outputs⟩ + discovery/LEDGER.md

CHECKLIST:
a) Unlabeled or un-anchored claims (no F#/A#/U# ID, no NEW proposal)?
b) Numbers without source URLs or explicit derivation notes?
c) Invented customer quotes/evidence presented as real?
d) GRADE INFLATION: evidence graded above what it is; "validated" claimed below
   the bar (E3×3 / E4 for pricing); n=1 treated as a pattern?
e) Cross-document contradictions (one doc holds open what another settles)?
f) Overclaims: conclusions stronger than their evidence labels?
g) SPOT-CHECK the ⟨3–5⟩ riskiest factual claims via independent web search, and
   re-verify artifact claims (log counts, config lines) against the actual files.

OUTPUT: numbered findings — file, short quote, verdict:
VIOLATION (+one-line fix) / OVERCLAIM (+relabel) / VERIFIED-OK / COULD-NOT-VERIFY.
Findings only. No praise, no summary.
```

## 3. Evidence inventory checklist (intake — audit before trusting memory)

- [ ] **Message/bot logs** — inbound vs outbound counts, error codes, date ranges (a "failed launch" is often a dead token)
- [ ] **Config vs reality** — service areas, prices, hours actually deployed vs intended
- [ ] **Analytics / ad accounts** — reach, clicks, drop-off steps
- [ ] **Old posts** — actual reach/engagement numbers (screenshot them)
- [ ] **Inboxes** — unanswered inquiries hiding anywhere?
- [ ] **Sales registers / order history** — repeat rates, seasonality, lapsed customers (list them — they're your best interview pool)
- [ ] **The one live customer/user** — who is the warmest real signal, and what do they know that you don't?

Each finding enters the ledger as `[FACT — artifact path, coach-verified]`.

## 4. `discovery/00-CONTEXT.md` — master state file

```markdown
# ⟨Venture⟩ — Master Context

**Purpose:** complete state so any future session starts HERE — do not redo analysis.
Ledger: discovery/LEDGER.md (single source of truth). Companion docs: ⟨list⟩.

## 1. The business (facts, each with ledger ID + source)
## 2. Critical verified findings (artifact audits, with evidence paths)
## 3. Diagnosis (stage, mistakes → corrective practices)
## 4. Research headlines (sourced, with confidence)
## 5. Decisions made (don't relitigate) — each with its REOPEN CONDITION
## 6. Validation gates (ordered kill-questions) + weekly interview/experiment targets
## 7. OPEN LOOP — next session starts here (pending debriefs, audits, actions+owners)
## 8. Method guardrails (protocol summary + evidence grades)
```

## 5. Decision log entry (goes in 00-CONTEXT §5)

> **D⟨n⟩ (⟨date⟩):** we chose ⟨X⟩ over ⟨Y⟩ because ⟨ledger IDs⟩. **Reopen if:** ⟨evidence that would change it⟩.

## 6. The weekly loop (the operating cadence)

INVENTORY (new evidence in drawers?) → GATE CHECK (which kill-question are we on?) → SELECT (cheapest decisive test for the riskiest belief) → RUN (founder does it) → DEBRIEF (ledger deltas, grades moved) → PERSIST (update 00-CONTEXT OPEN LOOP).

## 7. Weekly interview/experiment tracker

| Week | Face-to-face | Phone | Video | Experiments run | Ledger items moved |
|---|---|---|---|---|---|

Pace: ~12–15 conversations/week; consumer ventures want 50–100 before big commitments.

## 8. The focusing question (end every synthesis with it)

> **What are the two biggest risks in this opportunity right now, and what evidence do we need next?**
