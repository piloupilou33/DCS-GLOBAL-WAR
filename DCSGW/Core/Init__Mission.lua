--=================================================================================
--=================================================================================
--
-- Initialisation for Mission DCSGW
--
--=================================================================================
--=================================================================================
env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] START - MISSION DCSGW Init  " )
env.info( "-------------------------------------------------------------" )
--=================================================================================



-- Si le fichier Mission_Running.lua n'existe pas, prendre tous les paramÃ¨tres pour les inscrire. 
-- Si il existe, on load les paramÃ¨tres Ã  partir des fichiers de sauvegarde par la suite. 

DCSGW_THEATRE = env.mission.theatre
DCSGW_Turn = 0

AIRBASE_RED_MAIN    = nil
AIRBASE_BLUE_MAIN   = nil

CONFIG_File_Mission_Running      = path_scripts.."Saves\\Config_Mission_Running.lua"
CONFIG_File_Mission_First_Time   = path_scripts.."Config_Mission.lua"

DCSGW_File_Ground_Units_Price               = path_scripts.."Core\\ressources\\SGW_db_units_prices.csv"
DCSGW_File_Ground_Units_Price_save          = path_scripts.."Core\\ressources\\SGW_db_units_prices.lua"

-- Definition des Main Airbase pour les camps RED & BLUE
--------------------------------------------------------
function DCSGW_Define_Main_Airbases( Airbase )
  local MAIN_Airbase_Name        = Airbase:GetName()            -- return "string"
  local MAIN_Airbase_ID          = Airbase:GetID()              -- return number
  local MAIN_Airbase_Coalition   = Airbase:GetCoalitionName()   -- return "string"
  local MAIN_Airbase_Category    = Airbase:GetCategoryName()    -- return "string"
  
  if MAIN_Airbase_Category == "Airplane" then
      if MAIN_Airbase_Coalition == "Red" then
        AIRBASE_RED_MAIN    = MAIN_Airbase_Name
        env.info("AIRBASE : "..AIRBASE_RED_MAIN.." définie en tant que Main Airbase pour la Coalition : ".. MAIN_Airbase_Coalition)
      elseif MAIN_Airbase_Coalition == "Blue" then
        AIRBASE_BLUE_MAIN   = MAIN_Airbase_Name
        env.info("AIRBASE : "..AIRBASE_BLUE_MAIN.." définie en tant que Main Airbase pour la Coalition : ".. MAIN_Airbase_Coalition)
      elseif MAIN_Airbase_Coalition == "Neutral" then 
        -- nothing
      end
  end
--  env.info("AIRBASE : "..MAIN_Airbase_Name.." définie en tant que Main Airbase pour la Coalition : ".. MAIN_Airbase_Coalition)
  return AIRBASE_BLUE_MAIN, AIRBASE_RED_MAIN
end

if not file_exists( CONFIG_File_Mission_Running ) then
  MainAirbase = SET_AIRBASE:New():FilterOnce()
  MainAirbase:ForEachAirbase( DCSGW_Define_Main_Airbases )
end

--end Definition Main Airbases
--------------------------------------------------------

function DCSGW_Config_Save()
  Saving_CONFIG = IntegratedserializeWithCycles( "DSWGW_CONFIG", DSWGW_CONFIG )
  writemission( Saving_CONFIG, CONFIG_File_Mission_Running )
end

function DCSGW_Register_Config()

  DSWGW_CONFIG                        = {}
  DSWGW_CONFIG["Theatre"]             = DCSGW_THEATRE
  DSWGW_CONFIG["Turn"]                = DCSGW_Turn
  DSWGW_CONFIG["MAIN_AIRBASE_BLUE"]   = AIRBASE_BLUE_MAIN
  DSWGW_CONFIG["MAIN_AIRBASE_RED"]    = AIRBASE_RED_MAIN
  
  DSWGW_CONFIG["WC_Manage"]                            = {}
  DSWGW_CONFIG["WC_Manage"]["WC_BLUE"]                 = {}
  DSWGW_CONFIG["WC_Manage"]["WC_RED"]                  = {}
  DSWGW_CONFIG["WC_Manage"]["WC_BLUE"]["Current"]      = DCSGW_WC_Solde_BLUE
  DSWGW_CONFIG["WC_Manage"]["WC_BLUE"]["Turn"]         = {}
  DSWGW_CONFIG["WC_Manage"]["WC_RED"]["Current"]       = DCSGW_WC_Solde_RED
  DSWGW_CONFIG["WC_Manage"]["WC_RED"]["Turn"]          = {}
  
  DSWGW_CONFIG["ID"]                      = {}
  DSWGW_CONFIG["ID"]["ID_Ground"]         = 1
  DSWGW_CONFIG["ID"]["ID_Air"]            = 1
  DSWGW_CONFIG["ID"]["ID_Ship"]           = 1
  DSWGW_CONFIG["ID"]["ID_Ground_Units"]   = 1
  DSWGW_CONFIG["ID"]["ID_Air_Units"]      = 1
  DSWGW_CONFIG["ID"]["ID_Ship_Units"]     = 1
end

if file_exists( CONFIG_File_Mission_Running ) then
  DSWGW_CONFIG = {}
  assert(loadfile(path_scripts .. "Config_Mission.lua" ))()
  dofile ( CONFIG_File_Mission_Running )
  DSWGW_CONFIG = DSWGW_CONFIG
else 
  -- Lectures des paramètres pour un premier lancement
  dofile( CONFIG_File_Mission_First_Time )
  DCSGW_Register_Config()
  DCSGW_Config_Save()
end

if file_exists( DCSGW_File_Ground_Units_Price ) then
  CSVReturn = CSVread( DCSGW_File_Ground_Units_Price )
  Saving_Ground_prices = IntegratedserializeWithCycles( "Prices_Ground_Units", CSVReturn )
  writemission( Saving_Ground_prices, DCSGW_File_Ground_Units_Price_save )
end

AIRBASE_BLUE_Captured     = {}
AIRBASE_RED_Captured      = {} 
		
AIRBASE_BLUE_Aerial_logistic	= {}
AIRBASE_BLUE_Ground_logistic	= {}
AIRBASE_RED_Aerial_logistic 	= {}
AIRBASE_RED_Ground_logistic 	= {}

--=================================================================================
env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] END - MISSION DCSGW Init  " )
env.info( "-------------------------------------------------------------" )
--=================================================================================