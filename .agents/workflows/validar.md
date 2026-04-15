---
description: Checklist pré-deploy — valida ambiente, segurança, performance, testes e sincronização.
---

# /validar — Checklist Pré-Deploy

Validação final antes de colocar o projeto em produção. Foco nos 5 checks críticos.

## Passos

1.  **Carregue as skills de auditoria** dos 5 checks críticos (individualmente, na ordem):
    - `skills/auditoria/04-env.md`
    - `skills/auditoria/10-security.md`
    - `skills/auditoria/11-performance.md`
    - `skills/auditoria/12-qa.md`
    - `skills/auditoria/14-sync.md`

2.  **Execute cada check** com dados reais do projeto e gere a nota.

3.  **Scorecard Pré-Deploy:**

```
╔════╦══════════════════╦══════╦═══════════════╦════════════════╗
║ #  ║ CHECK            ║ NOTA ║ NÍVEL         ║ STATUS         ║
╠════╬══════════════════╬══════╬═══════════════╬════════════════╣
║ 04 ║ Ambiente         ║      ║               ║                ║
║ 10 ║ Segurança        ║      ║               ║                ║
║ 11 ║ Performance      ║      ║               ║                ║
║ 12 ║ Qualidade        ║      ║               ║                ║
║ 14 ║ Sincronização    ║      ║               ║                ║
╠════╬══════════════════╬══════╬═══════════════╬════════════════╣
║    ║ NOTA PRÉ-DEPLOY  ║      ║               ║                ║
╚════╩══════════════════╩══════╩═══════════════╩════════════════╝
```

4.  **Veredito:**
    - **Média ≥ 8.0:** ✅ `APROVADO PARA DEPLOY`
    - **Média 5.0–7.9:** ⚠️ `DEPLOY COM RESSALVAS` — liste os riscos e as áreas do Engine a executar.
    - **Média < 5.0:** ❌ `DEPLOY BLOQUEADO` — liste os bloqueios e ordem de correção.