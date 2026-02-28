@echo off
echo ==========================================
echo Starting Firebase Emulator Suite...
echo ==========================================

:: Kill any ghost Java processes that might hold port 8080
taskkill /F /IM java.exe /T >nul 2>&1

:: Start Firebase Emulators with data persistence
:: This window will stay open to keep the emulators running
firebase emulators:start --import=./emulator-data --export-on-exit=./emulator-data
pause