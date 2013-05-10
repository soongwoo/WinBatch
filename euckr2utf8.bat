@echo off
::
:: Convert document's encoding from euc-kr to utf-8.
::

:: variables
set MV=ren
set RM=del
set TMPFILE=tmpfile

:: Check whether it is encoded with euc-kr.

:: reserve the output name
set OUTFILE=%1

:: check whether it is a valid argument
IF NOT EXIST %OUTFILE% (
  echo '%OUTFILE%' does not exist!
  goto END
)

: rename the argument to temporary one
%MV% %1 %TMPFILE%

:: convert it with iconv windows binary
echo Convert %OUTFILE%'s encoding to utf-8 ...
iconv -f euc-kr -t utf-8 %TMPFILE% > %OUTFILE%
%RM% %TMPFILE%

:END

