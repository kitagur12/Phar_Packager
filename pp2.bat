chcp 65001
@echo off
cls
echo   _____  _                _____           _                         
echo  ^|  __ \^| ^|              ^|  __ \         ^| ^|                        
echo  ^| ^|__) ^| ^|__   __ _ _ __^| ^|__) ^|_ _  ___^| ^| ____ _  __ _  ___ _ __ 
echo  ^|  ___/^| '_ \ / _` ^| '__^|  ___/ _` ^|/ __^| ^|/ / _` ^|/ _` ^|/ _ \ '__^|
echo  ^| ^|    ^| ^| ^| ^| (_^| ^| ^|  ^| ^|  ^| (_^| ^| (__^|   ^< (_^| ^| (_^| ^|  __/ ^|   
echo  ^|_^|    ^|_^| ^|_^|\__,_^|_^|  ^|_^|   \__,_^|\___^|_^|\_\__,_^|\__, ^|\___^|_^|   
echo                      ______                           __/ ^|          
echo                    ^|______^|                         ^|___/           
echo ㅤ
echo Run [91mPhar_UnPackage[37m
set /p aaa="Please enter phar file name:
set folderPath=%~dp0
set oldFolderName=%aaa%
set newFolderName=0c13a469-076c-4d70-987e-d3c33d411e66
if not exist "%folderPath%\%oldFolderName%.phar" (
    echo [91mProcessing will be stopped because the file before modification does not exist.[37m
del pp2.bat
pause
exit
)
if exist "%~dp0%aaa%_archive" (
echo %~dp0%aaa%_archive
del /q  %~dp0%aaa%_archive
RD /S /Q %~dp0%aaa%_archive
)


ren "%folderPath%\%oldFolderName%.phar" "%newFolderName%.phar"
copy "C:\Program Files\Phar_Packager\pp2.php" "%~dp0"
php pp2.php

set folderPath=%~dp0
set oldFolderName=de2a7687-39c8-4ea4-a852-ecdb319ec1fd
set newFolderName=%aaa%
ren "%folderPath%\%oldFolderName%" "%newFolderName%.phar"
del %~dp0pp2.php
set folderPath=%~dp0
set oldFolderName=0c13a469-076c-4d70-987e-d3c33d411e66.phar
set newFolderName=%aaa%.phar
if exist "%folderPath\%%newFolderName%" (
    echo.
del %~dp0%aaa%aa
)
ren "%folderPath%\$get_dir_path" "%aaa%_archive"
ren "%folderPath%\%oldFolderName%" "%newFolderName%"
echo [92mCreated successfully[37m
del pp2.bat
exit
