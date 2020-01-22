@ECHO OFF
CLS & TITLE Building Pling!...
CD %~dp0

SET ACME=bin\acme\acme.exe -I "src"

SET WLA_6510="bin\wla-dx\wla-6510.exe" -i -I "src"
SET WLA_65C02="bin\wla-dx\wla-65c02.exe" -i -I "src"
SET WLA_Z80="bin\wla-dx\wla-z80.exe" -i -I "src"

SET WLA_LINK="bin\wla-dx\wlalink.exe" -i
SET C1541="bin\vice\c1541.exe"

SET X16EMU="bin\x16emu\x16emu.exe"
SET VICE="bin\vice\x64.exe"

REM %ACME% -v2 ^
REM     --format cbm ^
REM     --outfile "build\pling-x16.prg" ^
REM     -- "src/prg_pling_x16.acme"

REM %ACME% -v2 ^
REM     --format    cbm ^
REM     --outfile   "build\pling-c64.prg" ^
REM     -- "src\prg_pling_c64.acme"

%WLA_6510% -v ^
    -o "build\pling_c64.o" ^
       "pling_c64.wla"

IF ERRORLEVEL 1 EXIT /B 1

%WLA_LINK% -v -S ^
    -b "link_c64.ini" ^
       "build\pling_c64.prg"

IF ERRORLEVEL 1 EXIT /B 1

REM # build a 1541 floppy disk image
%C1541% ^
    -format "pling!,00" d64 "build/pling-c64.d64" ^
    -write  "build/pling_c64.prg" "pling!"

%VICE% --autostart "%~dp0build\pling-c64.d64"
REM %X16EMU% -debug -prg "%~dp0build\pling-x16.prg" -run