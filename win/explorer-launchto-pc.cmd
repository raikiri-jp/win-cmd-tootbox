@echo off
setlocal

:: LaunchTo = 1 → 「PC」を開く
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f

:: エクスプローラー再起動（変更を即時反映）
call "%~dp0restart-explorer.cmd"
