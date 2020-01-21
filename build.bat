@ECHO OFF
CLS & TITLE Building Pling!...
CD %~dp0

SET ACME=bin\acme\acme.exe -I "src"
SET X16EMU="bin\x16emu\x16emu.exe"
SET VICE="bin\vice\x64.exe"

REM %ACME% -v2 ^
REM     --format cbm ^
REM     --outfile "build\pling-x16.prg" ^
REM     -- "src/prg_pling_x16.acme"

%ACME% -v2 ^
    --format    cbm ^
    --outfile   "build\pling-c64.prg" ^
    -- "src\prg_pling_c64.acme"

IF ERRORLEVEL 1 EXIT /B 1

%VICE% --autostart "%~dp0build\pling-c64.prg"
REM %X16EMU% -debug -prg "%~dp0build\pling-x16.prg" -run