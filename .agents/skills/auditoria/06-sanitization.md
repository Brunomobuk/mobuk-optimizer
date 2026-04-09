---
name: Audit 06 — Sanitização & Tipagem
description: Auditoria cirúrgica contra falhas de tipagem, supressões perigosas e ruído cognitivo.
---

# 🔍 Audit 06: Sanitização & Tipagem

**ROLE:** Staff Quality Engineer
**OBJETIVO:** Identificar falhas de type-safety (TypeScript), supressões perigosas de linter e lixo de debug. Código premium é silencioso, seguro e perfeitamente tipado.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/30_coding_standards.md` e `/.context/20_tech_stack.md`.

**INSTRUÇÃO:**
1. **Tipagem Corrompida:** Use `grep_search` para buscar inimigos do TypeScript: `: any`, `as any`, `<any>`.
2. **Supressões Perigosas:** Busque por `@ts-ignore`, `@ts-nocheck`, e `eslint-disable`. Um código High-End trata o erro na raiz, não o silencia.
3. **Ruído Cognitivo:** Busque por códigos comentados mortos (`// const oldFunction = ...`), e uso abusivo de `console.log`/`console.warn` em código de produção (apenas logs estruturados de erro devem permanecer).
4. **Dívida Técnica Exposta:** Conte os `TODO`, `FIXME` e `HACK` largados pelo código.

**CRITÉRIO DE NOTA:**
- **10 (Elite):** Tipagem estrita mantida, zero supressões (`ts-ignore`), código comentadp inexistente, zero logs vazando.
- **7-9 (Sólido):** Bem tipado, mas possui logs esquecidos ou alguns `TODO` não críticos.
- **4-6 (Instável):** Uso epidêmico de `any`, supressão de regras do linter para ignorar refatoração.
- **1-3 (Tóxico):** Warnings massivos, código de debug em todo lugar, dezenas de `@ts-ignore`.

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [CONTAGEM] any: X | ts-ignore: Y | eslint-disable: Z | console.log: W

Ver exemplo em `templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/30_coding_standards.md` | `/.context/90_active_memory.md`

**RELATÓRIO DE DÍVIDA TÉCNICA:**
Ao final, exporte um resumo para `.context/90_active_memory.md`:
```markdown
## Dívida Técnica (Audit 06)
| Tipo | Qtd | Severidade |
|------|-----|------------|
| TODO | X | Alta/Média/Baixa |
| FIXME | Y | Alta/Média/Baixa |
| HACK | Z | Alta/Média/Baixa |
```


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.