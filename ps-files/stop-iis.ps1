$applicationPoolName = 'demo.iis'

if((Get-WebAppPoolState -Name $applicationPoolName).Value -ne 'Stopped'){
    Write-Output ('Stopping Application Pool: {0}' -f $applicationPoolName)
    Stop-WebAppPool -Name $applicationPoolName
} 