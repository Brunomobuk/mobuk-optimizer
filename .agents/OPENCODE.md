# Integração com opencode

> Guia passo a passo para usar Mobuk Optimizer com opencode.

##快速开始 (Quick Start)

1. **Copie `.agents/`** para a raiz do projeto
2. **Inicie opencode** no diretório do projeto
3. **Digite** `/engine` para iniciar o ciclo completo

## Fluxo Detalhado

### Passo 1: Setup Inicial

```bash
# Clone ou copie a pasta .agents/ para seu projeto
cp -r /path/to/mobuk-optimizer/.agents /seu/projeto/
cd /seu/projeto
opencode .
```

### Passo 2: Iniciar Engine

```bash
/engine
```

O Mobuk Optimizer vai:
1. Detectar stack do projeto
2. Identificar áreas que precisam de atenção
3. Executar auditoria em cada área
4. Pedir aprovação para cada correção

### Passo 3: Modos de Operação

| Modo | Comando | Descrição |
|------|---------|-----------|
| Manual | `/engine` | Aprova cada passo |
| Autopilot | `/engine --auto` | Execução contínua |
| Auditoria | `/audit` | Apenas diagnóstico |
| Quick | `/audit-quick` | 5 checks rápidos |

## Comandos Disponíveis

| Comando | Função |
|---------|--------|
| `/engine` | Ciclo completo (16 áreas) |
| `/audit` | Auditoria completa |
| `/audit-quick` | 5 checks essenciais |
| `/detox` | Limpeza e sanitização |
| `/polish` | UI e UX |
| `/preflight` | Pré-deploy checklist |
| `/context-init` | Inicializar .context |

## Integração com Agentes

### opencode.config.yaml

```yaml
agents:
  - name: mobuk-optimizer
    description: Motor de otimização universal
    config:
      mode: manual  # ou autopilot
      threshold: 8.5
      auto_sync: true
```

### Variáveis de Ambiente

```bash
MOjuk_THRESHOLD=8.5      # Nota mínima para passar
MOjuk_AUTO_MODE=false    # Modo automático
MOjuk_VERBOSE=true       # Logs detalhados
```

## Dicas

- **Economy de Tokens:**O sistema carrega apenas a skill necessária
- **Checkpoint:**Após cada área, o estado é salvo em `.context/`
- **Reversão:**Use `/undo` para reverter a última ação
- **Relatório:**Use `/report` para gerar scorecard final

## Troubleshooting

| Problema | Solução |
|----------|--------|
| Não detecta stack | Execute `/engine --scan` primeiro |
| Timeout longo | Use `/audit-quick` |
| Memória cheia | Limpe `.context/` e reinicie |

> Para mais detalhes, consulte: `.agents/README.md`