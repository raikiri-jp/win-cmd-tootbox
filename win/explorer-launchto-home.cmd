@echo off
setlocal

:: LaunchTo = 2 → 「ホーム」
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 2 /f

:: エクスプローラー再起動（変更を即時反映）
call "%~dp0restart-explorer.cmd"
