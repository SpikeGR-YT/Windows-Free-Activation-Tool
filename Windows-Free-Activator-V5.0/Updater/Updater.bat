@echo off
title Windows Free Activator V5.0

set success=[92m[+][0m
set warning=[91m[!][0m
set info=[94m[*][0m

:checkforupdates
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: 5.0
echo  Released on: May 29, 2024
echo  Created by SpikeGR
echo ------------------\\
echo.
timeout 2 > nul
echo %info% Checking for Updates...
timeout 3 > nul
set "releasedate=May 29, 2024"
set local=5.0
set localtwo=%local%
set link=https://pastebin.com/raw/YQVTi78t

:check
IF EXIST "version.bat" DEL /Q "version.bat"
goto :download
pause

:download
powershell -Command "Invoke-WebRequest %link%" -OutFile version.bat
CALL "version.bat"
goto check-2

:check-2
IF "%local%"=="%localtwo%" goto :yes
IF NOT "%local%"=="%localtwo%" goto :no

:yes
cls
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Windows Free Activator V%localtwo%', 'You are using the latest version!', [System.Windows.Forms.ToolTipIcon]::None)}"
echo  No updates found.
echo  You're using the latest version!
timeout 4 > nul
goto start

:no
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Windows Free Activator V%localtwo%', 'New V%local% Update found!', [System.Windows.Forms.ToolTipIcon]::None)}"
echo New Update found!
echo.
echo  Version: %local% is available!
echo  You're currently using version %localtwo%
echo.
echo  Do you want to download the new Update?
echo  1 - Yes, download the update now. (Recommended)
echo  2 - No, maybe later.
echo.
set /p num="Enter Number: "
if %num% equ 1 (
    goto downloadupdate
) else if %num% equ 2 (
    goto start
) else (
    echo.
    echo %warning% Error: You entered an invalid number.
    timeout 2 > nul
    goto no
)

:downloadupdate
cls
echo.
echo //------------------
echo  Windows Free Activator
echo  Version: %localtwo%
echo  Released on: %releasedate%
echo  Created by SpikeGR
echo ------------------\\
echo.
timeout 2 > nul
echo Downloading V%local% update...
timeout 3 > nul
powershell -Command "Invoke-WebRequest https://lnk.spikegr.com/WindowsFreeActivator" -OutFile Windows-Free-Activator-V%local%.zip
if %errorlevel% neq 0 (
    cls
    echo.
    echo //------------------
    echo  Windows Free Activator
    echo  Version: %localtwo%
    echo  Released on: %releasedate%
    echo  Created by SpikeGR
    echo ------------------\\
    echo.
    echo %warning% Error: Failed to download the update.
    echo %info% There is a problem reaching update server. Please check your internet connection and try again later.
    echo.
    timeout 3 > nul
    pause
    goto start
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
    echo %success% Update Completed! The new version can be found inside the `Updater` folder.
    echo.
    timeout 3 > nul
    pause
    exit
)