::备份git库
@echo ******************
@echo ** start backup **
@echo ******************
::@set list="repositoriesOfReports repositoriesOfCases repositoriesOfData repositoriesOfCode"
@set list="repositoriesOfReports repositoriesOfData repositoriesOfCode"
@set serverURL=gitadmin@192.168.0.105:/home/gitadmin
@for /F "delims==" %%i in (%list%) DO @echo ** backup %%i ** && @scp -r %serverURL%/%%i ./%%i >> backup.log
@echo *******************
@echo ** finish backup **
@echo *******************