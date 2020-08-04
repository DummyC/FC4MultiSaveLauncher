set /p lastsave=<save.config

if %lastsave%==1 (goto restore_1) else continue
if %lastsave%==2 (goto restore_2) else continue
if %lastsave%==3 (goto restore_3) else exit

::change "C:\ExampleDirectory\1\;\2\;\3\" respectively to your save backup subfolder
::change "C:\MainSaves\" to your saves folder
:restore_1
xcopy /y "C:\ExampleDirectory\1\" "C:\MainSaves\" /i
goto exit

:restore_2
xcopy /y "C:\ExampleDirectory\2\" "C:\MainSaves\" /i
goto exit

:restore_3
xcopy /y "C:\ExampleDirectory\3\" "C:\MainSaves\" /i
goto exit

:exit
exit