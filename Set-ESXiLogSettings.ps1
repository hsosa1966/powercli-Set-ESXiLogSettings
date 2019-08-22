$SettingName = "Config.HostAgent.log.level","Vpx.Vpxa.config.log.level","Vpx.Vpxa.config.log.memoryLevel"

Get-VMHost | Where-Object {$_.ConnectionState -eq "Connected"} | Get-AdvancedSetting -Name $SettingName |Sort Entity | Select Entity,Name,Value | Format-Table -AutoSize

Get-VMHost | Where-Object {$_.ConnectionState -eq "Connected"} | Get-AdvancedSetting -Name $SettingName | Set-AdvancedSetting -Confirm:$false -Value info

Get-VMHost | Where-Object {$_.ConnectionState -eq "Connected"} | Get-AdvancedSetting -Name $SettingName |Sort Entity | Select Entity,Name,Value | Format-Table -AutoSize
