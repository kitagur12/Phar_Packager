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
set /p aaa="フォルダ名を入力してください"
set folderPath=%~dp0
set oldFolderName=%aaa%
set newFolderName=0c13a469-076c-4d70-987e-d3c33d411e66
if not exist "%folderPath%\%oldFolderName%.phar" (
    echo 変更前のフォルダが存在しないため、処理を停止します。
del pp2.bat
pause
exit
)
del %aaa%_archive/
ren "%folderPath%\%oldFolderName%.phar" "%newFolderName%.phar"
copy "C:\Program Files\pp2.php" "%~dp0"
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
echo 正常に作成できました
del pp2.bat
exit