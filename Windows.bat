@echo off
setlocal enabledelayedexpansion

:: Display Eaglercraft version menu
:versionMenu
cls
echo ============================
echo     Eaglercraft Launcher
echo ============================
echo Select a version:
echo 1. Eaglercraft 1.5.2
echo 2. Eaglercraft 1.8.8
echo 3. Eaglercraft 1.12.2
set /p versionChoice=Enter your choice (1-3): 

if "%versionChoice%"=="1" set versionURL=https://eaglercraft.com/mc/1.5.2
if "%versionChoice%"=="2" set versionURL=https://eaglercraft.com/mc/1.8.8
if "%versionChoice%"=="3" set versionURL=https://eaglercraft.com/mc/1.12.2

if not defined versionURL (
    echo Invalid selection. Try again.
    pause
    goto versionMenu
)

:: Display browser selection menu
:browserMenu
cls
echo ============================
echo    Choose Your Browser
echo ============================
echo 1. Google Chrome
echo 2. Mozilla Firefox
echo 3. Microsoft Edge
set /p browserChoice=Enter your choice (1-3): 

if "%browserChoice%"=="1" set browser=chrome
if "%browserChoice%"=="2" set browser=firefox
if "%browserChoice%"=="3" set browser=msedge

if not defined browser (
    echo Invalid selection. Try again.
    pause
    goto browserMenu
)

:: Open the selected version in the chosen browser
start "" "%browser%" "%versionURL%"

echo.
echo Launching Eaglercraft in %browser%...
pause
