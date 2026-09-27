$ErrorActionPreference = "Stop"

$sourceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$installRoot = Join-Path ([Environment]::GetFolderPath('ApplicationData')) 'devin\skills\devin-jev'
$scriptsRoot = Join-Path $installRoot 'scripts'

New-Item -ItemType Directory -Force -Path $scriptsRoot | Out-Null
Copy-Item -LiteralPath (Join-Path $sourceRoot 'SKILL.md') -Destination (Join-Path $installRoot 'SKILL.md') -Force
Copy-Item -LiteralPath (Join-Path $sourceRoot 'scripts\jev_decide.py') -Destination (Join-Path $scriptsRoot 'jev_decide.py') -Force

$envFile = Join-Path $installRoot '.env'
if (-not (Test-Path -LiteralPath $envFile)) {
    Write-Warning "$envFile を作成し、スキルを使う前に TYPESAFE_API_KEY を設定してください。"
}

Write-Output "devin-jev をインストールしました: $installRoot"

