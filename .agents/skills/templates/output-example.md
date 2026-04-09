# 📝 Exemplos de Output

> ⚠️ **REGRA:** Estes são exemplos REAIS. Use como referência ao gerar sua resposta.

---

## 🎯 AUDITORIA — Exemplo Real

```
🔍 ÁREA 07 — REFATORAÇÃO  [2/12]

NOTA: 7.0 ⚠️

[PONTOS DE ATENÇÃO]
• Função validateUser() com 85 linhas — src/auth/index.ts:45
• Código duplicado em src/auth/login.ts:12 e src/auth/register.ts:8
• Nomenclatura inconsistente: getData() vs fetchUserData()

[IMPACTO]
Manutenção difícil, risco de bugs ao alterar lógica duplicada

[SEVERIDADE]
🔴 Crítico | 🟡 Warning | 🟢 Info

[PROGRESSO]
🔵🔵⚪⚪⚪⚪⚪⚪⚪⚪⚪ 17%

Posso corrigir?
[OK] [PULAR] [REFAZER] [PARAR]
```

---

## ⚡ EXECUÇÃO — Exemplo Real

```
⚡ ÁREA 07 — REFATORAÇÃO  [2/12]

NOTA: 7.0 → 8.5 ✅

[TÉCNICO]
• Extraído validateUser() para utils/validation.ts (45 linhas)
• Criado shared/authUtils.ts com funções reutilizáveis
• Renomeado getData() → fetchUserData()
• Duplicação: 3 → 0

[RESUMO]
Código mais limpo e reutilizável

[IMPACTO]
Manutenção 50% mais rápida

[PROGRESSO]
🔵🔵⚪⚪⚪⚪⚪⚪⚪⚪⚪ 17%

Posso continuar?
[OK] [PULAR] [REFAZER] [PARAR]
```

---

## 📊 SCORECARD — Exemplo Real

```
╔════╦══════════════╦══════╦════════╦════════╗
║ #  ║ ÁREA         ║ ANTES║ DEPOIS ║ DELTA ║
╠════╬══════════════╬══════╬════════╬════════╣
║ 02 ║ Detox        ║  5.0 ║   8.5  ║ +3.5  ║
║ 03 ║ Estrutura   ║  7.0 ║   9.0  ║ +2.0  ║
║ 04 ║ Ambiente    ║  8.0 ║   9.0  ║ +1.0  ║
║ 05 ║ Dados       ║  6.5 ║   8.0  ║ +1.5  ║
║ 06 ║ Sanitização ║  7.0 ║   8.5  ║ +1.5  ║
║ 07 ║ Refatoração ║  7.0 ║   8.5  ║ +1.5  ║
║ 08 ║ Visual      ║  6.0 ║   8.0  ║ +2.0  ║
║ 09 ║ Experiência ║  7.5 ║   8.5  ║ +1.0  ║
║ 10 ║ Segurança   ║  8.0 ║   9.0  ║ +1.0  ║
║ 11 ║ Performance ║  7.0 ║   8.5  ║ +1.5  ║
║ 12 ║ Qualidade   ║  6.0 ║   8.0  ║ +2.0  ║
╠════╬══════════════╬══════╬════════╬════════╣
║    ║ MÉDIA        ║  6.7 ║   8.6  ║ +1.9  ║
╚════╩══════════════╩══════╩════════╩════════╝
```

---

## 💬 ONBOARDING — Exemplo Real

```
Olá! Sou o Mobuk Optimizer. Detectei meuprojeto-web (React + TypeScript).

Deseja o Modo Manual (OK a cada etapa) ou Modo Autopilot?

[MANUAL] [AUTOPILOT]
```

---

> ⚠️ **REGRA:** Siga estes formatos EXATAMENTE. Não invente outro estilo.