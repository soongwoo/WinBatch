@ECHO OFF
::
:: Create 7zip backup file
::

set Month=%date:~3,2%
set Day=%date:~0,2%
set Year=%date:~6,4%

:: set Branch=ST
set Branch=CW
set BackupFilename=%Branch%%Year%%Month%%Day%.7z

echo "Create %BackupFilename% at %date% %time%"

:: C:\Program Files\7-Zip\ should be in %PATH%
7z a ..\Backup\%BackupFilename% D4w.*

echo "Finish %BackupFilename% at %date% %time%"
