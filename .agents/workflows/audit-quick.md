---
description: Auditoria rápida com 6 checks essenciais para avaliação express do projeto.
---

# /audit-quick — Auditoria Express

Avaliação rápida focada nos 6 checks mais críticos: Diagnóstico, Contexto, Detox, Ambiente, Sanitização e Qualidade.

## Passos

1.  **Carregamento Seletivo:** Carregue as skills individualmente de `skills/auditoria/`:
    - `00-diagnosis.md` — detecta stack e tipo do projeto
    - `01-memory.md` — verifica documentação
    - `02-detox.md` — verifica lixo digital
    - `04-env.md` — verifica tooling e ambiente
    - `06-sanitization.md` — verifica higiene de código
    - `12-qa.md` — verifica cobertura de testes

2.  **Execução:** Execute cada check com dados reais e gere a nota.

3.  **Mini-Scorecard:**
```
╔════╦══════════════════╦══════╦═══════════╗
║ #  ║ CHECK            ║ NOTA ║ STATUS    ║
╠════╬══════════════════╬══════╬═══════════╣
║ 00 ║ Diagnóstico      ║      ║           ║
║ 01 ║ Contexto         ║      ║           ║
║ 02 ║ Detox            ║      ║           ║
║ 04 ║ Ambiente         ║      ║           ║
║ 06 ║ Sanitização      ║      ║           ║
║ 12 ║ Qualidade        ║      ║           ║
╠════╬══════════════════╬══════╬═══════════╣
║    ║ MÉDIA EXPRESS    ║      ║           ║
╚════╩══════════════════╩══════╩═══════════╝
```

4.  **Sugestão:**
    - Média < 8.5 → "Execute `/audit` para diagnóstico completo ou `/engine` para corrigir."
    - Média ≥ 8.5 → "Projeto saudável! Execute `/preflight` antes do deploy."


