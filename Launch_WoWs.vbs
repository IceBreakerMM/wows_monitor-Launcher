Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

' Get the folder where this VBS script is located
strPath = fso.GetParentFolderName(WScript.ScriptFullName)

' Run the PowerShell script using the absolute path
shell.Run "powershell.exe -ExecutionPolicy Bypass -File """ & strPath & "\LaunchWoWS_Universal.ps1""", 0

Set fso = Nothing
Set shell = Nothing