--=================================================================================
-- WELCOME PLAYER
--=================================================================================

TABLE_LIST_MODULES = { 	"FA-18C_hornet", 
						"M-2000C",
						"F-16C_50",
						"f-14b",
						"AJS37",
						"AV8BNA",
						"UH-1H", 
						"SA342L",
						"SA342M",
						"SA342Minigun",
						"SA342Mistral"
						}

TIME_BOUCLE = 60 --Sec

MISSION_THEATRE = env.mission.theatre
MISSION_STARTTIME = UTILS.SecondsToClock( env.mission.start_time, true )
MISSION_VERSION = env.mission.version

MISSION_year=tostring(env.mission.date.Year)
MISSION_month=tostring(env.mission.date.Month)
MISSION_day=tostring(env.mission.date.Day)

PlayerConnectEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
PlayerConnectEventHandler:HandleEvent( EVENTS.Birth ) -- Makes it trigger by spawns/connects
function PlayerConnectEventHandler:OnEventBirth( EventData )
  BASE:F({EventData})
  
  if EventData.IniPlayerName ~= nil then -- Check if birth unit has a player name
  
	local TABLE_Player = {}
	ID_Suscrib_Player	= 0
	nb_Player = 0
	ID_Suscrib_Player = ID_Suscrib_Player + 1
	nb_Player = nb_Player + 1
	
-- Unit.Category = {
  -- AIRPLANE, 		0
  -- HELICOPTER, 	1
  -- GROUND_UNIT, 	2
  -- SHIP, 			3
  -- STRUCTURE 		4
-- }
	
	local Unit 				= 	EventData.IniUnit			-- 	DCS#Unit
	local UnitName			=	EventData.IniUnitName		-- 	Unit name : unit#001
	local PlayerName 		= 	EventData.IniPlayerName		--	Player Name in game
	local PlayerGroupName	= 	EventData.IniGroupName 		--	Group player name
	local PlayerCoalition 	= 	EventData.IniCoalition		--	Player coalition 1- 2-
	local PlayerCategory	=	EventData.IniObjectCategory	-- 	Player category 1- Object.Category.UNIT
	local PlayerPlace		=	EventData.PlaceName
	local PlayerTypeName	=	EventData.IniTypeName		-- Name of aircraft or heli or ..
	local PlayerType		= 	EventData.IniCategory		-- AIRPLANE = 0	/ HELICOPTER = 1
	
	local PlayerID			= 	ID_Suscrib_Player 
	local ClientPlayer 		= 	CLIENT:FindByName( UnitName )
	local fichier_sauvegarde	=	path_scripts.."Saves\\players\\SavePlayer-"..PlayerName..".lua"
	
	local dateNow = os.date("%d/%m/%Y")	
	local Nb_Connexion 			= 1 
	local Nb_Vols				= 0
	local Nb_H_Vols				= 0
	local Nb_Accidents			= 0
	local Nb_Ejection			= 0	
	local Nb_Takeoff			= 0
	local Nb_Landing			= 0
	local H_Temps_dernier_vol	= 0
	local H_Cumul				= 0
	local H_per_type			= 0 
	local Vol_Actif				= 0	
	
	local times_restart_concat = table.concat( SANDBOX_RESTART_Hours, "h - ")
	 
	
	
	
