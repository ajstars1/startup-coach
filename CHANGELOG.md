# Changelog

## v2.0.0 — 2026-07-04

Architectural rethink after dogfooding v1 on a real venture. Three structural fixes:

- **The Belief Ledger** (`discovery/LEDGER.md`) — one source of truth with stable IDs (`F#/A#/U#`). Framework docs now *reference* claims by ID and propose "ledger deltas" instead of restating them. Motivation: v1's own verifier caught cross-document drift (one doc hardened a cause that another correctly held open) — the architecture caused it; v2 prevents it mechanically. `/facts-assumptions-unknowns` rewritten as the ledger owner.
- **Evidence grades E0–E4** — opinion → told story → observed behavior/artifact → commitment → transaction. Assumptions carry their current grade; working-validated = E3 ×3 independent sources; pricing claims accept only E4. Wired into the protocol, the debrief scoring, and the scorecard's caps (all-E0/E1 support caps a dimension at 1).
- **The loop over the canvas** — weekly cadence (inventory → gate check → select cheapest decisive test → run → debrief → persist) promoted to the core of the master skill; **evidence inventory** (audit logs/analytics/configs/inboxes before trusting founder memory) is now a first-class intake step with a checklist.

New:
- **`/experiments`** skill — test cards (Bland & Osterwalder practice): price tests, concierge MVPs, smoke/channel tests, pre-sales; pre-committed pass/fail bars; result grading with ledger deltas. Fills the gap where interviews can't answer (especially willingness to pay).
- **Problem router** in the master skill — founder symptoms ("nobody is buying", "what should I charge?") map directly to skill dispatches; stage only shapes sequence.
- **Verifier prompt skeleton** (adversarial, fresh-context, checks grade inflation and ID anchoring) and **decision log with reopen conditions** in master templates.
- `docs/ARCHITECTURE.md` — the full design rationale.

## v1.0.0 — 2026-07-04

Initial release: master orchestrator + 9 framework skills (F/A/U, customer-discovery, problem-discovery, jtbd, where-to-play, value-proposition-canvas, business-model-canvas, secondary-research, startup-scorecard), zero-hallucination protocol, TEMPLATES.md per skill, install script.
