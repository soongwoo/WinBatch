::
:: Backup D4w data files.
::

@echo off

:: variables
set LOG=..\Backup\backuplog.txt
set Month=%date:~3,2%
set Day=%date:~0,2%
set Year=%date:~6,4%

:: Create a single archive for data files
set Branch=ST
set Filename=%Branch%%Year%%Month%%Day%.7z
set BackupFilename=..\Backup\%Filename%

echo "Create %BackupFilename% at %date% %time%" >> %LOG%
7z a %BackupFilename% D4w.*

:: Upload backup files
set ID=ehima872
set PASSWD=P@eogksalsrnr
set FTPSITE=ftp.e-himax.com.au
set BKUPDIR=Backup.D4w_Data

echo "Upload %BackupFilename% at %date% %time%" >> %LOG%
ncftpput -u %ID% -p %PASSWD% %FTPSITE% %BKUPDIR% %BackupFilename%
echo "Finish it at %date% %time%" >> %LOG%
