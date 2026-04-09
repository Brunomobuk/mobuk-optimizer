---
name: Self-Healing Docs Audit
description: Verifica se documentação está sincronizada com código.
---

# 🔍 Audit: Self-Healing Docs

Verifica drift entre código e documentação.

## Como Funciona

```
1. Listar arquivos em .context/
2. Para cada .context: determinar arquivo código relacionado
3. Comparar timestamps (código > docs = drift)
4. Verificar se updates necessários são apenas [TO-DO]
```

## Critério de Nota

- **10:** Docs sincronizadas, zero drift
- **7-9:** Drift < 3 arquivos, todos [TO-DO]
- **4-6:** Drift 3-5 arquivos
- **1-3:** Drift > 5 arquivos

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [DRIFT COUNT] X arquivos desatualizados

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

## Integração

Este check substitui o Check 14 (Sync manual).

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.