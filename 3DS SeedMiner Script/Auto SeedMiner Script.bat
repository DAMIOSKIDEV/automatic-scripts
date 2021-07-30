@echo off
echo.
echo -------------------- UPDATE PHASE --------------------
echo.
py -3 seedminer_launcher3.py update-db
color 0e
cls
::: 
:::   ____                _ __  __ _                   ____            _       _   
:::  / ___|  ___  ___  __| |  \/  (_)_ __   ___ _ __  / ___|  ___ _ __(_)_ __ | |_ 
:::  \___ \ / _ \/ _ \/ _` | |\/| | | '_ \ / _ | '__| \___ \ / __| '__| | '_ \| __|
:::   ___) |  __|  __| (_| | |  | | | | | |  __| |     ___) | (__| |  | | |_) | |_ 
:::  |____/ \___|\___|\__,_|_|  |_|_|_| |_|\___|_|    |____/ \___|_|  |_| .__/ \__|                               
:::                                                                     |_|        
:::
:::                                                                           By DAMIOSKI
:::
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
mkdir works
echo.
echo -------------------- ID0 PHASE --------------------
echo.
set /p id0=Enter ID0?: 
py -3 seedminer_launcher3.py id0 %id0%
echo.
echo -------------------- MINING PHASE --------------------
echo.
py -3 seedminer_launcher3.py gpu
echo.
echo -------------------- SORTING PHASE --------------------
echo.
mkdir works\%id0%
copy movable_part1.sed works\%id0%\movable_part1_%id0%.sed
copy movable_part2.sed works\%id0%\movable_part2_%id0%.sed
del movable_part2.sed
copy movable.sed works\%id0%\movable_%id0%.sed
del movable.sed
echo.
color 0a
echo -------------------- END OF SCRIPT --------------------
echo.
pause
