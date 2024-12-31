@echo off

set /p file= input file to pull from 

set /p ips=<%file%

echo %ips%
pause

set /p rulename= input rule name 

echo %rulename% inbound blocker blocking these IPs...
netsh advfirewall firewall add rule name=%rulename% dir=in action=block protocol=any profile=private remoteip=%ips% description="Inbound IP blocker rule made with miles' port safe-inator.bat tool"

pause