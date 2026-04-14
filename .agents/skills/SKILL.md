---
name: Skills do Engine (Auditoria + Execução)
description: Mapa central de todas as 19 áreas do engine. Auditoria (17 checks 00-16) e Execução (19 blocos 00-18). Token economy — carregue apenas o arquivo da área atual.
---

# 🧠 Skills do Engine

Mapa unificado de todas as áreas. Cada área tem **dois arquivos** (quando aplicável):
- **Auditoria** (`.agents/skills/auditoria/XX-*.md`) — diagnósticos read-only
- **Execução** (`.agents/skills/execucao/XX-*.md`) — blocos de ação corretiva

## Mapa de Áreas

| # | Área | Tipo | Auditoria? | Execução? | Skill Auditoria | Skill Execução |
|---|------|------|:---:|:---:|-----------------|----------------|
| 00 | Diagnóstico | SCAN | ✅ | ✅ | `00-diagnosis.md` | `00-diagnosis.md` |
| 01 | Contexto | INIT | ✅ | ✅ | `01-context.md` | `01-context.md` |
| 02 | Detox | CICLO | ✅ | ✅ | `02-detox.md` | `02-detox.md` |
| 03 | Estrutura | CICLO | ✅ | ✅ | `03-structure.md` | `03-structure.md` |
| 04 | Ambiente | CICLO | ✅ | ✅ | `04-env.md` | `04-env.md` |
| 05 | Dados | CICLO | ✅ | ✅ | `05-data.md` | `05-data.md` |
| 06 | Sanitização | CICLO | ✅ | ✅ | `06-sanitization.md` | `06-sanitization.md` |
| 07 | Refatoração | CICLO | ✅ | ✅ | `07-refactor.md` | `07-refactor.md` |
| 08 | Visual | CICLO | ✅ | ✅ | `08-visual.md` | `08-visual.md` |
| 09 | Experiência | CICLO | ✅ | ✅ | `09-ux.md` | `09-ux.md` |
| 10 | Segurança | CICLO | ✅ | ✅ | `10-security.md` | `10-security.md` |
| 11 | Performance | CICLO | ✅ | ✅ | `11-performance.md` | `11-performance.md` |
| 12 | Qualidade | CICLO | ✅ | ✅ | `12-qa.md` | `12-qa.md` |
| 13 | Estratégia | PLAN | ✅ | ✅ | `13-strategy.md` | `13-strategy.md` |
| 14 | Sincronização | SYNC | ✅ | ✅ | `14-sync.md` | `14-sync.md` |
| 15 | Friction Killer | CICLO | ✅ | ✅ | `15-friction-killer.md` | `15-friction-killer.md` |
| 16 | Self-Healing Docs | CICLO | ✅ | ✅ | `16-self-healing.md` | `16-self-healing.md` |
| 17 | Token Budgeting | CICLO | ❌ | ✅ | — | `17-token-budgeting.md` |
| 18 | Gamificação | CICLO | ❌ | ✅ | — | `18-gamificacao.md` |

## Regras de Ouro

1. **READ-ONLY na Auditoria:** Nunca modifique código durante auditoria
2. **Resolva Pontos de Atenção primeiro:** Corrija issues da auditoria antes das instruções normais
3. **Token Economy:** Carregue **apenas** o arquivo da área atual (ex: `skills/auditoria/02-detox.md`)
4. **Output PT-BR:** Todas as respostas em Português
5. **Verifique após execução:** Re-audite para confirmar correção
6. **Atualize `.context`:** Pós-execução, atualize os arquivos `.context` indicados em cada skill
7. **Threshold de Score:** ≥ 8.5 para aprovação em auditorias

## Formatos de Output

- **Auditoria:** `.agents/templates/output-format.md` + exemplo `.agents/templates/output-example.md`
- **Execução:** `.agents/templates/output-format-execucao.md` + exemplo `.agents/templates/output-example.md`

**⚠️ REGRA:** Sempre use estes templates. Não invente outro formato. Formato compacto: máximo 1 linha por bullet. Zero prosa.

## Progresso Visual

Barra exibida automaticamente pelo agente em cada resposta:

**Auditoria:**
```
📌 02/19 · Detox [CICLO]
▰▰▱▱▱▱  25% · 🟡 6.5
```

**Execução:**
```
⚡ 02/19 · Detox [CICLO]
▰▰▰▰▱▱▱▱  50% · 🟡 6.5 → 🟢 9.0 ↗
```

**Cores:**  0-3.9 ·  4-5.9 ·  6-7.4 ·  7.5-8.9 ·  9-10

Template completo: `.agents/templates/progress-bar.md`

## Workflows

| Workflow | Descrição | Áreas |
|----------|-----------|-------|
| `/engine` | Ciclo completo com aprovação | 00 → 18 |
| `/audit` | Auditoria completa | 00 → 16 |
| `/audit-quick` | Auditoria express | 00, 01, 02, 04, 06, 12 |
| `/preflight` | Checklist pré-deploy | 04, 10, 11, 12, 14 |
| `/detox` | Limpeza rápida | 02, 06 |
| `/polish` | UI + UX rápida | 08, 09 |
| `/context-init` | Inicializar `.context/` | 01 |

> ⚠️ **MANDATO:** Todo raciocínio interno é em English, mas respostas devem ser estritamente em **PT-BR**.
