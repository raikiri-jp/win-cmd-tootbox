@echo off
REM explorer を強制終了して再起動します（即時反映用）

taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe
