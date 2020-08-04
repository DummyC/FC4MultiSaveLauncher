set /p lastsave=<save.config

if %lastsave%==1 (goto backup_1) else continue
if %lastsave%==2 (goto backup_2) else continue
if %lastsave%==3 (goto backup_3) else exit

::change "C:\ExampleDirectory\1\;\2\;\3\" respectively to your save backup subfolder
::change "C:\MainSaves\" to your saves folder, leave out 1.save and 2.save in if your case is the same as mine (which i explained is below)
::in my case the batch files are in the main saves directory so specifying the files is necessary
::so if you're annoyed by that, replace all copy command with the command below
::xcopy /y "C:\Games\Far Cry 4\bin\save3dmgames\1\" "C:\Games\Far Cry 4\bin\save3dmgames\" /i

:backup_1
copy /y "C:\MainSaves\1.save" "C:\ExampleDirectory\1\"
copy /y "C:\MainSaves\2.save" "C:\ExampleDirectory\1\"
goto exit

:backup_2
copy /y "C:\MainSaves\1.save" "C:\ExampleDirectory\2\"
copy /y "C:\MainSaves\2.save" "C:\ExampleDirectory\2\"
goto exit

:backup_3
copy /y "C:\MainSaves\1.save" "C:\ExampleDirectory\3\"
copy /y "C:\MainSaves\2.save" "C:\ExampleDirectory\3\"
goto exit

:exit
exit