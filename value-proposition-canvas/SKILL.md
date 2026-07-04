---
name: value-proposition-canvas
description: Value Proposition Canvas (Osterwalder, Pigneur, Bernarda, Smith — Strategyzer) — map customer jobs, pains, and gains against your pain relievers, gain creators, and products/services, then test for fit. Use when shaping what to build, writing positioning/messaging, deciding an MVP, or when a founder can list features but not the customer outcome they serve.
---

# Value Proposition Canvas (VPC)

**Credits:** Alexander Osterwalder, Yves Pigneur, Greg Bernarda, Alan Smith — *Value Proposition Design* ([strategyzer.com](https://www.strategyzer.com/library/the-value-proposition-canvas); the canvas and first chapter are free there). Ranking discipline and hypothesis framing — Steve Blank.

**The canvas has two sides. Fit is the claim; evidence is the test.**

## Right side — Customer Profile (about THEM, drafted from evidence)

- **Customer jobs** — functional, social, and emotional jobs they're trying to get done (import from `/jtbd` if run). Their words, their situation, not your solution.
- **Pains** — bad outcomes, obstacles, and risks around those jobs: what costs too much time/money, what feels risky, what keeps failing.
- **Gains** — outcomes and benefits they want: required, expected, desired, and unexpected gains.

**Rank pains and gains by intensity** — with customers where possible. AI/founder rankings are placeholders: label them `[ASSUMPTION — rank-test in interviews]`. Interview evidence gets quoted; everything else is labeled.

## Left side — Value Map (about YOU, drafted as hypotheses)

- **Products & services** — what you offer (the list, not the pitch).
- **Pain relievers** — exactly which top-ranked pains each element eliminates or reduces. Not all pains — the ones that matter.
- **Gain creators** — exactly which top-ranked gains each element produces.

## Fit — the honest test

Fit exists when your top pain relievers and gain creators map to the customer's **top-ranked** pains and gains — as ranked by customers, not by you. Three levels: on paper (problem-solution fit, all assumption), in market (customers respond — early evidence), at scale (they pay repeatedly — product-market fit). State plainly which level the canvas is at.

Common failure modes to flag:
- **Feature-first fit**: value map written first, customer profile reverse-engineered to justify it. (Tell: every feature magically maps to a "top" pain.)
- **Pain inflation**: mild inconveniences promoted to burning pains without evidence. If a launch or landing page already got silence, say what that does/doesn't imply.
- **Unranked everything**: 15 pains all "important" = nothing ranked = nothing testable.

## MVP linkage

The MVP is the smallest thing that tests the riskiest fit claim — usually top pain ↔ top pain reliever. A concierge/manual version of the service is often stronger evidence than software (real transaction, zero build). Specify: the claim under test, the MVP form, the pass/fail signal, and what you deliberately did NOT build.

## Output

Both sides of the canvas in markdown, every entry labeled `[FACT — quote/source]` / `[ASSUMPTION]` / `[UNKNOWN]`, pains/gains ranked with ranking provenance stated, the fit claim + current fit level, the MVP proposal, and a "Validate next" list routed to `/customer-discovery`. Get the printable canvas from Strategyzer for workshops.
