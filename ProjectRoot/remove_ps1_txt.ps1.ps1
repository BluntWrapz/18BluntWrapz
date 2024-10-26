$scriptContent = @"
# Script to remove .ps1.txt files
$targetDir = "C:\Users\18Bluntwrapz\Documents"  # Update this to your actual path

# Find and remove all .ps1.txt files
Get-ChildItem -Path $targetDir -Filter "*.ps1.txt" -Recurse | Remove-Item -Force

Write-Output "All .ps1.txt files have been removed from $targetDir."
"@

Set-Content -Path "$targetDir\remove_ps1_txt.ps1" -Value $scriptContent
