@echo off
title Windows Free Activator V5.0

set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

set success=[92m[+][0m
set warning=[91m[!][0m
set info=[94m[*][0m

:checkforupdates
cd Updater
call Updater.bat

:start
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
echo ==================================================================
echo  Welcome to "Windows Free Activator" V%localtwo%
echo  Select an option to continue:
echo ==================================================================
echo  1 - Start the Windows Activation
echo.
echo  2 - Exit
echo ==================================================================
echo.
set /p num="%info% Enter Number: "
if %num% equ 1 (
    goto server-selection
) else if %num% equ 2 (
    echo.
    timeout 2 > nul
    echo %warning% Shutting down...
    timeout 2 > nul
    exit
) else (
    echo.
    echo %warning% Error: You entered an invalid option.
    timeout 3 > nul
    goto start
)

:server-selection
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
echo ==================================================================
echo Choose a server for the activation:
echo ==================================================================
echo  1) kms8.msguides.com
echo  2) kms9.msguides.com
echo  3) s8.uk.to
echo  4) s9.us.to
echo  5) kms.xspace.in
echo ==================================================================
echo.
echo TIP: Enter the number associated with the server you want, not the name.
echo.
set /p ServerSelection="%info% Select a server to use: "
if %ServerSelection% equ 1 (
    set "Server=kms8.msguides.com"
    goto :ping-server
) else if %ServerSelection% equ 2 (
    set "Server=kms9.msguides.com"
    goto :ping-server
) else if %ServerSelection% equ 3 (
    set "Server=s8.uk.to"
    goto :ping-server
) else if %ServerSelection% equ 4 (
    set "Server=s9.us.to"
    goto :ping-server
) else if %ServerSelection% equ 5 (
    set "Server=kms.xspace.in"
    goto :ping-server
) else (
    echo.
    echo %warning% Error: Server not found! Try again.
    timeout 3 > nul
    goto server-selection
)

:ping-Server
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
echo %info% Pinging "%Server%" server...
timeout 3 > nul
echo.
powershell -Command "if (Test-Connection -ComputerName %Server% -Count 1 -Quiet) { exit 0 } else { exit 1 }"
if %errorlevel% equ 0 (
    cls
    echo.
    echo //------------------
    echo  Windows Free Activator
    echo  Version: %localtwo%
    echo  Released on: %releasedate%
    echo  Created by SpikeGR
    echo ------------------\\
    echo.
    echo %success% Server is online.
    timeout 3 > nul
    goto phase1
) else (
    cls
    echo.
    echo //------------------
    echo  Windows Free Activator
    echo  Version: %localtwo%
    echo  Released on: %releasedate%
    echo  Created by SpikeGR
    echo ------------------\\
    echo.
    echo %warning% Server did not return a response.
    timeout 3 > nul
    goto server-selection
)

:phase1
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------
echo  Follow us on Social Media: https://linktr.ee/spikegr
echo ------------------\\
echo.
echo ==================================================================
echo Which Windows Edition do you want to activate?
echo ==================================================================
echo  1)  Home
echo  2)  Home N
echo  3)  Home Single Language Edition
echo  4)  Home Country Specific Edition
echo  5)  Pro
echo  6)  Pro N
echo  7)  Pro for Workstations
echo  8)  Pro for Workstations N
echo  9)  Education
echo  10) Education N
echo  11) Enterprise
echo  12) Enterprise N
echo ==================================================================
echo TIP: Enter the number associated with the edition you want, not the name.
echo.
set /p EditionSelection="%info% Enter which Windows Edition to activate: "
set edition=
if %EditionSelection% equ 1 (
    set "edition=Home"
    goto :confirm
) else if %EditionSelection% equ 2 (
    set "edition=Home N"
    goto :confirm
) else if %EditionSelection% equ 3 (
    set "edition=Home Single Language Edition"
    goto :confirm
) else if %EditionSelection% equ 4 (
    set "edition=Home Country Specific Edition"
    goto :confirm
) else if %EditionSelection% equ 5 (
    set "edition=Professional"
    goto :confirm
) else if %EditionSelection% equ 6 (
    set "edition=Professional N"
    goto :confirm
) else if %EditionSelection% equ 7 (
    set "edition=Pro for Workstations"
    goto :confirm
) else if %EditionSelection% equ 8 (
    set "edition=Pro for Workstations N"
    goto :confirm
) else if %EditionSelection% equ 9 (
    set "edition=Education"
    goto :confirm
) else if %EditionSelection% equ 10 (
    set "edition=Education N"
    goto :confirm
) else if %EditionSelection% equ 11 (
    set "edition=Enterprise"
    goto :confirm
) else if %EditionSelection% equ 12 (
    set "edition=Enterprise N"
    goto :confirm
) else (
    echo.
    echo %warning% Error: The Windows Edition you provided could not be found.
    timeout 3 > nul
    goto phase1
)

