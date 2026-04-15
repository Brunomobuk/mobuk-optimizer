# Barra de Progresso

> Template reutilizável para显示进度 em workflows.

## Uso

```markdown
┌────────────────────────────────────────┐
│ AREA 02/14 — DETOX [ CICLO ]           │
│ ████████████████████░░░░░░░░░░░░░░░ │ 65%
└────────────────────────────────────────┘
```

## Componente

```
┌────────────────────────────────────────┐
│ [TÍTULO]                             │
│ ████████████████████░░░░░░░░░░░░░░ │ [PORCENTAGEM]%
└────────────────────────────────────────┘
```

## Exemplos

| Progresso | Barra |
|----------|------|
| 0% | ░░░░░░░░░░░░░░░░░░░░░░░░ |
| 25% | ████████░░░░░░░░░░░░░░░░░░░ |
| 50% | ██████████████████░░░░░░░░░░░░░ |
| 75% | ██████████████████████████░░░░░░ |
| 100% | ████████████████████████████████ |

## Função helper (JavaScript)

```javascript
function progressBar(percent, width = 20) {
  const filled = Math.round((percent / 100) * width);
  const bar = '█'.repeat(filled) + '░'.repeat(width - filled);
  return `▓${bar}▓ ${percent}%`;
}
```

## Outputpadronizado

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📍 ÁREA [N]/[TOTAL] — [NOME] [TIPO]
[ BARRA ]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

