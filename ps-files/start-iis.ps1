$applicationPoolName = 'demo.iis'

if((Get-WebAppPoolState -Name $applicationPoolName).Value -ne 'Started'){
    Write-Output ('Starting Application Pool: {0}' -f $applicationPoolName)
    Start-WebAppPool -Name $applicationPoolName
}