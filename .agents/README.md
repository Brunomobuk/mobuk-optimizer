# 🚀 Universal Engine (Agent-Led)

> Copie `.agents/` para a raiz de qualquer projeto. Digite `/iniciar`. O Mobuk Optimizer assume.

## Estrutura do Toolkit

- **`/agent/MOBUK-OPTIMIZER.md`**: O coordenador do projeto. Define como a IA deve interagir com você.
- **`/skills/auditoria/`**: 19 checks read-only (00–18) para diagnóstico.
- **`/skills/execucao/`**: 19 blocos de ação para correção.
- **`/workflows/`**: Comandos rápidos (slash commands).
- **`/rules/`**: Regras always-on.

## Áreas (19 total)

| # | Área | Tipo |
|---|------|------|
| 00 | Diagnóstico | SCAN |
| 01 | Contexto | INIT |
| 02 | Detox | CICLO |
| 03 | Estrutura | CICLO |
| 04 | Ambiente | CICLO |
| 05 | Dados | CICLO |
| 06 | Sanitização | CICLO |
| 07 | Refatoração | CICLO |
| 08 | Visual | CICLO |
| 09 | Experiência | CICLO |
| 10 | Segurança | CICLO |
| 11 | Performance | CICLO |
| 12 | Qualidade | CICLO |
| 13 | Estratégia | PLAN |
| 14 | Sincronização | SYNC |
| 15 | Friction Killer | CICLO |

## Como Funciona (O Modo "OK")

O sistema opera por padrão no **Modo Manual**, garantindo que nada seja alterado sem sua supervisão:

1.  **Auditoria:** O Agente avalia uma área e te mostra a nota e o problema.
2.  **Seu OK:** Você diz "OK" para ele corrigir.
3.  **Execução:** Ele aplica a melhoria.
4.  **Verificação:** Ele re-avalia e te mostra o resultado.
5.  **Seu OK:** Você diz "OK" para ele pular para a próxima área.

## Comandos Principais (3 modos)

| Comando | O que faz |
|---------|-----------|
| `/iniciar` | **Ciclo completo** — auditoria + correção com aprovação passo a passo |
| `/auditar` | Apenas diagnóstico — gera scorecard |
| `/validar` | Checklist pré-deploy — ambiente, segurança, QA, performance |

## Integração com opencode

Funciona com qualquer IA que execute agentes. Para opencode:
1. Copie `.agents/` para o projeto
2. O agente lê `agent/MOBUK-OPTIMIZER.md` como entrada
3. Execute `/iniciar` para iniciar o ciclo

---
**Dica:** Ao digitar `/iniciar`, o Mobuk Optimizer vai te perguntar se prefere o modo Manual ou Autopilot.

