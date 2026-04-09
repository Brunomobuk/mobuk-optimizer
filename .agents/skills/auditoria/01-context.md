---
name: Audit 01 — Contexto
description: Verifica se existe documentação técnica estruturada em .context/.
---

# 🔍 Audit 01: Contexto

**ROLE:** Auditor de Conhecimento
**TIPO:** `[INIT]` — Condicional: cria ou atualiza `.context/`.

> 📂 **LEIA ANTES:** Não há pré-requisito de leitura. A própria auditoria mapeia o que existe.

**INSTRUÇÃO:**
1. Use `find_by_name` para localizar `/.context/`, `docs/`, `wiki/` ou arquivos `.md` na raiz.
2. Conte e liste os arquivos de documentação encontrados.
3. Avalie: um novo dev conseguiria entender o projeto, o setup e a arquitetura em 15 minutos lendo apenas a documentação?

**CRITÉRIO DE NOTA:**
- **10:** `/.context/` com 8–10 arquivos preenchidos e atualizados
- **7-9:** Documentação existe com 4–7 arquivos ou com lacunas
- **4-6:** Apenas README básico com setup mínimo
- **2-3:** README vazio ou desatualizado
- **1:** Nenhuma documentação encontrada

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [CONTAGEM] X arquivos encontrados

Ver exemplo em `templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** A skill de execução `skills/execucao/01-context.md` cria/atualiza todos os 10 arquivos.


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.