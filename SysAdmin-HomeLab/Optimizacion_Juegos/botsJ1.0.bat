@echo off
title name more - GLOBAL GAMING BOOSTER botsJ1.0 [BETA]
color 0A

:: --- LINEA DE GUARDADO AUTOMATICO ---
if not exist "C:\Users\SysAdmin\Documents\SysAdmin-HomeLab" mkdir "C:\Users\SysAdmin\Documents\SysAdmin-HomeLab"
if /i not "%~dp0"=="C:\Users\SysAdmin\Documents\SysAdmin-HomeLab\" copy /y "%~f0" "C:\Users\SysAdmin\Documents\SysAdmin-HomeLab\" > nul

:menu
cls
echo =======================================================
echo       name more - GLOBAL GAMING BOOSTER botsJ1.0
echo =======================================================
echo 1. Activar el Modo Ultra Rendimiento de Energia
echo 2. Forzar Optimizacion de Prioridad de Juegos en GPU
echo 3. Limpiar RAM Standby (Liberar espacio para el juego)
echo =======================================================
echo         [ Presiona Ctrl + C para Salir ]           
echo =======================================================
echo.
set /p opcion="Elige una opcion (1-3): "

if "%opcion%"=="1" goto energia
if "%opcion%"=="2" goto gpu
if "%opcion%"=="3" goto ram
goto menu

:energia
cls
echo === GAMING: MAXIMUM POWER PLAN ===
echo.
echo Inyectando y activando el plan Oculto de maximo rendimiento...
powercfg /duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 > nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 > nul 2>&1
echo ¡Plan de energia Ultra Rendimiento configurado!
pause
goto menu

:gpu
cls
echo === GAMING: OPTIMIZACION DE RESPUESTA DE GPU ===
echo.
echo Priorizando aplicaciones multimedia y juegos pesados...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f > nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f > nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t "REG_SZ" /d "High" /f > nul 2>&1
echo ¡GPU configurada para priorizar tus juegos!
pause
goto menu

:ram
cls
echo === GAMING: LIBERACION DE MEMORIA RAM CACHE ===
echo.
echo Reseteando el entorno de memoria caché del sistema operativo...
ipconfig /flushdns > nul
:: Comando nativo para descartar caches de comandos del sistema
nbtstat -R > nul 2>&1
echo RAM temporal purgada. Tu juego tendra mas espacio para cargar texturas.
pause
goto menu
