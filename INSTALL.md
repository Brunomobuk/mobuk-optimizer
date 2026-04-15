# Mobuk Optimizer - Install

Script de instalação para configurar Mobuk Optimizer em qualquer projeto.

## Uso Rápido

```bash
# Windows (PowerShell)
.\install.ps1

# Linux/Mac
./install.sh
```

## O que faz

Detecta o editor de IA atual e cria os arquivos necessários:

| Editor | Arquivo criado |
|--------|----------------|
| Cursor | `.cursor/rules/mobuk-optimizer.md` |
| Claude Code | `CLAUDE.md` |
| OpenCode | `.opencode/AGENTS.md` |
| Trae | `.trae/rules/project_rules.md` |

Todos apontam para `.agents/` com o mesmo conteúdo.

## Configuração Manual

Se preferir copiar manualmente:

```bash
# Para Cursor
cp AGENTS.md CLAUDE.md
cp AGENTS.md .cursor/rules/mobuk-optimizer.md

# Para Claude Code
cp AGENTS.md CLAUDE.md

# Para OpenCode
cp AGENTS.md .opencode/AGENTS.md

# Para Trae
cp AGENTS.md .trae/rules/project_rules.md
```

## Estrutura Final

```
projeto/
├── .agents/              # Motor do toolkit (sempre necessário)
├── AGENTS.md             # Link para Cursor/OpenCode
├── CLAUDE.md             # Link para Claude Code
├── .cursor/rules/        # Link para Cursor Studio
├── .opencode/            # Link para OpenCode
└── .trae/rules/          # Link para Trae AI
```
