@echo off

:: Objective: Check free and total disk space on C: drive and provide usage information.

:: Get free and total space on C: drive
for /f "tokens=2 delims=:" %%A in ('fsutil volume diskfree C: ^| findstr "Total de bytes libres"') do (
    set "free_bytes=%%A"
)
for /f "tokens=2 delims=:" %%B in ('fsutil volume diskfree C: ^| findstr "Total de bytes"') do (
    set "total_bytes=%%B"
)

:: Remove white spaces
set "free_bytes=%free_bytes: =%"
set "total_bytes=%total_bytes: =%"

:: Convert bytes to GB
set /a free_gb=%free_bytes:~0,-9%
set /a total_gb=%total_bytes:~0,-9%

:: Calculate used space in GB
set /a used_gb=total_gb - free_gb

echo You have %free_gb% GB free out of a total of %total_gb% GB.
echo You have %used_gb% GB used.

:: Check if free space is less than 10 GB
if %free_gb% lss 10 (
    echo Warning: only %free_gb% GB free remaining.
) else (
    echo You have sufficient space: %free_gb% GB free.
)
