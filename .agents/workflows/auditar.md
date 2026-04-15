---
description: Auditoria completa do projeto — diagnóstico read-only em todas as áreas.
---

# /auditar — Auditoria Completa

Project X-Ray em **19 áreas** (00-18). Resultado: scorecard com notas de 0 a 10.

## Passos

1. **Carregamento:** Ler as skills em `.agents/skills/auditoria/` sequencialmente (00 a 18).
2. **Ciclo de Leitura:** Para cada arquivo `XX-nome.md`, carregar e executar o check correspondente.
3. **Execução:** Para cada check:
    - Coletar dados reais usando ferramentas.
    - Identificar e exibir os **Pontos de Atenção** encontrados no projeto.
    - Gerar a **Nota** e o **Resultado**.
4. **PAUSA OBRIGATÓRIA:** Após exibir a nota e pontos de atenção, o agente DEVE perguntar:
    > "Posso corrigir? [OK] [PULAR] [REFAZER] [PARAR]"
    O agente DEVE parar e esperar o comando do usuário.
5. **Scorecard:** Após concluir as áreas processadas, gerar a tabela consolidada com a média geral.

## Recomendações

- Se média < 10: Sugerir executar `/iniciar` para iniciar as correções.
- Se média = 10: Sugerir executar `/validar` para validação pré-deploy.