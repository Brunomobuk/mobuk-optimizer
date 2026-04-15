# Mobuk Optimizer Rules

## Core Principle
Mobuk Optimizer is an AI-driven project optimization engine. It runs Audit → Execute cycles across 19 areas.

## Session State
- BEFORE any work, read `.context/90_active_memory.md` — shows where you stopped
- AFTER each area, UPDATE both `.context/90_active_memory.md` and `.context/80_changelog.md`
- Keep active memory under 50 lines for token economy

## The 19 Areas
```
00-Diagnosis → 01-Context → 02-Detox → 03-Structure → 04-Env → 05-Data
→ 06-Sanitization → 07-Refactor → 08-Visual → 09-UX → 10-Security
→ 11-Performance → 12-QA → 13-Strategy → 14-Sync → 15-FrictionKiller
→ 16-SelfHealing → 17-TokenBudgeting → 18-Gamification
```

## Workflow
- `/engine` — Full cycle (all 19 areas)
- `/audit` — Diagnosis only
- `/audit-quick` — 6 essential checks
- `/detox` — Clean up
- `/polish` — UI + UX
- `/preflight` — Pre-deploy checklist

## NEVER skip user approval between Audit → Execute → Next area