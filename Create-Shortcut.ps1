$SourceFilePath = "C:\Temp\AS2Go\Create-DA-Tickets.ps1"
$ShortcutPath = "C:\Users\Public\Desktop\Create Tickets for PtT.lnk"
$WScriptObj = New-Object -ComObject ("WScript.Shell")
$shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
$shortcut.TargetPath = $SourceFilePath
$shortcut.Save()