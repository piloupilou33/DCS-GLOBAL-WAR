env.info( "DCSGW -- Init Test ---------------------------------- Loading..." )

-- PERMANENT Loading
-----------------------
-- Loading MOOSE Script 
assert(loadfile(path_scripts .. "Core\\Moose_2.5.3.lua"))()
------------------------------------------------------------------------
env.info( "DCSGW -- Saving ---------------------------------- Loading ---" )
assert(loadfile(path_scripts .. "Testing\\Saving\\FNC_Saving.lua"))()
env.info( "DCSGW -- Saving ---------------------------------- Loaded ---" )
--assert(loadfile(path_scripts .. "Functions\\FNC_Create_Groups.lua"))()

env.info( "DCSGW -- testing ---------------------------------- START ---" )
-- TESTING Loading
-----------------------
--assert(loadfile(path_scripts .. "Testing\\Saving\\Ground_loading.lua"))()

--assert(loadfile(path_scripts .. "Testing\\Saving\\Ground_saving.lua"))()
assert(loadfile(path_scripts .. "Testing\\Saving\\Saving_System.lua"))()

env.info( "DCSGW -- testing ---------------------------------- DONE ---" )

env.info( "DCSGW -- Init Test ---------------------------------- Loaded ---" )