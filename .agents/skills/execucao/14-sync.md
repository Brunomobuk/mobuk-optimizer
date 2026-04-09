---
name: Sync 14 — Sincronização
description: Compara docs vs código e atualiza .context diretamente. Sem ciclo de auditoria.
---

# 🔄 Sync 14: Sincronização

**ROLE:** System Maintainer
**TIPO:** `[SYNC]` — Compara e atualiza `.context/` direto. Sem auditoria prévia.

> 📂 **LEIA ANTES:** Leia **todos** os arquivos de `/.context/` antes de iniciar para entender o estado documentado.

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. Para cada arquivo de `/.context/`, compare o conteúdo com a realidade atual do código usando `list_dir`, `grep_search` e `view_file`.
2. Atualize em ordem de prioridade:
   - `20_tech_stack.md` → compare versões documentadas vs `package.json` real. Corrija divergências e versões desatualizadas.
   - `10_architecture.md` → compare árvore de pastas documentada vs estrutura real (use `list_dir`). Atualize se houver pasta nova, renomeada ou removida.
   - `80_changelog.md` → registre **todas** as mudanças feitas nesta sessão com data de hoje.
   - `40_product_specs.md` → atualize status de features (✅ implementado / 🚧 em progresso / ❌ cancelado).
   - `90_active_memory.md` → arquive o sprint concluído, registre decisões desta sessão, limpe itens resolvidos.
3. Atualize o `README.md` da raiz com comandos de setup que funcionem agora.
4. Reporte as mudanças feitas:

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [ATUALIZADOS] arquivos .context atualizados
- [SEM MUDANÇA] arquivos em paridade

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.