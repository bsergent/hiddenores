@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
title Hidden Ores - Exporting for Tests

call :colorEcho 70 "Copying Hidden Ores resource pack to resourcepacks directory"
echo.

xcopy "C:\Users\bsergent\Documents\Minecraft\Datapacks\ha1fBit\Hidden Ores\pack.mcmeta" "%AppData%\.minecraft\resourcepacks\Hidden Ores\" /Y
xcopy "C:\Users\bsergent\Documents\Minecraft\Datapacks\ha1fBit\Hidden Ores\pack.png" "%AppData%\.minecraft\resourcepacks\Hidden Ores\" /Y
xcopy "C:\Users\bsergent\Documents\Minecraft\Datapacks\ha1fBit\Hidden Ores\assets\*" "%AppData%\.minecraft\resourcepacks\Hidden Ores\assets\*" /I /S /E /Y

call :colorEcho 70 "Copying data pack to Vorta"
echo.
xcopy "C:\Users\bsergent\Documents\Minecraft\Datapacks\ha1fBit\Hidden Ores\pack.mcmeta" "%AppData%\.minecraft\saves\Vorta\datapacks\Hidden Ores\" /Y
xcopy "C:\Users\bsergent\Documents\Minecraft\Datapacks\ha1fBit\Hidden Ores\data\*" "%AppData%\.minecraft\saves\Vorta\datapacks\Hidden Ores\data\*" /I /S /E /Y

call :colorEcho 70 "Finished copying directories"
echo.

exit
:colorEcho
@echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i