---
trigger: model_decision
description: Todo valor visual (cor, espaçamento, fonte, sombra) deve usar tokens do Design System. Hardcode é proibido.
---

# 🎨 Design System Enforcement

## 🎯 Objective

Ensure absolute visual consistency. EVERY aesthetic value in code MUST be derived from tokens (CSS Variables) defined in the project's Design System (`/.context/50_ui_ux_guide.md`).

## 🚫 Prohibitions

1. **Hardcoded Colors:** NEVER use `#hex`, `rgb()`, `hsl()` directly. Use `var(--color-*)`.
2. **Magic Spacing:** NEVER use `padding: 13px`. Use `var(--space-*)`.
3. **Loose Fonts:** NEVER use `font-size: 14px`. Use `var(--font-size-*)`.
4. **Random Radii:** NEVER use `border-radius: 6px`. Use `var(--radius-*)`.
5. **Inline Shadows:** NEVER use `box-shadow: 0 2px...`. Use `var(--shadow-*)`.
6. **Raw Transitions:** NEVER use `transition: 0.3s`. Use `var(--transition-*)`.

## ✅ Standard Compliance

```css
/* ❌ FORBIDDEN */
.card {
  background: #1a1a2e;
  padding: 24px;
  border-radius: 8px;
  color: #e0e0e0;
}

/* ✅ MANDATORY */
.card {
  background: var(--color-bg-elevated);
  padding: var(--space-6);
  border-radius: var(--radius-md);
  color: var(--color-text);
}
```

## ⚠️ Violation Protocol

If a hardcoded visual value is detected:

> 🎨 **Design System Violation**: Detectado valor visual hardcode. Substitua por token definido em `/.context/50_ui_ux_guide.md`.

## 📋 Review Checklist

Before committing visual changes, verify:

- [ ] All colors use `var(--color-*)`
- [ ] All spacing uses `var(--space-*)`
- [ ] All typography uses `var(--font-size-*)` and `var(--font-weight-*)`
- [ ] All borders use `var(--radius-*)`
- [ ] All shadows use `var(--shadow-*)`
- [ ] All transitions use `var(--transition-*)`
- [ ] Dark mode behaves natively without breaking
- [ ] Newly introduced tokens are registered in `50_ui_ux_guide.md`