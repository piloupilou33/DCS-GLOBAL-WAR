: example launch file for DCS used with dcs_weather.py
: by havoc-company.com
: you need python 3 (and requests module for python - pip install requests in dos to install) 
: and 7z installed on server hosting PC
: you will need to edit this file to change parameters to match your install
: contact HC_Official in ED forums for any queries
: V 1.0.6 26/APR/2020
: try NOT to use paths with spaces in them, it is a PITA


: edit this to point to you dcs dedicated server exe folder
:SET DCS_PATH="C:\Eagle Dynamics\DCS World OpenBeta Server\bin\"

: edit below this to point to where your python exe is
SET PYTHON_EXE="C:\Users\Administrator\AppData\Local\Programs\Python\Python37\python.exe"


: settings for dcs_weather.py - airports weather to query
SET PRIMARY_AIRPORT=LFPO	  
SET BACKUP_AIRPORT=LFPO 
: you want to use current realtime on server ?
SET TIME_CONTROL=real

: set this to where your 7z.exe is installed
SET zip="C:\Program Files\7-Zip\7z.exe"

: where you store your mission miz files
SET MISSION_PATH=C:\Missions\

: mission name minus the file extension
SET MISSION_NAME=SandBox_Caucase_v0163

SET MISSION="%MISSION_PATH%%MISSION_NAME%.miz"

: path and name of weather python script
SET PYTHON_SCRIPT="C:\Missions\dcs_weather.py"


:SET TEST=%time:~0,1%
:SET HOUR=%time:~0,2%
:IF  "%TEST%" == " "  SET HOUR=%time:~1,1%


: this override was added so that if it is too late in the year (dark a lot in evenings) then people would get some time were it is light for a bit
: IF %HOUR% GEQ 18 SET TIME_CONTROL=6
@echo %TIME_CONTROL%


cd /D %MISSION_PATH%

%zip% e -y %MISSION_NAME%.miz mission 
%zip% e -y %MISSION_NAME%.miz theatre 


%PYTHON_EXE% %PYTHON_SCRIPT% %MISSION% %PRIMARY_AIRPORT% %BACKUP_AIRPORT% %TIME_CONTROL%


: rename .miz to .zip because 7z don't like miz file extension
ren %MISSION_NAME%.miz %MISSION_NAME%.zip

: add the updated mission to the zip file
%zip% a -tzip %MISSION_NAME%.zip mission -mx9 

: rename it back to miz
ren %MISSION_NAME%.zip %MISSION_NAME%.miz 


: cd /D %DCS_PATH%
: remember you can add extra parameters to the line below for different saved_games sub folders to use eg -w DCS.openbeta_pg
: start /D%DCS_PATH% /B dcs.exe --norender --server 

: full line example uses folder DCS.openbeta_pg for all server stuff
: start /D%DCS_PATH% /B dcs.exe --norender --server -w DCS.openbeta_pg

timeout /T 200