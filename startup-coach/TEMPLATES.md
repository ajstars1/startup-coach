# Templates — Master Orchestrator

## 1. Agent prompt skeleton (fill the ⟨brackets⟩, keep the structure)

```
You are a startup-framework agent. Fill the ⟨framework⟩ framework for a founder.

READ FIRST (mandatory, before writing anything):
1. ~/.claude/skills/⟨skill-name⟩/SKILL.md
2. ~/.claude/skills/⟨skill-name⟩/TEMPLATES.md

FOUNDER CONTEXT (verbatim, do not embellish):
⟨everything the founder said, in their words⟩
⟨artifact findings verified by the master coach, marked "coach-verified"⟩

ZERO-HALLUCINATION PROTOCOL (non-negotiable):
1. Every claim labeled [FACT — source], [ASSUMPTION — how to validate], or [UNKNOWN — how to find out].
2. Never invent numbers. No citable source → [UNKNOWN] + the research step.
3. Never invent customer evidence — no fabricated quotes or personas-as-real-people.
   AI-drafted customer claims are [ASSUMPTION] until validated in real interviews.
   Per Steve Blank: there are no facts inside the building — AI is inside the building too.
4. Framework mechanics only from the reference files; missing detail → say "not covered
   in the reference material".
5. Credit the framework authors.
6. Output is a hypothesis draft. End with what must be validated next, and how.

TASK:
⟨framework-specific instructions — which sections to fill, which founder claims to
 interrogate, what to cross-check against other frameworks' outputs⟩

DELIVERABLE (your final message = the raw markdown document):
Use the structures in TEMPLATES.md. Every entry labeled. End with a "Validate next"
list + author credit line. Return the document only — do not address the user.
```

## 2. `discovery/00-CONTEXT.md` — master state file (create in the founder's project)

```markdown
# ⟨Venture⟩ — Master Context (Startup Coaching)

**Purpose:** complete state of the analysis so any future session starts HERE — do not
redo the analysis. Companion docs in this folder: ⟨list⟩.

## 1. The business (facts)
- ⟨founder, product, geography, pricing — each line labeled with its source⟩

## 2. Critical verified findings
- ⟨artifact/log/research findings that changed the picture, with evidence paths⟩

## 3. Stage diagnosis + mistakes analysis
- Stage: ⟨S0–S3 + why⟩. Mistakes: ⟨numbered, each with corrective practice⟩

## 4. Research headlines (sourced)
- ⟨3–5 conclusions with URLs/confidence⟩

## 5. Decisions already made with the founder (don't relitigate)
1. ⟨decision + the reasoning + what evidence would reopen it⟩

## 6. Validation gates (in order)
Gate 1: ⟨...⟩ → Gate 2: ⟨...⟩ → Gate 3: ⟨...⟩. Weekly interview target: ⟨n⟩.

## 7. OPEN LOOP — next session starts here
- ⟨pending debriefs, unanswered audits, committed next actions with owners⟩

## 8. Method guardrails
Label every claim FACT/ASSUMPTION/UNKNOWN. No invented numbers/quotes/evidence.
Money/time/intros = validation; compliments ≠ validation. n=1 = direction, not verdict.
"Not now" is a valid outcome. Founder does discovery personally.
```

## 3. Weekly interview count table (Customer Development practice)

| Type | Last week | New this week | TOTAL |
|---|---|---|---|
| Face-to-face | | | |
| Phone | | | |
| Video/online | | | |
| **TOTAL** | | | |

Target ~12–15/week; consumer businesses want 50–100 total before big commitments.

## 4. The focusing question (end every synthesis with it)

> **What are the two biggest risks in this opportunity right now, and what evidence do we need next?**
