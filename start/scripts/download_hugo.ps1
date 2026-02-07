$vendor = 'D:\github\naugpr\home\start\.pnpm\hugo-bin@0.114.2\node_modules\hugo-bin\vendor'
New-Item -ItemType Directory -Force -Path $vendor | Out-Null
$zip = Join-Path $env:TEMP 'hugo_0.118.2.zip'
Invoke-WebRequest -Uri 'https://github.com/gohugoio/hugo/releases/download/v0.118.2/hugo_0.118.2_windows-amd64.zip' -OutFile $zip -UseBasicParsing
Expand-Archive -Path $zip -DestinationPath $vendor -Force
Get-ChildItem -Path $vendor -Filter 'hugo.exe' -Recurse | Select-Object FullName
