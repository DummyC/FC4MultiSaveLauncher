set /p lastsave=<save.config

::change "C:\BackupSaves\1;\2;\3" respectively to your save backup subfolder
::change "C:\MainSaves\" to your saves folder
set mainsave=C\MainSaves
set backupsave1=C:\BackupSaves\1
set backupsave1=C:\BackupSaves\2
set backupsave1=C:\BackupSaves\3

if %lastsave%==1 (goto restore_1) else continue
if %lastsave%==2 (goto restore_2) else continue
if %lastsave%==3 (goto restore_3) else exit

:restore_1
xcopy /y %backupsave1% %mainsave% /i
goto exit

:restore_2
xcopy /y %backupsave1% %mainsave% /i
goto exit

:restore_3
xcopy /y %backupsave1% %mainsave% /i
goto exit

:exit
exit