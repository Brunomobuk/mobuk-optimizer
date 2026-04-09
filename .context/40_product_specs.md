# 📦 Especificações do Produto

## Visão Geral

Universal Engine é um framework de agentes IA que transforma qualquer projeto de software. O usuário copia a pasta `.agents/` para seu projeto, digita `/engine`, e o sistema faz o resto.

## Features Atuais (Implementadas)

| # | Feature | Status |
|---|---------|--------|
| 1 | 15 checks de auditoria read-only (skill) | ✅ |
| 2 | 15 blocos de ação/execução (skill) | ✅ |
| 3 | Ciclo self-driving: audit → execute → verify (threshold 8.5) | ✅ |
| 4 | Detecção inteligente de stack no Check 00 | ✅ |
| 5 | Suporte a N/A (skip automático de checks não aplicáveis) | ✅ |
| 6 | 7 workflows (slash commands) | ✅ |
| 7 | 3 rules (universal, zero-any, design-system) | ✅ |
| 8 | 10 templates `.context` em branco | ✅ |
| 9 | Scorecard comparativo ANTES × DEPOIS com DELTA | ✅ |
| 10 | Barra de progresso visual entre blocos | ✅ |

## Features Planejadas

| # | Feature | Prioridade |
|---|---------|------------|
| 1 | Testar em projeto real (Python, Go, PHP) | 🔴 Alta |
| 2 | Workflow `/fix N` — executar bloco específico | 🟡 Média |
| 3 | Persistência de scorecard entre sessões | 🟡 Média |
| 4 | Integração com CI/CD (rodar audit no pipeline) | 🟢 Baixa |
