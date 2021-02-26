env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] START - CONFIG_MISSION.LUA --" )
env.info( "-------------------------------------------------------------" )
--=================================================================================
-- PARAMETERS MISSION --
--================================================================================= 

DCSGW_Saving_Folder_Global		= path_scripts.."Saves\\"
DCSGW_Saving_Folder_Airboss	 	= path_scripts.."Saves\\AirbossData\\"
DCSGW_Saving_Folder_Ground	 	= path_scripts.."Saves\\GroundSave\\"
DCSGW_Saving_Folder_Static	 	= path_scripts.."Saves\\StaticSave\\"
DCSGW_Saving_Folder_Player	 	= path_scripts.."Saves\\PlayerSave\\"

-- ACTIVITY
--================================================================================= 
DCSGW_SSB_Activity          = true
DCSGW_Airboss_Activity      = true
DCSGW_ATIS_Activity         = true

DCSGW_AutoSaving_Activity   = true

-- MAIN AIRBASE
--================================================================================= 

AIRBASE_BLUE_Aerial_logistic_max_nb     = 1
AIRBASE_BLUE_Ground_logistic_max_nb     = 2
AIRBASE_RED_Aerial_logistic_max_nb      = 1
AIRBASE_RED_Ground_logistic_max_nb      = 2


-- CAMPS POINTS
--================================================================================= 
POINTS_Solde_BLUE     = 100000 
POINTS_Solde_RED      = 100000


-- STOCK WAREHOUSES
--================================================================================= 
------ Parameters => {{ Type (string) , Quantity (nb) , Cost (nb) , Lift (bool) }}  

STOCK_BLUE_Vehicle_Armor_Light    = { }
STOCK_BLUE_Vehicle_Armor_Medium   = { }
STOCK_BLUE_Vehicle_Armor_Heavy    = { }
STOCK_BLUE_Vehicle_Arty           = { }
STOCK_BLUE_Vehicle_AAA            = { }
STOCK_BLUE_Vehicle_SAM_Light      = { }
STOCK_BLUE_Vehicle_SAM_Medium     = { }
STOCK_BLUE_Vehicle_SAM_Heavy      = { }
STOCK_BLUE_Vehicle_Infantery      = { }
STOCK_BLUE_Vehicle_Logistic       = { }

STOCK_BLUE_Airplane_Transport     = { }
STOCK_BLUE_Airplane_Bombard       = { }
STOCK_BLUE_Airplane_Combat        = { }

STOCK_BLUE_Helico_Combat_Light    = { }
STOCK_BLUE_Helico_Combat_Heavy    = { }
STOCK_BLUE_Helico_Transport       = { }

STOCK_BLUE_Special_Jtac           = { }
STOCK_BLUE_Ship                   = { }
STOCK_BLUE_Ressources             = { }


STOCK_RED_Vehicle_Armor_Light     = { }
STOCK_RED_Vehicle_Armor_Medium    = { }
STOCK_RED_Vehicle_Armor_Heavy     = { }
STOCK_RED_Vehicle_Arty            = { }
STOCK_RED_Vehicle_AAA             = { }
STOCK_RED_Vehicle_SAM_Light       = { }
STOCK_RED_Vehicle_SAM_Medium      = { }
STOCK_RED_Vehicle_SAM_Heavy       = { }
STOCK_RED_Vehicle_Infantery       = { }
STOCK_RED_Vehicle_Logistic        = { }

STOCK_RED_Airplane_Transport      = { }
STOCK_RED_Airplane_Bombard        = { }
STOCK_RED_Airplane_Combat         = { }

STOCK_RED_Helico_Combat_Light     = { }
STOCK_RED_Helico_Combat_Heavy     = { }
STOCK_RED_Helico_Transport        = { }

STOCK_RED_Special_Jtac            = { }
STOCK_RED_Ship                    = { }
STOCK_RED_Ressources              = { }

--================================================================================= 
env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] END - CONFIG_MISSION.LUA ----" )
env.info( "-------------------------------------------------------------" )