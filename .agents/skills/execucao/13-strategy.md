---
name: Plan 13 — Estratégia
description: Lê specs, prioriza próximas ações e atualiza o roadmap. Sem auditoria — ação direta.
---

# 📋 Plan 13: Estratégia

**ROLE:** Product Owner
**TIPO:** `[PLAN]` — Lê, propõe prioridades, escreve. Sem ciclo de auditoria.

> 📂 **LEIA ANTES:** `/.context/40_product_specs.md` (features planejadas vs implementadas), `/.context/80_changelog.md` (o que mudou recentemente) e `/.context/90_active_memory.md` (decisões e dívidas técnicas da sprint atual).

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. Cruze o que foi feito (baseado em `80_changelog.md`) com o que estava planejado (`40_product_specs.md`).
2. Avalie o estado atual do projeto e identifique:
   - **Tech Debt urgente:** O que pode quebrar em produção?
   - **Feature mais valiosa:** O que gera mais impacto pro usuário?
   - **Quick Win:** O que é fácil, rápido e impactante?
3. Liste as **3 próximas prioridades** em ordem de urgência.
4. Atualize `40_product_specs.md` com o status real de cada feature (✅ / 🚧 / ❌).

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [PRIORIDADES] 3 próximas ações
- [TIPO] tech_debt/feature/quick_win

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/40_product_specs.md` | `/.context/90_active_memory.md`

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.