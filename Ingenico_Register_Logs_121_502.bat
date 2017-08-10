@echo off
set date="%date:~4,2%-%date:~7,2%-%date:~10,4%"
set path="\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\CPLogs\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Ingenico\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\"
mkdir "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\"

copy \\bp-vm-cpx201\CounterPointSQL\Logs\*BP0121R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\*BP0502R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\"

copy \\bp-vm-cpx202\CounterPointSQL\Logs\*BP0121R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\"
copy \\bp-vm-cpx202\CounterPointSQL\Logs\*BP0502R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\"

copy \\bp-vm-cpx203\CounterPointSQL\Logs\*BP0121R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\"
copy \\bp-vm-cpx203\CounterPointSQL\Logs\*BP0502R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\"

copy \\bp-vm-cpx204\CounterPointSQL\Logs\*BP0121R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\"
copy \\bp-vm-cpx204\CounterPointSQL\Logs\*BP0502R*.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\"


ECHO BP-VM-CPX201>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0121R1.log
ECHO BP-VM-CPX202>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0121R1.log
ECHO BP-VM-CPX203>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0121R1.log
ECHO BP-VM-CPX204>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0121R1.log
ECHO BP-VM-CPX201>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0121R2.log
ECHO BP-VM-CPX202>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0121R2.log
ECHO BP-VM-CPX203>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0121R2.log
ECHO BP-VM-CPX204>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0121R2.log
ECHO BP-VM-CPX201>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R1.log
ECHO BP-VM-CPX202>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R1.log
ECHO BP-VM-CPX203>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R1.log
ECHO BP-VM-CPX204>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R1.log
ECHO BP-VM-CPX201>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R2.log
ECHO BP-VM-CPX202>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R2.log
ECHO BP-VM-CPX203>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R2.log
ECHO BP-VM-CPX204>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R2.log
ECHO BP-VM-CPX201>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R3.log
ECHO BP-VM-CPX202>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R3.log
ECHO BP-VM-CPX203>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R3.log
ECHO BP-VM-CPX204>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R3.log
ECHO BP-VM-CPX201>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R4.log
ECHO BP-VM-CPX202>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R4.log
ECHO BP-VM-CPX203>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R4.log
ECHO BP-VM-CPX204>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R4.log

