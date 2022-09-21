
# Define clear text string for username and password
[string]$userName = 'jaroldan'
[string]$userPassword = 'Rollingstones01'

# Convert to SecureString
[securestring]$secStringPassword = ConvertTo-SecureString $userPassword -AsPlainText -Force

[pscredential]$credObject = New-Object System.Management.Automation.PSCredential ($userName, $secStringPassword)



$LocalPath =  "C:\repos\samplecopy\"
$RemotePath = "C:\repos\"

$TargetSession = New-PSSession -ComputerName 10.0.0.5 -Credential $credObject
      
Copy-Item -Path $LocalPath -Destination $RemotePath -ToSession $TargetSession -Force -Recurse
