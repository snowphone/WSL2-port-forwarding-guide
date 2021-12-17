$action = New-ScheduledTaskAction -Execute 'powershell' -Argument '-ExecutionPolicy Bypass c:\scripts\wslbridge.ps1'
$trigger = New-ScheduledTaskTrigger -AtStartup
$trigger.Delay = "PT1M"
$settings = New-ScheduledTaskSettingsSet

Register-ScheduledTask -TaskName 'Port forward WSL2 processes' -User $env:UserName -Password '{password}' -RunLevel Highest -Action $action -Settings $settings -Trigger $trigger
