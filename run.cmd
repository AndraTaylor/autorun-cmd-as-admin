cd %USERPROFILE%
SET /P cr=<command.bat
SET /A nr=%cr%
SET /P lnr=<lrn.txt
SET /A lr=%lnr%
if %lr% EQU -666 exit
if %nr% LEQ %lr% timeout 10 && run.cmd
if %nr% GTR %lr% command.bat