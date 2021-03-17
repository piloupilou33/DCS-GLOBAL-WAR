
: edit below this to point to where your python exe is
SET PYTHON_EXE="C:\Users\pilou\AppData\Local\Programs\Python\Python38\python.exe"

: set this to where your 7z.exe is installed
SET zip="C:\Program Files\7-Zip\7z.exe"

: where you store your mission miz files
SET MISSION_PATH=C:\Users\pilou\Desktop\tttt\

: mission name minus the file extension
SET MISSION_NAME=BEAR_Training_AA_AG_V4

SET MISSION="%MISSION_PATH%%MISSION_NAME%.miz"

: path and name of weather python script
SET PYTHON_SCRIPT="T:\03 - Jeux\02 - dcs\06 - script\DCS-GLOBAL-WAR\dcs\ModificationPositionPA\main.py"

SET PYTHON_PATH=T:\03 - Jeux\02 - dcs\06 - script\DCS-GLOBAL-WAR\dcs\ModificationPositionPA\

SET ANCIENNE_POSITION="T:\03 - Jeux\02 - dcs\06 - script\DCS-GLOBAL-WAR\dcs\ModificationPositionPA\mission"

SET NOUVELLE_POSITION="C:\Users\pilou\Desktop\tttt\"


cd /D %MISSION_PATH%

: rename .miz to .zip because 7z don't like miz file extension
ren %MISSION_NAME%.miz %MISSION_NAME%.zip

%zip% x -y %MISSION_NAME%.zip mission

cd /D %PYTHON_PATH%

pipenv install

pipenv run python %PYTHON_SCRIPT% runserver

ren output_lua mission

MOVE /y %ANCIENNE_POSITION% %NOUVELLE_POSITION%

cd /D %MISSION_PATH%

%zip% a -tzip %MISSION_NAME%.zip mission -mx9 

ren %MISSION_NAME%.zip %MISSION_NAME%.miz 

DEL /F mission







