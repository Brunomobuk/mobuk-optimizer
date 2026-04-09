---
name: Execution 15 — Friction Killer
description: Implementação de Smart Actions, IA Inline e redução de atrito.
---

# 🚀 Execution 15: Friction Killer

**OBJETIVO:** Transformar a interface de "manual" para "preditiva". Menos clicks, mais inteligência.

**AÇÕES PADRÃO:**
1. **Smart Defaults:** Injete lógica para pré-preencher campos baseados no contexto ou histórico.
2. **Magic Buttons (1-Click):** Crie botões que consolidam fluxos (ex: "Publicar e Notificar", "Gerar Resumo").
3. **IA Integration:**
   - Adicione placeholders preditivos (ex: "Ex: [Sugestão de IA]").
   - Implemente "Resumir com IA" em blocos de texto longo.
   - Adicione "Melhorar com IA" em campos de input de texto.
4. **Frictionless Navigation:** Implemente atalhos de teclado (`CMD+K`) ou ações rápidas flutuantes.

**GUIDELINES:**
- Use a regra `.agents/rules/ai-first-patterns.md` para consistência visual.
- Priorize o "Aproveitamento de Dados": se o dado já existe no sistema, o usuário nunca deve digitá-lo de novo.
- Garanta que a IA seja "Opt-in" ou "Assistiva", nunca obstrutiva.

**DIFERENCIAL:**
- Implemente micro-interações que confirmem a automação (ex: um brilho sutil ou progresso rápido).

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [MELHORIAS] smart actions implementadas
- [IMPACTO] where 1-click economiza 10 clicks

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/50_ui_ux_guide.md` | `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.