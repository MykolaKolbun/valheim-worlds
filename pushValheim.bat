@echo off
setlocal

REM --- Path ---
set WORLDS_DIR=c:\Users\mykol\AppData\LocalLow\IronGate\Valheim\worlds
set REPO_DIR=d:\Games\ValheimWorldsRepo\

echo Copying Valheim worlds to repo...
xcopy "%WORLDS_DIR%\*" "%REPO_DIR%\worlds" /s /y /i

cd /d "%REPO_DIR%"
git pull origin main
git add .
git commit -m "Update Valheim world by %USERNAME% on %date% %time%"
git push origin main

echo Done! Worlds pushed to GitHub by %USERNAME%.
pause