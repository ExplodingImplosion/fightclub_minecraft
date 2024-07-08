@echo off
set /p rulename= input rule name 

set /p portnum= input rule port 

echo %rulename% inbound udp %portnum%...
netsh advfirewall firewall add rule name=%rulename% dir=in action=allow localport=%portnum% protocol=udp profile=private description="UDP inbound rule made with miles' port maker.bat tool"
echo %rulename% inbound tcp %portnum%...
netsh advfirewall firewall add rule name=%rulename% dir=in action=allow localport=%portnum% protocol=tcp profile=private description="TCP inbound rule made with miles' port maker.bat tool"

echo %rulename% outbound udp %portnum%...
netsh advfirewall firewall add rule name=%rulename% dir=out action=allow localport=%portnum% protocol=udp profile=private description="UDP outbound rule made with miles' port maker.bat tool"
echo %rulename% outbound tcp %portnum%...
netsh advfirewall firewall add rule name=%rulename% dir=out action=allow localport=%portnum% protocol=tcp profile=private description="TCP outbound rule made with miles' port maker.bat tool"


pause