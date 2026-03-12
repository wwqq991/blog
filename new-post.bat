@echo off  
chcp 65001  
setlocal enabledelayedexpansion  
  
echo ==========================================  
echo     Blog Post Creator  
echo ==========================================  
echo.  
set /p title=Post title:  
  
if "!title!"=="" (echo Title empty & pause & exit /b 1)  
  
echo Creating: !title!  
cd /d %%~dp0  
call hexo new post "!title!"  
  
echo Done! File: source\_posts\!title!.md  
set /p open=Open file? (y/n):  
if /i "!open!"=="y" start "" "source\_posts\!title!.md"  
pause 
