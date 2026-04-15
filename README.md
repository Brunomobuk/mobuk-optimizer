# Mobuk Optimizer

> Framework de IA para auditar e otimizar qualquer projeto de software.

## Instalação

```bash
# Clone ou baixe este projeto
git clone https://github.com/Brunomobuk/mobuk-optimizer.git

# Instale no seu projeto
cd mobuk-optimizer
.\setup.ps1 C:\caminho\do\seu-projeto
```

**Ou manual (2 arquivos):**

```bash
# Copie para seu projeto
cp -r mobuk-optimizer/.agents /seu/projeto/
cp mobuk-optimizer/AGENTS.md /seu/projeto/
```

## Uso

```bash
cd /seu-projeto
/iniciar
```

## Comandos

| Comando | O que faz |
|---------|-----------|
| `/iniciar` | Ciclo completo (audit + correção) |
| `/auditar` | Só diagnóstico |
| `/validar` | Checklist pré-deploy |

## Funciona com

- Cursor
- Claude Code
- OpenCode
- Trae AI
- Qualquer IA que leia arquivos .md
