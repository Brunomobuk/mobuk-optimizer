# 🏗️ Arquitetura

## Tipo de Arquitetura

Framework de Agentes — organização modular por camada funcional.

## Árvore de Pastas

```
.agents/
├── README.md                           # Quick start — ponto de entrada
├── rules/                              # Regras always-on
│   ├── universal.md                    # Qualidade, idioma, filosofia
│   ├── zero-any-tolerance.md           # Anti-any em TypeScript
│   └── design-system.md               # Anti-hardcode visual
├── skills/                             # Capacidades reutilizáveis
│   ├── audit/
│   │   └── SKILL.md                    # 19 checks diagnósticos read-only
│   ├── execucao/
│   │   └── SKILL.md                    # 19 blocos de ação
│   ├── context-memory/
│   │   ├── SKILL.md                    # Gestão da pasta .context
│   │   └── templates/                  # 10 templates de documentação
│           ├── 00_meta.md
│           ├── 10_architecture.md
│           ├── 20_tech_stack.md
│           ├── 30_coding_standards.md
│           ├── 40_product_specs.md
│           ├── 50_ui_ux_guide.md
│           ├── 60_data_model.md
│           ├── 70_api_reference.md
│           ├── 80_changelog.md
│           └── 90_active_memory.md
└── workflows/                          # Slash commands
    ├── iniciar.md                      # /iniciar — ciclo completo
    ├── auditar.md                   # /auditar — diagnóstico
    └── validar.md                   # /validar — pré-deploy
```

## Fluxo de Dados

```mermaid
graph TD
    U[Usuário digita /iniciar] --> W[workflows/iniciar.md]
    W --> A[skills/auditoria/SKILL.md]
    W --> E[skills/execucao/SKILL.md]
    A -->|check N| SCORE{Nota = 10?}
    SCORE -->|Sim| SKIP[SKIP → próximo]
    SCORE -->|Não| E
    E -->|executa bloco N| A2[Re-audit check N]
    A2 --> SCORE2{Nota = 10?}
    SCORE2 -->|Sim| SKIP
    SCORE2 -->|Não| RETRY[Retry max 2x]
    RETRY --> E
    R[rules/] -.->|aplica sempre| W
```

## Decisões Arquiteturais

| Decisão | Escolha | Motivo |
|---------|---------|--------|
| Skills separadas | audit + engine + context-memory | Token economy — cada workflow carrega só o necessário |
| Ciclo por bloco | Audit → Execute → Verify | Garante qualidade com nota 10 |
| Detecção de stack | Check 00 classifica projeto | Permite pular checks/blocos N/A automaticamente |
| Templates em branco | Marcadores `[EXTRAIR]` | IA preenche após análise real do projeto |
