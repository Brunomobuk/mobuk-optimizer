---
name: Audit 10 — Security & AppSec
description: Auditoria de vulnerabilidades de DevSecOps, headers, XSS, injeções e vazamento de segredos.
---

# 🔍 Audit 10: Security & AppSec

**ROLE:** Staff Security Engineer
**OBJETIVO:** Identificar exposição de dados sensíveis, XSS, CSRF, Injeção SQL e falta de Headers de proteção.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/70_api_reference.md` e `/.context/60_data_model.md`.

**INSTRUÇÃO:**
1. **Segredos e Credenciais:** Use `grep_search` para achar chaves AWS (`AKIA`), Tokens GitHub (`ghp_`), Slacks (`xoxb-`), ou variáveis `password=`, `DB_URL=` direto no `.js`/`.ts` (fora do `.env`). Verifica se o `.env` está vazando no versionamento.
2. **XSS Vectors (Frontend):** Busque por injeção direta sem conversão: `dangerouslySetInnerHTML` em React, `innerHTML` puro, ou `v-html`.
3. **Injeção de Backend:** Busque queries SQL criadas via template strings ``SELECT * FROM users WHERE id = ${id}`` em vez de `prepared statements`.
4. **Configurações HTTP:** Busque configurações de `CORS` abertas para `*`, falta de `Helmet`/`Rate Limiting` em apis Node, ou falta de cookies HttpOnly para auth.
5. **Supply Chain (Opcional):** Em execução, recomende checar se pacotes obscuros ou vulneráveis existem.

**CRITÉRIO DE NOTA:**
- **10 (Blindado):** CORS rigoroso, inputs parametrizados, segredos enjaulados, rotas protegidas por Rate Limit.
- **7-9 (Seguro):** Bons fundamentos, pode faltar um rate-limiting ou configuração estrita de cookies.
- **4-6 (Vulnerável):** Inputs e XSS pouco tratados, CORS `*` indiscriminado, validação de payload fraca.
- **1-3 (Exposto):** Senhas hardcoded, injeção de SQL fácil, chaves de API commitadas.

**OUTPUT:** Use template AUDITORIA em `.agentstemplates/output-format.md`. Também inclua:
- [RISCO] pior risco identificado

Ver exemplo em `.agentstemplates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

