---
name: Audit 11 — PerfOps & Web Vitals
description: Detecção avançada de Gargalos (LCP, CLS, INP), Tree Shaking falho, importações pesadas e N+1.
---

# 🔍 Audit 11: PerfOps & Web Vitals

**ROLE:** Staff Performance Engineer
**OBJETIVO:** Garantir desempenho extremo. Aplicações Premium iniciam rápido, não engasgam em renderizações grandes e não enviam queries "N+1" pro banco.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/20_tech_stack.md` (bundler) e `/.context/50_ui_ux_guide.md` (assets e guias).

**INSTRUÇÃO:**
1. **Bundle Bloat:** Use `grep_search` no código por pacotes pesados ou importações sem tree-shaking (ex: `import lodash from 'lodash'` vs `import debounce from 'lodash/debounce'`). Encontre bibliotecas legadas enormes (ex: `moment.js` ao invés de `dayjs`/`date-fns`).
2. **Frontend LCP/CLS:** Encontre SVGs embutidos muito compridos no JSX que inflam o HTML, imagens ou medias carregadas prematuramente (sem componente de Lazy Loading, e.g., `<img loading="lazy">` ou `next/image`).
3. **Frontend Re-renders:** Identifique abuso de Contexts não divididos ou objetos recriados a cada render sem `useMemo/useCallback` que são injetados em componentes puros (`React.memo`).
4. **Backend N+1:** Busque por loops (`for`, `map`) no backend que executem uma `query SQL` ou um `.find()` dentro do laço de iteração (Problema fatídico do N+1).

**CRITÉRIO DE NOTA:**
- **10 (Elite):** Tree-shaking excelente, libs modernas, Lazy Loading aplicado, O(1) queries no backend para coleções.
- **7-9 (Bom):** Performático, mas com algumas imagens não-otimizadas ou missing `React.lazy` em rotas pesadas.
- **4-6 (Letárgico):** Bundle gigante injetado inteiro no first load, biblioteca obsoleta e pesada presente.
- **1-3 (Lento e Engasgando):** Múltiplos queries N+1 detectados congelando retornos de API. Múltiplos Renders infinitos.

**OUTPUT:** Use template AUDITORIA em `.agents/templates/output-format.md`. Também inclua:
- [ACHADOS] maiores gargalos encontrados
- [RISCO] onde melhorar performance com menos esforço

Ver exemplo em `.agents/templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

