@echo off
setlocal

:: Default to 'dev' if no argument is provided
if "%~1"=="" (
    set FLAVOR=dev
    echo No flavor specified, defaulting to: dev
) else (
    set FLAVOR=%~1
)

echo ==========================================
echo Launching Nutrivision: [%FLAVOR%]
echo ==========================================

:: Only perform ADB setup if running 'dev'
if "%FLAVOR%"=="dev" (
    echo [1/2] Setting up ADB tunnels for Dev...
    adb reverse --remove-all
    adb reverse tcp:8080 tcp:8080
    adb reverse tcp:9099 tcp:9099
    adb reverse tcp:5001 tcp:5001
) else (
    echo [1/2] Skipping ADB tunnels for Production...
)

:: Launch Flutter with the chosen flavor
echo [2/2] Launching Flutter build...
fvm flutter run --flavor %FLAVOR% --dart-define=FLAVOR=%FLAVOR%

endlocal
pause