@echo off
REG ADD HKLM\Software\Policies\Microsoft\Windows\Gwx /f /v DisableGwx /t REG_DWORD /d 00000001
REG ADD HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate /f /v DisableOSUpgrade /t REG_DWORD /d 00000001