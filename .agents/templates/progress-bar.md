# Barra de Progresso do Engine

> Header visual de cada resposta do `/engine`.
> Barra fixa de 10 chars. Compacto. Sem caixas.

## Auditoria

```
📌 02/19 · Detox [CICLO]
▰▰▰▱▱▱▱▱▱▱  25% · 🟡 6.5
```

## Execução

```
⚡ 02/19 · Detox [CICLO]
▰▰▰▰▰▱▱▱▱▱  50% · 🟡 6.5 → 🟢 9.0 ↗
```

## Escala de Cores

| Nota | Círculo | Nível |
|------|:-------:|-------|
| 0.0–3.9 | 🔴 | Crítico |
| 4.0–5.9 | 🟠 | Ruim |
| 6.0–7.4 | 🟡 | Atenção |
| 7.5–8.9 | 🟢 | Bom |
| 9.0–10.0 | 🔵 | Excelente |

## Componentes

| Elemento | Descrição |
|----------|-----------|
| `📌` | Header de auditoria |
| `⚡` | Header de execução |
| `02/19` | Área atual / total |
| `[CICLO]` | Tipo da área |
| `▰▱` | Barra de 10 chars (cheio/vazio) |
| `25%` | Progresso (inteiro) |
| `🟡 6.5` | Círculo colorido + nota |
| `↗` | Seta de melhoria |

## Barra — 10 Caracteres

| Área | Barra | % |
|------|-------|---|
| 0/19 | `▱▱▱▱▱▱▱▱▱▱` | 0% |
| 2/19 | `▰▱▱▱▱▱▱▱▱▱` | 11% |
| 5/19 | `▰▰▰▱▱▱▱▱▱▱` | 26% |
| 10/19 | `▰▰▰▰▰▱▱▱▱` | 53% |
| 15/19 | `▰▰▰▰▰▰▰▱` | 79% |
| 19/19 | `▰▰▰▰▰▰▰▰▰▰` | 100% |

## Token Warning

Se ultrapassar 80% do limite:

```
📌 07/19 · Refatoração [CICLO]
▰▰▱▱▱▱▱▱▱  26% · 🟠 5.0 · ⚠️ 680/800
```

## Token Budget

| Tipo | Limite | Projeto Grande |
|------|--------|---------------|
| SCAN | 500 | 1000 |
| INIT | 1000 | 2000 |
| CICLO | 800 | 1500 |
| PLAN | 1500 | 2500 |
| SYNC | 600 | 1200 |

## Níveis do Projeto

| Nível | XP | Título |
|:---:|:---:|--------|
| 1 | 0–99 | 🔰 Aprendiz |
| 2 | 100–299 | 🔧 Júnior |
| 3 | 300–599 | ⚙️ Pleno |
| 4 | 600–999 | 🚀 Sênior |
| 5 | 1000–1499 | 💎 Expert |
| 6 | 1500+ | 👑 Master |
