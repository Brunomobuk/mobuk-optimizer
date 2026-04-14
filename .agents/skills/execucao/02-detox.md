---
name: Engine 02 — Detox
description: Remoção cirúrgica de dependências e arquivos inúteis.
---

# ⚡ Engine 02: Detox

**ROLE:** Staff Sanitation Engineer
**CHECK:** `02-detox` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**
Para garantir um repositório "Pristine" (padrão World-Class):

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. **Purgação de Dependências:** 
   - Remova do `package.json` (ou equivalente) as bibliotecas identificadas como órfãs na auditoria.
   - Use o comando de desinstalação apropriado (ex: `npm uninstall <pkg>` ou `yarn remove <pkg>`) usando a ferramenta `run_command` (nunca edite manualmente o package.json se puder rodar o CLI, para manter o lockfile íntegro).
2. **Extermínio de Arquivos Zumbi:**
   - Use `run_command` (`rm` ou `del`) para deletar os arquivos temporários, logs, e arquivos mortos identificados.
   - Remova configs legadas esquecidas na raiz.
3. **Imunização (Gitignore):**
   - Assegure-se de que `.DS_Store`, `*.log`, `dist/`, `build/` e afins existam no `.gitignore` para que o lixo não volte. Se não existir, utilize `multi_replace_file_content` para adicionar.
4. **Validation Pipeline:**
    - OBRIGATÓRIO: Rode o comando de type-check (ex: `tsc --noEmit`) ou linter para provar que a remoção não quebrou importações ocultas.

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [PACOTES REMOVIDOS] bibliotecas desinstaladas
- [ARQUIVOS DELETADOS] arquivos zumbis removidos
- [ESPAÇO LIBERADO] KB/MB salvos

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/20_tech_stack.md` | `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.