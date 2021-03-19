--=================================================================================
-- CONFIG MISSION DCS Global War
--
--  Author = Kinder
--  Date = 26/02/2021
--
--  Requirements : 
--
--=================================================================================

--=================================================================================
-- PARAMETERS MISSION --
--================================================================================= 

-- Admin Defines (pour accès à certaines fonctionnalités, example : Créate unité à la volée)
--================================================================================= 
DCSGW_Pseudo_Admins = { "Kinder", "Boyington" }


--[ required : variable path_scripts defined in *.miz ]
  
DCSGW_Saving_Folder_Global		= path_scripts.."Saves\\"
DCSGW_Saving_Folder_Airboss	 	= DCSGW_Saving_Folder_Global.."AirbossData\\"
DCSGW_Saving_Folder_Airbases  = DCSGW_Saving_Folder_Global.."AirbasesSave\\"
DCSGW_Saving_Folder_Ground	 	= DCSGW_Saving_Folder_Global.."GroundSave\\"
DCSGW_Saving_Folder_Static	 	= DCSGW_Saving_Folder_Global.."StaticSave\\"
DCSGW_Saving_Folder_Player	 	= DCSGW_Saving_Folder_Global.."PlayerSave\\"


-- ACTIVITY
--================================================================================= 

DCSGW_Activity_SSB          = true
DCSGW_Activity_Airboss      = true
DCSGW_Activity_ATIS         = true

DCSGW_Activity_AutoSaving   = true

-- MAIN AIRBASE
--================================================================================= 

AIRBASE_BLUE_Aerial_logistic_max_nb     = 1
AIRBASE_BLUE_Ground_logistic_max_nb     = 2
AIRBASE_RED_Aerial_logistic_max_nb      = 1
AIRBASE_RED_Ground_logistic_max_nb      = 2

-- LIMITATIONS 
--=================================================================================

DCSGW_LIMIT_Max_Tanker_Blue   = 4
DCSGW_LIMIT_Max_Tanker_Red    = 4
DCSGW_LIMIT_Max_Awacs_Blue    = 2
DCSGW_LIMIT_Max_Awacs_Red     = 2

-- INDEX Radios / TACAN
--================================================================================= 
 -- radios 
  DCSGW_Index_radio_ATIS          = 140
  DCSGW_Index_radio_TANKER        = 200
  DCSGW_Index_radio_AWACS         = 250
  DCSGW_Index_radio_CARRIER_TWR   = 120
  DCSGW_Index_radio_CARRIER_MAR   = 300
  DCSGW_Index_radio_CARRIER_LSO   = 260
 -- tacans 
  DCSGW_Index_tacan_TANKER        = 20
  DCSGW_Index_tacan_CARRIER       = 70
  DCSGW_Channel_tacan_TANKER      = "Y"
  DCSGW_Channel_tacan_CARRIER     = "X"

-- SIDE POINTS (WC = War Coins) - Pour premier lancement uniquement, pas d'influence si mission déjà en cours
--================================================================================= 
DCSGW_WC_Solde_BLUE     = 100000 
DCSGW_WC_Solde_RED      = 100000

-- Other
--================================================================================= 
DCSGW_LifeTime_Static_Ground_Inf_Destroyed  = 2   -- Nb de Turn avant suppression de la base de Saving
DCSGW_LifeTime_Static_Ground_Veh_Destroyed  = 15  -- Nb de Turn avant suppression de la base de Saving
DCSGW_LifeTime_Scenery_Destroyed            = 20  -- Nb de Turn avant suppression de la base de Saving

-- STOCK WAREHOUSES
--================================================================================= 
 
 --[ Parameters => {{ Type (string) , Quantity (nb) , Cost (nb) , Lift (bool) }} ] 
 
-- -- BLUE side
--  STOCK_BLUE_Vehicle_Armor_Light    = { }
--  STOCK_BLUE_Vehicle_Armor_Medium   = { }
--  STOCK_BLUE_Vehicle_Armor_Heavy    = { }
--  STOCK_BLUE_Vehicle_Arty           = { }
--  STOCK_BLUE_Vehicle_AAA            = { }
--  STOCK_BLUE_Vehicle_SAM_Light      = { }
--  STOCK_BLUE_Vehicle_SAM_Medium     = { }
--  STOCK_BLUE_Vehicle_SAM_Heavy      = { }
--  STOCK_BLUE_Vehicle_Infantery      = { }
--  STOCK_BLUE_Vehicle_Logistic       = { }
--  
--  STOCK_BLUE_Airplane_Transport     = { }
--  STOCK_BLUE_Airplane_Bombard       = { }
--  STOCK_BLUE_Airplane_Combat        = { }
--  
--  STOCK_BLUE_Helico_Combat_Light    = { }
--  STOCK_BLUE_Helico_Combat_Heavy    = { }
--  STOCK_BLUE_Helico_Transport       = { }
--  
--  STOCK_BLUE_Special_Jtac           = { }
--  STOCK_BLUE_Ship                   = { }
--  STOCK_BLUE_Ressources             = { }
--
-- -- RED Side
--  STOCK_RED_Vehicle_Armor_Light     = { }
--  STOCK_RED_Vehicle_Armor_Medium    = { }
--  STOCK_RED_Vehicle_Armor_Heavy     = { }
--  STOCK_RED_Vehicle_Arty            = { }
--  STOCK_RED_Vehicle_AAA             = { }
--  STOCK_RED_Vehicle_SAM_Light       = { }
--  STOCK_RED_Vehicle_SAM_Medium      = { }
--  STOCK_RED_Vehicle_SAM_Heavy       = { }
--  STOCK_RED_Vehicle_Infantery       = { }
--  STOCK_RED_Vehicle_Logistic        = { }
--  
--  STOCK_RED_Airplane_Transport      = { }
--  STOCK_RED_Airplane_Bombard        = { }
--  STOCK_RED_Airplane_Combat         = { }
--  
--  STOCK_RED_Helico_Combat_Light     = { }
--  STOCK_RED_Helico_Combat_Heavy     = { }
--  STOCK_RED_Helico_Transport        = { }
--  
--  STOCK_RED_Special_Jtac            = { }
--  STOCK_RED_Ship                    = { }
--  STOCK_RED_Ressources              = { }

--================================================================================= 

env.info("DCSGW - INFO : Config_Mission.lua ==> LOADED")