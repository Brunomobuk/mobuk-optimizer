# Mobuk Optimizer

Universal AI-driven project optimization engine. Runs Audit → Execute cycles across 19 areas.

## Quick Start

```bash
# 1. Copie .agents/ para seu projeto
cp -r mobuk-optimizer/.agents /seu/projeto/

# 2. Entre no projeto
cd seu-projeto

# 3. Inicie (no Cursor, Claude Code, OpenCode, Trae, etc)
/iniciar
```

## Areas (19 total)

| # | Area | Type |
|---|------|------|
| 00 | Diagnosis | SCAN |
| 01 | Context | INIT |
| 02 | Detox | CICLO |
| 03 | Structure | CICLO |
| 04 | Env | CICLO |
| 05 | Data | CICLO |
| 06 | Sanitization | CICLO |
| 07 | Refactor | CICLO |
| 08 | Visual | CICLO |
| 09 | UX | CICLO |
| 10 | Security | CICLO |
| 11 | Performance | CICLO |
| 12 | QA | CICLO |
| 13 | Strategy | PLAN |
| 14 | Sync | SYNC |
| 15 | FrictionKiller | CICLO |
| 16 | SelfHealing | CICLO |
| 17 | TokenBudgeting | CICLO |
| 18 | Gamification | CICLO |

## Commands

| Command | Description |
|---------|-------------|
| `/iniciar` | Full cycle — audit + fix (with your approval at each step) |
| `/auditar` | Diagnosis only — generates scorecard |
| `/validar` | Pre-deploy checklist |

## Workflow

1. **Audit**: Agent diagnoses area → shows score
2. **Your OK**: You approve fix
3. **Execute**: Agent applies changes
4. **Verify**: Re-audit → next area

## Context Files (.context/)

| File | Purpose |
|------|---------|
| 00_meta.md | Project identity |
| 10_architecture.md | Structure / folders |
| 20_tech_stack.md | Dependencies |
| 30_coding_standards.md | Code rules |
| 40_product_specs.md | Features roadmap |
| 50_ui_ux_guide.md | Design tokens |
| 60_data_model.md | DB / schemas |
| 70_api_reference.md | API endpoints |
| 80_changelog.md | Recent changes |
| 90_active_memory.md | **CURRENT SESSION STATE** |

## CRITICAL Rules

- **ALWAYS** read `.context/90_active_memory.md` BEFORE starting
- **AFTER** each area, UPDATE `.context/90_active_memory.md` + `.context/80_changelog.md`
- Keep active memory under 50 lines
- Never continue without your OK
- **PT-BR** for all user-facing output (replies, docs, comments)

## Works With

- Cursor ✅
- Claude Code ✅
- OpenCode ✅
- Trae AI ✅
- Any AI that reads .md files ✅
