# Mobuk Optimizer

## Overview
Universal AI-driven project optimization engine. Runs Audit → Execute cycles across 19 areas to improve code quality.

## How It Works
1. Run `/engine` to start full cycle
2. Each area: Audit (diagnosis) → YOUR OK → Execute (fix) → YOUR OK → next area
3. ALWAYS read `.context/90_active_memory.md` BEFORE starting — it shows WHERE WE LEFT OFF

## Context Files (.context/)
| File | Purpose |
|------|---------|
| 00_meta.md | Project identity (name, type, description) |
| 10_architecture.md | Project structure / folders |
| 20_tech_stack.md | Dependencies / versions |
| 30_coding_standards.md | Code rules |
| 40_product_specs.md | Features roadmap |
| 50_ui_ux_guide.md | Design tokens |
| 60_data_model.md | DB / schemas |
| 70_api_reference.md | API endpoints |
| 80_changelog.md | Recent changes |
| 90_active_memory.md | **CURRENT SESSION STATE (WHERE WE STOPPED)** |

## Areas (19 total)
00-Diagnosis → 01-Context → 02-Detox → 03-Structure → 04-Env → 05-Data → 06-Sanitization → 07-Refactor → 08-Visual → 09-UX → 10-Security → 11-Performance → 12-QA → 13-Strategy → 14-Sync → 15-FrictionKiller → 16-SelfHealing → 17-TokenBudgeting → 18-Gamification

## Workflow Commands
| Command | Description |
|---------|-----------|
| /engine | Full cycle (all 19 areas) |
| /audit | Diagnosis only |
| /audit-quick | 6 essential checks |
| /detox | Clean up |
| /polish | UI + UX |
| /preflight | Pre-deploy checklist |

## CRITICAL Rules
- ALWAYS read `.context/90_active_memory.md` BEFORE starting work
- AFTER each area completion, UPDATE `.context/90_active_memory.md` with new state
- AFTER each area completion, UPDATE `.context/80_changelog.md` with what changed
- NEVER continue to next area without user's OK
- Keep `.context/90_active_memory.md` under 50 lines (token economy)

## Tech Stack (This Project)
- Engine Framework: Mobuk Optimizer
- Language: Markdown (configuration)
- Output: Text/markdown
- No runtime dependencies