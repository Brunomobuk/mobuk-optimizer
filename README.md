# Mobuk Optimizer

> Toolkit de agentes IA para otimização automática de projetos de software.

```
/iniciar → Ciclo completo (audit + fix)
/auditar → Apenas diagnóstico
/validar → Pré-deploy
```

## O que é?

Mobuk Optimizer é um **motor de transformação universal** guiado por IA. Copie a pasta `.agents/` para qualquer projeto e digite um comando. O sistema ауdita, identifica problemas, corrige e repete até nota 10.

## Quick Start

```bash
# 1. Copie .agents/ para seu projeto
cp -r mobuk-optimizer/.agents /seu/projeto/

# 2. Inicie o ciclo
/iniciar
```

## Comandos (3 modos)

| Comando | Função |
|---------|--------|
| `/iniciar` | Ciclo completo — auditoria + correção com aprovação |
| `/auditar` | Apenas diagnóstico — gera scorecard |
| `/validar` | Pré-deploy — ambiente, segurança, QA, performance |

## Fluxo

```
1. /iniciar
2. O agente ауdita área 00 → mostra nota
3. Você diz "OK" para corrigir
4. O agente executa → mostra nota nova
5. Repete até nota 10 em todas as áreas
```

## 19 Áreas

| # | Área | # | Área |
|---|------|---|------|
| 00 | Diagnóstico | 10 | Segurança |
| 01 | Contexto | 11 | Performance |
| 02 | Detox | 12 | Qualidade |
| 03 | Estrutura | 13 | Estratégia |
| 04 | Ambiente | 14 | Sincronização |
| 05 | Dados | 15 | Friction Killer |
| 06 | Sanitização | 16 | Self-Healing |
| 07 | Refatoração | 17 | Token Budgeting |
| 08 | Visual | 18 | Gamificação |
| 09 | Experiência | | |

## Integração

Funciona com:
- **OpenCode**
- **Claude Code**
- **Cursor**
- **Trae AI**

Basta copiar `.agents/` para o projeto — o agent reconhece automaticamente.

## Tech Stack

- Linguagem: Markdown (configuração)
- Sem dependências runtime
- Token economy — carrega apenas a área atual

## Licença

MIT