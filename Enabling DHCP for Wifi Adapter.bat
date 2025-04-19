@echo off

REM Batch script to restore DHCP settings for the Wi-Fi adapter

:: Check for administrator privileges
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

set adapterName="WiFi"

REM Restore IP and DNS to DHCP
echo Restoring IP and DNS settings to DHCP for adapter: %adapterName%
netsh interface ip set address name=%adapterName% source=dhcp
netsh interface ip set dns name=%adapterName% source=dhcp

REM Display the updated configuration
echo.
echo Updated IP Configuration:
netsh interface ip show config name=%adapterName%

echo.
echo DHCP configuration restored.
pause
