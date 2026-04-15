---
name: Audit 03 — Estrutura & Arquitetura
description: Avaliação avançada de Domain-Driven Design, acoplamento e semântica de pastas.
---

# 🔍 Audit 03: Estrutura & Arquitetura

**ROLE:** Staff Software Architect
**OBJETIVO:** Avaliar se a organização reflete o domínio de negócio ("Screaming Architecture"), separar camadas (colocation) e prever facilidade de escala em times grandes.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/10_architecture.md` (arquitetura proposta) e `/.context/90_active_memory.md`.

**INSTRUÇÃO:**
1. Mapeie a árvore (até 3 níveis) com `list_dir`.
2. Avalie **Screaming Architecture:** A raiz do projeto revela *o que o projeto faz* (ex: `/billing`, `/campaigns`, `/users`) ou apenas *quais frameworks ele usa* (`/components`, `/hooks`, `/controllers`)?
3. Avalie **Acoplamento (Colocation):** O CSS, os testes e o componente de um botão vivem juntos (`/Button/index.tsx`, `/Button/style.css`, `/Button/test.ts`), ou estão espalhados em pastas distantes (`/src/styles/btn.css` e `/src/tests/btn.ts`)?
4. Procure o **Caos Oculto:** Pastas como `/utils`, `/helpers`, `/shared` ou `/misc`. Verifique (com `list_dir`) se viraram lixeiras com dezenas de arquivos sem coesão.

**CRITÉRIO DE NOTA:**
- **10 (Elite):** Domain/Feature-based perfeito. Colocation estrito. Zero pastas genéricas. Escalável para 50+ devs.
- **7-9 (Sólido):** Organização funcional (geralmente layer-based: views, controllers). Algum acoplamento horizontal.
- **4-6 (Frágil):** "Mata-borrão". Pastas gigantes (`/components` com 60 arquivos misturando UI burra com business logic).
- **1-3 (Espaguete):** Flat structure na raiz ou arquitetura mística indecifrável sem documentação.

**OUTPUT:** Use template AUDITORIA em `.agents/templates/output-format.md`. Também inclua:
- [GARGALO] pasta que impede escala

Ver exemplo em `.agents/templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/10_architecture.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

