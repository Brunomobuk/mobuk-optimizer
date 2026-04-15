---
trigger: model_decision
description: Regras universais aplicáveis a qualquer interação. Adaptam-se automaticamente à stack do projeto.
---

# 📜 Universal Rules

Applies to **all interactions**, regardless of workflow, skill, or stack.

## Philosophy

1. **High-End** — Production-grade code. No throwaways.
2. **Token Economy** — Dense responses. Lists and tables. Zero prose/fluff.
3. **Single Truth** — `/.context` is the ultimate authority. Rely on real files.
4. **Universality** — Adapt to the project's real stack. Do not assume React/TS blindly.

## Language Rule

- **ALWAYS OUTPUT IN PT-BR** — Chat replies, artifacts, code comments, and documentation MUST strictly be written in native Portuguese. Instructions are in English to save tokens, but output is PT-BR.

## Code Quality

- Functions ≤ 50 lines.
- Names = clear verbs (`fetchUser`, `handleSubmit`; never `data`, `doStuff`).
- DRY — Zero duplicate logic. Extract to utils.
- S.O.L.I.D. — 1 file = 1 responsibility.
- If TypeScript: strict zero `any` (see `rules/zero-any-tolerance.md`).
- If CSS: zero hardcoded values (see `rules/design-system.md`).

## Security

- NEVER hardcode secrets (API Keys, tokens, passwords).
- Ensure `.env` is ALWAYS in `.gitignore`.
- Maintain `.env.example` as reference.
- Strict input validation (type/size constraints).

## Approval Flow

- **`[EXECUTADO]`** → Requires `OK` confirmation after audit.
- **`[N/A]`** → Auto-skip (does not apply to current stack).

## Output Format

Use templates centralizados em `skills/templates/output-format.md` + exemplos em `skills/templates/output-example.md`.