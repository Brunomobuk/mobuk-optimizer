# Mobuk Optimizer

## Overview
Universal AI-driven project optimization engine. Runs Audit → Execute cycles across 19 areas.

## How It Works
1. Run `/iniciar` to start full cycle
2. Each area: Audit (diagnosis) → YOUR OK → Execute (fix) → YOUR OK → next area
3. ALWAYS read `.context/90_active_memory.md` BEFORE starting — it shows WHERE WE LEFT OFF

## Context Files (.context/)
| File | Purpose |
|------|---------|
| 00_meta.md | Project identity |
| 10_architecture.md | Project structure |
| 20_tech_stack.md | Dependencies |
| 30_coding_standards.md | Code rules |
| 40_product_specs.md | Features roadmap |
| 50_ui_ux_guide.md | Design tokens |
| 60_data_model.md | DB / schemas |
| 70_api_reference.md | API endpoints |
| 80_changelog.md | Recent changes |
| 90_active_memory.md | **CURRENT SESSION STATE** |

## Areas (19)
00-Diagnosis → 01-Context → 02-Detox → 03-Structure → 04-Env → 05-Data → 06-Sanitization → 07-Refactor → 08-Visual → 09-UX → 10-Security → 11-Performance → 12-QA → 13-Strategy → 14-Sync → 15-FrictionKiller → 16-SelfHealing → 17-TokenBudgeting → 18-Gamification

## Commands (3 modes)
| Command | Description |
|---------|-----------|
| /iniciar | Full cycle (audit + fix) |
| /auditar | Diagnosis only |
| /validar | Pre-deploy checklist |

## CRITICAL
- ALWAYS read `.context/90_active_memory.md` BEFORE starting
- AFTER each area, UPDATE `.context/90_active_memory.md` + `.context/80_changelog.md`
- Keep active memory under 50 lines
- NEVER continue without user's OK