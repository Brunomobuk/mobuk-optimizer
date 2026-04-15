---
name: Audit 18 — Gamificação
description: Verificar se o sistema de gamificação está ativo e funcionando.
---

# 🔍 Audit 18: Gamificação

**ROLE:** Engagement Specialist
**OBJETIVO:** Verificar se sistema de gamificação está ativo.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/90_active_memory.md`

**INSTRUÇÃO:**
1. Verifique se existe registro de progresso no `.context/90_active_memory.md`
2. Avalie o nível atual e XP acumulado
3. Identifique áreas que poderiam ganhar badges

**CRITÉRIO DE NOTA:**
- **10:** Gamificação ativa com níveis, XP e badges
- **7-9:** Sistema parcial implementado
- **4-6:** Apenas estrutura sem uso
- **1-3:** Gamificação inexistente

**OUTPUT:** Use template AUDITORIA em `.agents/templates/output-format.md`. Também inclua:
- [NÍVEL] atual
- [XP] acumulado

Ver exemplo em `.agents/templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso ativar? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/90_active_memory.md`

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

