@echo off
setlocal

:: �B���t�@�C�����\���i2 = ��\���j
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f

:: �ی삳�ꂽ�I�y���[�e�B���O�V�X�e���t�@�C�����\���i0 = ��\���j
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 0 /f

:: �g���q���\���i1 = ��\���j
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 1 /f

:: �G�N�X�v���[���[�ċN���i�ύX�𑦎����f�j
if not "%~1"=="--no-restart" call "%~dp0restart-explorer.cmd"
