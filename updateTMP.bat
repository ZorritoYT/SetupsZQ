@echo off
color 4
if not exist Path.ZQ cls & echo ERROR Path.ZQ MISSING! & timeout 2 /nobreak >nul & exit
if not exist Path2.ZQ cls & echo ERROR Path2.ZQ MISSING! & timeout 2 /nobreak >nul & exit
set/p locate=< Path.ZQ
set/p verQ=< Path2.ZQ

cd "%locate%"
rmdir /s /q
del /s /q
7za e "ZorritqBT %verQ%.rar"
cd "%userprofile%\ZorritqBT"
move /Y "*" "%locate%"
cls
color a
echo Actualizacion instalada!
echo abriendo ZorritqBT...
timeout 2 /nobreak >nul
cd "%locate%"
start ZorritqBT.bat
exit