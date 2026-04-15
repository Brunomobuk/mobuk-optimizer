---
name: Audit 14 — Sincronização
description: Verificar se documentação e código estão em paridade.
---

# 🔍 Audit 14: Sincronização

**ROLE:** Guardião da Memória
**OBJETIVO:** Verificar se documentação e código estão em paridade.

**INSTRUÇÃO:**
1. Compare `/.context` (se existir) com a realidade do código.
2. Se `20_tech_stack.md` existe: compare as versões listadas com o `package.json` real.
3. Verifique se o `README.md` tem instruções de setup que realmente funcionam.
4. Identifique qual arquivo de documentação está mais defasado.

**CRITÉRIO DE NOTA:**
- **10:** Documentação e código em paridade total
- **7-9:** Pequenas desatualizações
- **4-6:** Desatualizações significativas
- **1-3:** Documentação mente sobre o código

**OUTPUT:** Use template AUDITORIA em `.agents/templates/output-format.md`.

Ver exemplo em `.agents/templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

