powershell -command $wsh = New-Object -ComObject Wscript.Shell 
powershell -command $wsh.AppActivate("C:\Windows\system32\cmd.exe")
powershell -command Start-Sleep 2 
powershell -command $wsh.Sendkeys("{TAB}")