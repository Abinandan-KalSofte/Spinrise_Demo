@echo off
setlocal enabledelayedexpansion

:: ================================================================
:: Spinrise ERP — Publish Script
:: Usage:  publish.bat             → publish frontend + backend
::         publish.bat backend     → backend only
::         publish.bat frontend    → frontend only
:: Must be run as Administrator (required for IIS app pool control)
:: ================================================================

:: ── Configuration ───────────────────────────────────────────────

:: Backend
set BACKEND_PROJ=D:\Spinrise\Development\Backend\Spinrise.API\Spinrise.API.csproj
set BACKEND_OUT=D:\Spinrise\Development\Builds\Spinrise.API
set BACKEND_POOL=SpinriseAPI

:: Frontend
set FRONTEND_SRC=D:\Spinrise\Development\spinrise-web
set FRONTEND_OUT=D:\Spinrise\Development\Builds\spinrise-web
set FRONTEND_POOL=SpinriseWeb

:: IIS appcmd
set APPCMD=%windir%\system32\inetsrv\appcmd.exe

:: ────────────────────────────────────────────────────────────────

title Spinrise Publish
echo.
echo ================================================================
echo   Spinrise ERP ^| Publish Script
echo   %date%  %time%
echo ================================================================

:: ── Argument parsing ─────────────────────────────────────────────
set DO_BACKEND=0
set DO_FRONTEND=0

if "%~1"=="" (
    set DO_BACKEND=1
    set DO_FRONTEND=1
) else if /i "%~1"=="all" (
    set DO_BACKEND=1
    set DO_FRONTEND=1
) else if /i "%~1"=="backend" (
    set DO_BACKEND=1
) else if /i "%~1"=="frontend" (
    set DO_FRONTEND=1
) else (
    echo [ERROR] Unknown argument: %~1
    echo.
    echo Usage: publish.bat [all^|backend^|frontend]
    pause
    exit /b 1
)

:: ── Require Administrator (appcmd needs elevation) ───────────────
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Run this script as Administrator.
    echo         Right-click publish.bat ^> "Run as administrator"
    pause
    exit /b 1
)

:: ── Require IIS ──────────────────────────────────────────────────
if not exist "%APPCMD%" (
    echo.
    echo [ERROR] IIS appcmd not found at: %APPCMD%
    echo         Verify IIS is installed on this machine.
    pause
    exit /b 1
)

:: ── Require dotnet CLI ───────────────────────────────────────────
where dotnet >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] dotnet CLI not found in PATH.
    echo         Install .NET 8 SDK and ensure dotnet.exe is in PATH.
    pause
    exit /b 1
)

:: ================================================================
::  FRONTEND
:: ================================================================
if %DO_FRONTEND%==1 (
    echo.
    echo ── FRONTEND ────────────────────────────────────────────────
    echo    Source : %FRONTEND_SRC%
    echo    Output : %FRONTEND_OUT%
    echo    Pool   : %FRONTEND_POOL%
    echo.

    :: Build first (site stays live during build — minimise downtime)
    echo [1/4] npm run build ...
    cd /d "%FRONTEND_SRC%"
    call npm run build
    if %errorlevel% neq 0 (
        echo.
        echo [ERROR] Frontend build failed — nothing was deployed.
        pause
        exit /b 1
    )

    :: Stop app pool
    echo [2/4] Stopping app pool "%FRONTEND_POOL%" ...
    "%APPCMD%" stop apppool /apppool.name:"%FRONTEND_POOL%" >nul 2>&1

    :: Ensure output folder exists
    if not exist "%FRONTEND_OUT%" mkdir "%FRONTEND_OUT%"

    :: Sync dist to IIS site root (purge stale files)
    echo [3/4] Copying dist ^→ %FRONTEND_OUT% ...
    robocopy "%FRONTEND_SRC%\dist" "%FRONTEND_OUT%" /E /PURGE /NJH /NJS /NFL /NDL
    if %errorlevel% gtr 7 (
        echo.
        echo [ERROR] robocopy failed ^(exit code %errorlevel%^)
        "%APPCMD%" start apppool /apppool.name:"%FRONTEND_POOL%" >nul 2>&1
        pause
        exit /b 1
    )

    :: Start app pool
    echo [4/4] Starting app pool "%FRONTEND_POOL%" ...
    "%APPCMD%" start apppool /apppool.name:"%FRONTEND_POOL%"
    if %errorlevel% neq 0 (
        echo [ERROR] App pool "%FRONTEND_POOL%" failed to start.
        pause
        exit /b 1
    )

    echo [OK]  Frontend live at http://172.16.16.40:3000
)

:: ================================================================
::  BACKEND
:: ================================================================
if %DO_BACKEND%==1 (
    echo.
    echo ── BACKEND ─────────────────────────────────────────────────
    echo    Project: %BACKEND_PROJ%
    echo    Output : %BACKEND_OUT%
    echo    Pool   : %BACKEND_POOL%
    echo.

    :: Stop pool BEFORE publish — dotnet overwrites locked DLLs
    echo [1/3] Stopping app pool "%BACKEND_POOL%" ...
    "%APPCMD%" stop apppool /apppool.name:"%BACKEND_POOL%"
    if %errorlevel% neq 0 (
        echo [WARN] Could not stop app pool — it may already be stopped.
    )

    :: Publish Release build directly to IIS site folder
    echo [2/3] dotnet publish -c Release ...
    dotnet publish "%BACKEND_PROJ%" -c Release -o "%BACKEND_OUT%"
    if %errorlevel% neq 0 (
        echo.
        echo [ERROR] dotnet publish failed — restarting app pool.
        "%APPCMD%" start apppool /apppool.name:"%BACKEND_POOL%" >nul 2>&1
        pause
        exit /b 1
    )

    :: Start pool
    echo [3/3] Starting app pool "%BACKEND_POOL%" ...
    "%APPCMD%" start apppool /apppool.name:"%BACKEND_POOL%"
    if %errorlevel% neq 0 (
        echo [ERROR] App pool "%BACKEND_POOL%" failed to start.
        pause
        exit /b 1
    )

    echo [OK]  Backend live at http://172.16.16.40:5001
)

:: ── Done ─────────────────────────────────────────────────────────
echo.
echo ================================================================
echo   Publish complete  [%date%  %time%]
echo ================================================================
echo.
pause
