set /p lastsave=<save.config

::change "C:\BackupSaves\1;\2;\3" respectively to your save backup subfolder
::change "C:\MainSaves\" to your saves folder
set mainsave=C:\MainSaves
set backupsave1=C:\BackupSaves\1
set backupsave2=C:\BackupSaves\2
set backupsave3=C:\BackupSaves\3

if %lastsave%==1 (goto backup_1)
if %lastsave%==2 (goto backup_2)
if %lastsave%==3 (goto backup_3) else exit

::in my case the batch files are in the main saves directory so specifying the files is necessary
::so if you're annoyed by that, replace all copy command with the command below
::for backup_1
::xcopy "%backupsave1%" "%mainsave%" /y /i
::for backup_2
::xcopy "%backupsave2%" "%mainsave%" /y /i
::for backup_3
::xcopy "%backupsave3%" "%mainsave%" /y /i

:backup_1
xcopy "%mainsave%\*.save" "%backupsave1%" /y /i
goto exit

:backup_2
xcopy "%mainsave%\*.save" "%backupsave2%" /y /i
goto exit

:backup_3
xcopy "%mainsave%\*.save" "%backupsave3%" /y /i
goto exit

:exit
exit
