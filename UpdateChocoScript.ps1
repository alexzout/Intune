$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-NoProfile -WindowStyle Hidden -command "choco upgrade all -y | Out-File -FilePath C:\MCAZ\choco-update-log.txt"'

# Set the trigger to be at any user logon
$trigger =  New-ScheduledTaskTrigger -AtLogOn

# Specifies that Task Scheduler uses the Local Service account to run tasks, and that the Local Service account uses the Service Account logon. The command assigns the **ScheduledTaskPrincipal** object to the $STPrin variable.
$STPrin = New-ScheduledTaskPrincipal -UserId "SYSTEM" -LogonType ServiceAccount

# Create the scheduled task
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Update Choco all @ Login" -Description "Dit voert een choco update all commando uit in powershell tijdens inloggen van de user onder het system account." -Principal $STPrin
new-item c:\mcaz\updatechoco.txt