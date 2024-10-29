@echo off

:: Objective: Create a script that generates a directory and stores the current date and time in a file named info.txt within that directory.

:: Get the current date and time in a suitable format
set "datetime=%date% %time%"
set "day1=day1"

:: Check if the directory exists
if not exist "%day1%" (
    mkdir "%day1%"
)
echo %datetime% > "%day1%\info.txt"
