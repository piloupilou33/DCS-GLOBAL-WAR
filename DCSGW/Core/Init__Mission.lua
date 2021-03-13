--=================================================================================
--=================================================================================
--
-- Initialisation for Mission DCSGW
--
--=================================================================================
--=================================================================================
env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] START - MISSION_Init  " )
env.info( "-------------------------------------------------------------" )
--=================================================================================

File_Mission_Running = path_scripts.."Mission_Running.lua"

-- Si le fichier Mission_Running.lua n'existe pas, prendre tous les paramÃ¨tres pour les inscrire. 
-- Si il existe, on load les paramÃ¨tres Ã  partir des fichiers de sauvegarde par la suite. 

THEATRE = env.mission.theatre

	if file_exists( File_Mission_Running ) then
		assert(loadfile( File_Mission_Running ))()
	else 
		assert(loadfile( path_scripts .. "Config_Mission.lua" ))()
	end


AIRBASE_RED_MAIN    = nil
AIRBASE_BLUE_MAIN   = nil

-- Definition des Main Airbase pour les camps RED & BLUE
--------------------------------------------------------
function DCSGW_Define_Main_Airbases( Airbase )
  local MAIN_Airbase_Name        = Airbase:GetName()            -- return "string"
  local MAIN_Airbase_ID          = Airbase:GetID()              -- return number
  local MAIN_Airbase_Coalition   = Airbase:GetCoalitionName()   -- return "string"
  
  if MAIN_Airbase_Coalition == "Red" then
    AIRBASE_RED_MAIN    = MAIN_Airbase_Name
    env.info("AIRBASE : "..AIRBASE_RED_MAIN.." définie en tant que Main Airbase pour la Coalition : ".. MAIN_Airbase_Coalition)
  elseif MAIN_Airbase_Coalition == "Blue" then
    AIRBASE_BLUE_MAIN   = MAIN_Airbase_Name
    env.info("AIRBASE : "..AIRBASE_BLUE_MAIN.." définie en tant que Main Airbase pour la Coalition : ".. MAIN_Airbase_Coalition)
  elseif MAIN_Airbase_Coalition == "Neutral" then 
    -- nothing
  end
--  env.info("AIRBASE : "..MAIN_Airbase_Name.." définie en tant que Main Airbase pour la Coalition : ".. MAIN_Airbase_Coalition)
  
  return AIRBASE_BLUE_MAIN, AIRBASE_RED_MAIN
end

MainAirbase = SET_AIRBASE:New():FilterOnce()
MainAirbase:ForEachAirbase( DCSGW_Define_Main_Airbases )
--end Definition Main Airbases
--------------------------------------------------------

AIRBASE_BLUE_Captured     = {}
AIRBASE_RED_Captured      = {} 
		
AIRBASE_BLUE_Aerial_logistic	= {}
AIRBASE_BLUE_Ground_logistic	= {}
AIRBASE_RED_Aerial_logistic 	= {}
AIRBASE_RED_Ground_logistic 	= {}