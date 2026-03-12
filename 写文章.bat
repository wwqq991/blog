@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo ==========================================
echo      西辞的奇思妙想 - 新文章创建器
echo ==========================================
echo.

set /p title=房请详故顦性: 

if "!title!"=="" (
    echo 标题不能为穸！
    pause
    exit /b 1
)

echo.
echo 正在创建文章: !title!
echo.

cd /d %~dp0
call hexo new post "!title!"

echo.
echo =========================================
echo 文章创建完成！
echo 文件位置: source\_posts\!title!.md
echo =========================================
echo.

set /p open=是否执行文仺编辑？(y/n): 
if /i "!open!"=="y" (
    start "" "source\_posts\!title!.md"
)

pause

