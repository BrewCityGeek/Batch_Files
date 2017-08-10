@ECHO OFF

TITLE BatteriesPlusBulbs New Kiosk Script v 2.1 (x64)
color 0e

CD /D %~dp0

ECHO *******************************************************
ECHO *     BatteriesPlusBulbs New Kiosk Script (x64)       *
ECHO *                      v2.1                           *
ECHO *           By Andy Gossen/Jacob Allord               *
ECHO *******************************************************
ECHO.
ECHO ATTENTION REMOVE SYMANTEC WITH CLEANWIPE BEFORE RUNNING SCRIPT
ECHO.

SET /P Store=Enter the 3 digit store #:
SET /P Name=Enter the Computer name:
REM SET /P Host=Is this machine the CMC Host? (Y or N):
SET /P Key=Enter the CMC Key ID:
SET File="C:\Program Files (x86)\Radiant Systems\CMC\CommandCenter.config"
REM SET File=text.txt

ECHO.

ECHO Renaming Computer...
choice /C X /T 1 /D X > nul
wmic computersystem where name="%computername%" call rename name ="%Name%"
ECHO Complete!
ECHO.

ECHO Changing Description...
choice /C X /T 1 /D X > nul
net config server /srvcomment:"%Name%"
ECHO Complete!
ECHO.

ECHO Joining BATTERIESPLUS workgroup...
choice /C X /T 1 /D X > nul
wmic computersystem where name="%computername%" call joindomainorworkgroup name="BATTERIESPLUS"
ECHO Complete!
ECHO.

ECHO Installing Command Center...
choice /C X /T 1 /D X > nul
start /wait CmcInst.exe
ECHO Complete!
ECHO.

ECHO ^<?xml version="1.0"?^>>%File% && ECHO ^<commandcenter^>>>%File% && ECHO   ^<gateway mode="off" ipAddress="172.24.2.2" /^>>>%File% && ECHO   ^<siteId value="%Key%" /^>>>%File% && ECHO   ^<unitNumber value="%Store%" /^>>>%File% && ECHO   ^<nodeNumber value="201" /^>>>%File% && ECHO.|set /P ="</commandcenter>" >>%File%

ECHO Command Center File has been created and placed in the proper directory...
choice /C X /T 1 /D X > nul
DEL /F /S /Q /A "C:\Program Files (x86)\Radiant Systems\CMC\siteTopology.config"
ECHO Complete!
ECHO.

ECHO Granting EVERYONE full access to CMC Update folder.
choice /C X /T 1 /D X > nul	
icacls "c:\Program Files (x86)\Radiant Systems\CMC\Update" /grant Everyone:(OI)(CI)F /c /t
DEL /F /S /Q /A "C:\Program Files (x86)\Radiant Systems\CMC\siteTopology.config"
ECHO Complete!
ECHO.


ECHO Setting Command Center Services to auto-start...
choice /C X /T 1 /D X > nul
Sc config CmcAgent start= auto
Sc config CmcSvcWatcher start= auto
Sc config RadSprtA start= auto
ECHO Complete!
ECHO.

ECHO Restarting Command Center Services...
choice /C X /T 1 /D X > nul
net stop CmcAgent
net stop CmcSvcWatcher
net stop RadSprtA
net start CmcAgent
net start CmcSvcWatcher
net start RadSprtA
ECHO Complete!
ECHO.

ECHO Setting Wallpaper...
choice /C X /T 1 /D X > nul
copy plusguy.jpg c:\windows\plusguy.jpg
REG ADD "HKCU\Control Panel\Desktop" /f /v WallpaperStyle /t REG_SZ /d 0
REG ADD "HKCU\Control Panel\Desktop" /f /v Wallpaper /t REG_SZ /d c:\windows\plusguy.jpg
ECHO Complete!
ECHO.

ECHO Installing Screen Saver...
choice /C X /T 1 /D X > nul
start /wait PlusGuy2013.exe
ECHO Complete!
ECHO.

REM ECHO Installing Citrix Plugin...
REM choice /C X /T 1 /D X > nul
REM start /wait CitrixReceiverWeb.exe
REM ECHO Complete!
REM ECHO.

REG ADD HKLM\Software\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000
REG ADD HKLM\Software\Wow6432Node\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000
REG ADD HKCU\Software\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000
REG ADD HKCU\Software\Wow6432Node\Policies\Citrix /f /v EnableX1FTU /t REG_DWORD /d 00000000

ECHO Running plugin Flash Update utility...
choice /C X /T 1 /D X > nul
start /wait Updater.exe
ECHO Complete!
ECHO.

ECHO Running plugin Update utility...
choice /C X /T 1 /D X > nul
start /wait Updater2.exe
ECHO Complete!
ECHO.

ECHO Installing Kaspersky...
choice /C X /T 1 /D X > nul
start /wait Kaspersky_setup.exe
ECHO Complete!
ECHO.

ECHO Opening Windows Updates...
choice /C X /T 1 /D X > nul
ECHO Script complete!
choice /C X /T 1 /D X > nul
ECHO Goodbye!
choice /C X /T 2 /D X > nul

%windir%\system32\wuapp.exe

:END