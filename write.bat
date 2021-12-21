SET /P c=<command.bat
SET /A n=%c%+1
SET /P command="insert command:"
(echo %n% && echo %command% ^| Clip)>command.bat
echo echo %%nr%% ^>^lrn.txt >>command.bat
echo run.cmd >>command.bat
timeout 9
result.bat