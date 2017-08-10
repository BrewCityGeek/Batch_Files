@ECHO Off

TITLE Remote SystemInfo

COLOR 0b

CD /D %~dp0

:START
SET /P Name=Enter the Computer name: 
ECHO.
wmic /node:%Name% bios get serialnumber
systeminfo.exe /s %Name% | FINDSTR /c:"System Boot Time" /c:"Original Install Date"

ECHO.
ECHO Push any key to query another machine or close this window to exit...
ECHO.
Pause > nul
cls
GOTO:START