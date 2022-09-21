

$LocalPath =  "C:\repos\samplecopy\"
$RemotePath = "C:\repos\"

$TargetSession = New-PSSession -ComputerName 10.0.0.5 
      
Copy-Item -Path $LocalPath -Destination $RemotePath -ToSession $TargetSession -Force -Recurse
