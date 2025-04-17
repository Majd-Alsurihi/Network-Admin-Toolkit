@echo off

REM Batch script to set a static IP address for the Wi-Fi adapter with admin elevation

:: Check for administrator privileges
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

set adapterName="WiFi"

REM Prompt user for input
set /p newIP=Enter new IP address:
set /p subnetMask=Enter Subnet Mask (e.g., 255.255.255.0):
set /p gateway=Enter Default Gateway:

REM Apply the new static IP configuration
echo Setting static IP configuration...
netsh interface ip set address name=%adapterName% static %newIP% %subnetMask% %gateway%

REM Display the updated configuration
echo.
echo Updated IP Configuration:
netsh interface ip show config name=%adapterName%

echo.
echo Static IP address has been set.
pause