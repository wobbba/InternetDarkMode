@echo off
REM This file copies the userContent.css from this directory to the firefox profile folder

REM Save the project directory path.
SET PROJECTDIR=%cd%

REM Change directory to Firefox folder, this is where the profiles.ini file exist.
cd /d "%appdata%\Mozilla\Firefox\Profiles" || exit /b 1

for /R /D %%A in (*.default-release) do cd /D %%A

cd chrome

set PROFILEDIR=%cd%

:start
cd /D %PROFILEDIR%
REM Copy project userContent.css to profile dir.
copy /y "%PROJECTDIR%\userContent.css" userContent.css

cd /D %PROJECTDIR%
REM "delims=" is required to avoid stripping AM/PM
for /f "delims=" %%i in ('forfiles /m userContent.css /C "cmd /c echo @ftime"') do set FileDate=%%i
echo copied project file to profile folder at %FileDate%

:daemon
timeout /t 1
REM "delims=" is required to avoid stripping AM/PM
for /f "delims=" %%i in ('forfiles /m userContent.css /C "cmd /c echo @ftime"') do set NewFileDate=%%i
if %NewFileDate% equ %FileDate% (
    goto daemon
)

GOTO start