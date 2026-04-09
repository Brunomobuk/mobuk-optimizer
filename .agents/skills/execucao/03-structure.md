---
name: Engine 03 — Estrutura & Arquitetura
description: Reestruturação robusta aplicando conceitos de Colocation e Feature-Slices.
---

# ⚡ Engine 03: Estrutura & Arquitetura

**ROLE:** Staff Software Architect
**CHECK:** `03-structure` | **TIPO:** `[PLANEJAMENTO]`

**INSTRUÇÕES:**
Para garantir uma base escalável e Enterprise:


0. **Resolver Pontos de Atenção:**
   - Primeiramente, analise e atue para resolver todos os **PONTOS DE ATENÇÃO** levantados pela Auditoria imediatamente anterior.
   
1. Baseado na Auditoria, projete o estado "To-Be" da arquitetura.
2. Em Frontend React/Moderno, recomende e estruture **Feature-Sliced Design / Vertical Slices**:
   - Mover de arquiteturas horizontais fracas (`/components`, `/hooks`, `/api`) para domínios coesos (`/features/auth/`, `/features/dashboard/`).
   - Aplicar **Colocation**: Cada componente deve conter seu próprio estilo, tipo e teste na mesma pasta, não espalhados pelo projeto.
3. Em Backend (Node/Python/Go):
   - Proponha **DDD (Domain-Driven Design)** ou separação estrita de Rotas → Controllers → Services → Repositories.
   - Elimine vazamento de dados do banco de dados direto nas rotas.
4. Elimine "Lixeiras": Planeje a quebra da pasta genérica `/utils` em pastas de domínio (ex: `/utils/date.ts`, `/utils/currency.ts` → movidos para `/lib/formatters/`).
5. Gere a árvore exata de movimentação (`MV arquivo_antigo.ts -> nova_pasta/novo_arquivo.ts`).

**OUTPUT:** Use template EXECUÇÃO em `templates/output-format.md`. Inclua:
- [ANTES] arquitetura atual
- [DEPOIS] arquitetura proposta

Ver exemplo em `templates/output_example.md`.

> **PAUSA:** Após output, pergunte: "Posso criar pastas e mover arquivos? [OK] [PULAR] [PARAR]"


> Se o usuário der OK, use `run_command` com `mv` e atualize imports com `multi_replace_file_content`.


> ⚠️ **STRICT MANDATE:** All internal reasoning is English, but you MUST output responses, code, and context updates to the user strictly in **PT-BR**.