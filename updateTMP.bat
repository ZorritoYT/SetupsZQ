@echo off
color 4
if not exist Path.ZQ cls & echo ERROR Path.ZQ MISSING! & timeout 2 /nobreak >nul & exit
if not exist Path2.ZQ cls & echo ERROR Path2.ZQ MISSING! & timeout 2 /nobreak >nul & exit
set/p locate=< Path.ZQ
set/p verQ=< Path2.ZQ

cd "%locate%"
cd..
set locate2=%cd%
if not exist ZorritqBT cls & echo ERROR ZorritqBT MISSING! & timeout 2 /nobreak >nul & exit
rmdir /s /q ZorritqBT
cd "%userprofile%"
7za x -y ZorritqBT.zip
timeout 1 /nobreak >nul
move /Y ZorritqBT "%locate2%"
cd "%userprofile"
rmdir /q ZorritqBT
del /q 7za.exe
del /q 7zxa.dll
del /q 7za.dll
del /q Path2.ZQ
del /q Path.ZQ
del /q ZorritqBT.zip
cls
color a
echo Actualizacion instalada!
echo.
echo Path : %locate%
echo Update : %verQ%
echo.
echo abriendo ZorritqBT...
timeout 2 /nobreak >nul
cd "%locate%"
start ZorritqBT.bat
exit
