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
set "TABLE_DIR=%~dp0Scripts\01 Tables"
set "IDX_DIR=%~dp0Scripts\03 Indexes"
set "SP_DIR=%~dp0Scripts\02 Stored Procedures"

if not exist "%TABLE_DIR%" (
    echo Folder not found: "%TABLE_DIR%"
    pause
    exit /b 1
)

> "%OUTPUT%" (
    echo -- AUTO GENERATED MERGED SCRIPT
    echo -- DO NOT EDIT MANUALLY
    echo -- Order: Tables, Indexes, Stored Procedures
    echo.
)

echo Merging Tables from "%TABLE_DIR%"...
for %%f in ("%TABLE_DIR%\*.sql") do (
    echo -- ===================================== >> "%OUTPUT%"
    echo -- File: %%~nxf >> "%OUTPUT%"
    echo -- ===================================== >> "%OUTPUT%"
    type "%%f" >> "%OUTPUT%"
    echo. >> "%OUTPUT%"
    echo GO >> "%OUTPUT%"
    echo. >> "%OUTPUT%"
)

if exist "%IDX_DIR%" (
    echo Merging Indexes from "%IDX_DIR%"...
    for %%f in ("%IDX_DIR%\*.sql") do (
        echo -- ===================================== >> "%OUTPUT%"
        echo -- File: %%~nxf >> "%OUTPUT%"
        echo -- ===================================== >> "%OUTPUT%"
        type "%%f" >> "%OUTPUT%"
        echo. >> "%OUTPUT%"
        echo GO >> "%OUTPUT%"
        echo. >> "%OUTPUT%"
    )
) else (
    echo Note: Indexes folder not found at "%IDX_DIR%"
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
