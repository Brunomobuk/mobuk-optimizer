# Mobuk Optimizer - Install

Instalação mínima (2 arquivos) para qualquer projeto.

## Uso

```bash
# Clone ou baixe este projeto
git clone https://github.com/Brunomobuk/mobuk-optimizer.git

# Copie para seu projeto
cp -r mobuk-optimizer/.agents /seu-projeto/
cp mobuk-optimizer/AGENTS.md /seu-projeto/
```

## Script (opcional)

```bash
cd mobuk-optimizer
.\setup.ps1 C:\caminho\do\seu-projeto
```

## Por que funciona?

- **AGENTS.md** na raiz é reconhecido pela maioria dos editors de IA
- **.agents/** contém todas as skills, rules e workflows
