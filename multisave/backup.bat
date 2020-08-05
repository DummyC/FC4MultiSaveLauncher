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
