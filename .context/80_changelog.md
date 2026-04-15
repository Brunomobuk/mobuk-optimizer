# 📝 Changelog

## [1.2.0] - 2026-04-15

### Alterado
- Simplificação instalação: apenas 2 arquivos (`.agents/` + `AGENTS.md`)
- Removido: `.cursor/`, `.trae/`, `.opencode/`, `.claude/`, `CLAUDE.md`
- Removido: referência a "Autopilot Mode" (não implementado)
- Removido: `/undo`, `/report` (não implementados)
- Corrigido path em skills: `.agentstemplates` → `.agents/templates`
- Atualizado `.context/90_active_memory.md`

### Adicionado
- `setup.ps1` para instalação facilitada

## [1.1.0] - 2026-04-15

### Alterado
- Simplificação de comandos: 7 modos → 3 modos
- `/engine` → `/iniciar` (ciclo completo)
- `/audit` + `/audit-quick` → `/auditar` (diagnóstico)
- `/preflight` → `/validar` (pré-deploy)
- Remoção de `/detox`, `/polish`, `/context-init`, `/audit-quick` — mesclados em `/iniciar`

## [1.0.1] - 2026-04-14

### Corrigido
- Padronização do fluxo: Auditoria → OK → Execução → OK em TODAS as 19 áreas
- Remoção de duplicados: arquivos `13-roadmap.md` → `13-strategy.md`
- Remoção de `[PLANEJAMENTO]` — todas execuções agora são `[EXECUTADO]`
- Padronização de caminhos: `templates/` → `.agents/templates/`
- Correção de contagens: 14 → 18 → 19 áreas
- Adição de auditorias para áreas 17 e 18 (Token Budgeting + Gamificação)
- Padronização de mensagens de pausa
- Adição de .gitignore
- Remoção de pasta .qwen/ e arquivos desktop.ini

## [1.0.0] - 2026-02-21

### Adicionado
- Skills: `auditoria/SKILL.md` (19 checks diagnósticos read-only)
- Skills: `execucao/SKILL.md` (19 blocos de ação)
- Skills: `context-memory/SKILL.md` + 10 templates
- Workflows: `/iniciar`, `/auditar`, `/validar`
- Rules: `universal.md`, `zero-any-tolerance.md`, `design-system.md`, `ai-first-patterns.md`, `common-patterns.md`, `token-budget.md`
- README.md com quick start
- Ciclo: AUDIT → EXECUTE → VERIFY com threshold 8.5
- Detecção inteligente de stack no Check 00
- Suporte a N/A para áreas não aplicáveis
- Critérios de nota objetivos e quantificáveis
- Instruções com ferramentas concretas
- `.context/` completo para o próprio projeto
