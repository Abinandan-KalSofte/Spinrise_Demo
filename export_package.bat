@echo off
setlocal enabledelayedexpansion

:: ================================================================
:: Spinrise ERP -- Export Package Builder
::
:: Builds frontend + backend and packages them into a single
:: timestamped folder ready to transfer to any IIS server.
::
:: Output: D:\Spinrise\Exports\SpinrisePackage_YYYYMMDD_HHMM\
::   Spinrise.API\       .NET 8 publish output
::   spinrise-web\       Vite production build
::   Database\           merged.sql
::   DEPLOY_STEPS.txt    Step-by-step deployment guide
::
:: Usage: Double-click or run from any directory.
::        No Administrator rights required for packaging.
:: ================================================================

:: ── Configuration ────────────────────────────────────────────────
set SOLUTION_ROOT=D:\Spinrise\Development
set FRONTEND_SRC=%SOLUTION_ROOT%\spinrise-web
set BACKEND_PROJ=%SOLUTION_ROOT%\Backend\Spinrise.API\Spinrise.API.csproj
set DB_SCRIPT=%SOLUTION_ROOT%\Backend\Spinrise.DBScripts\merged.sql
set EXPORT_ROOT=D:\Spinrise\Exports

:: ── Timestamp via PowerShell (locale-safe) ───────────────────────
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmm"') do set TS=%%i
set PACKAGE_DIR=%EXPORT_ROOT%\SpinrisePackage_%TS%

:: ── Sub-folders ───────────────────────────────────────────────────
set FE_OUT=%PACKAGE_DIR%\spinrise-web
set BE_OUT=%PACKAGE_DIR%\Spinrise.API
set DB_OUT=%PACKAGE_DIR%\Database
set TXT=%PACKAGE_DIR%\DEPLOY_STEPS.txt

:: ─────────────────────────────────────────────────────────────────
title Spinrise -- Export Package Builder
echo.
echo ================================================================
echo   Spinrise ERP  -  Export Package Builder
echo   %DATE%  %TIME%
echo ================================================================
echo   Output: %PACKAGE_DIR%
echo ================================================================
echo.

:: ── Pre-flight checks ─────────────────────────────────────────────
where dotnet >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] dotnet CLI not found in PATH.
    echo         Install .NET 8 SDK: https://dotnet.microsoft.com/download
    pause
    exit /b 1
)

where npm >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] npm not found in PATH.
    echo         Install Node.js LTS: https://nodejs.org
    pause
    exit /b 1
)

:: ── Create output folders ─────────────────────────────────────────
if not exist "%EXPORT_ROOT%" mkdir "%EXPORT_ROOT%"
mkdir "%PACKAGE_DIR%"
mkdir "%FE_OUT%"
mkdir "%BE_OUT%"
mkdir "%DB_OUT%"

:: ================================================================
::  STEP 1 -- Frontend build
:: ================================================================
echo [1/3] Building frontend (npm run build)...
cd /d "%FRONTEND_SRC%"
call npm run build
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Frontend build failed. Fix errors above and retry.
    rd /s /q "%PACKAGE_DIR%" >nul 2>&1
    pause
    exit /b 1
)

echo [1/3] Copying dist to package...
robocopy "%FRONTEND_SRC%\dist" "%FE_OUT%" /E /NJH /NJS /NFL /NDL
if %errorlevel% gtr 7 (
    echo [ERROR] robocopy failed with exit code %errorlevel%
    rd /s /q "%PACKAGE_DIR%" >nul 2>&1
    pause
    exit /b 1
)
echo [1/3] Frontend done.
echo.

:: ================================================================
::  STEP 2 -- Backend publish
:: ================================================================
echo [2/3] Publishing backend (dotnet publish -c Release)...
dotnet publish "%BACKEND_PROJ%" -c Release -o "%BE_OUT%" --no-self-contained
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Backend publish failed. Fix errors above and retry.
    rd /s /q "%PACKAGE_DIR%" >nul 2>&1
    pause
    exit /b 1
)
echo [2/3] Backend done.
echo.

