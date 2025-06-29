@echo off
cd /d "%~dp0%"
powershell.exe -ExecutionPolicy Bypass -File "link.ps1"
echo.
echo Success!
echo.
pause