@ECHO OFF

TITLE BatteriesPlusBulbs USMT SaveState Script
COLOR 0b

CD /D %~dp0

ECHO *******************************************************
ECHO *       BatteriesPlusBulbs USMT SaveState Script      *
ECHO *                      v0.1.7                         *
ECHO *                  By Andy Gossen                     *
ECHO *******************************************************
ECHO.

REM Get Computer# and Username for originating Computer
SET /P OriginatingPC=Enter the originating Computer name:
SET /P UserName=Enter the user name to be transferred:
SET /P AdminUser=Enter your user name:
REM SET /P AdminPassword=Enter your password:

CLS
REM Copy USMT Directory to destination Computer
ECHO Copying USMT directory to remote machine...
XCOPY c:\USMT  \\%OriginatingPC%\c$\USMT /E /Y /C /I /Z

CLS
REM Run PSexec on the remote machine to initiate the SaveState
PSEXEC \\%OriginatingPC% -u bpluscorp\%AdminUser% c:\USMT\amd64\Scanstate.exe "c:\usmt\Mig_Store" /c /o /tel:OFF /targetWindows7 /i:c:\usmt\amd64\MigApp.xml /i:c:\usmt\amd64\MigDocs.xml /v:13 /localonly /l:c:\USMT\amd64\scan.log /progress:c:\USMT\amd64\scanprog.log /ue:*\* /ui:bpluscorp\%UserName%

CLS
REM Copy USMT File to Blue Drive
ECHO Copying USMT directory to Blue Drive...
XCOPY \\%OriginatingPC%\c$\USMT E:\%Username%\USMT /T /E /Y /I /C /Z
COPY \\%OriginatingPC%\c$\USMT\Mig_Store\USMT\* E:\%Username%\USMT\Mig_Store\USMT\ /Y /Z