--------------------------------------------------	
-- Load or create Player	
--------------------------------------------------	
	
	if file_exists( fichier_sauvegarde ) then	
		local PlayerData = table.load(	fichier_sauvegarde )
		
			Nb_Connexion 		= PlayerData.Nb_Connexion + 1 
			Nb_Vols 			= PlayerData.Nb_Vol
			Nb_Takeoff 			= PlayerData.Nb_Takeoff
			Nb_Landing 			= PlayerData.Nb_Landing
			Nb_Accidents 		= PlayerData.Nb_Accidents
			Nb_Ejection			= PlayerData.Nb_Ejection
			H_Temps_dernier_vol	= PlayerData.H_Temps_dernier_vol
			H_Cumul				= PlayerData.H_Cumul
			H_per_type			= PlayerData["Appareil"][PlayerTypeName]
			
		--  init Heures appareils 
		
			TABLE_Player["Appareil"]= {}
			TABLE_Player["Appareil"]["FA-18C_hornet"]				= PlayerData["Appareil"]["FA-18C_hornet"]
			TABLE_Player["Appareil"]["UH-1H"]						= PlayerData["Appareil"]["UH-1H"]
			TABLE_Player["Appareil"]["M-2000C"]						= PlayerData["Appareil"]["M-2000C"]
			TABLE_Player["Appareil"]["F-16C_50"]					= PlayerData["Appareil"]["F-16C_50"]
			TABLE_Player["Appareil"]["f-14b"]						= PlayerData["Appareil"]["f-14b"]
			TABLE_Player["Appareil"]["SA342L"]						= PlayerData["Appareil"]["SA342L"]
			TABLE_Player["Appareil"]["SA342M"]						= PlayerData["Appareil"]["SA342M"]
			TABLE_Player["Appareil"]["SA342Minigun"]				= PlayerData["Appareil"]["SA342Minigun"]
			TABLE_Player["Appareil"]["SA342Mistral"]				= PlayerData["Appareil"]["SA342Mistral"]
			TABLE_Player["Appareil"]["AJS37"]						= PlayerData["Appareil"]["AJS37"]
			TABLE_Player["Appareil"]["AV8BNA"]						= PlayerData["Appareil"]["AV8BNA"]
						
			local Cumul_h_Vol_hours, Cumul_h_Vol_mins, Cumul_h_Vol_secs = FNC_SecondsToClock( H_Cumul )
			local Cumul_h_Vol_appareil_hours, Cumul_h_Vol_appareil_mins, Cumul_h_Vol_appareil_secs = FNC_SecondsToClock( H_per_type )
			
			MESSAGE:New("Bienvenue à bord de votre "..PlayerTypeName.." "..tostring( PlayerName ).." ! \n\n".. 
				"Vous êtes sur le théatre d'opération : "..MISSION_THEATRE.. "\n"..
				"Nous sommes le: "..dateNow.." \n"..
				"Il est : ".. MISSION_STARTTIME.." \n\n"..
				"------------------------------\n\n"..
				"# Votre nombre de connexion à la mission : "..Nb_Connexion.." \n"..
				"# Votre temps de vol total est de : "..Cumul_h_Vol_hours.."h "..Cumul_h_Vol_mins.."min".."\n\n".. 
				"# Votre temps de vol sur "..PlayerTypeName.." : "..Cumul_h_Vol_appareil_hours.."h "..Cumul_h_Vol_appareil_mins.."min".."\n\n"..
				"# Votre nombre d'accident s'élève à : ".. Nb_Accidents.."\n"..
				"# Vous vous êtes éjecté : "..Nb_Ejection.." fois \n\n"..
				"Informations serveur : \n\n"..
				"- Restart à : "..times_restart_concat.."h en heure FR \n\n ------------------------------"
				,20, MISSION_NAME ):ToClient( ClientPlayer )
	else			
			MESSAGE:New("Bienvenue à bord de votre "..PlayerTypeName.." "..tostring(PlayerName).." ! \n\n"..
				"Vous êtes sur le théatre d'opération : "..MISSION_THEATRE.. "\n"..
				"Nous sommes le: "..dateNow.. "\n"..
				"Il est : ".. MISSION_STARTTIME.." \n\n"..
				"------------------------------\n\n"..
				" C'est votre première connexion à cette mission, voici quelques informations : \n"..
				"La mission Caucase dispose de missions type : \n"..
				"- Recherche de convoi \n"..
				"\n"..
				"Vous pouvez également préparer votre mission avec une logistique : \n"..
				"- Tanker KC135MPRS / KC135 , que vous pouvez envoyer là où vous le souhaitez \n"..
				"- AWACS , que vous pouvez envoyer là où vous le souhaitez \n"..
				"\n"..
				"Vous disposez également de l'appontage suivi par Airboss Script \n"..
				"\n"..
				"Pour plus d'information, rendez vous dans le kneeboard ou par l'intermédiaire du menu de communication F10/Autres... \n"..
				"\n"..
				"Informations serveur : \n"..
				"- Restart à : "..times_restart_concat.."h en heure FR \n\n ------------------------------"
				,70, MISSION_NAME ):ToClient( ClientPlayer )
	
				-- First time : init Heures appareils 					
				-- TABLE_Player["FA-18C_hornet"]				= H_per_type
				-- TABLE_Player["UH-1H"]						= H_per_type
				-- TABLE_Player["M-2000C"]						= H_per_type
				-- TABLE_Player["F-16C_50"]					= H_per_type
				-- TABLE_Player["f-14b"]						= H_per_type
				-- TABLE_Player["SA342L"]						= H_per_type
				-- TABLE_Player["SA342M"]						= H_per_type
				-- TABLE_Player["SA342Minigun"]				= H_per_type
				-- TABLE_Player["SA342Mistral"]				= H_per_type
				-- TABLE_Player["AJS37"]						= H_per_type
				-- TABLE_Player["AV8BNA"]						= H_per_type
				TABLE_Player["Appareil"] = {}
				TABLE_Player["Appareil"]["FA-18C_hornet"]				= H_per_type
				TABLE_Player["Appareil"]["UH-1H"]						= H_per_type
				TABLE_Player["Appareil"]["M-2000C"]						= H_per_type
				TABLE_Player["Appareil"]["F-16C_50"]					= H_per_type
				TABLE_Player["Appareil"]["f-14b"]						= H_per_type
				TABLE_Player["Appareil"]["SA342L"]						= H_per_type
				TABLE_Player["Appareil"]["SA342M"]						= H_per_type
				TABLE_Player["Appareil"]["SA342Minigun"]				= H_per_type
				TABLE_Player["Appareil"]["SA342Mistral"]				= H_per_type
				TABLE_Player["Appareil"]["AJS37"]						= H_per_type
				TABLE_Player["Appareil"]["AV8BNA"]						= H_per_type
	
	end	

	TABLE_Player["PlayerID"]					= PlayerID
	TABLE_Player["Date_derniere_connexion"]		= dateNow
	TABLE_Player["PlayerName"]					= PlayerName
	TABLE_Player["UnitName"]					= UnitName
	TABLE_Player["GroupName"]					= PlayerGroupName
	TABLE_Player["Category"]					= PlayerCategory
	TABLE_Player["Coalition"]					= PlayerCoalition
	TABLE_Player["Place"]						= PlayerPlace
	TABLE_Player["Type"]						= PlayerType
	TABLE_Player["TypeName"]					= PlayerTypeName
	TABLE_Player["Nb_Connexion"]				= Nb_Connexion
	
	TABLE_Player["Nb_Takeoff"]					= Nb_Takeoff
	TABLE_Player["Nb_Landing"]					= Nb_Landing
	TABLE_Player["Nb_Vols"]						= Nb_Vols
	TABLE_Player["Nb_Accidents"]				= Nb_Accidents
	TABLE_Player["Nb_Ejection"]					= Nb_Ejection
	
	TABLE_Player["H_Temps_dernier_vol"]			= H_Temps_dernier_vol
	TABLE_Player["H_Cumul"]						= H_Cumul	
	TABLE_Player["Appareil"][PlayerTypeName]	= H_per_type
	
	TABLE_Player["Vol_Actif"]					= 0
	TABLE_Player["H_Debut"]						= 0
	TABLE_Player["H_Fin"]						= 0
	
	

	
	
	--Sauvegarde du statut du player
	table.save(	TABLE_Player , fichier_sauvegarde)
	
