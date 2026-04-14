---
name: Engine 04 — Ambiente & DX
description: Instalação e configuração forçada de ferramentas de sanidade de código (Strict TS, Husky, Lint).
---

# ⚡ Engine 04: Ambiente & DX

**ROLE:** Staff DX (Developer Experience) Engineer
**CHECK:** `04-env` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**
Para blindar o repositório no nível de empresas Tier 1:


0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. **Blindagem TypeScript:** 
   - Modifique o `tsconfig.json` para injetar `"strict": true`, `"noUncheckedIndexedAccess": true`, `"noUnusedLocals": true` e `"forceConsistentCasingInFileNames": true`.
2. **Tooling Core:** 
   - Se faltar linter/formatter, use `run_command` para instalar Biome (`npx @biomejs/biome init`) ou ESLint+Prettier.
   - Adicione os scripts no `package.json`: `"lint": "...", "format": "..."`.
3. **A barreira Pre-Commit (Crucial):**
   - Instale `husky` e `lint-staged` via CLI (`npm install --save-dev husky lint-staged`).
   - Inicialize o Husky e adicione o pre-commit hook (`npx husky init && echo "npx lint-staged" > .husky/pre-commit`).
   - Configure o `.lintstagedrc` (ou block no package.json) para rodar Linter e Prettier nos arquivos em stage.
4. **Alinhamento de Equipe:**
    - Crie um arquivo `.nvmrc` contendo `20` (ou a versão LTS atual/detectada) para travar a versão do Node.
    - Crie `.editorconfig` com configurações universais (indent 2 spaces, utf-8, insert_final_newline).

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [FERRAMENTAS ATIVADAS] TS strict, Husky, Linter, etc.
- [ARQUIVOS CRIADOS] .nvmrc, .editorconfig, etc.

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/20_tech_stack.md` | `/.context/30_coding_standards.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.