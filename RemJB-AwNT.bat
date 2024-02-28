@echo off
echo ----CheckAWNT8-------------JailbreakRemoval----
echo Welcome to the CheckAWNT8 remover! (Windows 10/11)
echo This will allow you to revert the Sticky Keys Exploit
echo WARNING: This will go right if you ran CheckAWNT8 or backed up the sethc.exe as etc.exe.bak if external command
echo If you are running this without jailbreak, you can risk definitely breaking Sticky Keys until you placed the .exe back in
echo By using this program, you agree that kevadesu, the CheckAWNT team, Icycoide, Costmiku and contributors do not hold responsibility for any damage caused by using this program.
echo remjb: Remove jailbrerak
echo cancel: Cancel
set /p choice=Enter an option:

if "%choice%"=="remjb" goto remjb
if "%choice%"=="cancel" goto End

echo Error: Invalid input
goto End

:remjb
echo You need to confirm that you want to do this. If you did not run the CheckAWNT jailbreak, did it wrong or ran a different one, we are NOT responsible for you breaking the sticky keys functionality. Proceed?
echo yes/no
set /p choice=Enter an option:
if "%choice%"=="yes" goto remjbco
if "%choice%"=="no" goto End
echo Error: Invalid input
goto End

:remjbco
rem Check if the backup file exists before attempting to rename and delete
if exist C:\Windows\System32\etc.exe.bak (
    echo Deleting faked sethc.exe...
    del C:\Windows\System32\sethc.exe
    echo Renaming the sethc backup to the original... (Goodbye CheckAWNT.)
    ren C:\Windows\System32\etc.exe.bak sethc.exe
    echo The job has been finished.
) else (
    echo Error: Backup file (etc.exe.bak) not found. Cannot restore original sethc.exe.
)

goto End

:End
pause
