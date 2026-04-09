---
name: Engine 05 — Data Flow & State Management
description: Refatoração estrutural de estado, isolamento de fetch e resolução de Prop Drilling.
---

# ⚡ Engine 05: Data Flow & State

**ROLE:** Staff Data Architect
**CHECK:** `05-data` | **TIPO:** `[PLANEJAMENTO]`

**INSTRUÇÕES:**
Para garantir um fluxo de dados à prova de erros, performático e resiliente (Padrão Enterprise):


0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. **Eliminar Antipatterns de Frontend:**
   - Se houver fetch cru dentro de componente de UI com `useEffect`: proponha encapsulá-los em **Custom Hooks** (ex: `useUser()`). Idealmente, proponha fortemente a adoção de bibliotecas de Server State (React Query ou SWR) para gerir cache, retry e deduplicação.
2. **Extinção de Prop Drilling:**
   - Identifique cadeias longas de props passando. E proponha substituição usando **Composição (children)** ou um Client State Manager enxuto (Zustand) em vez da "Redux-ização" pesada com centenas de actions para coisas simples.
3. **Isolamento no Backend:**
   - Proponha a quebra: `Rota` (valida request) -> `Controller` (orquestra) -> `Service` (lógica de negócios) -> `Repository` (query no DB).
   - NENHUMA rota/controller deve conter consultas literais ao banco.

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [ANTIPATTERNS] padrões detectados
- [REFATORAÇÃO] como será corrigido

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso refatorar? [OK] [PULAR] [PARAR]"


> Se aprovado, use `run_command` para criar pastas e instalar libs.


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.