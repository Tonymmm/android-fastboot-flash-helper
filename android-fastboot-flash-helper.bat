@echo off
echo Beginning flash...

:: Bootloader
set /p bootloader="Bootloader: "
echo fastboot flash bootloader %bootloader%
pause
fastboot flash bootloader %bootloader%

:: Reboot bootloader
echo fastboot reboot-bootloader
pause
fastboot reboot-bootloader

:: Radio
set /p radio="Radio: "
echo fastboot flash radio %radio%
pause
fastboot flash radio %radio%

:: Reboot bootloader
echo fastboot reboot-bootloader
fastboot reboot-bootloader

:: Boot
set /p boot="Boot: "
echo fastboot flash boot %boot%
pause
fastboot flash boot %boot%

:: Erase cache
echo fastboot erase cache
pause
fastboot erase cache

:: Recovery
set /p recovery="Recovery: "
echo fastboot flash recovery %recovery%
pause
fastboot flash recovery %recovery%

:: System
set /p system="System: "
echo fastboot flash system %system%
pause
fastboot flash system %system%

:: Vendor
set /p vendor="Vendor: "
echo fastboot flash vendor %vendor%
pause
fastboot flash vendor %vendor%

:: Reboot
echo fastboot reboot
pause
fastboot reboot

