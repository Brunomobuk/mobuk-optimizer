---
name: Engine 00 — Diagnóstico
description: Identificar stack e classificar o projeto.
---

# ⚡ Engine 00: Diagnóstico

**ROLE:** Senior Tech Lead
**CHECK:** `00-diagnosis` | **TIPO:** `[DIAGNÓSTICO]`

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. Identifique o gerenciador de pacotes: `package.json` → Node.js / `requirements.txt` → Python / `go.mod` → Go / `Cargo.toml` → Rust / `composer.json` → PHP / etc.
2. Extraia framework principal e versões core.
3. Mapeie árvore de pastas (2 níveis).
4. Classifique: **Tipo** (Frontend/Backend/Fullstack/API/CLI/Lib/Mobile) e **Estado** (Novo/Legado/Caótico).
5. Defina quais blocos são **não aplicáveis** para este projeto (ex: Backend puro → skip Blocos 08, 09).

**OUTPUT:** Use template EXECUÇÃO em `.agentstemplates/output-format.md`. Inclua:
- [TIPO] Frontend/Backend/Fullstack/API/CLI/Lib/Mobile
- [STACK] linguagem + framework + versão
- [ESTADO] Novo/Legado/Caótico

Ver exemplo em `.agentstemplates/output-example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