:confirm
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
echo ==================================================================
echo %info% BEFORE STARTING THE ACTIVATION: %info%
echo.
echo  Heres what you selected:
echo.
echo  Windows Edition to activate: %edition%
echo  Server for activation: %Server%
echo ==================================================================
echo  Type "1" to confirm and start the activation
echo  Type "2" to go back to the beginning
echo.
set /p confirm="%info% Enter Number: "
if %confirm% equ 1 (
    goto phase2
) else if %confirm% equ 2 (
    goto server-selection
) else (
    echo.
    echo %warning% Error: You entered an invalid option.
    timeout 3 > nul
    goto confirm
)

:phase2
if "%edition%" == "Home" (
    set "key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    goto final-phase
) else if "%edition%" == "Home N" (
    set "key=3KHY7-WNT83-DGQKR-F7HPR-844BM"
    goto final-phase
) else if "%edition%" == "Home Single Language Edition" (
    set "key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
    goto final-phase
) else if "%edition%" == "Home Country Specific Edition" (
    set "key=PVMJN-6DFY6–9CCP6–7BKTT-D3WVR"
    goto final-phase
) else if "%edition%" == "Professional" (
    set "key=W269N-WFGWX-YVC9B-4J6C9-T83GX"
    goto final-phase
) else if "%edition%" == "Professional N" (
    set "key=MH37W-N47XK-V7XM9-C7227-GCQG9"
    goto final-phase
) else if "%edition%" == "Pro for Workstations" (
    set "key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
    goto final-phase
) else if "%edition%" == "Pro for Workstations N" (
    set "key=9FNHH-K3HBT-3W4TD-6383H-6XYWF"
    goto final-phase
) else if "%edition%" == "Education" (
    set "key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
    goto final-phase
) else if "%edition%" == "Education N" (
    set "key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
    goto final-phase
) else if "%edition%" == "Enterprise" (
    set "key=NPPR9-FWDCX-D2C8J-H872K-2YT43"
    goto final-phase
) else if "%edition%" == "Enterprise N" (
    set "key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
    goto final-phase
)

:final-phase
cls
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
timeout 2 > nul
echo %info% Windows %edition% Edition Activation started.
timeout 2 > nul
echo %info% Windows Free Activator will close automatically. DO NOT close it during the activation.
timeout 5 > nul
slmgr /ipk %key%
if %errorlevel% neq 0 (
    set "activation-error-in-phase=1"
    goto activation-error
) else (
    echo.
    echo %success% Changed the product key succesfully.
)
timeout 5 > nul
slmgr /skms %Server%
if %errorlevel% neq 0 (
    set "activation-error-in-phase=2"
    goto activation-error
) else (
    echo %success% Changed the server to %server% succesfully.
)
timeout 5 > nul
slmgr /ato
if %errorlevel% neq 0 (
    set "activation-error-in-phase=3"
    goto activation-error
) else (
    echo.
    echo ==================================================================
    echo %success% Windows activation has been completed succesfully!
    echo %info% Thank you for using `Windows Free Activator`!
    echo ==================================================================
    timeout 5 > nul
    pause
    exit
)

:activation-error
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
echo ==================================================================
echo %warning% ACTIVATION FAILED!
echo An error occurred in phase %activation-error-in-phase% of the activation.
echo ==================================================================
echo.
if %activation-error-in-phase% equ 1 (
    echo %warning% An error in phase 1 indicates that something went wrong when
    echo adding the license key to your system.
    echo ==================================================================
    echo.
    echo ==================================================================
    echo Phase 1 Error Troubleshooting:
    echo 1. Run this script with admin previleges
    echo 2. Add the folder of this script to your antivirus exclusions.
    echo ==================================================================
    echo.
    pause
    goto confirm
) else if %activation-error-in-phase% equ 2 (
    echo %warning% An error in phase 2 indicates that something went wrong when
    echo our script tried to change the activation server.
    echo ==================================================================
    echo.
    echo ==================================================================
    echo Phase 2 Error Troubleshooting:
    echo 1. Run this script with admin previleges
    echo 2. Add the folder of this script to your antivirus exclusions.
    echo ==================================================================
    echo.
    pause
    goto confirm
) else if %activation-error-in-phase% equ 3 (
    echo %warning% An error in phase 3 indicates that something went wrong when
    echo contacting the server to activate your system.
    echo ==================================================================
    echo.
    echo %info% Phase 3 Error Troubleshooting: %info%
    echo ==================================================================
    echo 1. Run this script with admin previleges
    echo 2. Add the folder of this script to your antivirus exclusions.
    echo 3. Check your internet connection.
    echo 4. Try another server.
    echo ==================================================================
    echo.
    pause
    goto confirm
) else (
    echo An unknown error occurred.
    echo.
    pause
    goto confirm
)