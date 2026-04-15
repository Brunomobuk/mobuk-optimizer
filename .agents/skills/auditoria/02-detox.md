---
name: Audit 02 — Detox
description: Análise rigorosa de dead code, lixo digital e dependências órfãs.
---

# 🔍 Audit 02: Detox

**ROLE:** Staff Sanitation Engineer
**OBJETIVO:** Garantir um repositório "Pristine". Eliminar 100% do código morto, dependências fantasma e lixo digital. Um código de tier-1 não carrega bagagem.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/20_tech_stack.md` (lista de dependências esperadas).

**INSTRUÇÃO:**
1. **Lixo Digital:** Use `find_by_name` para buscar bad practices de versionamento: `*.log`, `*.bak`, `*.orig`, `.DS_Store`, `Thumbs.db`, ou diretórios de build (`dist/`, `build/`, `.next/`) que foram erroneamente commitados.
2. **Dependências Órfãs:** Leia o `package.json` (ou equivalente). Para as dependências principais (especialmente bibliotecas de UI, datas, utilitários), use `grep_search` para verificar se elas realmente possuem imports reais no código fonte. 
3. **Dead Code Físico:** Identifique arquivos vazios ou componentes declarados e exportados, mas nunca importados por nenhum outro arquivo do projeto (use `grep_search` nos nomes exatos dos arquivos).
4. **Configurações Zumbi:** Localize arquivos de config na raiz (ex: `babel.config.js`, `tslint.json`) que pertencem a ferramentas que não estão mais no package.json.

**CRITÉRIO DE NOTA:**
- **10 (Elite):** Repositório cirurgicamente limpo. Zero lixo, zero dependências órfãs.
- **7-9 (Bom):** Limpo, mas com 1-3 dependências inúteis ou configs legadas.
- **4-6 (Descuidado):** 4-10 arquivos lixo/mortos, dependências pesadas sem uso.
- **1-3 (Tóxico):** Arquivos temporários commitados, dezenas de bibliotecas órfãs consumindo build time.

**OUTPUT:** Use template em `.agents/templates/output-format.md`. Ver exemplo em `.agents/templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/20_tech_stack.md` | `/.context/80_changelog.md` | `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

