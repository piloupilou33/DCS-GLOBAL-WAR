--=================================================================================
-- SCRIPT AIRBOSS for Sandbox CAUCASUS 
--
--	Author = Kinder
--	Date = 26/02/2021
--
--	Requirements : 
--
--=================================================================================

-- No MOOSE settings menu. Comment out this line if required.
_SETTINGS:SetPlayerMenuOff()





--=================================================================================
-- CARRIER : CVN71
--=================================================================================

-- S-3B Recovery Tanker spawning in air.
local tanker_CVN71=RECOVERYTANKER:New("CVN-71", "Texaco_CVN-71")
--tanker_CVN71:SetTakeoffAir()
tanker_CVN71:SetTakeoffCold()
tanker_CVN71:SetRadio(251)
tanker_CVN71:SetModex(511)
tanker_CVN71:SetTACAN(71, "TKR")
tanker_CVN71:__Start(1)

-- E-2D AWACS spawning on CVN71.
local awacs=RECOVERYTANKER:New("CVN-71", "Wizard_CVN-71")
awacs:SetAWACS()
awacs:SetTakeoffCold()
awacs:SetRadio(241)
awacs:SetAltitude(20000)
awacs:SetCallsign(CALLSIGN.AWACS.Wizard)
awacs:SetRacetrackDistances(30, 15)
awacs:SetModex(611)
awacs:SetTACAN(1, "WIZ")
awacs:__Start(1)

-- RescueHelo spawning on CVN71.
Rescuehelo_CVN71 = RESCUEHELO:New(UNIT:FindByName("CVN-71"), "RescueHelo_CVN71")
Rescuehelo_CVN71:SetHomeBase(AIRBASE:FindByName("Ticonderoga_(CVN-71)"))
Rescuehelo_CVN71:SetTakeoffHot()
Rescuehelo_CVN71:SetRescueStopBoatOff()
Rescuehelo_CVN71:SetRescueOn()
Rescuehelo_CVN71:SetRescueZone(20)
Rescuehelo_CVN71:SetAltitude(40)
Rescuehelo_CVN71:SetOffsetX(220)
Rescuehelo_CVN71:SetOffsetZ(130)
Rescuehelo_CVN71:Start()

-- Create AIRBOSS object.
local Airboss_CVN71=AIRBOSS:New("CVN-71", "CVN-71")
-- Add recovery windows:
-- local window1=Airboss_CVN71:AddRecoveryWindow( "7:00", "12:00", 1, nil, true, 25) 	-- Case I from 9 to 10 am.
-- local window2=Airboss_CVN71:AddRecoveryWindow("13:00", "16:00", 2,  15, true, 23) 	-- Case II with +15 degrees holding offset from 15:00 for 60 min.
-- local window3=Airboss_CVN71:AddRecoveryWindow("21:00", "23:00", 3,  30, true, 21) 	-- Case III with +30 degrees holding offset from 2100 to 2200.

--local window1=Airboss_CVN71:AddRecoveryWindow("7:30", "20:00", 1, nil, true, 20)
--local window2=Airboss_CVN71:AddRecoveryWindow("20:00", "23:00", 3, nil, true, 20)

Airboss_CVN71:SetTACAN(71, "X", "CVN")
Airboss_CVN71:SetICLS(11, "CVN")

Airboss_CVN71:SetSoundfilesFolder("Airboss Soundfiles/") 		-- Set folder of airboss sound files within miz file.
Airboss_CVN71:SetMenuSingleCarrier(false) 						-- Single carrier menu optimization.
Airboss_CVN71:SetMenuRecovery(30, 20, false)					-- Skipper menu.
Airboss_CVN71:SetPatrolAdInfinitum(true) 						-- Carrier patrols ad inifintum.
Airboss_CVN71:SetMaxFlightsPerStack(1) 							-- Number stack 
Airboss_CVN71:SetDespawnOnEngineShutdown() 						-- Remove landed AI planes from flight deck.
Airboss_CVN71:Save( DCSGW_Saving_Folder_Airboss )
Airboss_CVN71:Load( DCSGW_Saving_Folder_Airboss ) 				-- Load all saved player grades from your "Saved Games\DCS" folder (if lfs was desanitized).
Airboss_CVN71:SetAutoSave( DCSGW_Saving_Folder_Airboss ) 		-- Automatically save player results to your "Saved Games\DCS" folder each time a player get a final grade from the LSO.
Airboss_CVN71:SetTrapSheet( DCSGW_Saving_Folder_Airboss ) 		-- Enable trap sheet.
Airboss_CVN71:Start() 											-- Start airboss class.

--- Function called when recovery tanker is started.
function tanker_CVN71:OnAfterStart(From,Event,To)
  Airboss_CVN71:SetRecoveryTanker(tanker_CVN71)   				-- Set recovery tanker.
  Airboss_CVN71:SetRadioRelayLSO(self:GetUnitName())   			-- Use tanker as radio relay unit for LSO transmissions.
end

--- Function called when AWACS is started.
function awacs:OnAfterStart(From,Event,To)
  Airboss_CVN71:SetRecoveryTanker(tanker_CVN71)  				 -- Set AWACS.
end

--- Function called when a player gets graded by the LSO.
function Airboss_CVN71:OnAfterLSOGrade(From, Event, To, playerData, grade)
  local PlayerData=playerData 		--Ops.Airboss#AIRBOSS.PlayerData
  local Grade=grade 				--Ops.Airboss#AIRBOSS.LSOgrade

  ----------------------------------------
  --- Interface your Discord bot here! ---
  ----------------------------------------
  
  local score=tonumber(Grade.points)
  local name=tostring(PlayerData.name)
  
  -- Report LSO grade to dcs.log file.
  env.info(string.format("Player %s scored %.1f", name, score))
