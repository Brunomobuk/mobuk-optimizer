---
trigger: model_decision
description: Padrões de design para interfaces inteligentes, automações de 1-click e UX preditiva.
---

# 🪄 AI-First & Frictionless Patterns

This document defines the aesthetics and behavior of intelligent features in the project.

## 🌈 "Magic" Aesthetics
- **Subtle Highlight:** AI-generated or AI-assisted elements MUST have a subtle visual cue (e.g., soft gradient, light glow border, or a ✨ icon).
- **Semantic Colors:** Use tones conveying "Intelligence" (e.g., Soft Violet, Electric Cyan, or Deep Indigo) to differentiate manual vs. magic actions.

## 🖱️ 1-Click Actions (Smart Buttons)
- **Consolidation:** If a process requires multiple steps, create a **Smart Button** that executes all of them and reports the final result.
- **Immediate Feedback:** Display a "Thinking..." or "Working..." state during prolonged AI processes.

## ✍️ Inline AI
- **Predictive Inputs:** Use context-aware light-gray suggestions inside inputs (dynamic placeholders).
- **Auto-Summarize:** Text blocks exceeding 500 characters MUST offer a floating "Summarize" button.
- **Smart Refactor:** Text editing fields MUST offer "Refine Tone" or "Fix Grammar" via AI.

## 🧠 Zero-Friction Principles
1. **Don't make me think:** The AI MUST suggest the most probable option first.
2. **Don't make me type:** Reuse all data already present in the project's context.
3. **Don't make me wait:** Use optimistic loading states and real progress feedback.

## ⌨️ Power User Features
- **Global Command Bar:** Every app should aspire to have a `CMD+K` for quick access to any function or entity.
- **Smart Bulk Actions:** When selecting multiple items, suggest actions based on their similarities.

---
**Signed:** Mobuk Optimizer