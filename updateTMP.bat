@echo off
color 4
if not exist Path.ZQ cls & echo ERROR Path.ZQ MISSING! & timeout 2 /nobreak >nul & exit
if not exist Path2.ZQ cls & echo ERROR Path2.ZQ MISSING! & timeout 2 /nobreak >nul & exit
set/p locate=< Path.ZQ
set/p verQ=< Path2.ZQ

cd "%locate%"
cd..
set locate2=%cd%
rmdir /s /q ZorritqBT
cd "%userprofile%"
if not exist ZorritqBT.zip cls & echo ERROR ZorritqBT.zip MISSING! & timeout 2 /nobreak >nul & exit
7za e ZorritqBT.zip
timeout 1 /nobreak >nul
move /Y ZorritqBT "%locate2%"
cd "%userprofile"
del /q 7za.exe
del /q 7zxa.dll
del /q 7za.dll
del /q Path2.ZQ
del /q Path.ZQ
del /q ZorritqBT.zip
cd "%locate%"
echo Actualizacion instalada >lastupdate.ZQ
echo Path : %locate% >>lastupdate.ZQ
echo Updated to : %verQ% >>lastupdate.ZQ
echo More info : %date%:%time% >>lastupdate.ZQ
cls
color a
echo abriendo ZorritqBT...
timeout 2 /nobreak >nul
cd "%locate%"
start ZorritqBT.bat
exit
