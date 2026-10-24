@echo off
title 2gbgCord Installer
color 0b
echo ==========================================
echo        Welcome to 2gbgCord Installer
echo ==========================================
echo.
echo [1/3] Preparing folders...
set "VEN_DIR=%appdata%\Vencord"
set "DIST_DIR=%VEN_DIR%\dist"
if not exist "%DIST_DIR%" mkdir "%DIST_DIR%"

echo [2/3] Downloading 2gbgCord custom files...
curl -L -s "https://raw.githubusercontent.com/syaydhf99-sys/2gbgCord/main/dist/patcher.js" -o "%DIST_DIR%\patcher.js"
curl -L -s "https://raw.githubusercontent.com/syaydhf99-sys/2gbgCord/main/dist/preload.js" -o "%DIST_DIR%\preload.js"
curl -L -s "https://raw.githubusercontent.com/syaydhf99-sys/2gbgCord/main/dist/renderer.js" -o "%DIST_DIR%\renderer.js"
curl -L -s "https://raw.githubusercontent.com/syaydhf99-sys/2gbgCord/main/dist/renderer.css" -o "%DIST_DIR%\renderer.css"

echo [3/3] Installing into Discord...
curl -L -s "https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe" -o "%temp%\VencordInstallerCli.exe"

set "VENCORD_USER_DATA_DIR=%VEN_DIR%"
set "VENCORD_DEV_INSTALL=1"
"%temp%\VencordInstallerCli.exe" -install -branch auto

echo.
echo [+] 2gbgCord Installed Successfully! Restart your Discord completely.
pause