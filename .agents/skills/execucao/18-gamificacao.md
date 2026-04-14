---
name: Engine 18 — Gamificação
description: Sistema de XP, níveis e badges por área melhorada.
---

# 🎮 Engine 18: Gamificação

**ROLE:** Engagement Specialist
**CHECK:** `18-gamificacao` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.

1. Calcule o XP ganho baseado nas áreas completadas
2. Atualize o nível do usuário
3. Aplique badges conquistados
4. Mostre o scorecard gamificado

**SISTEMA DE PROGRESSÃO:**

| Área | XP | Condição |
|------|-----|---------|
| Diagnóstico | 10 | Completar scan |
| Contexto | 50 | Criar docs |
| Detox | 30 | Limpar código |
| Estrutura | 40 | Reorganizar |
| Ambiente | 35 | Setup |
| Dados | 45 | Validar |
| Sanitização | 40 | Limpar tipos |
| Refatoração | 50 | Melhorar código |
| Visual | 30 | UI improved |
| UX | 30 | A11y |
| Segurança | 60 | Fix vulnerability |
| Performance | 50 | Otimizar |
| Qualidade | 40 | Testes |
| Estratégia | 25 | Roadmap |
| Sync | 20 | Docs atualizadas |

**NÍVEIS:**

| Nível | XP Total | Título |
|-------|--------|--------|
| 1 | 0-99 | Aprendiz |
| 2 | 100-299 | Junior |
| 3 | 300-599 | Pleno |
| 4 | 600-999 | Sênior |
| 5 | 1000-1499 | Expert |
| 6 | 1500+ | Master |

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [PROGRESSO] XP gained
- [BADGES] badges obtidos

Ver exemplo em `templates/output_example.md`.

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [PROGRESSO] XP gained
- [BADGES] badges obtidos

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** Salve o progresso em `/.context/90_active_memory.md`:
```markdown
## Progresso do Projeto
| Campo | Valor |
|-------|-------|
| Nível | X |
| XP | Y |
| Badges | ... |
```

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.