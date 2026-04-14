# 🔌 Referência de API

> Este projeto não expõe API HTTP. Os "endpoints" são comandos CLI slash.

## Comandos Disponíveis

| Comando | Descrição |
|---------|-----------|
| `/engine` | Inicia ciclo completo 00→18 |
| `/audit` | Auditoria completa 00→16 |
| `/audit-quick` | Auditoria express (6 checks) |
| `/preflight` | Checklist pré-deploy (5 checks) |
| `/detox` | Limpeza rápida (áreas 02, 06) |
| `/polish` | UI+UX rápida (áreas 08, 09) |
| `/context-init` | Inicializa `.context/` |

## Interação com o Agente

O agente responde com prompts interativos:

```
Posso corrigir? (OK / PULAR / REPETIR)
Avançar? (OK / PARAR)
Avançar para área X+1? (OK)
```

## Ferramentas do Agente

| Tool | Uso |
|------|-----|
| `read_file` | Ler skills, .context, código do projeto |
| `grep_search` | Buscar padrões |
| `list_directory` | Mapear estrutura |
| `edit` | Modificar arquivos |
| `run_shell_command` | Executar CLI |
