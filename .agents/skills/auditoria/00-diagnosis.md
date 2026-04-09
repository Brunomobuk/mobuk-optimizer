---
name: Scan 00 — Diagnóstico
description: Identifica stack, classifica o projeto, dá nota de clareza e preenche .context com dados iniciais.
---

# 🔍 Scan 00: Diagnóstico

**ROLE:** Senior Tech Lead
**TIPO:** `[SCAN]` — Lê, classifica e dá uma nota. Sem execute.

> 📂 **LEIA ANTES:** Leia `/.context/00_meta.md` e `/.context/90_active_memory.md` (se existirem) para verificar se o projeto já foi classificado antes.

**INSTRUÇÃO:**
1. Identifique o gerenciador de pacotes: `package.json` → Node.js / `requirements.txt` → Python / `go.mod` → Go / `Cargo.toml` → Rust / `composer.json` → PHP / etc.
2. Extraia framework principal e versões core.
3. Mapeie a árvore de pastas (2 níveis) com `list_dir`.
4. Classifique:
   - **Tipo:** Frontend / Backend / Fullstack / API / CLI / Lib / Mobile / Monorepo
   - **Stack:** Linguagem + framework detectado
   - **Estado:** Novo / Legado / Caótico
5. Defina quais áreas (01-14) são **N/A** para este projeto (ex: Backend → skip 08, 09).
6. Calcule a nota de clareza/organização inicial.

**CRITÉRIO DE NOTA:**
- **10:** Estrutura cristalina, stack clara, nomenclatura perfeita
- **7-9:** Stack detectável, organização boa com ruídos
- **4-6:** Estrutura confusa ou stack ambígua
- **1-3:** Projeto caótico, impossível classificar sem exploração profunda

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [TIPO] Frontend/Backend/Fullstack/API/CLI/Lib/Mobile/Monorepo
- [STACK] linguagem + framework + versão
- [ESTADO] Novo / Legado / Caótico
- [ÁREAS N/A] áreas não aplicáveis

Ver exemplo em `templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS:** Preencha `/.context/00_meta.md` com nome, tipo e objetivo do projeto. Registre a stack em `/.context/20_tech_stack.md`. Anote o estado inicial em `/.context/90_active_memory.md`.


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.