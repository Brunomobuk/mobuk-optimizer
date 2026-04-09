---
description: Pipeline completo do Engine Universal orientado pelo Mobuk Optimizer com aprovação passo a passo.
---

# /engine — Mobuk Optimizer Pipeline

Transformation engine guided by **Mobuk Optimizer**. Five types of areas, each with a specific flow and `/.context/` integration.

## Step 1 — Initialize Agent

Read `.agents/agent/MOBUK-OPTIMIZER.md` to load behavior, type map, and instructions from `/.context/`.

> The Mobuk Optimizer introduces itself, identifies the project, and asks for the preferred mode (Manual or Autopilot).

## Step 2 — Execution Loop

For each area (00 to 14), follow its **TIPO** flow:

| Type | Condensed Flow |
|------|----------------|
| `[SCAN]` | 00: Read `.context` → Execute audit skill → Nota & Pontos de Atenção → PAUSE (Await OK) → Update `.context` |
| `[INIT]` | 01: Check if `.context/` exists → Execute execucao skill → Report creations → PAUSE (Await OK) → Update `.context` |
| `[CICLO]` | 02–12: Read `.context` → Audit → Show Nota & Pontos de Atenção → PAUSE & ASK: (OK/PULAR/REPETIR) → IF **OK**: Execute fixing points of attention + skill instructions → Verify → Update `.context` |
| `[PLAN]` | 13: Read `.context` → Execute execucao skill → Show plan → PAUSE (Await OK) → Update `.context` |
| `[SYNC]` | 14: Read all `.context` → Compare vs code → Update directly → Report diffs |

> Observação de melhoria: Sempre que o ciclo CICLO detectar mudanças relevantes no código durante a execução, dispare automaticamente o bloco 16-self-healing (Self-Healing Docs) para manter a documentação em sincronia com o código. O usuário poderá interromper ou ajustar esse comportamento caso deseje.
> 
> Observação adicional: a integração do Self-Healing não substitui a necessidade de aprovação para mudanças críticas; ele atua como assistente de atualização de docs, mantendo o histórico e o estado no `.context`.

## Step 3 — Final Scorecard

```
╔════╦══════════════════╦══════╦════════╦════════╦═══════╗
║ #  ║ ÁREA             ║ TIPO ║ ANTES  ║ DEPOIS ║ DELTA ║
╠════╬══════════════════╬══════╬════════╬════════╬═══════╣
║ 00 ║ Diagnóstico      ║ SCAN ║   —    ║        ║   —   ║
║ 01 ║ Contexto         ║ INIT ║   —    ║        ║   —   ║
║ 02 ║ Detox            ║ CICLO║        ║        ║       ║
║ 03 ║ Estrutura        ║ CICLO║        ║        ║       ║
║ 04 ║ Ambiente         ║ CICLO║        ║        ║       ║
║ 05 ║ Dados            ║ CICLO║        ║        ║       ║
║ 06 ║ Sanitização      ║ CICLO║        ║        ║       ║
║ 07 ║ Refatoração      ║ CICLO║        ║        ║       ║
║ 08 ║ Visual           ║ CICLO║        ║        ║       ║
║ 09 ║ Experiência      ║ CICLO║        ║        ║       ║
║ 10 ║ Segurança        ║ CICLO║        ║        ║       ║
║ 11 ║ Performance      ║ CICLO║        ║        ║       ║
║ 12 ║ Qualidade        ║ CICLO║        ║        ║       ║
║ 13 ║ Estratégia       ║ PLAN ║   —    ║   —    ║   —   ║
║ 14 ║ Sincronização    ║ SYNC ║   —    ║   —    ║   —   ║
║ 15 ║ Friction Killer  ║ CICLO║        ║        ║       ║
╠════╬══════════════════╬══════╬════════╬════════╬═══════╣
║    ║ MÉDIA (CICLOS)   ║      ║        ║        ║  +X.X ║
╚════╩══════════════════╩══════╩════════╩════════╩═══════╝
```

> The average only covers `[CICLO]` areas (02–12), since SCAN, INIT, PLAN, and SYNC are not comparable scores.

After the scorecard, Mobuk Optimizer suggests the next steps based on PLAN (Area 13).
