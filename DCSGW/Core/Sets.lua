--=================================================================================
	--	GLOBALS SETS 
--=================================================================================


DCSGW_SET_AIRBASE_GLOBAL 	= SET_AIRBASE:New():FilterStart()

DCSGW_SET_AIRBASE_BLUE 		= SET_AIRBASE:New():FilterCoalitions("blue"):FilterStart()

DCSGW_SET_AIRBASE_RED 		= SET_AIRBASE:New():FilterCoalitions("red"):FilterStart()

DCSGW_SET_AIRBASE_NEUTRAL 	= SET_AIRBASE:New():FilterCoalitions("neutral"):FilterStart()



env.info( "FNC 'SET Filter GLOBAL' ---------------------------------DONE" )
env.info( "FNC 'SET' SET_AIRBASE_GLOBAL ----------------------------DONE" )
env.info( "FNC 'SET' SET_AIRBASE_BLUE ------------------------------DONE" )
env.info( "FNC 'SET' SET_AIRBASE_RED -------------------------------DONE" )
env.info( "FNC 'SET' SET_AIRBASE_NEUTRAL ---------------------------DONE" )