@echo off
setlocal

@REM ���[�J��IP�A�h���X���擾
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do (
    set ip=%%a
)
set "local_ip=%ip:~1%"
echo ���[�J��IP: %local_ip%

@REM �O���[�o��IP�A�h���X���擾
for /f %%i in ('powershell -Command "(Invoke-WebRequest -Uri 'https://api.ipify.org').Content"') do (
    set "global_ip=%%i"
)
echo �O���[�o��IP: %global_ip%

pause
