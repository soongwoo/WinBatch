@ECHO OFF
SET EXE7Z=C:\Windows\System32\7za.exe
:: SET LOG=E:\Dropbox\Today.D4w\d4wbackup.log
SET SET LOG=d4wbackup.log
SET SOURCE=E:\D4w_Data\D4w.*
SET TARGET=E:\Dropbox\Today.D4w\ST-d4w.7z

ECHO==================================== >> %LOG%
echo Start: %date% %time% >> %log%

IF NOT EXIST %EXE7Z% GOTO NOEXE7Z

IF NOT EXIST %TARGET% GOTO RUN7Z
del %TARGET%

:RUN7Z
%EXE7Z% a -t7z %TARGET% %SOURCE%
:: for %I in (E:\Dropbox\Today.D4w\ST-d4w.7z) do @echo %~znI >> %log%
GOTO ENDBATCH

:NOEXE7Z
echo NO %EXE7Z% >> %log%

:ENDBATCH
echo Finish: %date% %time% >> %log%
ECHO==================================== >> %LOG%