-------------------------------------------------------------------------------------------
----EVENT EngineStartup
-------------------------------------------------------------------------------------------	
	PlayerEngineStartupEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerEngineStartupEventHandler:HandleEvent( EVENTS.EngineStartup ) 
	function PlayerEngineStartupEventHandler:OnEventEngineStartup( EventData )
	  BASE:F({EventData})
		if EventData.IniPlayerName ~= nil then 

		local UnitName		=	EventData.IniUnitName	-- unit#001
		local PlayerName 	= 	EventData.IniPlayerName	--Player Name in game
		local Airbase 		= 	EventData.PlaceName
		local ClientPlayer 	= 	CLIENT:FindByName( UnitName )
		
		if Airbase == nil then Airbase = "Sol"	end				
			MESSAGE:New("Bonjour "..tostring(PlayerName).." ! Mise en route approuvée."
					,10,Airbase.." Control "):ToClient( ClientPlayer )
		
		end
	end
-------------------------------------------------------------------------------------------		
----EVENT EngineShutdown
-------------------------------------------------------------------------------------------	
	PlayerEngineShutdownEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerEngineShutdownEventHandler:HandleEvent( EVENTS.EngineShutdown ) 
	function PlayerEngineShutdownEventHandler:OnEventEngineShutdown( EventData )
	  BASE:F({EventData})
		if EventData.IniPlayerName ~= nil then 

		local UnitName		=	EventData.IniUnitName	-- unit#001
		local PlayerName 	= 	EventData.IniPlayerName	--Player Name in game
		local Airbase 		= 	EventData.PlaceName
		local ClientPlayer 	= 	CLIENT:FindByName( UnitName )
		
		local PlayerData = table.load(	fichier_sauvegarde )
		local Vol_Actif = PlayerData.Vol_Actif
		
			if Airbase == nil then Airbase = "Sol"	end				
				MESSAGE:New("Goodbye "..tostring(PlayerName).." ! "
						,10,Airbase.." Control "):ToClient( ClientPlayer )		
			
			
			if Vol_Actif == 1 then
				TABLE_Player["Nb_Vols"]						= Nb_Vols + 1
				TABLE_Player["Vol_Actif"]					= 0
				table.save(	TABLE_Player , fichier_sauvegarde)
			else
				MESSAGE:New("Le vol n'est pas enregistré car il n'était pas actif pour : "..tostring(PlayerName).." ! "
							,10,Airbase.." Control "):ToClient( ClientPlayer )
			end

		end
	end
