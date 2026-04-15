# Mobuk Optimizer - Setup
# Instalação mínima: 2 arquivos para qualquer projeto

Write-Host "Mobuk Optimizer - Setup" -ForegroundColor Cyan
Write-Host ""

$projectPath = $args[0]

if (-not $projectPath) {
    Write-Host "Uso: .\setup.ps1 [caminho-do-projeto]" -ForegroundColor Yellow
    Write-Host "Exemplo: .\setup.ps1 C:\projetos\meu-site" -ForegroundColor Gray
    exit 1
}

if (-not (Test-Path $projectPath)) {
    Write-Host "Pasta não encontrada: $projectPath" -ForegroundColor Red
    exit 1
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Instalando em: $projectPath" -ForegroundColor Cyan
Write-Host ""

Copy-Item -Path "$scriptDir\.agents" -Destination "$projectPath\.agents" -Recurse -Force
Write-Host "  + .agents/" -ForegroundColor Green

Copy-Item -Path "$scriptDir\AGENTS.md" -Destination "$projectPath\AGENTS.md" -Force
Write-Host "  + AGENTS.md" -ForegroundColor Green

Write-Host ""
Write-Host "Instalacao completa!" -ForegroundColor Green
Write-Host ""
Write-Host "Entre no projeto e digite: /iniciar" -ForegroundColor Cyan
