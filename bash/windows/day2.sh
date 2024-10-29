@echo off

:: Objective: Backup file.txt with a timestamp in the backup directory.

:: Set timestamp format as YYYYMMDD_HHMM
set timestamp=%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%
set timestamp=%timestamp: =0%

:: Check for backup directory
if not exist "backup" (
    mkdir "backup"
)

:: Check if file.txt exists and copy it
if exist "file.txt" (
    copy "file.txt" "backup\file-%timestamp%.txt"
    if %errorlevel%==0 (
        echo Backup created successfully: backup\file-%timestamp%.txt
    ) else (
        echo Error occurred while creating backup.
    )
) else (
    echo The file file.txt does not exist.
)
