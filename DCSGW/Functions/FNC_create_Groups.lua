
-- TABLE avec : 
-- GroupName | Units				GroupName	Type Unit 1			Type Unit 2		Type Unit 3				Type Unit 4 	etc...
-- Example : Table_Template = 	{	"Group x", 	"M1097 Avenger", 	"M-1 Abrams", 	"M1134 Stryker ATGM", 	"M-1 Abrams", 	etc... } 
	-- return : GROUP pret à faire spawn avec :
		-- local TemplateSpawn	= SPAWN:NewWithAlias( GroupNameCreated , "Index name" )
		-- local GroupName 		= TemplateSpawn:GetName()
		
-- lateActivation = true or false

-- GROUP:NewTemplate(GroupTemplate, CoalitionSide, CategoryID, CountryID)
	-- 0: neutral
	-- 1: red
	-- 2: blue

	-- 0: AIRPLANE		
	-- 1: HELICOPTER	
	-- 2: GROUND_UNIT
	-- 3: SHIP	
	-- 4: STRUCTURE 		

	-- 0: RUSSIA
	-- 1: UKRAINE
	-- 2: USA
	-- 3: TURKEY
	-- 4: UK
	-- 5: FRANCE
	-- 6: GERMANY
	-- 7: AGGRESSORS
	-- 8: CANADA
	
function FNC_CreateGroupGround ( Table_Template, CoalitionSide, CategoryID, CountryID, lateActivation )

local TEMPLATE_Selected   = Table_Template
local CoalitionSide       = CoalitionSide
local CategoryID          = CategoryID
local CountryID           = CountryID
local lateActivation      = lateActivation

local GroupTableSingle = {
							["visible"] = false,
							["lateActivation"] = lateActivation,
							["tasks"] = 
							{
							}, -- end of ["tasks"]
							["uncontrollable"] = false,
							["task"] = "Ground Nothing",
							["taskSelected"] = true,
							["route"] = 
							{
								["spans"] = 
								{
								}, -- end of ["spans"]
								["points"] = 
								{
									[1] = 
									{
										["alt"] = 143,
										["type"] = "Turning Point",
										["ETA"] = 0,
										["alt_type"] = "BARO",
										["formation_template"] = "",
										["y"] = 0,
										["x"] = 0,
										["name"] = TEMPLATE_Selected[1],
										["ETA_locked"] = true,
										["speed"] = 0,
										["action"] = "Off Road",
										["task"] = 
										{
											["id"] = "ComboTask",
											["params"] = 
											{
												["tasks"] = 
												{
												}, -- end of ["tasks"]
											}, -- end of ["params"]
										}, -- end of ["task"]
										["speed_locked"] = true,
									}, -- end of [1]
								}, -- end of ["points"]
								["routeRelativeTOT"] = true,
							}, -- end of ["route"]
							["groupId"] = 2,
							["hidden"] = false,
							["units"] = {}, -- end of ["units"]
							["y"] = 0,
							["x"] = 0,
							["name"] = TEMPLATE_Selected[1],
							["start_time"] = 0,
						} -- end of [1]

				-- Ajout des Units du GROUP en fonction du template fourni
				
							y_decal = 0
						
							for x=1,#TEMPLATE_Selected do
							
								GroupTableSingle["units"][x] = {}	
								GroupTableSingle["units"][x]["type"] = TEMPLATE_Selected[x]
								GroupTableSingle["units"][x]["transportable"] = {}	
								GroupTableSingle["units"][x]["transportable"]["randomTransportable"] = true	
								GroupTableSingle["units"][x]["unitId"] = 2	
								GroupTableSingle["units"][x]["skill"] = "Average"
								GroupTableSingle["units"][x]["y"] = y_decal 
								GroupTableSingle["units"][x]["x"] = 0
								GroupTableSingle["units"][x]["name"] = TEMPLATE_Selected[x] .. "_Unit"
								GroupTableSingle["units"][x]["heading"] = 0
								GroupTableSingle["units"][x]["playerCanDrive"] = true
							
								y_decal = y_decal + 10 -- Décalage en Y de 10m pour les spawns
							
							end

		local GroupTemplate = GROUP:NewTemplate( GroupTableSingle, CoalitionSide, CategoryID, CountryID )
		GroupNameCreated = TEMPLATE_Selected[1]

		return GroupNameCreated
	
end
	
function FNC_CreateGroupAir ( Table_Template, CoalitionSide, CategoryID, CountryID, Task )

local TEMPLATE_Selected 	= Table_Template
local CoalitionSide 		= CoalitionSide
local CategoryID 			= CategoryID
local CountryID 			= CountryID
local Task 					= Task

