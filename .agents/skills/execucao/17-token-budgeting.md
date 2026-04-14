---
name: Engine 17 — Token Budgeting
description: Sistema de limite e otimização automática de tokens por área.
---

# 🎯 Engine 17: Token Budgeting

**ROLE:** Cost Optimization Specialist
**CHECK:** `17-token-budgeting` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.

1. Analise dependências que possam estar causando overhead
2. Identifique bibliotecas redundantes ou pesadas
3. Aplique técnicas de otimização de tokens

**TÉCNICAS DE OTIMIZAÇÃO:**
- **Dense Output:** Listas em vez de parágrafos
- **Lazy Load:** Carregar skill apenas quando necessário
- **Caching:** Não reler arquivos já lidos
- **Truncation:** Cortar output em ~150 linhas
- **Table-Only:** Respostas em tabelas quando possível

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [OPORTUNIDADES] áreas de otimização identificadas

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/90_active_memory.md`

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.