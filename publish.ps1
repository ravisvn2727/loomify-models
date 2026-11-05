# Rebuild, sign and publish the model update list.
$ErrorActionPreference = 'Stop'
$py = 'C:\ClaudeInstallationR\venvs\loomify\Scripts\python.exe'
& $py D:\RProjects\Loomify\tools\models\build_manifest.py --out "$PSScriptRoot\manifest.json" `
  --sign 'C:\ClaudeInstallationR\keys\loomify-models-ed25519.key' --signed-out "$PSScriptRoot\manifest.signed.json"
Set-Location $PSScriptRoot
git add manifest.json manifest.signed.json README.md publish.ps1
git commit -m "Update model list"
git push origin main
