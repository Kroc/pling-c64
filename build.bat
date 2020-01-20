@ECHO OFF
CLS & TITLE Building Pling!...
CD %~dp0

SET ACME=bin\acme\acme.exe -I "src"

%ACME% -v2 ^
    --format cbm ^
    --outfile "build\pling-x16.prg" ^
    -- "src/prg_pling_x16.acme"

SET X16EMU="bin\x16emu\x16emu.exe"

IF ERRORLEVEL 1 EXIT /B 1

%X16EMU% -debug -prg "%~dp0build\pling-x16.prg" -run