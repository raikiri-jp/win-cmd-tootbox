@echo off
setlocal

:: 隠しファイルを表示する（1 = 表示、2 = 非表示）
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f

:: 保護されたオペレーティングシステムファイルを表示する（1 = 表示、0 = 非表示）
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 1 /f

:: 拡張子を表示する（0 = 表示、1 = 非表示）
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

:: エクスプローラー再起動（変更を即時反映）
call "%~dp0restart-explorer.cmd"
