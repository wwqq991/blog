@echo off
chcp 65001
setlocal enabledelayedexpansion

echo ==========================================
echo     Delete Blog Post
echo ==========================================
echo.

cd /d %~dp0

echo Available posts:
echo.
dir /b source\_posts\*.md 2>nul
echo.

set /p filename=Enter filename to delete (e.g., my-post.md): 

if "!filename!"=="" (
    echo Filename cannot be empty!
    pause
    exit /b 1
)

if not exist "source\_posts\!filename!" (
    echo File not found: source\_posts\!filename!
    pause
    exit /b 1
)

echo.
echo Will delete: source\_posts\!filename!
set /p confirm=Confirm? (y/n): 

if /i "!confirm!"=="y" (
    del "source\_posts\!filename!"
    echo.
    echo Deleted: !filename!
    echo.
    echo Run 'git add . ^&^& git commit -m "Delete post" ^&^& git push' to update.
) else (
    echo Cancelled.
)

pause
