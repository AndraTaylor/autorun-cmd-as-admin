@echo off
set pid=%1
echo Option Explicit >temp.vbs
echo Dim Shell, WMI, wql, process >>temp.vbs
echo Set Shell = CreateObject("WScript.Shell") >>temp.vbs
echo Set WMI = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2") >>temp.vbs
echo wql = "SELECT ProcessId FROM Win32_Process WHERE ProcessId = '%pid%'" >>temp.vbs
echo For Each process In WMI.ExecQuery(wql) >>temp.vbs
echo Shell.AppActivate process.ProcessId >>temp.vbs
echo Shell.SendKeys "%~2 |Clip" >>temp.vbs
echo Shell.SendKeys "{ENTER}" >>temp.vbs
echo Next >>temp.vbs
cscript //nologo temp.vbs & del temp.vbs
powershell -command Get-Clipboard