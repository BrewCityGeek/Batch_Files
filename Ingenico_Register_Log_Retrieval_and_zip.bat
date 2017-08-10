@echo off
set date="%date:~4,2%-%date:~7,2%-%date:~10,4%"
set path="\\bph-fs01\PUBLIC\NetworkOperations\CP Logs\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CP Logs\%date%"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP05*R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CP Logs\%date%"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP05*R*.log.* "\\bph-fs01\PUBLIC\NetworkOperations\CP Logs\%date%"
7z.exe a "\\bph-fs01\PUBLIC\NetworkOperations\CP Logs\%date%.zip" "\\bph-fs01\PUBLIC\NetworkOperations\CP Logs\%date%\*.*">>"%date%.log"
rmdir /s /q "\\bph-fs01\PUBLIC\NetworkOperationsCP Logs\%date%">>"%date%.log"