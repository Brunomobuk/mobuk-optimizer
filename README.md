# Mobuk Optimizer

> **Seu time de especialistas virtual** para auditar e otimizar projetos feitos com IA.

---

## Problema

Você usou IA (Cursor, Claude, ChatGPT, etc) para criar um projeto. Funciona? Sim. Mas:

- Código desorganizado e inconsistente
- Estrutura de pastas bagunçada
- Arquivos órfãos e duplicados
- Bugs escondiddos
- IA que "alucina" respostas inconsistentes
- Sem testes, sem documentação

## Solução

Mobuk Optimizer é um **motor de auditoria e correção** guiado por IA. Ele funciona como um time de especialistas revisando cada parte do seu projeto — estrutura, segurança, performance, qualidade de código.

```
Você digita /iniciar
IA audita tudo
Mostra o que precisa corrigir
Você aprova
IA corrige automaticamente
Repete até 100%
```

## Para quem é?

- **Devs que usam IA** para prototipar rapidamente
- **No-coders** que construíram apps com ferramentas de IA
- **Startups** que precisam estruturar projetos gerados por IA
- **Qualquer um** com um projeto "funcional mas bagunçado"

## O que ele faz?

| Área | O que audita/corrige |
|------|---------------------|
| Estrutura | Pastas, organização de arquivos |
| Detox | Remove código morto, duplicados, arquivos órfãos |
| Segurança | Secrets expostos, vulnerabilidades |
| Performance | Gasta CPU/RAM à toa? |
| Qualidade | Tem testes? Coverage suficiente? |
| Sanitização | Input/output seguro |
| Refatoração | Código duplicado, inconsistências |
| Context | Documentação que reflete o código real |
| AI-First | Reduz alucinações da IA no seu projeto |

## Benefícios

- **Código mais limpo** — estrutura consistente
- **Menos bugs** — auditoria de segurança e qualidade
- **IA mais estável** — contexto correto = menos alucinações
- **Manutenção fácil** — documentação sincronizada com código
- **Deploy seguro** — validação antes de publicar

## Quick Start

```bash
# 1. Clone o projeto
git clone https://github.com/Brunomobuk/mobuk-optimizer.git
cd mobuk-optimizer

# 2. Instale para seu editor
.\setup.ps1    # Windows
./setup.sh      # Linux/Mac

# 3. Copie para seu projeto
cp -r .agents/ /seu/projeto/
cp AGENTS.md /seu/projeto/

# 4. Entre no projeto e inicie
cd /seu/projeto
/iniciar
```

## Comandos

| Comando | Quando usar |
|---------|-------------|
| `/iniciar` | Primeira vez — ciclo completo de auditoria + correção |
| `/auditar` | Só quer ver o diagnóstico (sem alterar nada) |
| `/validar` | Antes de publicar — checklist final |

## Funciona com

- **Cursor** ✅
- **Claude Code** ✅
- **OpenCode** ✅
- **Trae AI** ✅
- **Qualquer IA** que execute arquivos `.md`

## FAQ

**Preciso saber programar?**
Não. Mas é melhor ter pelo menos noções básicas.

**Pode quebrar meu projeto?**
Não. Todas as mudanças são aprovadas por você antes de aplicar.

**Funciona em qualquer linguagem?**
Sim. O toolkit é agnóstico — analisa projetos em qualquer tecnologia.

**Quanto tempo leva?**
Depende do tamanho. Um projeto pequeno: 10-20 min. Projeto grande: 1-2h.

## Exemplo de Uso

```
> /iniciar

📌 00/19 · Diagnóstico [SCAN]
🔵 10

📌 02/19 · Detox [CICLO]
🔴 4.0

⚠ Pontos de Atenção:
• 12 arquivos órfãos detectados
• 3 arquivos duplicados
• 47 arquivos desktop.ini

Posso corrigir? [OK] [PULAR] [PARAR]
> OK

⚡ 02/19 · Detox [CICLO]
🔵 10

Posso continuar? [OK] [PARAR]
> OK

📌 03/19 · Estrutura [CICLO]
🔵 10
...
```

---

**Resultado:** Projeto auditado, corrigido e pronto para produção.
