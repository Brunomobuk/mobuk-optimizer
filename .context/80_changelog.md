# 📝 Changelog

## [1.0.1] - 2026-04-14

### Corrigido
- Padronização do fluxo: Auditoria → OK → Execução → OK em TODAS as 19 áreas
- Remoção de duplicados: arquivos `13-roadmap.md` → `13-strategy.md`
- Remoção de `[PLANEJAMENTO]` — todas execuções agora são `[EXECUTADO]`
- Padronização de caminhos: `templates/` → `.agents/templates/`
- Correção de contagens: 14 → 18 → 19 áreas
- Adição de auditorias para áreas 17 e 18 (Token Budgeting + Gamificação)
- Padronização de mensagens de pausa
- Criação de arquivos de instruções para todas as IDEs (CLAUDE.md, AGENTS.md, .trae/rules/, .cursor/rules/, .opencode/)
- Adição de .gitignore
- Remoção de pasta .qwen/ e arquivos desktop.ini

## [1.0.0] - 2026-02-21

### Adicionado
- Skills: `auditoria/SKILL.md` (19 checks diagnósticos read-only)
- Skills: `execucao/SKILL.md` (19 blocos de ação)
- Skills: `context-memory/SKILL.md` + 10 templates
- Workflows: `/audit`, `/audit-quick`, `/engine`, `/context-init`, `/detox`, `/polish`, `/preflight`
- Rules: `universal.md`, `zero-any-tolerance.md`, `design-system.md`, `ai-first-patterns.md`, `common-patterns.md`, `token-budget.md`
- README.md com quick start
- Ciclo: AUDIT → EXECUTE → VERIFY com threshold 8.5
- Detecção inteligente de stack no Check 00
- Suporte a N/A para áreas não aplicáveis
- Critérios de nota objetivos e quantificáveis
- Instruções com ferramentas concretas
- `.context/` completo para o próprio projeto
- Arquivos de instruções para Claude Code, OpenCode, Cursor, Trae AI

### Áreas (19 total)
00-Diagnosis → 01-Context → 02-Detox → 03-Structure → 04-Env → 05-Data → 06-Sanitization → 07-Refactor → 08-Visual → 09-UX → 10-Security → 11-Performance → 12-QA → 13-Strategy → 14-Sync → 15-FrictionKiller → 16-SelfHealing → 17-TokenBudgeting → 18-Gamification