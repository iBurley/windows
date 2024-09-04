@echo off
cls

set /P src=Source Drive Letter:
set /P dest=Destination Drive Letter:
set /P user=User's Last Name:

if not exist "%dest%/%user%/NUL" mkdir "%dest%:/%user%/"
if not exist "%dest%/%user%/Users/NUL" mkdir "%dest%:/%user%/Users/"
if not exist "%dest%/%user%/Program Files/NUL" mkdir "%dest%:/%user%/Program Files/"
if not exist "%dest%/%user%/Program Files (x86)/NUL" mkdir "%dest%:/%user%/Program Files (x86)/"
if not exist "%dest%/%user%/ProgramData/NUL" mkdir "%dest%:/%user%/ProgramData/"

robocopy "%src%:/Users/" "%dest%:/%user%/Users/" /e /xj /w:0 /r:0 /COPYALL /LOG:%dest%:/%user%/usercopy.log
robocopy "%src%:/Program Files/" "%dest%:/%user%/Program Files/" /e /xj /w:0 /r:0 /COPYALL /LOG:%dest%:/%user%/pfcopy.log
robocopy "%src%:/Program Files (x86)/" "%dest%:/%user%/Program Files (x86)/" /e /xj /w:0 /r:0 /COPYALL /LOG:%dest%:/%user%/pf86copy.log
robocopy "%src%:/ProgramData/" "%dest%:/%user%/ProgramData/" /e /xj /w:0 /r:0 /COPYALL /LOG:%dest%:/%user%/pdcopy.log

echo.
echo Backup complete!
echo.

pause
