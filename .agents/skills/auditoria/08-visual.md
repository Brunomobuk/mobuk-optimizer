---
name: Audit 08 — Design System & Visual
description: Avalia a centralização de estilos, suporte a Dark Mode real e prontidão para UI replication.
---

# 🔍 Audit 08: Design System & Visual

**ROLE:** Design System Lead
**OBJETIVO:** Validar centralização de tokens, consistência visual e blindagem do Dark Mode.
**TIPO:** `[CICLO]`

> ⚠️ Se o projeto não tem frontend visual (API/CLI/Lib), marque como `[N/A]` nota 10.

> 📂 **LEIA ANTES:** `/.context/50_ui_ux_guide.md` (tokens e sistema de design definido).

**INSTRUÇÃO:**
1. Verifique se existe um **Design System centralizado** (arquivo de `:root` CSS variables, `tailwind.config`, theme provider).
2. Avalie o **Dark Mode**: Busque em CSS/Componentes por cores hardcoded como `#fff`, `#000`, `white`, `black` que não respondem à troca de tema. Isso causa páginas quebradas no Dark Mode.
3. Teste a **Prontidão de Clone**: Os estilos estão baseados em variáveis semânticas (ex: `var(--bg-surface)`) ou utilitárias fixas? Se o usuário pedir "mude tudo para um tema escuro Premium", exigiria mudar 1 arquivo ou 50 arquivos?
4. Procure por **Inconsistências**: Contraste de texto pobre (ex: texto cinza escuro em fundo preto), bordas fixas misturadas com temas, e hardcodes espalhados (pixels avulsos em margins/paddings).

**CRITÉRIO DE NOTA:**
- **10:** Design System centralizado, 100% tokens semânticos, Dark Mode infalível.
- **7-9:** Base centralizada, mas com várias cores/espaçamentos hardcoded vazando nos componentes.
- **4-6:** Design System inexistente. Muito hardcode, falhas estruturais em temas.
- **1-3:** CSS caótico, impossível mudar o tema sem quebrar páginas (listras, contrastes ilegíveis).

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [DESIGN SYSTEM] nível de centralização

Ver exemplo em `templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/50_ui_ux_guide.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.