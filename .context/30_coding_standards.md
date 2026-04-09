# 📏 Padrões de Código

## Convenções para Arquivos `.agents/`

| Tipo | Padrão | Exemplo |
|------|--------|---------|
| Skills | `SKILL.md` dentro de pasta nomeada | `skills/audit/SKILL.md` |
| Workflows | kebab-case `.md` | `workflows/audit-quick.md` |
| Rules | kebab-case `.md` | `rules/zero-any-tolerance.md` |
| Templates | `NN_snake_case.md` (numerados) | `templates/50_ui_ux_guide.md` |

## Estrutura de um Workflow

```yaml
---
description: Frase curta descritiva (aparece como hint do slash command)
---
# /nome — Título Descritivo
(instruções passo a passo)
```

## Estrutura de uma Skill

```yaml
---
name: Nome Legível da Skill
description: O que esta skill faz
---
# Emoji Skill: Nome
(definições, instruções, blocos)
```

## Estrutura de uma Rule

```yaml
---
description: Regra resumida em uma frase
---
# Emoji Título da Regra
(proibições, exemplos, protocolo de violação)
```

## Regras de Escrita

- **Token Economy:** Listas e tabelas. Zero parágrafos longos.
- **Instruções numeradas:** Sempre usar listas numeradas para passos.
- **Critérios objetivos:** Cada nota deve ter faixa quantificável.
- **Ferramentas concretas:** Referenciar ferramentas reais (`grep_search`, `find_by_name`).
- **Universalidade:** Nunca assumir stack específica. Usar condicionais ("Se TypeScript: ...", "Se Python: ...").
