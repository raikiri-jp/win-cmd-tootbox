@echo off
setlocal

:: LaunchTo = 1 �� �uPC�v���J��
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f

:: �G�N�X�v���[���[�ċN���i�ύX�𑦎����f�j
if not "%~1"=="--no-restart" call "%~dp0restart-explorer.cmd"
