---
name: Token Budgeting
description: Sistema de limite e otimização automática de tokens por área.
---

# 🎯 Skill: Token Budgeting

Otimização automática de tokens comBudget por área.

## Conceito

Cada área tem um **orçamento máximo de tokens** que pode usar. Se exceder, o sistema automatically otimiza.

## Budget por Tipo

| Tipo | Área | Budget |
|------|------|--------|
| SCAN | 00 | 500 tokens |
| INIT | 01 | 1000 tokens |
| CICLO | 02-12 | 800 tokens/cada |
| PLAN | 13 | 1500 tokens |
| SYNC | 14 | 600 tokens |
| SELF-HEALING | 16 | 700 tokens |

## Técnicas de Otimização

1. **Dense Output:** Listas em vez de parágrafos
2. **Lazy Load:** Carregar skill apenas quando necessário
3. **Caching:** Não reler arquivos já lidos
4. **Truncation:** Cortar output em ~150 linhas
5. **Table-Only:** Respostas em tabelas quando possível

## Flag de Orçamento

```
⚠️ [TOKEN WARNING] 750/800 tokens usados
   Técnicas sugeridas:
   - Resumir próximo passo em 1 linha
   - Usar tabela em vez de lista
```

## Saving Tips

| Técnica | Saving |
|---------|-------|
| Dense output | -40% |
| Lazy load | -30% |
| Caching | -20% |
| Truncation | -50% |

## Configuração

```yaml
# opencode.config.yaml
token_budget:
  enabled: true
  warn_at: 80%
  auto_optimize: true
  max_per_area: 800
```

## Referência

Para outputs durante execução, use templates em `templates/output-format.md`.

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.