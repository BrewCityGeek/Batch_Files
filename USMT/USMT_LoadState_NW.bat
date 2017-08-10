@ECHO OFF

TITLE BatteriesPlusBulbs USMT LoadState Script
COLOR 2f

CD /D %~dp0

ECHO *******************************************************
ECHO *       BatteriesPlusBulbs USMT LoadState Script      *
ECHO *                      v0.1.7                         *
ECHO *                  By Andy Gossen                     *
ECHO *******************************************************
ECHO.

REM Get Computer# and Username for destination Computer
SET /P DestinationPC=Enter the destination Computer name:
SET /P UserName=Enter the user name to be transferred:
SET /P AdminUser=Enter your user name:
REM SET /P AdminPassword=Enter your password:

REM Copy USMT Directory to destination Computer
ECHO Copying USMT directory to remote machine...
XCOPY c:\USMT  \\%DestinationPC%\c$\USMT /E /Y /C /I /Z

REM Copy Migration Store to destination Computer
ECHO Copying Mig_Store directory from Local Host...
XCOPY c:\%username%\USMT \\%DestinationPC%\c$\USMT /T /Y /E /I /C /Z
COPY c:\%username%\USMT\Mig_Store\USMT\* \\%DestinationPC%\c$\USMT\Mig_Store\USMT\ /Y /Z

REM Run PSexec on the remote machine to initiate the LoadState
PSEXEC \\%DestinationPC% -u bpluscorp\%AdminUser% -h c:\USMT\amd64\Loadstate.exe "c:\usmt\Mig_store" /c /i:c:\usmt\amd64\MigApp.xml /i:c:\usmt\amd64\MigDocs.xml /v:13 /l:c:\usmt\amd64\load.log /progress:c:\usmt\amd64\loadprog.log /ue:*\* /ui:bpluscorp\%UserName%

REM Remove USMT directory and all its files
PSEXEC \\%DestinationPC% -u bpluscorp\%AdminUser% -h CMD /C RMDIR c:\usmt /Q /S

pause