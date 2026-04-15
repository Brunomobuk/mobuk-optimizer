# Token Budget — Controle Central

> Limites, técnicas de otimização e rastreamento de consumo de tokens.

## Limites por Tipo de Área

Projetos grandes podem precisar de mais contexto. Limites ajustados para cenários reais:

| Tipo | Áreas | Limite Base | Projeto Grande (500+ arquivos) | 80% Warning |
|------|-------|:---:|:---:|:---:|
| SCAN | 00 | 500 | 1000 | Base × 0.8 |
| INIT | 01 | 1000 | 2000 | Base × 0.8 |
| CICLO | 02–12, 15–18 | 800 | 1500 | Base × 0.8 |
| PLAN | 13 | 1500 | 2500 | Base × 0.8 |
| SYNC | 14 | 600 | 1200 | Base × 0.8 |

**Detecção automática de projeto grande:**
- 500+ arquivos no repositório, OU
- 50+ dependências no package.json, OU
- `node_modules` > 300MB

Quando detectado, usar limites "Projeto Grande" automaticamente.

## Técnicas de Otimização

### 1. Output Denso (economia: ~40%)
- Listas > parágrafos
- Máximo 1 linha por bullet
- Zero prosa explicativa

### 2. Lazy Load (economia: ~30%)
- Carregar apenas o skill file da área atual
- Não pré-carregar áreas futuras
- Ler `.context` apenas se referenciado em `LEIA ANTES`

### 3. Cache Inteligente (economia: ~20%)
- Não reler arquivos já lidos na mesma sessão
- Manter referência ao último resultado de auditoria
- Reusar dados entre auditoria e execução da mesma área

### 4. Truncation (economia: ~50%)
- Máximo 150 linhas por resposta
- Se exceder: cortar explicações, manter só bullets
- Em 80% do budget: truncar proativamente

### 5. Table-Only (economia: ~35%)
- Dados estruturados em tabelas quando possível
- Evitar texto para dados que cabem em coluna

## Rastreamento de Consumo

Manter contagem mental por área:

```
Área 00: ~200/500 tokens (40%)
Área 01: ~800/1000 tokens (80%) ⚠️
Área 02: ~600/800 tokens (75%)
...
Total session: ~X tokens
```

Se uma área exceder o limite:
1. Truncar output imediatamente
2. Avisar: `⚠️ [TOKEN] excedido — output truncado`
3. Pular para próxima área

## Regra de Ouro

**Token budget existe para garantir que o agente não trave em projetos grandes.**
Se estiver dentro do limite, não otimize desnecessariamente — qualidade > economia.
Se estiver perto do limite, otimize agressivamente — continuidade > detalhe.