ECHO Consolidating files bp-vm-cpx201\BP0121R1.log.
TYPE \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP0121R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0121R1.log
ECHO Consolidating files bp-vm-cpx202\BP0121R1.log..
TYPE \\bp-vm-cpx202\CounterPointSQL\Logs\CounterPoint_BP0121R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0121R1.log
ECHO Consolidating files bp-vm-cpx203\BP0121R1.log...
TYPE \\bp-vm-cpx203\CounterPointSQL\Logs\CounterPoint_BP0121R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0121R1.log
ECHO Consolidating files bp-vm-cpx204\BP0121R1.log....
TYPE \\bp-vm-cpx204\CounterPointSQL\Logs\CounterPoint_BP0121R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0121R1.log
ECHO Consolidating files bp-vm-cpx201\BP0121R2.log.....
TYPE \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP0121R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0121R2.log
ECHO Consolidating files bp-vm-cpx202\BP0121R2.log......
TYPE \\bp-vm-cpx202\CounterPointSQL\Logs\CounterPoint_BP0121R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0121R2.log
ECHO Consolidating files bp-vm-cpx203\BP0121R2.log.......
TYPE \\bp-vm-cpx203\CounterPointSQL\Logs\CounterPoint_BP0121R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0121R2.log
ECHO Consolidating files bp-vm-cpx204\BP0121R2.log........
TYPE \\bp-vm-cpx204\CounterPointSQL\Logs\CounterPoint_BP0121R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0121R2.log
ECHO Consolidating files bp-vm-cpx201\BP0502R1.log.........
TYPE \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP0502R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R1.log
ECHO Consolidating files bp-vm-cpx202\BP0502R1.log..........
TYPE \\bp-vm-cpx202\CounterPointSQL\Logs\CounterPoint_BP0502R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R1.log
ECHO Consolidating files bp-vm-cpx203\BP0502R1.log...........
TYPE \\bp-vm-cpx203\CounterPointSQL\Logs\CounterPoint_BP0502R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R1.log
ECHO Consolidating files bp-vm-cpx204\BP0502R1.log............
TYPE \\bp-vm-cpx204\CounterPointSQL\Logs\CounterPoint_BP0502R1.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R1.log
ECHO Consolidating files bp-vm-cpx201\BP0502R2.log.............
TYPE \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP0502R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R2.log
ECHO Consolidating files bp-vm-cpx202\BP0502R2.log..............
TYPE \\bp-vm-cpx202\CounterPointSQL\Logs\CounterPoint_BP0502R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R2.log
ECHO Consolidating files bp-vm-cpx203\BP0502R2.log...............
TYPE \\bp-vm-cpx203\CounterPointSQL\Logs\CounterPoint_BP0502R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R2.log
ECHO Consolidating files bp-vm-cpx204\BP0502R2.log................
TYPE \\bp-vm-cpx204\CounterPointSQL\Logs\CounterPoint_BP0502R2.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R2.log
ECHO Consolidating files bp-vm-cpx201\BP0502R3.log.................
TYPE \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP0502R3.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R3.log
ECHO Consolidating files bp-vm-cpx202\BP0502R3.log..................
TYPE \\bp-vm-cpx202\CounterPointSQL\Logs\CounterPoint_BP0502R3.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R3.log
ECHO Consolidating files bp-vm-cpx203\BP0502R3.log...................
TYPE \\bp-vm-cpx203\CounterPointSQL\Logs\CounterPoint_BP0502R3.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R3.log
ECHO Consolidating files bp-vm-cpx204\BP0502R3.log....................
TYPE \\bp-vm-cpx204\CounterPointSQL\Logs\CounterPoint_BP0502R3.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R3.log
ECHO Consolidating files bp-vm-cpx201\BP0502R4.log.....................
TYPE \\bp-vm-cpx201\CounterPointSQL\Logs\CounterPoint_BP0502R4.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R4.log
ECHO Consolidating files bp-vm-cpx202\BP0502R4.log......................
TYPE \\bp-vm-cpx202\CounterPointSQL\Logs\CounterPoint_BP0502R4.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R4.log
ECHO Consolidating files bp-vm-cpx203\BP0502R4.log.......................
TYPE \\bp-vm-cpx203\CounterPointSQL\Logs\CounterPoint_BP0502R4.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R4.log
ECHO Consolidating files bp-vm-cpx204\BP0502R4.log........................
TYPE \\bp-vm-cpx204\CounterPointSQL\Logs\CounterPoint_BP0502R4.log>>\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R4.log

copy \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0121R1.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0121R1.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0121R1.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0121R1.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\BP0121R1.log"
copy \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0121R2.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0121R2.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0121R2.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0121R2.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\BP0121R2.log"


copy \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R1.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R1.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R1.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R1.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\BP0502R1.log"
copy \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R2.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R2.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R2.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R2.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\BP0502R2.log"
copy \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R3.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R3.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R3.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R3.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\BP0502R3.log"
copy \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx201\BP0502R4.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx202\BP0502R4.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx203\BP0502R4.log + \\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append\bp-vm-cpx204\BP0502R4.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\BP0502R4.log"


copy \\bp-vm-cpx201\CounterPointSQL\Logs\CPLogs\*BP0121R1.log + \\bp-vm-cpx202\CounterPointSQL\Logs\CPLogs\*BP0121R1.log + \\bp-vm-cpx203\CounterPointSQL\Logs\CPLogs\*BP0121R1.log + \\bp-vm-cpx204\CounterPointSQL\Logs\CPLogs\*BP0121R1.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\CPlogs\BP0121R1.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\CPLogs\*BP0121R2.log + \\bp-vm-cpx202\CounterPointSQL\Logs\CPLogs\*BP0121R2.log + \\bp-vm-cpx203\CounterPointSQL\Logs\CPLogs\*BP0121R2.log + \\bp-vm-cpx204\CounterPointSQL\Logs\CPLogs\*BP0121R2.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\CPlogs\BP0121R2.log"


