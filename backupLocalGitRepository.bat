::备份git库
@echo ******************
@echo ** start backup **
@echo ******************
@set serverURL=gitadmin@192.168.0.105:/home/gitadmin
@set targetDir=C:\Users\duanyh\myDocumentsLenovo\gitRepbackup
@for /F %%i in (dirList.txt) DO @echo ** backup %%i ** && @scp -r %serverURL%/%%i %targetDir%/%%i >> backup.log
@echo *******************
@echo ** finish backup **
@echo *******************
@pause