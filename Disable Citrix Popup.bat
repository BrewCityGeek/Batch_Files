@echo off

REG ADD HKLM\Software\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000
REG ADD HKLM\Software\Wow6432Node\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000
REG ADD HKCU\Software\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000
REG ADD HKCU\Software\Wow6432Node\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000