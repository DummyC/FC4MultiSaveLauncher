@echo off
::change "C:\MainGame\FarCry4\bin" to where the game's exe is located (FarCry4.exe)
set maingame=C:\MainGame\FarCry4\bin

::aesthetics purposes (delete these if you don't want them)
echo  _____     ______    __  __    
echo /\  __-.  /\  ___\  /\_\_\_\   
echo \ \ \/\ \ \ \ \____ \/_/\_\/_  
echo  \ \____-  \ \_____\  /\_\/\_\ 
echo   \/____/   \/_____/  \/_/\/_/ 
echo  Far Cry 4 Multisave Launcher 
echo ------------------------------

::location of the backup.bat, restore.bat and save.config
cd multisave

set /p lastsave=<save.config
start backup.bat

echo Last Save: %lastsave%
set /p selectedsave="Select Save to Load(1-3): "

::i dont know a command to replace all texts in a file
fart -q save.config 1 %selectedsave%
fart -q save.config 2 %selectedsave%
fart -q save.config 3 %selectedsave%

cls

::aesthetics purposes (delete these if you don't want them)
echo  _____     ______    __  __    
echo /\  __-.  /\  ___\  /\_\_\_\   
echo \ \ \/\ \ \ \ \____ \/_/\_\/_  
echo  \ \____-  \ \_____\  /\_\/\_\ 
echo   \/____/   \/_____/  \/_/\/_/ 
echo  Far Cry 4 Multisave Launcher 
echo ------------------------------

start restore.bat

pause >nul|(echo "Press any key to start Far Cry 4...")

cd %maingame%
::remove -skipintro if you want intro
start FarCry4.exe -skipintro

timeout 2 >nul
exit