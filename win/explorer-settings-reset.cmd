@echo off
setlocal

:: 隠しファイルを非表示（2 = 非表示）
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f

:: 保護されたオペレーティングシステムファイルを非表示（0 = 非表示）
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 0 /f

:: 拡張子を非表示（1 = 非表示）
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 1 /f

:: エクスプローラー再起動（変更を即時反映）
if not "%~1"=="--no-restart" call "%~dp0restart-explorer.cmd"
