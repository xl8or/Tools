@echo off
SET MASTER_EDB=Zune_Client
SET TARGET_LIST=Langs.csv
for /F "tokens=1,2* delims=, " %%i in (%TARGET_LIST%) do ( 
copy %MASTER_EDB%.EDB %MASTER_EDB%_%%j.EDB
lscmd %MASTER_EDB%_%%j.EDB /TL %%i /T -p .\%%j
)