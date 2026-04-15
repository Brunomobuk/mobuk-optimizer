---
name: Engine 11 — PerfOps & Web Vitals
description: Transformação de desempenho - Lazy loading, troca de libs pesadas e mitigação de re-renders.
---

# ⚡ Engine 11: PerfOps & Web Vitals

**ROLE:** Staff Performance Engineer
**CHECK:** `11-performance` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**
Para polir o projeto até o status "Instantâneo" (Padrão Enterprise):

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. **Destruir o Bloat:**
   - Converta importações de bibliotecas gigantes para suas versões explícitas ou de origem limpa (e.g. `lodash` -> `lodash/function`).
   - Sugira (ou faça em caso de OK) a troca de biblotecas pesadas por equivalentes modernas (ex: `moment` -> `date-fns`).
2. **Code Splitting (Frontend):**
   - Aplique estratégias de carregamento sob demanda usando `lazy()` ou importação dinâmica (`next/dynamic` ou `import()`) em rotas ou modais ocultos.
3. **Mitigação do N+1 (Backend):**
   - Em backends relacionais, use/sugira `LEFT JOIN` cru ou configuradores Eager Loading (TypeORM/Prisma `.include`) invés de iterar array de IDs executando queries assíncronas em loop contínuo.
4. **Resiliência do Render:**
   - Adicione memoização (`useMemo`, `useCallback`) APENAS em operações custosas matemáticas ou props passadas para filhos pesados (`React.memo`).
- Otimize imagens. Converta SVGs mastodônticos que estejam no componente para arquivo externo referenciado se inflarem o DOM e travarem parsing.

**OUTPUT:** Use template EXECUÇÃO em `.agents/templates/output-format.md`. Inclua:
- [OTIMIZAÇÕES] gargalos identificados
- [IMPACTO] estimativa de melhoria

Ver exemplo em `.agents/templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.


