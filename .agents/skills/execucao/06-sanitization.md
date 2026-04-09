---
name: Engine 06 — Sanitização & Tipagem
description: Remoção de suppressions, tipagem forte e erradicação de código morto/comentado.
---

# ⚡ Engine 06: Sanitização & Tipagem

**ROLE:** Staff Quality Engineer
**CHECK:** `06-sanitization` | **TIPO:** `[EXECUTADO]`

**INSTRUÇÕES:**
Para garantir um código cristalino ("Padrão Produção Tier 1"):


0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. **Erradicação do `any`:**
   - Todo e qualquer tipo `any` encontrado deve ser refatorado. 
   - Crie as `Interfaces` ou `Types` exatos que descrevem os objetos. Se for impossível no momento, troque provisoriamente para `unknown` acompanhado de type narrowing. NUNCA mantenha `any`.
2. **Purificação de Supressões:**
   - Remova `@ts-ignore` e resolva o erro que ele estava escondendo.
   - Remova `eslint-disable` espalhados; ajuste a regra globalmente se não fizer sentido para a stack, mas nunca silencie erros individualmente para fugir de escrever código bom.
3. **Limpeza Cognitiva:**
   - Delete blocos de código comentados antigos. (Eles estão no histórico do Git, não precisam poluir o editor).
   - Remova `console.log` e debugs afins (preserve `console.error` ou sugerir logger estruturado como Winston/Pino se backend).
4. **Resolução de Dívidas:** Reveja os `TODO` e `FIXME`. Avalie se podem ser resolvidos na hora. Se não, centralize-os na documentação.

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [TIPOS CORRIGIDOS] any → tipos exatos
- [SUPRESSÕES REMOVIDAS] ts-ignore/eslint-disable
- [LIXO REMOVIDO] console.log, código comentado

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso continuar? [OK] [PULAR] [PARAR]"

> 📝 **ATUALIZE APÓS:** `/.context/90_active_memory.md` (inclua relatório de dívida técnica)