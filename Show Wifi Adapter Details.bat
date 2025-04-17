@echo off

REM Batch script to display all IP address information of the Wi-Fi adapter

set adapterName="WiFi"

REM Display IP address information
echo Displaying IP address information for adapter: %adapterName%
echo.

netsh interface ip show config name=%adapterName%

echo.
echo Done.
pause
