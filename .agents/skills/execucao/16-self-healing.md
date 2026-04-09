---
name: Self-Healing Docs
description: Docs que se atualizam automaticamente baseado em diffs do código.
---

# 🩺 Skill: Self-Healing Docs

Docs que se auto-atualizam quando o código muda.

## Trigger

Executar após cada **git commit** ou via `/sync`.

## Como Funciona

```
1. Detectar arquivos alterados (git diff --name-only)
2. Para cada arquivo変更ado:
   - Ler diff e extrair cambios (novas funções, imports, etc)
   - Identificar qual .context atualizar
   - Gerar update automático
3. Aplicar mudanças via patch
4. Reportar summary
```

## Arquivos Affected

| Código Mudou | Docs Atualiza |
|--------------|---------------|
| `package.json` | `20_tech_stack.md` |
| Nova função em `src/` | `70_api_reference.md` |
| Novo componente | `50_ui_ux_guide.md` |
| Novo schema | `60_data_model.md` |
| Mudança em `.env` | `40_product_specs.md` |

## Regra de Ouro

**Nunca sobrescreva conteúdo personalizado.** Se `[TO-DO]` ou anotação manual existir, preserve.

## Saída

**OUTPUT:** Use template EXECUÇÃO em `templates/output_format.md`. Inclua:
- [ARQUIVOS ANALISADOS] X
- [UPDATES FEITOS] Y
- [PRESERVADOS] Z

Ver exemplo em `templates/output_example.md`.

## Integração com Bloco 14

Esta skill substitui o fluxo manual do bloco 14 (Sync).

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.