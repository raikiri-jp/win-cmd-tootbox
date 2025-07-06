@echo off
setlocal

call "%~dp0context-classic.cmd" --no-restart
call "%~dp0explorer-launchto-pc.cmd" --no-restart
call "%~dp0explorer-settings.cmd" --no-restart

:: エクスプローラー再起動（変更を即時反映）
call "%~dp0restart-explorer.cmd"
