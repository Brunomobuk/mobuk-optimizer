# 🏗️ Arquitetura

## Tipo de Arquitetura

Framework de Agentes — organização modular por camada funcional.

## Árvore de Pastas

```
mobuk-optimizer/                # PROJETO PRÓPRIO
├── .context/                   # Contexto real deste projeto
│   ├── 00_meta.md
│   ├── 10_architecture.md
│   ├── 20_tech_stack.md
│   ├── 30_coding_standards.md
│   ├── 40_product_specs.md
│   ├── 50_ui_ux_guide.md
│   ├── 60_data_model.md
│   ├── 70_api_reference.md
│   ├── 80_changelog.md
│   └── 90_active_memory.md
├── .agents/                    # FERRAMENTA (copiar para outros projetos)
│   ├── README.md               # Quick start
│   ├── agent/
│   │   └── MOBUK-OPTIMIZER.md # Agente coordenador
│   ├── rules/                  # Regras always-on
│   │   ├── universal.md
│   │   ├── zero-any-tolerance.md
│   │   ├── design-system.md
│   │   └── ...
│   ├── skills/
│   │   ├── auditoria/         # 19 checks diagnósticos (00-18)
│   │   ├── execucao/           # 19 blocos de ação (00-18)
│   │   └── context-memory/    # Gestão .context + templates
│   ├── templates/             # Formatos de output
│   └── workflows/             # /iniciar, /auditar, /validar
├── AGENTS.md                  # CONFIGURAÇÃO ÚNICA (raiz)
├── setup.ps1                  # Script de instalação
└── README.md                  # Documentação
```

## Fluxo de Dados

```
Usuário → /iniciar → workflows/iniciar.md
                     → skills/auditoria/XX-*.md (audit)
                     → skills/execucao/XX-*.md (execute)
                     → verify → .context/ (update)
```

## Instalação em Outro Projeto

```bash
# Copiar para projeto destino
cp -r .agents/ /projeto-destino/
cp AGENTS.md /projeto-destino/
```

## Decisões Arquiteturais

| Decisão | Escolha | Motivo |
|---------|---------|--------|
| AGENTS.md único | Na raiz | Funciona em todos editores |
| Skills separadas | audit + execucao | Token economy |
| Ciclo por bloco | Audit → Execute → Verify | Nota 10 = aprovado |
| Detecção de stack | Check 00 | Pula áreas N/A |
