---
description: Ciclo completo do Mobuk Optimizer — auditoria + correção com aprovação passo a passo.
---

# /iniciar — Mobuk Optimizer Pipeline

Transformation engine guiado pelo **Mobuk Optimizer**. Cada área segue: **Auditoria → OK → Execução → OK**.

> **Fluxo Padrão (áreas 01-18):**
> 1. Carregar skill de Auditoria → Executar → Mostrar Nota + Pontos de Atenção
> 2. Pausar e perguntar: "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"
> 3. Se OK → Carregar skill de Execução → Executar → Mostrar Nota Nova
> 4. Pausar e perguntar: "Posso continuar? [OK] [PULAR] [PARAR]"
> 5. Atualizar `.context/`

## Step 1 — Initialize Agent

Read `.agents/agent/MOBUK-OPTIMIZER.md` to load behavior, type map, and instructions from `/.context/`.

> O Mobuk Optimizer se apresenta, identifica o projeto e pergunta pelo modo preferido (Manual ou Autopilot).

## Step 2 — Execution Loop

For each area (00 to 18), follow its **TIPO** flow:

| Type | Flow |
|------|------|
| `[SCAN]` | 00: Read `.context` → Execute audit → Show score → PAUSE → Update |
| `[INIT]` | 01: Check `.context/` → Execute → Report → PAUSE → Update |
| `[CICLO]` | 02–18: Audit → Score → If <10: Execute → Verify → Update |

> **Nota:** Área 00 (Diagnóstico) é leitura apenas — não requer execução.
> **Nota:** Apenas Nota 10 = aprovado. Nota < 10 requer correção.

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
║ 16 ║ Self-Healing     ║ CICLO║        ║        ║       ║
║ 17 ║ Token Budgeting ║ CICLO║        ║        ║       ║
║ 18 ║ Gamificação      ║ CICLO║        ║        ║       ║
╠════╬══════════════════╬══════╬════════╬════════╬═══════╣
║    ║ MÉDIA (CICLOS)   ║      ║        ║        ║  +X.X ║
╚════╩══════════════════╩══════╩════════╩════════╩═══════╝
```

> A média cobre apenas áreas `[CICLO]` (02–12), pois SCAN, INIT, PLAN e SYNC não são comparáveis.

After the scorecard, Mobuk Optimizer sugere os próximos passos baseados no PLAN (Área 13).