end




--=================================================================================
-- CARRIER : CVN73
--=================================================================================

-- S-3B Recovery Tanker spawning in air.
local tanker_CVN73=RECOVERYTANKER:New("CVN-73", "Texaco_CVN-73")
--tanker_CVN73:SetTakeoffAir()
tanker_CVN73:SetTakeoffCold()
tanker_CVN73:SetRadio(253)
tanker_CVN73:SetModex(511)
tanker_CVN73:SetTACAN(73, "TKR")
tanker_CVN73:__Start(1)

-- E-2D AWACS spawning on CVN73.
local awacs=RECOVERYTANKER:New("CVN-73", "Wizard_CVN-73")
awacs:SetAWACS()
awacs:SetTakeoffCold()
awacs:SetRadio(243)
awacs:SetAltitude(20000)
awacs:SetCallsign(CALLSIGN.AWACS.Wizard)
awacs:SetRacetrackDistances(30, 15)
awacs:SetModex(611)
awacs:SetTACAN(1, "WIZ")
awacs:__Start(1)

-- RescueHelo spawning on CVN73.
Rescuehelo_CVN73 = RESCUEHELO:New(UNIT:FindByName("CVN-73"), "RescueHelo_CVN73")
Rescuehelo_CVN73:SetHomeBase(AIRBASE:FindByName("Ticonderoga_(CVN-73)"))
Rescuehelo_CVN73:SetTakeoffHot()
Rescuehelo_CVN73:SetRescueStopBoatOff()
Rescuehelo_CVN73:SetRescueOn()
Rescuehelo_CVN73:SetRescueZone(20)
Rescuehelo_CVN73:SetAltitude(40)
Rescuehelo_CVN73:SetOffsetX(220)
Rescuehelo_CVN73:SetOffsetZ(130)
Rescuehelo_CVN73:Start()

-- Create AIRBOSS object.
local Airboss_CVN73=AIRBOSS:New("CVN-73", "CVN-73")
-- Add recovery windows:
-- local window1=Airboss_CVN73:AddRecoveryWindow( "7:00", "12:00", 1, nil, true, 25) 	-- Case I from 9 to 10 am.
-- local window2=Airboss_CVN73:AddRecoveryWindow("13:00", "16:00", 2,  15, true, 23) 	-- Case II with +15 degrees holding offset from 15:00 for 60 min.
-- local window3=Airboss_CVN73:AddRecoveryWindow("21:00", "23:00", 3,  30, true, 21) 	-- Case III with +30 degrees holding offset from 2100 to 2200.

--local window1=Airboss_CVN73:AddRecoveryWindow("7:30", "20:00", 1, nil, true, 20)
--local window2=Airboss_CVN73:AddRecoveryWindow("20:00", "23:00", 3, nil, true, 20)

Airboss_CVN73:SetTACAN(73, "X", "CVN")
Airboss_CVN73:SetICLS(13, "CVN")

Airboss_CVN73:SetSoundfilesFolder("Airboss Soundfiles/") 		-- Set folder of airboss sound files within miz file.
Airboss_CVN73:SetMenuSingleCarrier(false) 						-- Single carrier menu optimization.
Airboss_CVN73:SetMenuRecovery(30, 20, false)					-- Skipper menu.
Airboss_CVN73:SetPatrolAdInfinitum(true) 						-- Carrier patrols ad inifintum.
Airboss_CVN73:SetMaxFlightsPerStack(1) 							-- Number stack 
Airboss_CVN73:SetDespawnOnEngineShutdown() 						-- Remove landed AI planes from flight deck.
Airboss_CVN73:Save( DCSGW_Saving_Folder_Airboss )
Airboss_CVN73:Load( DCSGW_Saving_Folder_Airboss ) 				-- Load all saved player grades from your "Saved Games\DCS" folder (if lfs was desanitized).
Airboss_CVN73:SetAutoSave( DCSGW_Saving_Folder_Airboss ) 		-- Automatically save player results to your "Saved Games\DCS" folder each time a player get a final grade from the LSO.
Airboss_CVN73:SetTrapSheet( DCSGW_Saving_Folder_Airboss ) 		-- Enable trap sheet.
Airboss_CVN73:Start() -- Start airboss class.

--- Function called when recovery tanker is started.
function tanker_CVN73:OnAfterStart(From,Event,To)
  Airboss_CVN73:SetRecoveryTanker(tanker_CVN73)   				-- Set recovery tanker.
  Airboss_CVN73:SetRadioRelayLSO(self:GetUnitName())   			-- Use tanker as radio relay unit for LSO transmissions.
end

--- Function called when AWACS is started.
function awacs:OnAfterStart(From,Event,To)
  Airboss_CVN73:SetRecoveryTanker(tanker_CVN73)   				-- Set AWACS.
end

--- Function called when a player gets graded by the LSO.
function Airboss_CVN73:OnAfterLSOGrade(From, Event, To, playerData, grade)
  local PlayerData=playerData 		--Ops.Airboss#AIRBOSS.PlayerData
  local Grade=grade 				--Ops.Airboss#AIRBOSS.LSOgrade

  ----------------------------------------
  --- Interface your Discord bot here! ---
  ----------------------------------------
  
  local score=tonumber(Grade.points)
  local name=tostring(PlayerData.name)
  
  -- Report LSO grade to dcs.log file.
  env.info(string.format("Player %s scored %.1f", name, score))
end

