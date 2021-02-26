env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] START - MISSION_Init  " )
env.info( "-------------------------------------------------------------" )
--=================================================================================



File_Mission_Running = path_scripts.."Mission_Running.lua"

-- Si le fichier Mission_Running.lua n'existe pas, prendre tous les paramètres pour les inscrire. 
-- Si il existe, on load les paramètres à partir des fichiers de sauvegarde par la suite. 

THEATRE = env.mission.theatre

	if file_exists( File_Mission_Running ) then
		assert(loadfile( File_Mission_Running ))()
	else 
		assert(loadfile( path_scripts .. "Config_Mission.lua" ))()
	end

AIRBASE_BLUE_MAIN   =	"To define"
AIRBASE_RED_MAIN    = 	"To define"	

AIRBASE_BLUE_Captured     = {}
AIRBASE_RED_Captured      = {} 
		
AIRBASE_BLUE_Aerial_logistic	= {}
AIRBASE_BLUE_Ground_logistic	= {}
AIRBASE_RED_Aerial_logistic 	= {}
AIRBASE_RED_Ground_logistic 	= {}