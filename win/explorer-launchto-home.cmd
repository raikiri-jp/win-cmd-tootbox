@echo off
setlocal

:: LaunchTo = 2 �� �u�z�[���v
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 2 /f

:: �G�N�X�v���[���[�ċN���i�ύX�𑦎����f�j
call "%~dp0restart-explorer.cmd"
