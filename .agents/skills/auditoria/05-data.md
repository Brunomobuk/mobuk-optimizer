---
name: Audit 05 — Data Flow & State Management
description: Avaliação profunda de como os dados são fetcheados, cacheados e distribuídos na aplicação.
---

# 🔍 Audit 05: Data Flow & State

**ROLE:** Staff Data Architect
**OBJETIVO:** Evitar renderizações infinitas, prop drilling abusivo e vazamento de regras de negócios em telas e rotas. Um app Premium busca dados de forma cacheada e resiliente.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/60_data_model.md` e `/.context/10_architecture.md`.

**INSTRUÇÃO:**
1. **Data Fetching (Frontend):** Use `grep_search` por `fetch(` ou `axios.get` dentro de arquivos de componentes (`.tsx` / `.jsx`). Procure por abuso de `useEffect` para fetching sem controle de Race Conditions ou Cache (anti-pattern).
2. **State Management:** Existe separação clara entre "Server State" (React Query / SWR / Apollo) e "Client/UI State" (Zustand / Jotai / Context)?
3. **Prop Drilling:** Componentes estão repassando a mesma propriedade através de 3 ou mais camadas sem utilizá-la?
4. **Backend Data Layer:** Controllers das APIs estão fazendo queries (`db.query`, `prisma.user.find`) diretamente, ou estão chamando uma camada abstrata de `Repository` / `Service`? 

**CRITÉRIO DE NOTA:**
- **10 (Elite):** Fetching via React Query/SWR, UI state no Zustand, Backend usa Repository pattern, zero Prop Drilling.
- **7-9 (Sólido):** Usa Context API bem, fetches ficam em hooks customizados, Backend usa services.
- **4-6 (Acoplado):** Extenso uso do antipattern `useEffect` para fetch, Prop Drilling óbvio (components burros com 15 props).
- **1-3 (Caótico):** Componentes React chamam a API, filtram dados e rendem HTML. Rotas Node fazem queries SQL diretas.

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [ANTIPATTERN] maior problema arquitetural

Ver exemplo em `templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/60_data_model.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.