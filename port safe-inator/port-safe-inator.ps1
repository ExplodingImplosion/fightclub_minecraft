$file = Read-Host "input file to pull from "

$ips = Get-Content $file

$rulename = "input rule name "

Write-Output $rulename " inbound blocker blocking these IPs..."
netsh advfirewall firewall add rule name=$ips dir=in action=block protocol=any profile=private remoteip=%ips% description="Inbound IP blocker rule made with miles' port safe-inator.bat tool"

Write-Host "gaming"