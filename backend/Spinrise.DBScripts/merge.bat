@echo off
setlocal

REM Make the script work from any current directory
pushd "%~dp0" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory to script folder.
    pause
    exit /b 1
)

set "OUTPUT=%~dp0merged.sql"
set "SP_DIR=%~dp0Scripts\02 Stored Procedures"

if not exist "%SP_DIR%" (
    echo Folder not found: "%SP_DIR%"
    pause
    exit /b 1
)

> "%OUTPUT%" (
    echo -- AUTO GENERATED MERGED SCRIPT
    echo -- DO NOT EDIT MANUALLY
    echo.
)

echo Merging Stored Procedures from "%SP_DIR%"...
for %%f in ("%SP_DIR%\*.sql") do (
    echo -- ===================================== >> "%OUTPUT%"
    echo -- File: %%~nxf >> "%OUTPUT%"
    echo -- ===================================== >> "%OUTPUT%"
    type "%%f" >> "%OUTPUT%"
    echo. >> "%OUTPUT%"
    echo GO >> "%OUTPUT%"
    echo. >> "%OUTPUT%"
)

echo Done! Output file: "%OUTPUT%"
popd >nul 2>&1
pause
