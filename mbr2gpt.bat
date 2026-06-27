@echo off
cls

mbr2gpt /validate /allowFullOS

:start
set choice=
set /p choice=Was the validation successful? Y/[N]: 
if not '%choice%'=='' set choice=%choice:~0,1%
if /i '%choice%'=='y' goto yes
if /i '%choice%'=='n' goto no
if '%choice%'=='' goto no

echo.
echo "%choice%" is not valid
echo.

pause
exit

:no
echo Unable to convert, there may be more than three partitions.
pause
exit

:yes
mbr2gpt /convert /allowFullOS
echo.
echo Conversion complete! You will now reboot to BIOS to disable CSM.
echo.

pause
shutdown /r /fw /f /t 0
