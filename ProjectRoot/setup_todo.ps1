# PowerShell script to initialize the Todo setup
$todoPath = "C:\Users\Bluntwrapz\Documents\18BluntWrapz\Todo\todo.txt"
if (!(Test-Path $todoPath)) {
    New-Item -ItemType Directory -Path "C:\Users\Bluntwrapz\Documents\18BluntWrapz\Todo" -Force
    New-Item -ItemType File -Path $todoPath -Force
    Write-Output "Todo setup complete. File created at $todoPath"
} else {
    Write-Output "Todo setup already complete."
}
