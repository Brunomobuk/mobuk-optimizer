---
description: Executa a auditoria completa do projeto lendo as skills granulares.
---

# /audit — Full Audit

Project X-Ray across **19 áreas** (00-18). Outcome: scoreboard with ratings from 0 to 10.

## Steps

1. **Loading:** Read the skills in `.agents/skills/auditoria/` sequentially (00 to 18).
2. **Reading Cycle:** For each `XX-name.md` file, load and execute the corresponding check. This saves tokens by focusing on one context at a time.
3. **Execution:** For each check:
    - Collect real data using tools.
    - Clearly identify and display the **Pontos de Atenção** found in the project.
    - Generate the Strict Output defined in the skill, presenting the **Nota** and the **Resultado**.
4. **MANDATORY PAUSE:** After displaying the score and points of attention, the agent MUST ask:
    > "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"
    The agent MUST stop and wait for the user's command.
5. **Scorecard:** After concluding the processed areas, generate the final consolidated table with the overall average.

## Recommendations

- If average < 8.5: Suggest running `/engine` for the Master Agent to initiate corrections.
- If average ≥ 8.5: Suggest running `/preflight` for final deploy validation.
