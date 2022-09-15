$cred = Get-Credential

Invoke-Command -ComputerName 10.0.0.5 -ScriptBlock {hostname} -Credential $cred


Invoke-Command -ComputerName 10.0.0.5 -ScriptBlock {Stop-WebAppPool -Name demo.iis}

Invoke-Command -ComputerName 10.0.0.5 -ScriptBlock {Start-WebAppPool -Name demo.iis}