@echo off
setlocal

:: �B���t�@�C����\������i1 = �\���A2 = ��\���j
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f

:: �ی삳�ꂽ�I�y���[�e�B���O�V�X�e���t�@�C����\������i1 = �\���A0 = ��\���j
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 1 /f

:: �g���q��\������i0 = �\���A1 = ��\���j
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

:: �G�N�X�v���[���[�ċN���i�ύX�𑦎����f�j
call "%~dp0restart-explorer.cmd"
