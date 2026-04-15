# Integração com opencode

> Guia passo a passo para usar Mobuk Optimizer com opencode.

## Quick Start

1. **Copie `.agents/`** para a raiz do projeto
2. **Inicie opencode** no diretório do projeto
3. **Digite** `/iniciar` para iniciar o ciclo completo

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
/iniciar
```

O Mobuk Optimizer vai:
1. Detectar stack do projeto
2. Identificar áreas que precisam de atenção
3. Executar auditoria em cada área
4. Pedir aprovação para cada correção

### Passo 3: Modos de Operação

| Modo | Comando | Descrição |
|------|---------|-----------|
| Manual | `/iniciar` | Aprova cada passo |
| Autopilot | `/iniciar --auto` | Execução contínua |
| Auditoria | `/auditar` | Apenas diagnóstico |
| Validação | `/validar` | Pré-deploy |

## Comandos Disponíveis (3 modos)

| Comando | Função |
|---------|--------|
| `/iniciar` | Ciclo completo (audit + fix) |
| `/auditar` | Apenas diagnóstico |
| `/validar` | Pré-deploy checklist |

## Integração com Agentes

### opencode.config.yaml

```yaml
agents:
  - name: mobuk-optimizer
    description: Motor de otimização universal
    config:
      mode: manual  # ou autopilot
      threshold: 10
      auto_sync: true
```

### Variáveis de Ambiente

```bash
MOjuk_THRESHOLD=10     # Nota mínima = 10
MOjuk_AUTO_MODE=false    # Modo automático
MOjuk_VERBOSE=true       # Logs detalhados
```

## Dicas

- **Economia de Tokens:** O sistema carrega apenas a skill necessária
- **Checkpoint:** Após cada área, o estado é salvo em `.context/`
- **Reversão:** Use `/undo` para reverter a última ação
- **Relatório:** Use `/report` para gerar scorecard final

## Troubleshooting

| Problema | Solução |
|----------|--------|
| Não detecta stack | Execute `/iniciar --scan` primeiro |
| Timeout longo | Execute `/auditar` para diagnóstico rápido |
| Memória cheia | Limpe `.context/` e reinicie |

> Para mais detalhes, consulte: `.agents/README.md`