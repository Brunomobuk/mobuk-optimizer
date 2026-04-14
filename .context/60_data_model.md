# 🗃️ Modelo de Dados

## Estrutura de Estado do Agente

| Campo | Tipo | Descrição |
|-------|------|-----------|
| `current_area` | int | Área atual sendo processada (0-18) |
| `xp_total` | int | XP acumulado do projeto |
| `areas_completed` | list[int] | Áreas já processadas |
| `token_usage` | dict[str,int] | Tokens consumidos por área |
| `large_project` | bool | Detectado automaticamente |

## Schema de Área

```yaml
area:
  number: int          # 0-18
  name: string         # "Detox", "Estrutura", etc.
  type: enum           # SCAN, INIT, CICLO, PLAN, SYNC
  xp: int              # XP ao completar
  token_limit: int     # Base ou Grande
  has_audit: bool      # Tem check de auditoria?
  has_execute: bool    # Tem bloco de execução?
```

## Schema de Progresso (salvo em 90_active_memory.md)

```yaml
progresso:
  nivel: int           # 1-6
  titulo: string       # "Aprendiz" a "Master"
  xp: int              # Total acumulado
  areas_completas: int # 0-19
  media_ciclos: float  # 0.0-10.0
  badges: list[string] # Emojis dos badges
  ultima_execucao: date
```

## Schema de Badge

```yaml
badge:
  emoji: string        # 🧹, ️, etc.
  nome: string         # "Clean Code", "Arquiteto"
  condicao: string     # Critério de obtenção
```
