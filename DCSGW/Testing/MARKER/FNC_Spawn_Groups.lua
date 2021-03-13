-- A REMPLACER ---------------------------
DCSGW_File_Ground_Units_Price               = path_scripts.."Core\\ressources\\SGW_db_units_prices.csv"
DCSGW_File_Ground_Units_Price_save          = path_scripts.."Core\\ressources\\SGW_db_units_prices.lua"
TEST_LIST_UNITS = {}
CSVReturn = nil 
CSVReturn = CSVread( DCSGW_File_Ground_Units_Price )
TEST_LIST_UNITS = CSVReturn
-- return description 
---------------------
-- /!\ Commence � 2 (ligne 1 reserv�e pour les titres de colonnes)
-- Type               = [1]
-- Name               = [2]
-- Category DCSGW     = [3]
-- Category DCS Name  = [4]
-- Category DCS ID    = [5]
-- Coalition Name     = [6]
-- Coalition ID       = [7]
-- Country Name       = [8]
-- Country ID         = [9]
-- Purchase Cost      = [10]
-- Maintenance Cost   = [11]
-- Bonus Kill         = [12]


Saving_Ground_prices = IntegratedserializeWithCycles( "Prices_Ground_Units", CSVReturn )
writemission( Saving_Ground_prices, DCSGW_File_Ground_Units_Price_save )
------------------------------------------

-- Init ID de spawn = A remplacer par un ID Global registr�
ID_Spawn = 0

function DCSGW_FNC_Preparation_Spawn()

end

function DCSGW_FNC_Spawn_From_Marker(text, coord)
  local Type = nil 
  local Position = coord:GetVec2() -- Position Vec2
  local Name = nil
  local units = {}
  local Country = nil 
  local GroupCoalition = nil 
  
  local Params = {}
    --  Examples catching values
    -- [1] catching Type :  -value    
    -- [2] param 1 : value = ?  
    -- [3] param 2 : value = ?
    -- [x] param x ...

      for param in (text.."="):gmatch("([^=]*)=") do 
        table.insert(Params, param) 
      end
 
  ID_Spawn = ID_Spawn + 1
  
  for k,v in pairs(CSVReturn) do
--  for x = 2, #CSVReturn - 1  do
  
--  env.info("Creation d'un ground - test  = "..k)
--  env.info("Creation d'un ground - test  = "..CSVReturn[k][1])
--  env.info("Creation d'un ground - test  = "..CSVReturn[k][3])
  
    if CSVReturn[k][1] == Params[2] then
        Name      = Params[2].."-"..CSVReturn[k][3].."-"..ID_Spawn
        Type = CSVReturn[k][1]
          env.info("Creation d'un ground - Type = "..Params[2])
        Country   = CSVReturn[k][9]
          env.info("Creation d'un ground - Country = "..Country)
        GroupCoalition = CSVReturn[k][7]
          env.info("Creation d'un ground - Coalition = "..GroupCoalition)
          env.info("Creation d'un ground - Name = "..Name)
    end
  end
  
  units= { ["Type"] = Type, ["Name"] = "unit_"..Name, ["x"] =Position.x, ["y"] =Position.y, ["Heading"] = 0, ["skill"] ="Average"}
  env.info("Creation d'un ground - Position = "..Position.x.." | "..Position.y)
  -- Launch Spawn
  DCSGW_FNC_Spawn_Group (Type, Name, Position, units, Country, GroupCoalition)

end

function DCSGW_FNC_Spawn_Group(Type, Name, Position, units, Country, GroupCoalition)

  local GroupParam_Name       = Name
  local GroupParam_Position   = Position  -- Position Vec2 required
  local GroupParam_Country    = Country
  local GroupParam_Coalition  = GroupCoalition
  -- Units params :       Type | Name | Position Vec2 | Heading | skill
  local GroupParam_units      = units

  env.info("Cr�ation d'un groupe GROUND : "..GroupParam_Name.. " Position : ".. GroupParam_Position.x.." | "..GroupParam_Position.y.." Country = "..GroupParam_Country.." Coalition = "..GroupParam_Coalition)
  env.info("Unit� = "..GroupParam_units.Type.." Skill = "..GroupParam_units.skill.." Position = X" ..GroupParam_units["x"].." |Y "..GroupParam_units["y"].." |H "..GroupParam_units.Heading.." Name = "..GroupParam_units["Name"])

  local groupData = {
              ["visible"] = false,
              ["lateActivation"] = false,
              ["tasks"] = {},
              ["uncontrollable"] = false,
              ["task"] = "Ground Nothing",
              ["taskSelected"] = true,
              ["route"] = {},
              ["hidden"] = false,
              ["units"] = {},
              ["y"] = GroupParam_Position.y,
              ["x"] = GroupParam_Position.x,
              ["name"] = GroupParam_Name,
              ["start_time"] = 0,
            } -- end of [1]

        -- Ajout des Units du GROUP
          for k,v in pairs(GroupParam_units) do                    
              groupData["units"][k] = {} 
              groupData["units"][k]["type"] = GroupParam_units.Type
              groupData["units"][k]["transportable"] = {}  
              groupData["units"][k]["transportable"]["randomTransportable"] = true 
              groupData["units"][k]["skill"] = GroupParam_units.skill
              groupData["units"][k]["y"] = GroupParam_units.y
              groupData["units"][k]["x"] = GroupParam_units.x
              groupData["units"][k]["name"] = GroupParam_units.Name
              groupData["units"][k]["heading"] = GroupParam_units.Heading
              groupData["units"][k]["playerCanDrive"] = true 
          end

   -- Creation du Group (SPAWN)
   --------------------------------------------------------------------------------------------------------
    coalition.addGroup(GroupParam_Country, GroupParam_Coalition, groupData)
    groupData = {}
    local GroupCreated = GROUP:FindByName( GroupParam_Name )
   
    return GroupCreated -- wrapper#GROUP
end    