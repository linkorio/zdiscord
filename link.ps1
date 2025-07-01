$scriptPath = "$PSScriptRoot\run_both.ps1"

if (-not (Test-Path $scriptPath)) {
    Write-Host "File $scriptPath does not exist!" -ForegroundColor Red
    pause
    exit
}

$WshShell = New-Object -ComObject WScript.Shell
$shortcut = $WshShell.CreateShortcut("$env:USERPROFILE\Desktop\ZDiscord.lnk")

$shortcut.TargetPath = "powershell.exe"
$shortcut.Arguments = "-ExecutionPolicy Bypass -File `"$scriptPath`""
$shortcut.WorkingDirectory = "$PSScriptRoot"
$shortcut.WindowStyle = 1
$shortcut.IconLocation = "powershell.exe"
$shortcut.IconLocation = "$HOME\AppData\Local\Discord\app.ico"
$shortcut.Save()

Write-Host "Shortcut created on desktop!" -ForegroundColor Green
