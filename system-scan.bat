@echo off
cls

sfc /scannow
dism /online /cleanup-image /restorehealth

echo.
echo System scans complete!
echo.

pause