local CAS = 31
local CAP = 18
local Ground_attack = 34
local Interception = 10

-- CAS = 31
-- AFAC = 16
-- Anti-navire = 30
-- Attack de piste = 34
-- Interception = 10
-- escorte = 11
-- CAP = 18
-- Raid de chasse = 19

if Task == "CAS" 				then TaskID = CAS 			end 
if Task == "CAP" 				then TaskID = CAP 			end 
if Task == "Ground_attack" 		then TaskID = Ground_attack end 
if Task == "Interception" 		then TaskID = Interception 	end 

local GroupTableSingle = {
                                ["visible"] = false,
								["lateActivation"] = true,
								["modulation"] = 0,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = Task,
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 15000,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 154.16666666667,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = Task,
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 60153.860824888,
                                            ["x"] = -51377.648035536,
                                            ["name"] = Task.."_"..TEMPLATE_Selected[1],
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 1,
                                ["hidden"] = false,
                                ["units"] = {}, -- end of ["units"]
                                ["y"] = 60153.860824888,
                                ["x"] = -51377.648035536,
                                ["name"] = Task.."_"..TEMPLATE_Selected[1],
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["frequency"] = 124,
                            } -- end of [1]

				-- Ajout des Units du GROUP en fonction du template fourni
							for x=1,#TEMPLATE_Selected do
								local Aircraft = TEMPLATE_Selected[x]
								local payload_selected = nil 
								local selection_payload = nil
								-- Integration des fichiers de l'installation
								local unitPayloads = nil
								if file_exists("MissionEditor/data/scripts/UnitPayloads/"..Aircraft..".lua") then
									env.info("*** FNC CREATE GROUP : it's a vanilla aircraft")
									 unitPayloads = dofile("MissionEditor/data/scripts/UnitPayloads/"..Aircraft..".lua")
								elseif file_exists("CoreMods/aircraft/"..Aircraft.."/UnitPayloads/"..Aircraft..".lua") then 
									env.info("*** FNC CREATE GROUP : it's a Mod aircraft")
									 unitPayloads = dofile("CoreMods/aircraft/"..Aircraft.."/UnitPayloads/"..Aircraft..".lua")
								else 
									env.info("*** FNC CREATE GROUP : error data attributes to create planes")
								end 
								
								repeat 
									payload_selected = false
									selection_payload = math.floor( math.random( 1, #unitPayloads.payloads ,1 ) )
											for _, value in pairs( unitPayloads["payloads"][selection_payload]["tasks"] ) do
												if value == TaskID then 
													payload_selected = true 
												end 
											end	
								until payload_selected
								-- fin integration armement
								
								GroupTableSingle["units"][x] = {}	
								GroupTableSingle["units"][x]["type"] = TEMPLATE_Selected[x]
								GroupTableSingle["units"][x]["unitId"] = 2	
								GroupTableSingle["units"][x]["skill"] = "Average"
								GroupTableSingle["units"][x]["y"] = 0 
								GroupTableSingle["units"][x]["x"] = 0
								GroupTableSingle["units"][x]["name"] = TEMPLATE_Selected[x] .. "_Unit"
								GroupTableSingle["units"][x]["heading"] = 0
								GroupTableSingle["units"][x]["playerCanDrive"] = true
								GroupTableSingle["units"][x]["alt"] = 15000
                                GroupTableSingle["units"][x]["hardpoint_racks"] = true
                                GroupTableSingle["units"][x]["alt_type"] = "BARO"
                                -- GroupTableSingle["units"][x]["livery_id"] = "Air Force Standard"
                                GroupTableSingle["units"][x]["speed"] = 154.16666666667
                                GroupTableSingle["units"][x]["psi"] = 0
								GroupTableSingle["units"][x]["payload"] = {}
								GroupTableSingle["units"][x]["payload"]["fuel"] = 9500
                                GroupTableSingle["units"][x]["payload"]["flare"] = 30
                                GroupTableSingle["units"][x]["payload"]["chaff"] = 30
								GroupTableSingle["units"][x]["payload"]["gun"] = 100
								GroupTableSingle["units"][x]["payload"]["pylons"] = unitPayloads["payloads"][selection_payload]["pylons"]
							end

		local GroupTemplate = GROUP:NewTemplate( GroupTableSingle, CoalitionSide, CategoryID, CountryID )
		GroupNameCreated = TEMPLATE_Selected[1]

		return GroupNameCreated	
end 

function FNC_CreateGroupHeli ( Table_Template, CoalitionSide, CategoryID, CountryID, Task )

end

function FNC_CreateStatic ( Table_Template, CoalitionSide, CategoryID, CountryID, Task )

end