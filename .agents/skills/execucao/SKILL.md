---
name: Execução (19 Blocos)
description: 19 blocos de ação para correção do projeto. Token economy — carregue apenas o necessário.
---

# ⚡ Skill: Execução

The `execucao/` folder contains **19 action blocks** (00-18), each targeting a specific area.

## Structure

| # | Area | Type | Purpose |
|---|------|------|---------|
| 00 | Diagnóstico | DIAGNÓSTICO | Stack detection, classification |
| 01 | Contexto | INIT | Create/update .context documentation |
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
| 16 | Self-Healing Docs | CICLO | Auto-update docs from code |
| 17 | Token Budgeting | CICLO | Token optimization |
| 18 | Gamificação | CICLO | XP, levels, badges |

## Output Format

Refer to the centralized templates registry at `.agents/templates/registry.json` for the mapping of this execution's output template. Outputs must follow `.agents/templates/output-format.md` and examples in `.agents/templates/output-example.md`.

> ⚠️ REGRA: Sempre use este template.

## Usage

- **Full Cycle:** Use `/engine` workflow (all 18 blocks)
- **Single Block:** Load just the file needed (e.g., `07-refactor.md`)
- **Token Economy:** Only load current block file

## Golden Rules

1. **Resolve Pontos de Atenção first:** Always fix audit issues before normal instructions
2. **Token Economy:** Load only the current block file
3. **PT-BR Output:** All responses in Portuguese
4. **Verify after execution:** Re-audit to confirm fix
5. **Update .context:** Post-execution, update relevant context files

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.


