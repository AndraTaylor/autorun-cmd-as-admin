SET /P c=<command.bat
SET /A n=%c%+1
SET /P command="insert command:"
(echo %n% && echo %command%)>command.bat
powrshell -command "echo run.cmd >>command.bat"