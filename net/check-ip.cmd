@echo off
setlocal

@REM ローカルIPアドレスを取得
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do (
    set ip=%%a
)
set "local_ip=%ip:~1%"
echo ローカルIP: %local_ip%

@REM グローバルIPアドレスを取得
for /f %%i in ('powershell -Command "(Invoke-WebRequest -Uri 'https://api.ipify.org').Content"') do (
    set "global_ip=%%i"
)
echo グローバルIP: %global_ip%

pause
