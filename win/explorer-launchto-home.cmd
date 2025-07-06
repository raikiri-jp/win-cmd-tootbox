@echo off
setlocal

:: LaunchTo = 2 → 「ホーム」
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 2 /f
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe
