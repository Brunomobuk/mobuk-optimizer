---
name: Audit 17 — Token Budgeting
description: Verificar se o consumo de tokens está otimizado.
---

# 🔍 Audit 17: Token Budgeting

**ROLE:** Cost Optimization Specialist
**OBJETIVO:** Avaliar a eficiência do uso de tokens e recursos computacionais.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/20_tech_stack.md` e `/.context/90_active_memory.md`

**INSTRUÇÃO:**
1. Analise dependências que possam estar causando overhead
2. Verifique se há bibliotecas redundantes ou pesadas
3. Avalie estratégias de lazy loading e code splitting
4. Identifique oportunidades de caching

**CRITÉRIO DE NOTA:**
- **10:** Otimização máxima, zero waste
- **7-9:** Boa eficiência, pequenas oportunidades
- **4-6:** Ineficiências visíveis
- **1-3:** Alto desperdício de recursos

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [OPORTUNIDADES] áreas de otimização

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/90_active_memory.md`

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.