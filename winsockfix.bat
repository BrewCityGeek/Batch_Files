@echo off

netsh winsock reset

netsh winsock reset catalog
netsh int ip reset reset.log

echo You now have to reboot your PC!

pause