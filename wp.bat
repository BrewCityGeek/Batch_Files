@echo on

RD /s /q C:\inetpub\wwwroot\wordpress\wp-admin
RD /s /q C:\inetpub\wwwroot\wordpress\wp-includes

xcopy C:\temp\wordpress\* C:\inetpub\wwwroot\wordpress\ /e /y /c
Pause