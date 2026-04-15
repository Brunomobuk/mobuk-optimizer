# Mobuk Optimizer - Setup Script
# Cria configurações para todos os editores de IA

param(
    [switch]$Force
)

$ErrorActionPreference = "Stop"

Write-Host "🚀 Mobuk Optimizer Setup" -ForegroundColor Cyan
Write-Host ""

# Detectar editor pelo ambiente
$editors = @()

if ($env:CLAUDE_CODE) {
    $editors += "claude"
    Write-Host "✓ Detectado: Claude Code" -ForegroundColor Green
}

if ($env:OPENCODE) {
    $editors += "opencode"
    Write-Host "✓ Detectado: OpenCode" -ForegroundColor Green
}

if (Test-Path ".cursor") {
    $editors += "cursor"
    Write-Host "✓ Detectado: Cursor" -ForegroundColor Green
}

if (Test-Path ".trae") {
    $editors += "trae"
    Write-Host "✓ Detectado: Trae" -ForegroundColor Green
}

if ($editors.Count -eq 0) {
    Write-Host "⚠ Nenhum editor detectado. Instalando para todos." -ForegroundColor Yellow
    $editors = @("cursor", "claude", "opencode", "trae")
}

Write-Host ""
Write-Host "Instalando para: $($editors -join ', ')" -ForegroundColor Cyan
Write-Host ""

# Verificar .agents/
if (-not (Test-Path ".agents")) {
    Write-Host "❌ Pasta .agents/ não encontrada!" -ForegroundColor Red
    Write-Host "Execute este script na raiz do Mobuk Optimizer ou copie .agents/ primeiro." -ForegroundColor Yellow
    exit 1
}

# Instalar para cada editor
foreach ($editor in $editors) {
    switch ($editor) {
        "cursor" {
            if (-not (Test-Path ".cursor/rules")) {
                New-Item -ItemType Directory -Path ".cursor/rules" -Force | Out-Null
            }
            Copy-Item -Path "AGENTS.md" -Destination ".cursor/rules/mobuk-optimizer.md" -Force:$Force
            Write-Host "  ✓ .cursor/rules/mobuk-optimizer.md" -ForegroundColor Gray
        }
        "claude" {
            Copy-Item -Path "AGENTS.md" -Destination "CLAUDE.md" -Force:$Force
            Write-Host "  ✓ CLAUDE.md" -ForegroundColor Gray
        }
        "opencode" {
            if (-not (Test-Path ".opencode")) {
                New-Item -ItemType Directory -Path ".opencode" -Force | Out-Null
            }
            Copy-Item -Path "AGENTS.md" -Destination ".opencode/AGENTS.md" -Force:$Force
            Write-Host "  ✓ .opencode/AGENTS.md" -ForegroundColor Gray
        }
        "trae" {
            if (-not (Test-Path ".trae/rules")) {
                New-Item -ItemType Directory -Path ".trae/rules" -Force | Out-Null
            }
            Copy-Item -Path "AGENTS.md" -Destination ".trae/rules/project_rules.md" -Force:$Force
            Write-Host "  ✓ .trae/rules/project_rules.md" -ForegroundColor Gray
        }
    }
}

Write-Host ""
Write-Host "✅ Setup completo!" -ForegroundColor Green
Write-Host ""
Write-Host "Próximo passo: copie .agents/ + AGENTS.md para seu projeto." -ForegroundColor Cyan
