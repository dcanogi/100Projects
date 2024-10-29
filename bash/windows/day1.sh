@echo off

:: Get the current date and time in a suitable format
set "datetime=%date% %time%"
set "day1=day1"

:: Check if the directory exists
if not exist "%day1%" (
    mkdir "%day1%"
)
echo %datetime% > "%day1%\info.txt"
