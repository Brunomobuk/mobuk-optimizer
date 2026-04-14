# Padrões Comuns das Skills

> Regras aplicáveis a **todas** as skills de auditoria e execução.

## Output

- **Auditoria:** `.agents/templates/output-format.md`
- **Execução:** `.agents/templates/output-format-execucao.md`
- Formato: **compacto**, máximo 1 linha por bullet. Zero prosa.

## Barra de Progresso

O agente exibe automaticamente em cada resposta:

**Auditoria:**
```
📌 02/19 · Detox [CICLO]
▰▰▰▱▱▱▱▱  25% · 🟡 6.5
```

**Execução:**
```
⚡ 02/19 · Detox [CICLO]
▰▰▰▰▰▱▱▱▱▱  50% · 🟡 6.5 → 🟢 9.0 ↗
```

**Cores:**  0-3.9 ·  4-5.9 ·  6-7.4 ·  7.5-8.9 ·  9-10

## ⚠️ PAUSA OBRIGATÓRIA

**Após exibir o resultado, você DEVE parar e esperar.**

- **CICLO com nota < 8.5:** `"Posso corrigir? (OK / PULAR / REPETIR)"`
- **SCAN/INIT/PLAN/SYNC ou CICLO ≥ 8.5:** `"Avançar? (OK / PARAR)"`
- **Após execução:** `"Avançar para área X+1? (OK)"`

**NUNCA prossiga sem resposta. NUNCA encadeie áreas. NUNCA diga "concluído" antes da área 18.**

## Token Budget

Limites: `.agents/rules/token-budget.md` (inclui ajuste para projetos grandes).

Se atingir **80%**:
1. Exibir `· ⚠️ NNN/LLLL` no header
2. Truncar: só bullets
3. Autopilot → pular se sem resposta

## Atualização de Contexto

Após execução, atualize `.context/` indicados em `📝 ATUALIZE APÓS`.

## Idioma

Respostas e `.context`: **PT-BR**. Raciocínio: English.

## Token Economy

Carregue **apenas** o arquivo da área atual.
