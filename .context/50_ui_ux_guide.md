# 🎨 Guia UI/UX

> Este projeto é um toolkit de CLI/Markdown. A UI é o output do agente.

## Design do Output

- **Sem caixas/bordas:** Zero `┌─┐` ou tabelas decorativas no header
- **Emojis semânticos:** `📍` auditoria, `⚡` execução, `✅` sucesso, `⚠️` atenção
- **Círculos coloridos:** 🔴🟠🟡🟢 por nota
- **Barra de progresso:** `▰▱` (12 chars), porcentagem inteira
- **Formato:** 2 linhas de header + conteúdo compacto

## Header Padrão

```
📍 02/19 · Detox [CICLO]
▰▱▱▱▱▱▱▱▱ 11%  ·  🟡 6.5
```

## Princípios Visuais

- **Minimalismo:** Máximo 80 chars por linha no header
- **Consistência:** Mesmo formato em todas as respostas
- **Hierarquia:** Header → Status → Bullets → Pergunta
- **Zero prosa:** Informações em bullets de 1 linha

## Acessibilidade

- Emojis complementados por texto (`Status: ⚠️ Atenção`)
- Tabelas com headers claros
- Cores de círculos indicam nível, não substituem texto
