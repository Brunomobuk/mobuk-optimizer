---
name: Audit 15 — Friction Killer
description: Identificação de atrito, processos manuais e oportunidades AI-First.
---

# 🔍 Audit 15: Friction Killer

**ROLE:** Specialist in UX & AI Automation
**OBJETIVO:** Encontrar gargalos de produtividade onde o usuário clica demais ou faz trabalho repetitivo que poderia ser automatizado ou simplificado com IA.
**TIPO:** `[CICLO]`

> 📂 **LEIA ANTES:** `/.context/40_product_specs.md` e `/.context/50_ui_ux_guide.md`.

**INSTRUÇÃO:**
1. **Drenagem de Tempo:** Identifique formulários com 5+ campos sem `autocomplete` ou `smart-defaults`.
2. **Processos Manuais:** Busque por fluxos de "Copiar e Colar" (ex: telas que exigem dados de outra tela para prosseguir).
3. **Ausência de Inteligência:** Procure por áreas de conteúdo denso (listas longas, logs, textos) sem recursos de "Resumo", "Busca Semântica" ou "Filtro Inteligente".
4. **Falta de Atalhos:** Verifique se as ações principais exigem mais de 3 clicks para serem alcançadas.

**CRITÉRIO DE NOTA:**
- **10 (Frictionless):** Experiência preditiva. IA antecipa dados, atalhos de 1-click para tudo, zero campos repetitivos.
- **7-9 (Fluido):** Navegação rápida, poucos campos manuais, alguns recursos inteligentes presentes.
- **4-6 (Manual):** Muitos cliques para o "Happy Path", formulários cansativos, zero automação.
- **1-3 (Obstrutivo):** Interface exige trabalho manual massivo, sem qualquer inteligência preditiva ou atalhos.

**OUTPUT:** Use template AUDITORIA em `templates/output-format.md`. Também inclua:
- [GARGALO] processo mais cansativo
- [MAGIC] onde 1-click IA economizaria 10 clicks

Ver exemplo em `templates/output-example.md`.

> **PAUSA:** Após output, pergunte: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"

> 📝 **ATUALIZE APÓS (execução):** `/.context/50_ui_ux_guide.md` | `/.context/90_active_memory.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.