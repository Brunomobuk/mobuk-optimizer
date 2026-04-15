# 🔌 Referência de API

> Este projeto não expõe API HTTP. Os "endpoints" são comandos CLI slash.

## Comandos Disponíveis (3 modos)

| Comando | Descrição |
|---------|-----------|
| `/iniciar` | Ciclo completo 00→18 (audit + fix) |
| `/auditar` | Apenas diagnóstico 00→18 |
| `/validar` | Checklist pré-deploy (5 checks) |

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
