@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
title Hidden Ores - Building for Release

call :colorEcho 70 "Deleting old zip archive"
echo.
del ".\dist\Hidden Ores.zip"

call :colorEcho 70 "Preparing new zip archive"
echo.
rar a -zip ".\dist\Hidden Ores.zip" ".\pack.mcmeta"
rar a -zip ".\dist\Hidden Ores.zip" ".\pack.png"
rar a -zip -r ".\dist\Hidden Ores.zip" ".\assets\*"
rar a -zip -r ".\dist\Hidden Ores.zip" ".\data\*"

call :colorEcho 70 "Finished creating new zip archive"
echo.

pause
exit
:colorEcho
@echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i