-------------------------------------------------------------------------------------------		
----EVENT Takeoff
-------------------------------------------------------------------------------------------	
	PlayerTakeoffEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerTakeoffEventHandler:HandleEvent( EVENTS.Takeoff ) 
	function PlayerTakeoffEventHandler:OnEventTakeoff( EventData )
	  BASE:F({EventData})
		if EventData.IniPlayerName ~= nil then 

		local UnitName			=	EventData.IniUnitName	-- unit#001
		local PlayerName 		= 	EventData.IniPlayerName	--Player Name in game
		local Airbase 			= 	EventData.PlaceName
		local ClientPlayer 		= 	CLIENT:FindByName( UnitName )
		local Vol_Actif			=	1

		
			if Airbase == nil then Airbase = "Sol"	end	
			MESSAGE:New("Bon vol "..tostring(PlayerName).." ! "
					,10,Airbase.." Control "):ToClient( ClientPlayer )
			
		TABLE_Player["Nb_Takeoff"]						= Nb_Takeoff + 1
		TABLE_Player["Vol_Actif"]						= 1
		TABLE_Player["H_Debut"]							= os.time()
		
			LOOP_H_VOL = SCHEDULER:New( nil, 
				function ()
				
				local PlayerData 					= 	table.load(	fichier_sauvegarde )
				local H_cumul_recup					= 	PlayerData["H_Cumul"]
				local H_per_type					= 	PlayerData["Appareil"][PlayerTypeName]
								
				TABLE_Player["H_Cumul"]				= 	H_cumul_recup + TIME_BOUCLE
				TABLE_Player["Appareil"][ PlayerTypeName ]		= H_per_type + TIME_BOUCLE
				table.save(	TABLE_Player , fichier_sauvegarde)	
				
			end, {}, 1, TIME_BOUCLE
			)

		
		--Sauvegarde du statut du player
		table.save(	TABLE_Player , fichier_sauvegarde)		
		end
	end
-------------------------------------------------------------------------------------------	
----EVENT Land
-------------------------------------------------------------------------------------------	
	PlayerLandEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerLandEventHandler:HandleEvent( EVENTS.Land ) 
	function PlayerLandEventHandler:OnEventLand( EventData )
	  BASE:F({EventData})
		if EventData.IniPlayerName ~= nil then 

		local UnitName		=	EventData.IniUnitName	-- unit#001
		local PlayerName 	= 	EventData.IniPlayerName	--Player Name in game
		local Airbase 		= 	EventData.PlaceName
		local ClientPlayer 	= 	CLIENT:FindByName( UnitName )
		local Heure_fin		=	os.time()
		
		local PlayerData 	= table.load(	fichier_sauvegarde )
		local Nb_heure_vol 	= os.difftime( Heure_fin, PlayerData.H_Debut )
		
		-- local Nb_heure_cumul	=	PlayerData.H_Cumul + Nb_heure_vol
		
			if Airbase == nil then Airbase = "Sol"	end		
			MESSAGE:New("Bon retour à la base "..tostring(PlayerName).." ! "
					,10,Airbase.." Control "):ToClient( ClientPlayer )
			
		TABLE_Player["Vol_Actif"]						= 0
		TABLE_Player["Nb_Landing"]						= Nb_Landing + 1
		TABLE_Player["H_Fin"]							= Heure_fin
		TABLE_Player["H_Temps_dernier_vol"]				= Nb_heure_vol
		-- TABLE_Player["H_Cumul"]							= Nb_heure_cumul
		-- H_per_type = H_per_type + Nb_heure_vol
		-- TABLE_Player[ PlayerTypeName ]					= H_per_type
		
		LOOP_H_VOL:Stop()
		
		--Sauvegarde du statut du player
		table.save(	TABLE_Player , fichier_sauvegarde)	
			
		end
	end
