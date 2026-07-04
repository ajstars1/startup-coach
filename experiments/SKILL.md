---
name: experiments
description: Design and grade validation experiments — price tests, concierge/manual MVPs, landing/smoke tests, channel tests, pre-sales — as test cards with explicit hypotheses, metrics, and pass/fail bars. Use when an assumption can't be validated by interviews alone (especially willingness to pay — only refusable prices produce truth), when choosing an MVP, or when a founder reports experiment results.
---

# Experiments — Test Cards & Evidence Grading

**Credits:** David J. Bland & Alexander Osterwalder — *Testing Business Ideas* ([strategyzer.com](https://www.strategyzer.com/library/testing-business-ideas-book)); MVP/concierge practice — Eric Ries (*The Lean Startup*); hypothesis discipline — Steve Blank.

**Why this skill exists:** interviews produce E1 stories and E3 commitments, but some beliefs — above all **willingness to pay** — only yield truth at **E4: a refusable price, accepted or declined**. Surveys and "would you pay?" answers are E0–E1 regardless of how many you collect.

## The Test Card (one per experiment — template in TEMPLATES.md)

1. **Belief under test** — one ledger item (`A⟨n⟩`), phrased falsifiably.
2. **Test** — the cheapest setup that produces a real behavior (not an opinion).
3. **Metric** — what you count, defined before you run.
4. **Pass/fail bar** — a number committed in advance (an educated guess beats no bar; moving the bar after results is self-deception).
5. **Evidence grade the test can produce** — design for the grade you need: pricing needs E4-capable tests; channel questions need E2+.
6. **Cost & duration cap** — cheap and fast beats rigorous and never-run.

## The core test menu (pick the cheapest that can move the belief)

- **Concierge / manual service** — deliver the service by hand, no software; real transactions (E4) at near-zero build cost. Usually the strongest first test for service businesses; instrument every delivery (time, distance, cost-to-serve, order value).
- **Price test** — quote a real, named, refusable price to real prospects at the moment of intent. Track accept/negotiate/decline by level. Visible surcharges beat bundled costs — you learn nothing from a price nobody can refuse. (E4)
- **Pre-sale / deposit / LOI** — money or signed intent before the thing exists. (E4/E3)
- **Smoke test / landing page / forwardable offer card** — a real call-to-action into a channel; measure who acts, not who likes. (E2–E3)
- **Channel test** — same offer, 2+ channels, counts kept per channel; instrument referral chains (who forwarded to whom). CAC only exists after this. (E2)
- **Wizard-of-Oz / prototype session** — watch real users attempt the real task; count completion and drop-off step, not opinions. (E2)
- **Shadowing / observation** — watch the job being done today; workarounds found in the field are E2 gold.

## Grading results (when the founder reports back)

1. Compare against the pre-committed bar — pass, fail, or **invalid test** (didn't run as designed; a broken pipe is not a demand verdict — check delivery before interpreting silence).
2. Write the **ledger delta**: grade moved (e.g., `A7: E1 → E4-fail at ₹150, E4-pass at ₹100`), items killed, new unknowns.
3. Watch for: bar moved after the fact · counting compliments as conversions · n=1 celebrated as a pattern · concierge costs ignored (a test that loses money on every order proved demand, not a business — route to `/business-model-canvas` unit economics).
4. Persist to `discovery/experiments/⟨date⟩-⟨name⟩.md`.

## Output

Test cards for the 1–3 riskiest ledger items (never a backlog of ten — the queue is the enemy of the loop), each with belief ID, setup, metric, pre-committed bar, target grade, cost cap — plus, for reported results, the graded ledger delta and the next cheapest test.

**Fill-in templates:** `TEMPLATES.md` in this skill's folder.
