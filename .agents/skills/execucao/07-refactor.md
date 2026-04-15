---
name: Engine 07 — Refatoração
description: SRP, DRY e quebra de componentes gigantes.
---

# ⚡ Engine 07: Refatoração

**ROLE:** Lead Developer
**CHECK:** `07-refactor` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**

0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. Identifique os 5 maiores arquivos por número de linhas → candidatos a refatoração.
2. Busque lógica duplicada entre arquivos → candidatos a extração para utilitários.
3. Proponha quebra aplicando princípios **High-End de Produção**:
   - **SRP (Single Responsibility):** 1 arquivo = 1 responsabilidade cristalina.
   - **DRY:** Extrair código repetido para utils/hooks altamente tipados e reutilizáveis.
   - **Legibilidade:** Nomes de variáveis verbosos e autoexplicativos (evite `data`, `res`).
- **Composição:** Quebrar componentes gigantes em UI units burras e lógicas separadas.

**OUTPUT:** Use template EXECUÇÃO em `.agents/templates/output-format.md`. Inclua:
- [ARQUIVOS] maiores arquivos a refatorar
- [PROPOSTA] refatoração para cada um

Ver exemplo em `.agents/templates/output_example.md`.

> **PAUSA:** Após executar, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/10_architecture.md` | `/.context/90_active_memory.md`

> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.

