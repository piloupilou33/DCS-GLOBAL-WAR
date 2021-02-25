env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] START - INIT_SAVING.LUA ---------" )
env.info( "-------------------------------------------------------------" )

--=================================================================================
-- PARAMETERS REGISTERING --
--================================================================================= 
SAVE_Data_folder = path_scripts.."Saves\\"

--=================================================================================
-- TABLE FOR REGISTERING VEHICLES TYPES --
--=================================================================================

-- Air empty tables initialisation
SAVE_Table_BLUE_Aircraft_AI			= {}
SAVE_Table_BLUE_Helicopter_AI		= {}

SAVE_Table_RED_Aircraft_AI 			= {}
SAVE_Table_RED_Helicopter_AI 		= {}

-- Ground empty tables initialisation
SAVE_Table_BLUE_Armor_AI			= {}
SAVE_Table_BLUE_AntiAir_AI			= {}
SAVE_Table_BLUE_Infantery_AI		= {}
SAVE_Table_BLUE_Sead_AI				= {}
SAVE_Table_BLUE_Ojbect_AI			= {}

SAVE_Table_RED_Armor_AI 			= {}
SAVE_Table_RED_AntiAir_AI 			= {}
SAVE_Table_RED_Infantery_AI 		= {}
SAVE_Table_RED_Sead_AI 				= {}
SAVE_Table_RED_Ojbect_AI 			= {}

SAVE_Table_BLUE_STATIC				= {}
SAVE_Table_RED_STATIC		 		= {}

-- Specifiques vehicle empty tables initialisation
SAVE_Table_BLUE_JTAC				= {}
SAVE_Table_BLUE_Tanker				= {}
SAVE_Table_BLUE_AWACS				= {}

SAVE_Table_RED_JTAC 				= {}
SAVE_Table_RED_Tanker				= {}
SAVE_Table_RED_AWACS				= {}


--=================================================================================
-- FILES FOR REGISTERING DATA --
--=================================================================================
-- only filename required 
-- example string = SAVE_Data_folder.."SAVE_File_RED_Aircraft_AI.lua"
--=================================================================================

-- Air empty files initialisation
SAVE_File_BLUE_Aircraft_AI 			= SAVE_Data_folder.."SAVE_File_BLUE_Aircraft_AI.lua"
SAVE_File_BLUE_Helicopter_AI 		= SAVE_Data_folder.."SAVE_File_BLUE_Helicopter_AI.lua"

SAVE_File_RED_Aircraft_AI			= SAVE_Data_folder.."SAVE_File_RED_Aircraft_AI.lua"
SAVE_File_RED_Helicopter_AI			= SAVE_Data_folder.."SAVE_File_RED_Helicopter_AI.lua"

-- Ground empty files initialisation
SAVE_File_BLUE_Armor_AI 			= SAVE_Data_folder.."SAVE_File_BLUE_Armor_AI.lua"
SAVE_File_BLUE_AntiAir_AI 			= SAVE_Data_folder.."SAVE_File_BLUE_AntiAir_AI.lua"
SAVE_File_BLUE_Infantery_AI 		= SAVE_Data_folder.."SAVE_File_BLUE_Infantery_AI.lua"
SAVE_File_BLUE_Sead_AI 				= SAVE_Data_folder.."SAVE_File_BLUE_Sead_AI.lua"
SAVE_File_BLUE_Ojbect_AI 			= SAVE_Data_folder.."SAVE_File_BLUE_Ojbect_AI.lua"

SAVE_File_RED_Armor_AI 				= SAVE_Data_folder.."SAVE_File_RED_Armor_AI.lua"
SAVE_File_RED_AntiAir_AI 			= SAVE_Data_folder.."SAVE_File_RED_AntiAir_AI.lua"
SAVE_File_RED_Infantery_AI 			= SAVE_Data_folder.."SAVE_File_RED_Infantery_AI.lua"
SAVE_File_RED_Sead_AI 				= SAVE_Data_folder.."SAVE_File_RED_Sead_AI.lua"
SAVE_File_RED_Ojbect_AI 			= SAVE_Data_folder.."SAVE_File_RED_Ojbect_AI.lua"

SAVE_File_BLUE_STATIC 				= SAVE_Data_folder.."SAVE_File_BLUE_STATIC.lua"
SAVE_File_RED_STATIC		 		= SAVE_Data_folder.."SAVE_File_RED_STATIC.lua"

-- Specifiques vehicle files initialisation
SAVE_File_BLUE_JTAC 				= SAVE_Data_folder.."SAVE_File_BLUE_JTAC.lua"
SAVE_File_BLUE_Tanker				= SAVE_Data_folder.."SAVE_File_BLUE_Tanker.lua"
SAVE_File_BLUE_AWACS				= SAVE_Data_folder.."SAVE_File_BLUE_AWACS.lua"

SAVE_File_RED_JTAC 					= SAVE_Data_folder.."SAVE_File_RED_JTAC.lua"
SAVE_File_RED_Tanker				= SAVE_Data_folder.."SAVE_File_RED_Tanker.lua"
SAVE_File_RED_AWACS					= SAVE_Data_folder.."SAVE_File_RED_AWACS.lua"

--=================================================================================
env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] END - INIT_SAVING.LUA -----------" )
env.info( "-------------------------------------------------------------" )