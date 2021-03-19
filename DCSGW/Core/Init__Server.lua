--=================================================================================
--=================================================================================
--
-- Initialisation for Server 
--
--=================================================================================
--=================================================================================
--=================================================================================
env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] START - SERVER_Init  " )
env.info( "-------------------------------------------------------------" )
--=================================================================================
-- LOAD Core
-----------------------------------------------------------------------------------------------------
assert(loadfile( path_scripts.."Core\\Moose_2.5.3.lua"      ))() -- Moose vers. 2.5.3

-- LOAD Function
-----------------------------------------------------------------------------------------------------
assert(loadfile( path_scripts.."Functions\\FNC_Saving.lua"  ))() -- 
assert(loadfile( path_scripts.."Functions\\FNC_Utils.lua"   ))() --
assert(loadfile( path_scripts.."Functions\\FNC_Marker.lua"  ))() --

-- Fnc Marker


-- LOAD Init__Mission.lua
-----------------------------------------------------------------------------------------------------
assert(loadfile( path_scripts.."Core\\Init__Mission.lua"   ))() --


-- LOAD MISSION 
-----------------------------------------------------------------------------------------------------

-- Turn Increment
assert(loadfile( path_scripts.."Core\\DCSGW_Turn_Time.lua"   ))() --
-- Saving System
assert(loadfile( path_scripts.."Core\\DCSGW_Saving_System.lua"   ))() --
-- CA Menu System
assert(loadfile( path_scripts.."Core\\DCSGW_Menu_CA.lua"   ))() --

-- Air Menu System

--=================================================================================
env.info( "-------------------------------------------------------------" )
env.info( "[[[[   INFOS SERVEUR   ]]]] END - SERVER_Init  " )
env.info( "-------------------------------------------------------------" )
--=================================================================================