-------------------------------------------------------------------------------------------	
----EVENT PlayerEnterUnit
-------------------------------------------------------------------------------------------	
	PlayerEnterUnitEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerEnterUnitEventHandler:HandleEvent( EVENTS.PlayerEnterUnit ) 
	function PlayerEnterUnitEventHandler:OnEventPlayerEnterUnit( EventData )
	  BASE:F({EventData})
	 -- if EventData.IniPlayerName ~= nil then 

		local UnitName		=	EventData.IniUnitName	-- unit#001
		local PlayerName 	= 	EventData.IniPlayerName	--Player Name in game
		local ClientPlayer 	= 	CLIENT:FindByName( UnitName )
					
		MESSAGE:New("Bienvenue "..tostring(PlayerName).." ! "
				,10,"SandBox Caucase "):ToClient( ClientPlayer )
	  
	  --end
	end
-------------------------------------------------------------------------------------------	
----EVENT PlayerLeaveUnit
-------------------------------------------------------------------------------------------	
	PlayerLeaveUnitEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerLeaveUnitEventHandler:HandleEvent( EVENTS.PlayerLeaveUnit ) 
	function PlayerLeaveUnitEventHandler:OnEventPlayerEnterUnit( EventData )
	  BASE:F({EventData})
	 -- if EventData.IniPlayerName ~= nil then 

		local UnitName		=	EventData.IniUnitName	-- unit#001
		local PlayerName 	= 	EventData.IniPlayerName	--Player Name in game
		local ClientPlayer 	= 	CLIENT:FindByName( UnitName )
					
		MESSAGE:New("GoodBye "..tostring(PlayerName).." ! "
				,10,"SandBox Caucase "):ToClient( ClientPlayer )
	  
	  --end
	end
	
-------------------------------------------------------------------------------------------	
----EVENT PilotDead
-------------------------------------------------------------------------------------------	
	PlayerPilotDeadEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerPilotDeadEventHandler:HandleEvent( EVENTS.PilotDead ) 
	function PlayerPilotDeadEventHandler:OnEventPilotDead( EventData )
	  BASE:F({EventData})
	 
		MESSAGE:New("Accident "..tostring(PlayerName).." ! "
				,10,"SandBox Caucase "):ToClient( ClientPlayer )
				
		local UnitName		=	EventData.IniUnitName	-- unit#001
		local PlayerName 	= 	EventData.IniPlayerName	--Player Name in game
		local ClientPlayer 	= 	CLIENT:FindByName( UnitName )
		local Heure_fin		=	os.time()
		local PlayerData 	= 	table.load(	fichier_sauvegarde )
		local Nb_Accidents	=	TABLE_Player["Nb_Accidents"]
		local Nb_heure_vol 	= 	os.difftime( Heure_fin, PlayerData["H_Debut"] )
		
		TABLE_Player["Vol_Actif"]						= 0
		TABLE_Player["Nb_Accidents"]					= Nb_Accidents + 1
		TABLE_Player["H_Fin"]							= Heure_fin
		TABLE_Player["H_Temps_dernier_vol"]				= Nb_heure_vol
		
		LOOP_H_VOL:Stop()
		
		--Sauvegarde du statut du player
		table.save(	TABLE_Player , fichier_sauvegarde)	
		
	end	

-------------------------------------------------------------------------------------------	
----EVENT Ejection
-------------------------------------------------------------------------------------------	
	PlayerEjectionEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
	PlayerEjectionEventHandler:HandleEvent( EVENTS.Ejection ) 
	function PlayerEjectionEventHandler:OnEventEjection( EventData )
	  BASE:F({EventData})
	 
		MESSAGE:New("Ejection "..tostring(PlayerName).." ! "
				,10,"SandBox Caucase "):ToClient( ClientPlayer )
				
		local UnitName		=	EventData.IniUnitName	-- unit#001
		local PlayerName 	= 	EventData.IniPlayerName	--Player Name in game
		local ClientPlayer 	= 	CLIENT:FindByName( UnitName )
		local Heure_fin		=	os.time()
		local PlayerData 	= 	table.load(	fichier_sauvegarde )
		local Nb_Ejection	=	TABLE_Player["Nb_Ejection"]
		local Nb_heure_vol 	= 	os.difftime( Heure_fin, PlayerData["H_Debut"] )
		
		TABLE_Player["Vol_Actif"]						= 0
		TABLE_Player["Nb_Ejection"]						= Nb_Ejection + 1
		TABLE_Player["H_Fin"]							= Heure_fin
		TABLE_Player["H_Temps_dernier_vol"]				= Nb_heure_vol
		
		LOOP_H_VOL:Stop()
		
		--Sauvegarde du statut du player
		table.save(	TABLE_Player , fichier_sauvegarde)	
		
	end	
-------------------------------------------------------------------------------------------	
---- Fin events
-------------------------------------------------------------------------------------------		
  end
 end 



