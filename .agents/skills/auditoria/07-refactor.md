---
name: Audit 07 — Refatoração
description: Avaliar legibilidade, reusabilidade e manutenibilidade.
---

# 🔍 Audit 07: Refatoração

**ROLE:** Arquiteto de Software
**OBJETIVO:** Avaliar legibilidade, reusabilidade e manutenibilidade.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/30_coding_standards.md` (SRP, DRY, naming) e `/.context/10_architecture.md` (estrutura esperada de módulos/serviços).

**INSTRUÇÃO:**
1. Use `view_file_outline` nos arquivos maiores para identificar funções com 50+ lines.
2. Busque padrões de código duplicado entre arquivos (mesma lógica, nomes diferentes).
3. Avalie nomenclatura: funções devem ser verbos claros (`fetchUser`, `handleSubmit`, não `data`, `doStuff`).

**CRITÉRIO DE NOTA:**
- **10:** Funções curtas, zero duplicação, nomes perfeitos
- **7-9:** 1-3 funções longas, nomenclatura boa
- **4-6:** Várias funções longas, duplicação visível
- **1-3:** God Classes, nomenclatura obscura, copy-paste endêmico

**OUTPUT:** Use template AUDITORIA em `.agents/templates/output-format.md`.

Ver exemplo em `.agents/templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/10_architecture.md` | `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