copy \\bp-vm-cpx201\CounterPointSQL\Logs\CPLogs\*BP0502R1.log + \\bp-vm-cpx202\CounterPointSQL\Logs\CPLogs\*BP0502R1.log + \\bp-vm-cpx203\CounterPointSQL\Logs\CPLogs\*BP0502R1.log + \\bp-vm-cpx204\CounterPointSQL\Logs\CPLogs\*BP0502R1.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\CPlogs\BP0502R1.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\CPLogs\*BP0502R2.log + \\bp-vm-cpx202\CounterPointSQL\Logs\CPLogs\*BP0502R2.log + \\bp-vm-cpx203\CounterPointSQL\Logs\CPLogs\*BP0502R2.log + \\bp-vm-cpx204\CounterPointSQL\Logs\CPLogs\*BP0502R2.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\CPlogs\BP0502R2.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\CPLogs\*BP0502R3.log + \\bp-vm-cpx202\CounterPointSQL\Logs\CPLogs\*BP0502R3.log + \\bp-vm-cpx203\CounterPointSQL\Logs\CPLogs\*BP0502R3.log + \\bp-vm-cpx204\CounterPointSQL\Logs\CPLogs\*BP0502R3.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\CPlogs\BP0502R3.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\CPLogs\*BP0502R4.log + \\bp-vm-cpx202\CounterPointSQL\Logs\CPLogs\*BP0502R4.log + \\bp-vm-cpx203\CounterPointSQL\Logs\CPLogs\*BP0502R4.log + \\bp-vm-cpx204\CounterPointSQL\Logs\CPLogs\*BP0502R4.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\CPlogs\BP0502R4.log"


copy \\bp-vm-cpx201\CounterPointSQL\Logs\Ingenico\*BP0121R1.log + \\bp-vm-cpx202\CounterPointSQL\Logs\Ingenico\*BP0121R1.log + \\bp-vm-cpx203\CounterPointSQL\Logs\Ingenico\*BP0121R1.log + \\bp-vm-cpx204\CounterPointSQL\Logs\Ingenico\*BP0121R1.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Ingenico\BP0121R1.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\Ingenico\*BP0121R2.log + \\bp-vm-cpx202\CounterPointSQL\Logs\Ingenico\*BP0121R2.log + \\bp-vm-cpx203\CounterPointSQL\Logs\Ingenico\*BP0121R2.log + \\bp-vm-cpx204\CounterPointSQL\Logs\Ingenico\*BP0121R2.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Ingenico\BP0121R2.log"


copy \\bp-vm-cpx201\CounterPointSQL\Logs\Ingenico\*BP0502R1.log + \\bp-vm-cpx202\CounterPointSQL\Logs\Ingenico\*BP0502R1.log + \\bp-vm-cpx203\CounterPointSQL\Logs\Ingenico\*BP0502R1.log + \\bp-vm-cpx204\CounterPointSQL\Logs\Ingenico\*BP0502R1.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Ingenico\BP0502R1.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\Ingenico\*BP0502R2.log + \\bp-vm-cpx202\CounterPointSQL\Logs\Ingenico\*BP0502R2.log + \\bp-vm-cpx203\CounterPointSQL\Logs\Ingenico\*BP0502R2.log + \\bp-vm-cpx204\CounterPointSQL\Logs\Ingenico\*BP0502R2.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Ingenico\BP0502R2.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\Ingenico\*BP0502R3.log + \\bp-vm-cpx202\CounterPointSQL\Logs\Ingenico\*BP0502R3.log + \\bp-vm-cpx203\CounterPointSQL\Logs\Ingenico\*BP0502R3.log + \\bp-vm-cpx204\CounterPointSQL\Logs\Ingenico\*BP0502R3.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Ingenico\BP0502R3.log"
copy \\bp-vm-cpx201\CounterPointSQL\Logs\Ingenico\*BP0502R4.log + \\bp-vm-cpx202\CounterPointSQL\Logs\Ingenico\*BP0502R4.log + \\bp-vm-cpx203\CounterPointSQL\Logs\Ingenico\*BP0502R4.log + \\bp-vm-cpx204\CounterPointSQL\Logs\Ingenico\*BP0502R4.log "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Ingenico\BP0502R4.log"

rmdir /s /q "\\bph-fs01\PUBLIC\NetworkOperations\CPlogs\%date%\Append"