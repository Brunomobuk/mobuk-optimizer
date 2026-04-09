---
name: Gamificação (XP & Levels)
description: Sistema de XP, níveis e badges por área melhorada.
---

# 🎮 Skill: Gamificação

Sistema de progressão com XP, níveis e badges para motivar evolução.

## Conceito

A cada área melhorada, o usuário ganha **XP** e sobe de **nível**.

## Sistema

### XP por Área

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

### Níveis

| Nível | XP Total | Título |
|-------|--------|--------|
| 1 | 0-99 | Aprendiz |
| 2 | 100-299 | Junior |
| 3 | 300-599 | Pleno |
| 4 | 600-999 | Sênior |
| 5 | 1000-1499 | Expert |
| 6 | 1500+ | Master |

### Badges

| Badge | Condição |
|-------|---------|
| 🧹 Detox Master | Área 02 completa |
| 🏗️ Arquiteto | Área 03 completa |
| 🛡️ Guardião | Área 10 completa |
| ⚡ Velocista | Área 11 completa |
| 🔄 Sniper | 16 áreas completas |
| 📚 Documentalista | 14 sync completo |

## Scorecard Gamificado

```
╔══════════════════════════════════════╗
║      🏆 SCORECARD FINAL            ║
╠══════════════════════════════════════╣
║  NÍVEL: 3 (Pleno)                 ║
║  XP: 350 / 600                    ║
║  ████████████░░░░░░░░ 58%        ║
╠══════════════════════════════════════╣
║  BADGES: 🧹 🛡️                   ║
║  ÁREAS: 12/16 completas         ║
╚══════════════════════════════════════╝
```

## Persistência

Salvar em `/.context/90_active_memory.md`:
```markdown
## Progresso do Projeto
| Campo | Valor |
|-------|-------|
| Nível | 3 |
| XP | 350 |
| Badges | 🧹 🛡️ |
```

## Motivação

- **Visual:** Progress bar
- **Rewards:** Badges únicos
- **Goals:** Próximo nível shown

## Referência

Para outros outputs, use templates em `templates/output-format.md` e exemplos em `templates/output_example.md`.


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.