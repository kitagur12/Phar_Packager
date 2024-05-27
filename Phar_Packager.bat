@echo off
setlocal enabledelayedexpansion
rem
chcp 65001
cls
:RESTART
echo   _____  _                _____           _                         
echo  ^|  __ \^| ^|              ^|  __ \         ^| ^|                        
echo  ^| ^|__) ^| ^|__   __ _ _ __^| ^|__) ^|_ _  ___^| ^| ____ _  __ _  ___ _ __ 
echo  ^|  ___/^| '_ \ / _` ^| '__^|  ___/ _` ^|/ __^| ^|/ / _` ^|/ _` ^|/ _ \ '__^|
echo  ^| ^|    ^| ^| ^| ^| (_^| ^| ^|  ^| ^|  ^| (_^| ^| (__^|   ^< (_^| ^| (_^| ^|  __/ ^|   
echo  ^|_^|    ^|_^| ^|_^|\__,_^|_^|  ^|_^|   \__,_^|\___^|_^|\_\__,_^|\__, ^|\___^|_^|   
echo                      ______                           __/ ^|          
echo                    ^|______^|                         ^|___/           
echo ㅤ
if not exist "C:\Program Files\Phar_Packager" (
echo Starting setup...
md "C:\Program Files\Phar_Packager"
bitsadmin /transfer download "https://raw.githubusercontent.com/kitagur12/Phar_Packager/main/pp1.bat" "C:\Program Files\Phar_Packager\pp1.bat"
cls
bitsadmin /transfer download https://raw.githubusercontent.com/kitagur12/Phar_Packager/main/pp1.php "C:\Program Files\Phar_Packager\pp1.php"
cls
bitsadmin /transfer download https://raw.githubusercontent.com/kitagur12/Phar_Packager/main/pp2.bat "C:\Program Files\Phar_Packager\pp2.bat"
cls
bitsadmin /transfer download https://raw.githubusercontent.com/kitagur12/Phar_Packager/main/pp2.php "C:\Program Files\Phar_Packager\pp2.php"
cls
echo [93mSetup is complete^!^![37m
GOTO RESTART
)
echo [92mP[37m=[92mPhar_Package[37m
echo [91mU[37m=[91mPhar_UnPackage[37m
set /p bbb="Please select an operation (P or U)
IF %bbb:P=P%==P (
copy "C:\Program Files\Phar_Packager\pp1.bat" "%~dp0"
call pp1.bat
pause
) ELSE IF %bbb:U=U%==U  (
copy "C:\Program Files\Phar_Packager\pp2.bat" "%~dp0"
call pp2.bat
pause
) ELSE (
cls
echo wrong value
GOTO RESTART
)
endlocal
