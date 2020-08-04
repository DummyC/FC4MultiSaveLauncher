set /p lastsave=<save.config

::change "C:\BackupSaves\1;\2;\3" respectively to your save backup subfolder
::change "C:\MainSaves\" to your saves folder
set mainsave=C:\MainSaves
set backupsave1=C:\BackupSaves\1
set backupsave2=C:\BackupSaves\2
set backupsave3=C:\BackupSaves\3

if %lastsave%==1 (goto backup_1) else continue
if %lastsave%==2 (goto backup_2) else continue
if %lastsave%==3 (goto backup_3) else exit

::in my case the batch files are in the main saves directory so specifying the files is necessary
::so if you're annoyed by that, replace all copy command with the command below
::for backup_1
::xcopy /y %backupsave1% %mainsave% /i
::for backup_2
::xcopy /y %backupsave2% %mainsave% /i
::for backup_3
::xcopy /y %backupsave3% %mainsave% /i

:backup_1
copy /y %mainsave%\1.save %backupsave1%
copy /y %mainsave%\2.save %backupsave1%
goto exit

:backup_2
copy /y %mainsave%\1.save %backupsave2%
copy /y %mainsave%\2.save %backupsave2%
goto exit

:backup_3
copy /y %mainsave%\1.save %backupsave3%
copy /y %mainsave%\2.save %backupsave3%
goto exit

:exit
exit