--=================================================================================
--=================================================================================
--
-- FUNCTIONS UTILS FOR MISSION DCSGW
--
--=================================================================================
--=================================================================================


function FNC_Coordinate_BULLSEYE()
  local BULLS_Coordinates = COORDINATE:NewFromVec3( coalition.getMainRefPoint( coalition.side.BLUE ) )
  local CoordStringLLDMS = BULLS_Coordinates:ToStringLLDMS( BULLS_Coordinates , 2 )
      
      local CoordString_MGRS  =   BULLS_Coordinates:ToStringMGRS( BULLS_Coordinates , 2 )
      local CoordString_LLDMS =   BULLS_Coordinates:ToStringLLDMS( BULLS_Coordinates , 2 )
      local CoordString_LLDDM =   BULLS_Coordinates:ToStringLLDDM( BULLS_Coordinates , 2 )
  
  --local BULLS_Coordinates = COORDINATE:ToStringBULLS( coalition.side.BLUE, SETTINGS.A2GSystem )
  MESSAGE:New("BULLSEYE Coordinates :\n\n #" .. CoordString_MGRS.."\n\n #"..CoordString_LLDMS.."\n\n #".. CoordString_LLDDM , 30, "Coordinates BULLS "):ToCoalition( coalition.side.BLUE )

end

function FNC_SecondsToClock( seconds )
  local seconds = tonumber(seconds)

  if seconds <= 0 then
    hours = 0 
    mins = 0 
    secs = 0
    return hours, mins, secs
  else
    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    -- return hours..":"..mins..":"..secs
  return hours, mins, secs
  end
end

--- @function 
--  NameGroup | Nb_Units | Group Position | Table#Units | Country ID | Coalition ID  
function DCSGW_FNC_Spawn_Group(Name, Nb_Units, Position, units, Country, GroupCoalition)

  local GroupParam_Name       = Name
  local GroupParam_Position   = Position  -- Position Vec2 required
  local GroupParam_Country    = Country
  local GroupParam_Coalition  = GroupCoalition

  -- Units params : Type | Name | Position Vec2 | Heading | skill
  local GroupParam_units      = units
  local GroupParam_nbunits    = Nb_Units
  
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
            } -- end
  
  local ID_Spawn_Unit = DSWGW_CONFIG["ID"]["ID_Ground_Units"]
-- Ajout des Units du GROUP
  local Ecart = 0
    for i = 1, GroupParam_nbunits do  

--  DSWGW_CONFIG["ID"]["ID_Ground"]        
--  DSWGW_CONFIG["ID"]["ID_Air"]           
--  DSWGW_CONFIG["ID"]["ID_Ship"]           
--  DSWGW_CONFIG["ID"]["ID_Ground_Units"]   
--  DSWGW_CONFIG["ID"]["ID_Air_Units"]      
--  DSWGW_CONFIG["ID"]["ID_Ship_Units"]     

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
      ID_Spawn_Unit = ID_Spawn_Unit + 1
      
  end
  -- On incrémente l'ID Units et save de la table config
  DSWGW_CONFIG["ID"]["ID_Ground_Units"]  = ID_Spawn_Unit
  DCSGW_Config_Save()
   
   -- Creation du Group (SPAWN)
   --------------------------------------------------------------------------------------------------------
   -- Example : coalition.addGroup(country.id.USA, Group.Category.GROUND, groupData)  
   coalition.addGroup(GroupParam_Country, Group.Category.GROUND, groupData)   
   -- Empty groupData for others
   groupData = {}
end

function DCSGW_FNC_Spawn_From_Marker(text, coord)
  local Type            = nil
  local Name            = nil
  local Country         = nil 
  local GroupCoalition  = nil 
  local UnitName        = nil
  local ID_Spawn        = nil
  local Nb_Units        = nil
  
  local Position        = coord:GetVec2() -- Position Vec2
  
  local units     = {}
  local Params    = {}
  
  for param in (text.."="):gmatch("([^=]*)=") do 
    table.insert(Params, param) 
  end
  
 if Params[3] == nil then Params[3] = 1 end
  
  ID_Spawn = DSWGW_CONFIG["ID"]["ID_Ground"]

  for k,v in pairs(CSV_Prices_Units_db) do 
    if CSV_Prices_Units_db[k][7] == 1 then             
      GroupParam_Coalition  = CSV_Prices_Units_db[k][7]  
    elseif CSV_Prices_Units_db[k][7] == 2 then     
      GroupParam_Coalition  = CSV_Prices_Units_db[k][7] 
    end

    if CSV_Prices_Units_db[k][1] == Params[2] then
        Name      = Params[2].."|"..CSV_Prices_Units_db[k][3].."|"..ID_Spawn
        Type = CSV_Prices_Units_db[k][1]
--          env.info("Creation d'un ground - Type = "..Params[2])
        Country   = CSV_Prices_Units_db[k][9]
--          env.info("Creation d'un ground - Country = "..Country)
        GroupCoalition = CSV_Prices_Units_db[k][7]
--          env.info("Creation d'un ground - Coalition = "..GroupCoalition)
          env.info("Creation d'un ground - Name = "..Name)
       UnitName = Params[2].."|"..CSV_Prices_Units_db[k][3].."|unitID_"
       Nb_Units = Params[3]
    end
  end
  
  DSWGW_CONFIG["ID"]["ID_Ground"] = DSWGW_CONFIG["ID"]["ID_Ground"] + 1
  
  units= { ["Type"] = Type, ["Name"] = UnitName, ["x"] =Position.x, ["y"] =Position.y, ["Heading"] = 0, ["skill"] ="Average"}

  -- Launch Spawn FNC
  DCSGW_FNC_Spawn_Group (Type, Nb_Units, Name, Position, units, Country, GroupCoalition)
end

function DCSGW_FNC_Costing ( units )
--- @list require units = {}
--  Type | Name | Position Vec2 | Heading | skill
  local UnitType = units[1]
  for k,v in pairs( CSV_Prices_Units_db ) do
    if CSV_Prices_Units_db[k][1] == UnitType then
    
    end
  end
      
end


env.info("DCSGW - INFO : FNC_Utils.lua ==> LOADED")