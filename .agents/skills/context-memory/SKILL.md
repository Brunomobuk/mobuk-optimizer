---
name: Context Memory (.context)
description: Gestão da pasta .context — a "Verdade Única" do projeto. Contém instruções de criação, manutenção e templates para os 10 arquivos de documentação.
---

# 🧠 Skill: Context Memory

The `/.context` folder is the **technical knowledge base** of the project. It serves as "memory" for future AI sessions and dev onboarding.

## Structure

The `/.context` folder MUST contain **10 numbered files**:

| # | File | Purpose |
|---|------|---------|
| 00 | `00_meta.md` | Project identity (name, goal, owner) |
| 10 | `10_architecture.md` | Architecture and folder organization |
| 20 | `20_tech_stack.md` | Tech stack with exact versions |
| 30 | `30_coding_standards.md` | Code standards and conventions |
| 40 | `40_product_specs.md` | Product specs and features |
| 50 | `50_ui_ux_guide.md` | Visual and UX guide |
| 60 | `60_data_model.md` | Data model and schemas |
| 70 | `70_api_reference.md` | API references and endpoints |
| 80 | `80_changelog.md` | Change history |
| 90 | `90_active_memory.md` | Current sprint and recent decisions |

## Writing Rules

1. **Technical language** — Machine-readable optimized (RAG-friendly).
2. **Telegraphic style** — Lists and tables. Zero prose.
3. **Real data** — Fill out with real project data. If info is missing, flag as `[TO-DO]`.
4. **Exact versions** — In `20_tech_stack.md`, use exact `package.json` versions.

## How to Create

1. Create the `/.context` folder at project root.
2. Copy templates from `templates/` to `/.context`.
3. Fill each file with real project data.

## How to Update

1. After any sprint/major intervention, execute Engine **Block 14 (Sync)**.
2. `90_active_memory.md` must be cleared every sprint (archive old content).
3. Always validate via Audit **Check 14 (Sync)**.

## Templates

Templates are available in `templates/` under this skill.
Use workflow `/context-init` for automatic installation.

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.