:: ================================================================
::  STEP 3 -- Database script
:: ================================================================
echo [3/3] Copying merged.sql...
copy "%DB_SCRIPT%" "%DB_OUT%\merged.sql" >nul
echo [3/3] Database done.
echo.

:: ================================================================
::  Write DEPLOY_STEPS.txt (one echo per line -- no paren block)
:: ================================================================
echo Writing DEPLOY_STEPS.txt...

echo ================================================================ > "%TXT%"
echo  Spinrise ERP -- Deployment Package >> "%TXT%"
echo  Built: %DATE%  %TIME% >> "%TXT%"
echo  Package: SpinrisePackage_%TS% >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo. >> "%TXT%"
echo PACKAGE CONTENTS >> "%TXT%"
echo ---------------- >> "%TXT%"
echo   Spinrise.API\       .NET 8 publish output (backend) >> "%TXT%"
echo   spinrise-web\       Vite production build (frontend) >> "%TXT%"
echo   Database\           merged.sql - all stored procedures >> "%TXT%"
echo   DEPLOY_STEPS.txt    This file >> "%TXT%"
echo. >> "%TXT%"
echo PRE-REQUISITES ON TARGET SERVER >> "%TXT%"
echo -------------------------------- >> "%TXT%"
echo   OS       : Windows 10 / Windows Server 2016+ >> "%TXT%"
echo   IIS      : Enabled with ASP.NET Core Module >> "%TXT%"
echo              Install: .NET 8 Hosting Bundle from microsoft.com >> "%TXT%"
echo   App Pools: SpinriseAPI  - No Managed Code, 64-bit >> "%TXT%"
echo              SpinriseWeb  - No Managed Code, 64-bit >> "%TXT%"
echo   DB Access: Server must reach 172.16.16.52\sql2016 >> "%TXT%"
echo              Database: SpinRiseSaranya >> "%TXT%"
echo. >> "%TXT%"
echo NOTE: These steps assume IIS sites and app pools are already >> "%TXT%"
echo configured on the target server. This is an UPDATE deploy only. >> "%TXT%"
echo. >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo  STEP 1 -- DATABASE  (run first, before restarting any app) >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo. >> "%TXT%"
echo   1. Open SSMS on any machine with access to the DB server >> "%TXT%"
echo   2. Connect to: 172.16.16.52\sql2016 >> "%TXT%"
echo   3. Select database: SpinRiseSaranya >> "%TXT%"
echo   4. Open: Database\merged.sql from this package >> "%TXT%"
echo   5. Press F5 to execute >> "%TXT%"
echo   6. Confirm: "Commands completed successfully" >> "%TXT%"
echo. >> "%TXT%"
echo   IMPORTANT: Run merged.sql BEFORE deploying the backend. >> "%TXT%"
echo   All stored procedure changes are in this single file. >> "%TXT%"
echo. >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo  STEP 2 -- BACKEND  (Spinrise.API) >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo. >> "%TXT%"
echo   Adjust the IIS site path below to match your server. >> "%TXT%"
echo   Common path: E:\Abinandan\SPINRISE\Server\Spinrise.API\ >> "%TXT%"
echo. >> "%TXT%"
echo   1. Open IIS Manager on the target server >> "%TXT%"
echo   2. Go to: Application Pools >> SpinriseAPI >> "%TXT%"
echo   3. Click Stop in the Actions panel >> "%TXT%"
echo      OR run as Administrator in cmd: >> "%TXT%"
echo      %windir%\system32\inetsrv\appcmd stop apppool /apppool.name:"SpinriseAPI" >> "%TXT%"
echo. >> "%TXT%"
echo   4. BACKUP recommended - copy existing site to a backup folder: >> "%TXT%"
echo      xcopy "E:\...\Spinrise.API" "E:\...\Spinrise.API_bak_%TS%" /E /I /Q >> "%TXT%"
echo. >> "%TXT%"
echo   5. CHECK appsettings.json before copying: >> "%TXT%"
echo      Open Spinrise.API\appsettings.json from this package. >> "%TXT%"
echo      Verify ConnectionStrings:DefaultConnection is correct. >> "%TXT%"
echo      If the target uses a different connection string, update it now. >> "%TXT%"
echo. >> "%TXT%"
echo   6. Copy backend files to the IIS site path: >> "%TXT%"
echo      robocopy "%BE_OUT%" "E:\...\Spinrise.API" /E /PURGE >> "%TXT%"
echo      OR: xcopy "%BE_OUT%\*.*" "E:\...\Spinrise.API\" /E /Y >> "%TXT%"
echo. >> "%TXT%"
echo   7. Start the app pool: >> "%TXT%"
echo      %windir%\system32\inetsrv\appcmd start apppool /apppool.name:"SpinriseAPI" >> "%TXT%"
echo. >> "%TXT%"
echo   8. Verify: open http://<server-ip>:5001/swagger in browser >> "%TXT%"
echo      You should see the Spinrise API Swagger page. >> "%TXT%"
echo. >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo  STEP 3 -- FRONTEND  (spinrise-web) >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo. >> "%TXT%"
echo   Common path: E:\Abinandan\SPINRISE\Server\spinrise-web\ >> "%TXT%"
echo. >> "%TXT%"
echo   1. Stop app pool: >> "%TXT%"
echo      %windir%\system32\inetsrv\appcmd stop apppool /apppool.name:"SpinriseWeb" >> "%TXT%"
echo. >> "%TXT%"
echo   2. Delete old assets to remove stale hashed bundles: >> "%TXT%"
echo      rd /s /q "E:\...\spinrise-web\assets" >> "%TXT%"
echo. >> "%TXT%"
echo   3. Copy frontend files to the IIS site path: >> "%TXT%"
echo      robocopy "%FE_OUT%" "E:\...\spinrise-web" /E /PURGE >> "%TXT%"
echo. >> "%TXT%"
echo   4. Start app pool: >> "%TXT%"
echo      %windir%\system32\inetsrv\appcmd start apppool /apppool.name:"SpinriseWeb" >> "%TXT%"
echo. >> "%TXT%"
echo   5. Verify: open http://<server-ip>:3000 in browser >> "%TXT%"
echo      You should see the Spinrise login page. >> "%TXT%"
echo. >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo  STEP 4 -- SMOKE TEST >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo. >> "%TXT%"
echo   1. Open http://<server-ip>:3000 and log in >> "%TXT%"
echo   2. Go to Purchase > Requisition >> "%TXT%"
echo   3. Confirm the PR list loads without errors >> "%TXT%"
echo   4. Open an existing PR (View) -- verify Created By shows >> "%TXT%"
echo      the ERP username, not a numeric ID >> "%TXT%"
echo   5. Open Edit on a saved PR -- verify Grand Total calculates >> "%TXT%"
echo      correctly using Last Rate x Qty when Unit Price is blank >> "%TXT%"
echo. >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo  ROLLBACK >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo. >> "%TXT%"
echo   1. Stop the failing app pool >> "%TXT%"
echo   2. Restore the _bak folder created in Step 2.4 >> "%TXT%"
echo   3. Start the app pool >> "%TXT%"
echo   NOTE: DB stored procedures cannot be auto-rolled back. >> "%TXT%"
echo         If needed, re-run merged.sql from the previous package. >> "%TXT%"
echo. >> "%TXT%"
echo ================================================================ >> "%TXT%"
echo  Developer: Abinandan N  (abinandan.n@kalsofte.com) >> "%TXT%"
echo ================================================================ >> "%TXT%"

:: ================================================================
::  Done
:: ================================================================
echo.
echo ================================================================
echo   Package ready!
echo   %PACKAGE_DIR%
echo ================================================================
echo.
echo   Spinrise.API\       Backend publish
echo   spinrise-web\       Frontend build
echo   Database\           merged.sql
echo   DEPLOY_STEPS.txt    Deployment guide
echo.
echo   Transfer this folder to the target server and follow
echo   DEPLOY_STEPS.txt step by step.
echo.
echo   Quick transfer options:
echo     USB drive
echo     Network share  \\target-server\SharedFolder
echo     Zip and send via Teams / email
echo.
pause
