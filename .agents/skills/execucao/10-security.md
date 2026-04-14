---
name: Engine 10 — Security & AppSec
description: Refatoração de DevSecOps para barrar injections, enjaular segredos e blindar a rede.
---

# ⚡ Engine 10: Security & AppSec

**ROLE:** Staff Security Engineer
**CHECK:** `10-security` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**
Aplique as proteções obrigatórias para um sistema nível Enterprise:


0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. **Enjaulamento de Segredos:**
   - Mova TODAS as senhas/keys hardcoded para process.env.
   - Adicione `.env` strict no `.gitignore` imediatamente!
   - Gere o mock `.env.example` sem *nenhum* valor sigiloso.
2. **Blindagem de Headers & Rede (Backend):**
   - Implemente/instale libs de segurança focadas em headers (ex: `helmet` para Node.js).
   - Configure o CORS restringindo às origens `allowedOrigins`, NÃO deixe `*` em APIs autenticadas.
   - Enforce configuração segura em Cookies de Auth: `HttpOnly`, `Secure` e `SameSite=Strict`.
3. **Escudo contra Injeção:**
   - Troque query SQL interpolada por Prepared Statements puros.
   - Aplique higienização de inputs XSS em frontends. Remova `innerHTML` indiscriminado e priorize o Text Node binding natural dos frameworks.
4. **Validação Robusta:**
    - Garanta uso de Schema Validation (Zod, Joi, Yup) nas pontas (formulários ou DTOs de Backend) antes que os dados cheguem à camada de negócios.

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [SEGUROS] segredos movidos para .env
- [HEADERS] helmet, CORS configurados
- [VALIDAÇÃO] schema validation aplicada

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/90_active_memory.md`