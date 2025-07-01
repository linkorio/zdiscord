# run_both.ps1

# Settings
$zapretDir = "$HOME\zapret-discord-youtube"
$repoUrl = "https://github.com/Flowseal/zapret-discord-youtube.git"
$batFilePath = "$zapretDir\general (ALT).bat"

function Download-Repo {
    Write-Host "Download from GitHub..."

    git clone $repoUrl $zapretDir
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error cloning repository" -ForegroundColor Red
        Start-Sleep -Seconds 5
        exit 1
    }

    Write-Host "Repository has been downloaded successfully" -ForegroundColor Green
}

function Update-Repo {
    Write-Host "Update from GitHub..."
    
    cd $zapretDir
    git pull
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error pulling repository" -ForegroundColor Red
        Start-Sleep -Seconds 500
        exit 1
    }

    Write-Host "Repository has been updated successfully" -ForegroundColor Green
}

if (-not (Test-Path $zapretDir)) {
    Write-Host "Project not found"
    Download-Repo
} else {
    Write-Host "zapret-discord-youtube already exists"
    Update-Repo
}

Write-Host "Start general.bat..."
$processBat = Start-Process cmd.exe -ArgumentList "/c `"$batFilePath`"" -Verb RunAs -PassThru
$batPid = $processBat.Id
Write-Host "ID process .bat: $batPid"

Start-Sleep -Seconds 2

$children = Get-WmiObject Win32_Process | Where-Object { $_.ParentProcessId -eq $processBat.Id }

if ($children) {
    foreach ($p in $children) {
        Write-Host "Children: $($p.Name) (PID: $($p.ProcessId))"
    }
} else {
    Write-Host "Childrens not found"
}

$cmd = Get-Process -Id $processBat.Id -ErrorAction SilentlyContinue
if (-not $cmd) {
    Write-Host "cmd.exe already stopped"
}

Write-Host "Start discord..."
Start-Process discord://

do {
    Start-Sleep -Milliseconds 500
    $discordProcess = Get-Process Discord -ErrorAction SilentlyContinue
} while (-not $discordProcess)

Write-Host "Discord started"

$discordProcess.WaitForExit()

Write-Host "Discord closed. Close zapret..."
Write-Host "Stop process with PID: $($p.ProcessId)..."

if ($children) {
    foreach ($p in $children) {
        Write-Host "Stoping children: $($p.Name) with PID: $($p.ProcessId)..."
        Stop-Process -Id $p.ProcessId -Force
    }
} else {
    Write-Host "Childrens not found"
}
