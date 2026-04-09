---
description: Inicializa a pasta .context com os 10 arquivos de documentação técnica do projeto.
---

# /context-init — Inicializar Memória do Projeto

Cria a pasta `/.context` e preenche com dados reais do projeto.

> [!NOTE]
> O `/engine` já faz isso automaticamente no Bloco 01. Use `/context-init` apenas se quiser criar o .context sem rodar o engine inteiro.

// turbo-all

## Passos

1. Leia `.agents/skills/context-memory/SKILL.md`.

2. Verifique se `/.context` já existe.
   - Se **SIM**: Pergunte se deseja sobrescrever ou completar faltantes.
   - Se **NÃO**: Continue.

3. Crie `/.context` e copie os 10 templates de `skills/context-memory/templates/`.

4. **Preenchimento automático** (se o projeto tiver código):
   - `00_meta.md` → Nome do `package.json`, tipo de projeto
   - `10_architecture.md` → Árvore de pastas real
   - `20_tech_stack.md` → Dependências com versões exatas
   - `50_ui_ux_guide.md` → Analise CSS, extraia tokens de cores, fontes, espaçamentos

5. Reporte: arquivos criados, quais foram preenchidos, quais ficaram como `[TO-DO]`.

6. Sugira: "Execute `/engine` para melhorar o projeto automaticamente."
