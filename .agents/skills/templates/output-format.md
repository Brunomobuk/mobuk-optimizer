# 📋 Templates de Output

> ⚠️ **REGRA:** Use o template adequado conforme o momento. sempre referencie `templates/output-example.md` para exemplo concreto.

---

## 🎯 AUDITORIA (após scan)

```
🔍 ÁREA [XX] — [NOME]  [[PROGRESSO]/[TOTAL]]

NOTA: [NOTA] [STATUS]

[PONTOS DE ATENÇÃO]
• [problema] — [arquivo:linha]
• [problema] — [arquivo:linha]

[IMPACTO]
[por que importa]

[SEVERIDADE]
🔴 Crítico | 🟡 Warning | 🟢 Info

[PROGRESSO]
[🔵🔵🔵🔵🔵⚪⚪⚪⚪⚪] [X]%

Posso corrigir?
[OK] [PULAR] [REFAZER] [PARAR]
```

---

## ⚡ EXECUÇÃO (após correção)

```
⚡ ÁREA [XX] — [NOME]  [[PROGRESSO]/[TOTAL]]

NOTA: [ANTES] → [DEPOIS] [STATUS]

[TÉCNICO]
• [o que foi feito]
• [métrica: X → Y]

[RESUMO]
[o que melhorou]

[IMPACTO]
[impacto no app]

[PROGRESSO]
[🔵🔵🔵🔵🔵⚪⚪⚪⚪⚪] [X]%

Posso continuar?
[OK] [PULAR] [REFAZER] [PARAR]
```

---

## 📊 SCORECARD (resultado final)

```
╔════╦══════════════╦══════╦════════╦════════╗
║ #  ║ ÁREA         ║ ANTES║ DEPOIS ║ DELTA ║
╠════╬══════════════╬══════╬════════╬════════╣
║ 02 ║ Detox        ║  5.0 ║   8.5  ║ +3.5  ║
║ 03 ║ Estrutura   ║  7.0 ║   9.0  ║ +2.0  ║
╠════╬══════════════╬══════╬════════╬════════╣
║    ║ MÉDIA        ║  6.0 ║   8.7  ║ +2.7  ║
╚════╩══════════════╩══════╩════════╩════════╝
```

---

## 💬 ONBOARDING (pergunta inicial)

```
Olá! Sou o Mobuk Optimizer. Detectei [PROJETO] ([TIPO]).

Deseja o Modo Manual (OK a cada etapa) ou Modo Autopilot?

[MANUAL] [AUTOPILOT]
```

---

## 📊 Legenda

| Símbolo | Significado |
|---------|-------------|
| 🔵 | área completa |
| ⚪ | área pendente |
| ✅ | passou (≥ 8.5) |
| ⚠️ | needs attention (< 8.5) |
| 🔴 | crítico |
| 🟡 | warning |
| 🟢 | info |