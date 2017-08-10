@ECHO Off

TITLE Remote SystemInfo

COLOR 0b

CD /D %~dp0

SET /P UserName=Enter the employee username: 

FOR /f "usebackq delims== skip=1" %%i in (`psgetsid.exe bpluscorp\%UserName%`) do set uSID=%%i
CLS
ECHO %UserName%'s SID is %uSID% and VHD file is:
ECHO.
DIR \\hrtv-fil001\upd | FINDSTR %uSID%
ECHO.
choice /C X /T 2 /D X > nul
ECHO You may close this window or press any key to open up the VHD directory (\\HRTV-FIL001\UPD)
choice /C X /T 2 /D X > nul
ECHO.
PAUSE
START \\hrtv-fil001\upd
PAUSE > nul