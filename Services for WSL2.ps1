$ssh_action = New-ScheduledTaskAction -Execute 'C:\Windows\System32\wsl.exe' -Argument '-d Ubuntu sudo service ssh start'
$cron_action = New-ScheduledTaskAction -Execute 'C:\Windows\System32\wsl.exe' -Argument '-d Ubuntu sudo service cron start'
$actions = @($ssh_action, $cron_action)

$trigger = New-ScheduledTaskTrigger -AtStartup
$settings = New-ScheduledTaskSettingsSet

Register-ScheduledTask -TaskName 'WSL2 service initialization' -User $env:UserName -Password '{password}' -RunLevel Highest -Action $actions -Settings $settings -Trigger $trigger
