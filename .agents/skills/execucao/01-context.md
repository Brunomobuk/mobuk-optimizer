---
name: Engine 01 — Contexto
description: Criar/atualizar documentação .context.
---

# ⚡ Engine 01: Contexto

**ROLE:** Senior Documentation Architect
**CHECK:** `01-memory` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. Leia os templates em `.agents/skills/context-memory/templates/` para conhecer a estrutura esperada.
2. Verifique se `/.context` já existe:
   - **Não existe:** Crie a pasta e todos os 10 arquivos baseados nos templates.
   - **Existe parcialmente:** Crie apenas os arquivos faltantes. **Nunca sobrescreva** arquivos que já têm conteúdo real.
   - **Existe completo:** Atualize apenas seções com `[TO-DO]` ou dados desatualizados.
3. **Preenchimento inteligente por arquivo:**
   - `00_meta.md` → nome, descrição, scripts do `package.json` (ou equivalente)
   - `10_architecture.md` → árvore de pastas real (use `list_dir`)
   - `20_tech_stack.md` → todas as dependências com versões exatas do lockfile
   - `30_coding_standards.md` → padrões inferidos da estrutura do projeto
   - `50_ui_ux_guide.md` → se houver CSS, extraia tokens reais com `grep_search`
   - `80_changelog.md` → inicialize com a data atual e "Criação do .context"
   - `90_active_memory.md` → registre o sprint atual
   - Demais → preencha o que for possível, marque o resto como `[TO-DO]`
**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [CRIADOS] arquivos .context criados
- [ATUALIZADOS] arquivos atualizados
- [PENDENTES] arquivos com [TO-DO]

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.