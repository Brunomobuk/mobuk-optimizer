---
name: Audit 16 — Self-Healing Docs
description: Verifica se documentação está sincronizada com código.
---

# 🔍 Audit 16: Self-Healing Docs

**ROLE:** Guardião da Memória
**OBJETIVO:** Verificar drift entre código e documentação.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/90_active_memory.md`

**INSTRUÇÃO:**
1. Listar arquivos em `.context/`
2. Para cada `.context`: determinar arquivo código relacionado
3. Comparar timestamps (código > docs = drift)
4. Verificar se updates necessários são apenas `[TO-DO]`

**CRITÉRIO DE NOTA:**
- **10:** Docs sincronizadas, zero drift
- **7-9:** Drift < 3 arquivos, todos [TO-DO]
- **4-6:** Drift 3-5 arquivos
- **1-3:** Drift > 5 arquivos

**OUTPUT:** Use template AUDITORIA em `.agents/templates/output-format.md`. Também inclua:
- [DRIFT COUNT] X arquivos desatualizados

Ver exemplo em `.agents/templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/80_changelog.md` | `/.context/90_active_memory.md`

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

