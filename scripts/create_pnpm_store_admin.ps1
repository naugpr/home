# Create pnpm store folder and grant current user full control.
$store = 'C:\pnpm-store'
if (-not (Test-Path $store)) {
    New-Item -Path $store -ItemType Directory -Force | Out-Null
    Write-Host "Created $store"
} else {
    Write-Host "$store already exists"
}
icacls $store /grant "$env:USERNAME:(OI)(CI)F" /T | Out-Null
Write-Host "Granted full access to $env:USERNAME for $store"

# After running this script as Administrator, return to a regular terminal and run:
# pnpm install