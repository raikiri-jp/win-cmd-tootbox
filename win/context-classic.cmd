@echo off
setlocal

reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

:: �G�N�X�v���[���[�ċN���i�ύX�𑦎����f�j
if not "%~1"=="--no-restart" call "%~dp0restart-explorer.cmd"
