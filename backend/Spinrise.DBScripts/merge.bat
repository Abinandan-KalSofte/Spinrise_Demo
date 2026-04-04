@echo off
SET OUTPUT=merged.sql

echo -- AUTO GENERATED MERGED SCRIPT > %OUTPUT%
echo -- DO NOT EDIT MANUALLY >> %OUTPUT%
echo. >> %OUTPUT%

echo Merging Tables...
for %%f in ("01 Tables\*.sql") do (
    echo -- ===================================== >> %OUTPUT%
    echo -- File: %%~nxf >> %OUTPUT%
    echo -- ===================================== >> %OUTPUT%
    type "%%f" >> %OUTPUT%
    echo. >> %OUTPUT%
    echo GO >> %OUTPUT%
    echo. >> %OUTPUT%
)

echo Merging Stored Procedures...
for %%f in ("02 Stored Procedures\*.sql") do (
    echo -- ===================================== >> %OUTPUT%
    echo -- File: %%~nxf >> %OUTPUT%
    echo -- ===================================== >> %OUTPUT%
    type "%%f" >> %OUTPUT%
    echo. >> %OUTPUT%
    echo GO >> %OUTPUT%
    echo. >> %OUTPUT%
)

echo Merging Seed Data...
for %%f in ("03 Seed Data\*.sql") do (
    echo -- ===================================== >> %OUTPUT%
    echo -- File: %%~nxf >> %OUTPUT%
    echo -- ===================================== >> %OUTPUT%
    type "%%f" >> %OUTPUT%
    echo. >> %OUTPUT%
    echo GO >> %OUTPUT%
    echo. >> %OUTPUT%
)

echo Done! Output file: %OUTPUT%
pause