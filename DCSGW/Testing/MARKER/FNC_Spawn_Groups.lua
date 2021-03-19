-- A REMPLACER ---------------------------
DCSGW_File_Ground_Units_Price               = path_scripts.."Core\\ressources\\SGW_db_units_prices.csv"
DCSGW_File_Ground_Units_Price_save          = path_scripts.."Core\\ressources\\SGW_db_units_prices.lua"
TEST_LIST_UNITS = {}
CSVReturn = nil 
CSVReturn = CSVread( DCSGW_File_Ground_Units_Price )
TEST_LIST_UNITS = CSVReturn
-- return description 
---------------------
-- /!\ Commence à 2 (ligne 1 reservée pour les titres de colonnes)
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

-- Init ID de spawn = A remplacer par un ID Global registré
--ID_Spawn = 0

function DCSGW_FNC_Preparation_Spawn()

end

function DCSGW_FNC_Spawn_From_Marker(text, coord)
  local Type = nil 
  local Position = coord:GetVec2() -- Position Vec2
  local Name = nil
  local units = {}
  local Country = nil 
  local GroupCoalition = nil 
  local UnitName = nil
  local Params = {}
  local ID_Spawn = nil

  
    --  Examples catching values
    -- [1] catching Type :  -value    
    -- [2] param 1 : value = ?  
    -- [3] param 2 : value = ?
    -- [x] param x ...

      for param in (text.."="):gmatch("([^=]*)=") do 
        table.insert(Params, param) 
      end
 
 if Params[3] == nil then Params[3] = 1 end
--  ID_Spawn = ID_Spawn + 1
  
  for k,v in pairs(CSVReturn) do
--  for x = 2, #CSVReturn - 1  do
  
--  env.info("Creation d'un ground - test  = "..k)
--  env.info("Creation d'un ground - test  = "..CSVReturn[k][1])
--  env.info("Creation d'un ground - test  = "..CSVReturn[k][3])
  
  -- Attribution de l'ID
    if CSVReturn[k][7] == 1 then 
    
      ID_Spawn = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"]            
--      ID_Spawn_Unit = DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_RED"] 
      GroupParam_Coalition  = CSVReturn[k][7]  
    elseif CSVReturn[k][7] == 2 then 
    
      ID_Spawn = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"]            
--      ID_Spawn_Unit = DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_BLUE"]   
      GroupParam_Coalition  = CSVReturn[k][7] 
    end

    if CSVReturn[k][1] == Params[2] then
        Name      = Params[2].."-"..CSVReturn[k][3].."-"..ID_Spawn
        Type = CSVReturn[k][1]
          env.info("Creation d'un ground - Type = "..Params[2])
        Country   = CSVReturn[k][9]
          env.info("Creation d'un ground - Country = "..Country)
        GroupCoalition = CSVReturn[k][7]
          env.info("Creation d'un ground - Coalition = "..GroupCoalition)
          env.info("Creation d'un ground - Name = "..Name)
       UnitName = Params[2].."-"..CSVReturn[k][3].."-unitID_"
       nb_Units = Params[3]
    end
  end
  
  units= { ["Type"] = Type, ["Name"] = UnitName, ["x"] =Position.x, ["y"] =Position.y, ["Heading"] = 0, ["skill"] ="Average"}
  env.info("Creation d'un ground - Position = "..Position.x.." | "..Position.y)
  -- Launch Spawn
  DCSGW_FNC_Spawn_Group (Type, nb_Units, Name, Position, units, Country, GroupCoalition)
end

function DCSGW_FNC_Spawn_Group(Type, nb_Units, Name, Position, units, Country, GroupCoalition)

  local GroupParam_Name       = Name
  local GroupParam_Position   = Position  -- Position Vec2 required
  local GroupParam_Country    = Country
  local GroupParam_Coalition  = GroupCoalition

  -- Units params :       Type | Name | Position Vec2 | Heading | skill
  local GroupParam_units      = units
  local GroupParam_nbunits    = nb_Units
  
  env.info("Création d'un groupe GROUND : "..GroupParam_Name.. " Position : ".. GroupParam_Position.x.." | "..GroupParam_Position.y.." Country = "..GroupParam_Country.." Coalition = "..GroupParam_Coalition)
  env.info("Unité = "..GroupParam_units.Type.." Skill = "..GroupParam_units.skill.." Position = X" ..GroupParam_units["x"].." |Y "..GroupParam_units["y"].." |H "..GroupParam_units.Heading.." Name = "..GroupParam_units["Name"])

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
              local Ecart = 0
              for i = 1, GroupParam_nbunits do  
              
                if GroupParam_Coalition == 1 then 
                  DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_RED"] = DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_RED"] + 1
                  ID_Spawn_Unit = DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_RED"]
                elseif GroupParam_Coalition == 2 then 
                  DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_BLUE"] = DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_BLUE"] + 1
                  ID_Spawn_Unit = DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_BLUE"]
                end 
                
                local nameUnit = GroupParam_units.Name..ID_Spawn_Unit
                
                groupData["units"][i] = {} 
                
                groupData["units"][i]["type"] = GroupParam_units.Type
                groupData["units"][i]["transportable"] = {}  
                groupData["units"][i]["transportable"]["randomTransportable"] = true 
                groupData["units"][i]["skill"] = GroupParam_units.skill
                groupData["units"][i]["y"] = GroupParam_units.y + Ecart
                groupData["units"][i]["x"] = GroupParam_units.x
                groupData["units"][i]["name"] = nameUnit
                groupData["units"][i]["heading"] = GroupParam_units.Heading
                groupData["units"][i]["playerCanDrive"] = true 
                Ecart = Ecart + 10

            end
            
              if GroupParam_Coalition == 1 then 
                  DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"] = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"] + 1
              elseif GroupParam_Coalition == 2 then 
                  DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"] = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"] + 1
              end
            
            
    env.info ("CREATION GROUP : Groupe country = "..GroupParam_Country.." coalition = "..GroupParam_Coalition)
   -- Creation du Group (SPAWN)
   --------------------------------------------------------------------------------------------------------
   -- example : coalition.addGroup(country.id.USA, Group.Category.GROUND, groupData)
    
    coalition.addGroup(GroupParam_Country, Group.Category.GROUND, groupData)
    
    -- Create event DEAD for units of Group Created : Call FUNCTION From Saving_System.lua
    --------------------------------------------------------------------------------------------------------
--    local GroupCreated = GROUP:FindByName( GroupParam_Name )
--    DCSGW_FNC_Event_Ground_Units_Dead ( GroupCreated )
    
    -- Empty groupData for others
    groupData = {}
--    local GroupCreated = GROUP:FindByName( GroupParam_Name )
   
--    return GroupCreated -- wrapper#GROUP
end    