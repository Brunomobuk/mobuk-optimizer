---
name: Auditoria (19 Checks)
description: 19 checks diagnósticos read-only para avaliar projeto. Cada arquivo = 1 área de auditoria. Token economy — carregue apenas o necessário.
---

# 🔍 Skill: Auditoria

The `auditoria/` folder contains **19 audit checks** (00-18), each focusing on a specific area.

## Structure

| # | Area | Type | Purpose |
|---|------|------|---------|
| 00 | Diagnóstico | SCAN | Stack detection e classification |
| 01 | Contexto | INIT | Documentation (.context) verification |
| 02 | Detox | CICLO | Cleanup, sanitization, dead code |
| 03 | Estrutura | CICLO | Folder organization |
| 04 | Ambiente | CICLO | Env, dependencies, setup |
| 05 | Dados | CICLO | Data handling, validation |
| 06 | Sanitização | CICLO | Input/output sanitization |
| 07 | Refatoração | CICLO | Code quality, DRY, SOLID |
| 08 | Visual | CICLO | UI, CSS, design system |
| 09 | Experiência | CICLO | UX, accessibility |
| 10 | Segurança | CICLO | Security, secrets |
| 11 | Performance | CICLO | Optimization |
| 12 | Qualidade | CICLO | Tests, coverage |
| 13 | Estratégia | PLAN | Roadmap, priorities |
| 14 | Sincronização | SYNC | Docs vs code sync |
| 15 | Friction Killer | CICLO | AI-first, smart actions |
| 16 | Self-Healing Docs | CICLO | Auto-update docs |
| 17 | Token Budgeting | CICLO | Token optimization |

## Output Format

Refer to the centralized templates registry at `.agents/templates/registry.json` for the mapping of this audit's output template. Outputs must follow `.agents/templates/output-format.md` and examples in `.agents/templates/output-example.md`.

**⚠️ REGRA:** Sempre use este template. Não invente outro formato.

## Usage

- **Full Audit:** Use `/auditar` workflow (all 18 checks)
- **Quick Audit:** Use `/auditar` (same as full - simplified)
- **Single Check:** Load just the file needed (e.g., `02-detox.md`)

## Golden Rules

1. **READ-ONLY:** Never modify code during audit
2. **Token Economy:** Load only the current check file
3. **PT-BR Output:** All responses in Portuguese
4. **Score Threshold:** = 10 (only perfect = pass)

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.


