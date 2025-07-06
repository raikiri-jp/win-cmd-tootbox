@echo off
setlocal

reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f

:: エクスプローラー再起動（変更を即時反映）
if not "%~1"=="--no-restart" call "%~dp0restart-explorer.cmd"
