---
name: Engine 08 — Design System & Visual
description: Cria/Enriquece Design System. Centraliza estilos, corrige contrastes e blinda o Dark Mode.
---

# ⚡ Engine 08: Design System & Visual

**ROLE:** Design Ops & UI Architect
**CHECK:** `08-visual` | **TIPO:** `[EXECUTADO]`

> Se `[N/A]` (projeto sem frontend visual) → skip automático.

**INSTRUÇÕES:**
Para garantir que o app tenha um nível **Premium / Enterprise** e esteja pronto para receber designs de referência perfeitos:


0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. **Design System Centralizado (A Fundação):**
   - Extraia TODOS os valores visuais hardcoded (cores, bordas, gaps, fontes).
   - Crie ou Enriqueça o arquivo global de variáveis (`:root` em CSS puro ou config de framework).
   - Estabeleça variáveis **SEMÂNTICAS**, não descritivas. 
     * Errado: `--red-500`. 
     * Correto: `--color-primary`, `--bg-surface`, `--text-muted`, `--border-subtle`, `--radius-md`.

2. **Blindagem de Dark Mode & Temas:**
   - Para toda variável de cor, crie sua contraparte no Dark Mode (ex: `@media (prefers-color-scheme: dark)` ou `.dark`).
   - Elimine impiedosamente valores hardcoded como `background: #fff` dentro de componentes. Use `var(--bg-base)`. Isso evita páginas com "listras" ou fundos errados ao inverter temas.

3. **Prontidão para "Clone Perfeito" (UI Replication):**
   - Substitua marcações CSS fixas por tokens do Design System nos componentes. 
   - A meta é que, se o usuário fornecer uma imagem UI Premium amanhã, você só precise alterar as variáveis globais (`--radius`, `--color-primary`, `--bg-surface`) e 100% da plataforma se adapte sozinha e perfeitamente, sem quebrar.

4. **Correção de Anomalias Premium:**
   - Corrija falta de contraste em textos (acessibilidade AA / AAA).
   - Remova bordas residuais ou inconsistentes.
- Atualize `/.context/50_ui_ux_guide.md` declarando todos os tokens do D.S.

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [TOKENS] variáveis extraídas
- [COMPONENTES] a refatorar

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/50_ui_ux_guide.md`


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.