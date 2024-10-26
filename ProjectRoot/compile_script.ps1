# Compile scripts for the game project
$scriptDir = "C:\18Bluntwrapz\ProjectRoot\Scripts"  # Your scripts directory
$compiledDir = "$scriptDir\compiled"

if (!(Test-Path $compiledDir)) {
    New-Item -ItemType Directory -Path $compiledDir -Force
}

Get-ChildItem -Path $scriptDir -Filter *.cs | ForEach-Object {
    & "C:\Program Files\dotnet\dotnet.exe" build $_.FullName -o $compiledDir
}

Write-Output "All scripts compiled."
