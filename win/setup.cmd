@echo off
setlocal

call "%~dp0context-classic.cmd" --no-restart
call "%~dp0explorer-launchto-pc.cmd" --no-restart
call "%~dp0explorer-settings.cmd" --no-restart

:: �G�N�X�v���[���[�ċN���i�ύX�𑦎����f�j
call "%~dp0restart-explorer.cmd"
