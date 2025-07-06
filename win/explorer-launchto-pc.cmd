@echo off
setlocal

:: LaunchTo = 1 ¨ uPCv‚ðŠJ‚­
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe
