@echo off
cls

dism /online /cleanup-image /restorehealth
sfc /scannow

echo.
echo System scans complete!
echo.

pause
