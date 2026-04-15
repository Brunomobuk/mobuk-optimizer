---
description: Proibição absoluta do tipo 'any' em TypeScript. Toda ocorrência deve ser interceptada e refatorada.
---

# 🛑 Rule: Zero Tolerance for `any`

## 🎯 Objective

Maintain ultimate TypeScript type integrity. Using `any` nullifies static typing benefits and compromises runtime safety.

> ⚠️ This rule applies **ONLY** to TypeScript projects. For others, bypass with `[N/A]`.

## 🚫 Strict Directives

1. **Absolute Ban:** NEVER write or suggest `any` in variables, parameters, returns, or properties.
2. **Immediate Interception:** If `any` is found in the code, refactor it **BEFORE** proceeding with any other task.
3. **Mandatory Alternatives:**
   - Unknown type → `unknown`
   - Reusable type → Generics (`<T>`)
   - Complex type → named `interface` or `type`
   - Necessary casting → specific type assertion (`as MyInterface`), NEVER `as any`
4. **Config:** Ensure `"strict": true` and `"noImplicitAny": true` in `tsconfig.json`.

## ⚠️ Violation Protocol

When `any` is detected, immediately output:

> 🛑 **Mobuk Optimizer — Type Violation**: `any` detected. Refactoring to a safe type before continuing.

## 🛠️ Refactoring Examples

```diff
- function process(data: any) { ... }
+ function process(data: unknown) { ... }
+ function process<T>(data: T) { ... }
```

```diff
- const payload = result as any;
+ const payload = result as MyInterface;
```


