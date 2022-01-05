# Created by hozimmer@microsoft.com
# create a short cut on C:\Users\Public\Desktop
# start with Domain Admin (DA-xxxxx) on ADMIN Workstation for command 'dir \\<your DC>\c$' 


$User = $env:USERNAME
$DC = $env:LOGONSERVER
$path = "$DC\c$"
$sleepintervalsec = 300
$sum = 0
$sum -= $sleepintervalsec


while ($true)
{
    $sum += $sleepintervalsec
    $min = $sum/60
    $hours = $sum/3600
    Invoke-Expression "dir $path"
    Write-Host "`n`n... script runs since $sum seconds or $min minutes or $hours hours on $env:COMPUTERNAME" -ForegroundColor Green


   foreach ($step in (1..$sleepintervalsec)) 
   {
      write-progress -Activity "Next command - dir $path as user $User from $env:COMPUTERNAME" -Status "Waiting - Press any key to stop" -SecondsRemaining ($sleepintervalsec-$step) -PercentComplete  ($step/$sleepintervalsec*100)
      start-sleep -seconds 1
   }

    clear

}