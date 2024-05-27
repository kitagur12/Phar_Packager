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
echo Run [92mPhar_Package[37m
set /p aaa="フォルダ名を入力してください"
set folderPath=%~dp0
set oldFolderName=%aaa%
set newFolderName=de2a7687-39c8-4ea4-a852-ecdb319ec1fd
if not exist "%folderPath%\%oldFolderName%" (
    echo 変更前のフォルダが存在しないため、処理を停止します。
del pp1.bat
pause
exit
)
ren "%folderPath%\%oldFolderName%" "%newFolderName%"
copy "C:\Program Files\Phar_Packager\pp1.php" "%~dp0"
php pp1.php

set folderPath=%~dp0
set oldFolderName=de2a7687-39c8-4ea4-a852-ecdb319ec1fd
set newFolderName=%aaa%
ren "%folderPath%\%oldFolderName%" "%newFolderName%"
del %~dp0pp1.php
set folderPath=%~dp0
set oldFolderName=0c13a469-076c-4d70-987e-d3c33d411e66.phar
set newFolderName=%aaa%.phar
if exist "%folderPath\%%newFolderName%" (
    echo.
del %~dp0%aaa%.phar
)
ren "%folderPath%\%oldFolderName%" "%newFolderName%"
echo 正常に作成できました
del pp1.bat
exit