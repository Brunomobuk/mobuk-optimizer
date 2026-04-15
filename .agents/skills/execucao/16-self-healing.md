---
name: Execution 16 — Self-Healing Docs
description: Docs que se atualizam automaticamente baseado em diffs do código.
---

# 🩺 Execution 16: Self-Healing Docs

**ROLE:** Guardião da Memória
**CHECK:** `16-self-healing` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.

1. Detectar arquivos alterados (git diff --name-only)
2. Para cada arquivo mudado:
   - Ler diff e extrair mudanças (novas funções, imports, etc)
   - Identificar qual `.context` atualizar
   - Gerar update automático
3. Aplicar mudanças via patch
4. Reportar summary

**ARQUIVOS AFETADOS:**

| Código Mudou | Docs Atualiza |
|--------------|---------------|
| `package.json` | `20_tech_stack.md` |
| Nova função em `src/` | `70_api_reference.md` |
| Novo componente | `50_ui_ux_guide.md` |
| Novo schema | `60_data_model.md` |
| Mudança em `.env` | `40_product_specs.md` |

**REGRA DE OURO:**

**Nunca sobrescreva conteúdo personalizado.** Se `[TO-DO]` ou anotação manual existir, preserve.

**OUTPUT:** Use template EXECUÇÃO em `.agents/templates/output-format.md`. Inclua:
- [ARQUIVOS ANALISADOS] X
- [UPDATES FEITOS] Y
- [PRESERVADOS] Z

Ver exemplo em `.agents/templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/80_changelog.md` | `/.context/90_active_memory.md`

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

