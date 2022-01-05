# AS2GO-Prepare-Admin-PC
Files to prepare the AS2GO | ADmin PC

Find more information here in my blog post  * [AS2Go | Lab Setup | Domain Controller](https://herrhozi.com/2022/01/04/as2go-lab-setup-domain-controller/): 

## Quick Start Guide
Open a Admin PowerShell terminal from the Windows command. The following command simulate some domain activities creates valid tickets.
```PowerShell
Create-DA-Tickets.ps1
```

The following PoSH will create an short cut on the Public Desktop
```PowerShell
$SourceFilePath = "C:\Temp\AS2Go\Create-DA-Tickets.ps1"
$ShortcutPath = "C:\Users\Public\Desktop\Create Tickets for PtT.lnk"
$WScriptObj = New-Object -ComObject ("WScript.Shell")
$shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
$shortcut.TargetPath = $SourceFilePath
$shortcut.Save()
```

![Create Tickets](https://user-images.githubusercontent.com/96825160/148218490-3096fb50-2e95-4ada-a719-092619ce1af1.png)
