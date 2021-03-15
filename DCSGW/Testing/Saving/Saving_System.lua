--=================================================================================
--=================================================================================
--
-- SAVING SYSTEM SCRIPTS DCSGW
--
--=================================================================================
--=================================================================================

-- Parameters defines
--------------------------------------------------------------------------------------------------------
DCSGW_Start_Ground_Saving_time        = 10    -- in seconds : Départ de la routine de saving après x secondes
DCSGW_Interval_Ground_Saving_time     = 30    -- in seconds : Le Saving des units se fera toutes les x secondes

DCSGW_File_Saving_Ground_Accounts     = path_scripts.."Testing\\Saving\\Saves\\Ground_Accounts.lua"
DCSGW_File_Saving_Ground_BLUE         = path_scripts.."Testing\\Saving\\Saves\\Ground_Blue.lua"
DCSGW_File_Saving_Ground_RED          = path_scripts.."Testing\\Saving\\Saves\\Ground_Red.lua"
DCSGW_File_Saving_Ground_Destroyed    = path_scripts.."Testing\\Saving\\Saves\\Ground_Destroyed.lua"

DCSGW_TABLE_Ground_Accounts           = {}  -- empty table
DCSGW_TABLE_BLUE_Ground               = {}  -- empty table
DCSGW_TABLE_RED_Ground                = {}  -- empty table
DCSGW_TABLE_STATIC_Ground_destroyed   = {}  -- empty table

DCSGW_TABLE_Ground_Accounts_Name      = "GroundGroupsAccounts"        -- Table BLUE du file de saving
DCSGW_TABLE_BLUE_Name                 = "GroundGroupsBlue"        -- Table BLUE du file de saving
DCSGW_TABLE_RED_Name                  = "GroundGroupsRed"         -- Table RED du file de saving
DCSGW_TABLE_Destroyed_Name            = "GroundGroupsDestroyed"   -- Table DESTROYED du file de saving

DCSGW_SET_GROUND_UNITS        = SET_GROUP:New():FilterCategories("ground"):FilterStart()


-- Register Functions
--------------------------------------------------------------------------------------------------------

function DCSGW_SET_GROUND_UNITS:OnAfterAdded(From, Event, To, ObjectName, Object)
    env.info("New Ground Group Registered : "..ObjectName)
        local RegisteredGroup   = Object
        local GroupeName        = RegisteredGroup:GetName()             -- return string
        local GroupeCoalition   = RegisteredGroup:GetCoalition()        -- return DCS#Coalition.side (0,1,2)
        local GroupeCountry     = RegisteredGroup:GetCountry()          -- return DCS#country.id
        local GroupeTypeName    = RegisteredGroup:GetTypeName()        -- return string
        local GroupePosition    = RegisteredGroup:GetVec2()             -- return Vec2 ( GroupePosition.x / GroupePosition.y )
        local TableNameCoalition  = nil
        local SaveFileCoalition   = nil
        local TableGroundUnits    = nil 
          
          if GroupeCoalition == 2 then 
              TableNameCoalition  = DCSGW_TABLE_BLUE_Name
              TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
          elseif GroupeCoalition == 1 then 
              TableNameCoalition  = DCSGW_TABLE_RED_Name
              TableGroundUnits    = DCSGW_TABLE_RED_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
          end

        local GroupeUnits       = RegisteredGroup:GetUnits()            -- return Table
        local GroupeUnits_Count = #GroupeUnits
        
        TableGroundUnits[GroupeName] = {}
        TableGroundUnits[GroupeName]["Name"]             = GroupeName
        TableGroundUnits[GroupeName]["Coalition"]        = GroupeCoalition
        TableGroundUnits[GroupeName]["Country"]          = GroupeCountry
        TableGroundUnits[GroupeName]["Type"]             = GroupeTypeName
        TableGroundUnits[GroupeName]["Position"]         = {}
        TableGroundUnits[GroupeName]["Position"]["x"]    = GroupePosition.x                                                 
        TableGroundUnits[GroupeName]["Position"]["y"]    = GroupePosition.y
        TableGroundUnits[GroupeName]["Units"]            = {}
        TableGroundUnits[GroupeName]["DCSGW_TASK"]       = {}
          
        for z = 1, GroupeUnits_Count do
          local Unit          = RegisteredGroup:GetUnit( z )
          local UnitPosition  = Unit:GetVec2()
                    
          TableGroundUnits[GroupeName]["Units"][z] = {}
          TableGroundUnits[GroupeName]["Units"][z]["Name"]     = Unit:GetName()
          TableGroundUnits[GroupeName]["Units"][z]["Type"]     = Unit:GetTypeName()
          TableGroundUnits[GroupeName]["Units"][z]["x"]        = UnitPosition.x
          TableGroundUnits[GroupeName]["Units"][z]["y"]        = UnitPosition.y
          TableGroundUnits[GroupeName]["Units"][z]["Heading"]  = Unit:GetHeading()
          TableGroundUnits[GroupeName]["Units"][z]["Life"]     = 1
        end
end

-- Register Function SPAWN GROUP
function DCSGW_FNC_SPAWN_Ground_Groups ( DCSGW_File_Saving_Ground )  

  for k,v in pairs( DCSGW_File_Saving_Ground ) do
  
        local GroupeCoalition   = DCSGW_File_Saving_Ground[k]["Coalition"]
        local TableNameCoalition  = nil
        local SaveFileCoalition   = nil
        local TableGroundUnits    = nil 
          
          if GroupeCoalition == 2 then 
              TableNameCoalition  = DCSGW_TABLE_BLUE_Name
              TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
          elseif GroupeCoalition == 1 then 
              TableNameCoalition  = DCSGW_TABLE_RED_Name
              TableGroundUnits    = DCSGW_TABLE_RED_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
          end  
        
      local GroupeCountry     = DCSGW_File_Saving_Ground[k]["Country"]
      local GroupeCoalition   = DCSGW_File_Saving_Ground[k]["Coalition"]
      
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
              ["y"] = DCSGW_File_Saving_Ground[k]["Position"]["y"],
              ["x"] = DCSGW_File_Saving_Ground[k]["Position"]["x"],
              ["name"] = DCSGW_File_Saving_Ground[k]["Name"],
              ["start_time"] = 0,
            } -- end of [1]

        -- Ajout des Units du GROUP
           y = 0
        
          for x = 1, #DCSGW_File_Saving_Ground[k]["Units"] do
            
            local UnitType        = DCSGW_File_Saving_Ground[k]["Units"][x]["Type"]
            local UnitPositionX   = DCSGW_File_Saving_Ground[k]["Units"][x]["x"]
            local UnitPositionY   = DCSGW_File_Saving_Ground[k]["Units"][x]["y"]
            local UnitName        = DCSGW_File_Saving_Ground[k]["Units"][x]["Name"]
            local UnitHeading     = DCSGW_File_Saving_Ground[k]["Units"][x]["Heading"]
          
            if DCSGW_File_Saving_Ground[k]["Units"][x]["Life"] == 1 then
              y = y + 1
            else 
              y = y
            end
           
              groupData["units"][y] = {} 
              groupData["units"][y]["type"] = UnitType
              groupData["units"][y]["transportable"] = {}  
              groupData["units"][y]["transportable"]["randomTransportable"] = true 
              groupData["units"][y]["skill"] = "Average"
              groupData["units"][y]["y"] = UnitPositionY
              groupData["units"][y]["x"] = UnitPositionX
              groupData["units"][y]["name"] = UnitName
              groupData["units"][y]["heading"] = UnitHeading
              groupData["units"][y]["playerCanDrive"] = true 
 
          end

   -- Creation du Group (SPAWN)
   --------------------------------------------------------------------------------------------------------
   -- example : coalition.addGroup(country.id.USA, Group.Category.GROUND, groupData)
      
      coalition.addGroup( GroupeCountry, Group.Category.GROUND, groupData )
   
   -- LANCEMENT EVENT pour le Group Créé
   --------------------------------------------------------------------------------------------------------
    local GroupCreated = GROUP:FindByName( DCSGW_File_Saving_Ground[k]["Name"] )
    
    DCSGW_FNC_Event_Ground_Units_Dead ( GroupCreated )
    
--    GroupCreated:HandleEvent( EVENTS.Dead )
--  
--    function  GroupCreated:OnEventDead( EventData )
--        local GroupCreatedName          = GroupCreated:GetName()
--        local GroupCreated_Compo        = GroupCreated:GetUnits()
--        local nbr_Units_in_Group        = #GroupCreated_Compo - 1
--        local nbr_Units_init_in_Group   = GroupCreated:GetInitialSize() - 1
--        local unitName                  = EventData.IniUnitName
--        local unit                      = EventData.IniUnit
--        local unitCoalition             = EventData.IniCoalition
--        local unitPosition              = unit:GetVec2()
--        local unitType                  = EventData.IniTypeName
--        
--          if unitCoalition == 2 then 
--              TableNameCoalition  = DCSGW_TABLE_BLUE_Name
--              TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
--              SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
--          elseif unitCoalition == 1 then 
--              TableNameCoalition  = DCSGW_TABLE_RED_Name
--              TableGroundUnits    = DCSGW_TABLE_RED_Ground
--              SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
--          end   
--          
--          env.info( "L'unité : "..unitName.." est détruite, il reste "..nbr_Units_in_Group.." unités dans le groupe "..GroupCreatedName)
--              
--               --Inscription à la Table Destroyed
--                DCSGW_TABLE_STATIC_Ground_destroyed[unitName] = {}
--                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Name"]         = unitName
--                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Coalition"]    = unitCoalition
--                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Type"]         = unitType
--                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["x"]            = unitPosition.x
--                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["y"]            = unitPosition.y
--                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Dead"]         = true               
--              
--              -- Réécriture table
--                Saving_Ground_Unit_Destroyed = IntegratedserializeWithCycles( DCSGW_TABLE_Destroyed_Name, DCSGW_TABLE_STATIC_Ground_destroyed )
--                writemission( Saving_Ground_Unit_Destroyed, DCSGW_File_Saving_Ground_Destroyed ) 
--                
--                env.info( "Nouvelle unité Static register : "..unitName.. " Type = "..unitType)           
--          
--          for x = 1, nbr_Units_init_in_Group  do
--            if TableGroundUnits[GroupCreatedName]["Units"][x]["Name"] == unitName then 
--               
--               TableGroundUnits[GroupCreatedName]["Units"][x]["Life"] = -1
--                        
--            end    
--          end
--          
--        if nbr_Units_in_Group <= 0 then
--          env.info( "Toutes les unités du groupe "..GroupCreatedName.." sont détruites")
--          TableGroundUnits[GroupCreatedName] = nil
--          
--          Saving_Ground_Group = IntegratedserializeWithCycles( TableNameCoalition, TableGroundUnits )
--          writemission( Saving_Ground_Group, SaveFileCoalition )
--        end
--    end
  -- Empty groupData pour passer au suivant
    groupData = {}
  end
end

function DCSGW_FNC_Ground_Accounts_init ()
  if file_exists( DCSGW_File_Saving_Ground_Accounts ) then
    -- Read file
    dofile(DCSGW_File_Saving_Ground_Accounts)
        --return table GroundGroupsAccounts= {...}  
    env.info( "Le fichier de sauvegarde Accounts : "..DCSGW_File_Saving_Ground_Accounts.." est en cours de chargement" )    
    -- Fill table Accounts
    DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"]   = GroundGroupsAccounts["ID_Group_Ground_BLUE"]
    DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"]    = GroundGroupsAccounts["ID_Group_Ground_RED"]
    DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_BLUE"]    = GroundGroupsAccounts["ID_Unit_Ground_BLUE"]
    DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_RED"]     = GroundGroupsAccounts["ID_Unit_Ground_RED"]      
  else
    env.info( "Le fichier de sauvegarde Accounts : "..DCSGW_File_Saving_Ground_Accounts.." n'éxiste pas, un nouveau sera créé" )
    -- Fill Init table Account
    DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"]   = 0
    DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"]    = 0
    DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_BLUE"]    = 0
    DCSGW_TABLE_Ground_Accounts["ID_Unit_Ground_RED"]     = 0
    -- Create file 
    Saving_Ground_Accounts = IntegratedserializeWithCycles( DCSGW_TABLE_Ground_Accounts_Name, DCSGW_TABLE_Ground_Accounts )
    writemission( Saving_Ground_Accounts, DCSGW_File_Saving_Ground_Accounts )    
  end   
end

function DCSGW_FNC_Ground_Accounts_update ()

end

function DCSGW_FNC_Event_Ground_Units_Dead ( GroupEventDead )

  GroupEventDead:HandleEvent( EVENTS.Dead )
  
    function  GroupEventDead:OnEventDead( EventData )
        local GroupCreatedName          = GroupEventDead:GetName()
        local GroupCreated_Compo        = GroupEventDead:GetUnits()
        local nbr_Units_in_Group        = #GroupCreated_Compo - 1
        local nbr_Units_init_in_Group   = GroupEventDead:GetInitialSize() - 1
        local unitName                  = EventData.IniUnitName
        local unit                      = EventData.IniUnit
        local unitCoalition             = EventData.IniCoalition
        local unitPosition              = unit:GetVec2()
        local unitType                  = EventData.IniTypeName
        
          if unitCoalition == 2 then 
              TableNameCoalition  = DCSGW_TABLE_BLUE_Name
              TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
          elseif unitCoalition == 1 then 
              TableNameCoalition  = DCSGW_TABLE_RED_Name
              TableGroundUnits    = DCSGW_TABLE_RED_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
          end   
          
          env.info( "L'unité : "..unitName.." est détruite, il reste "..nbr_Units_in_Group.." unités dans le groupe "..GroupCreatedName)
              
               --Inscription à la Table Destroyed
                DCSGW_TABLE_STATIC_Ground_destroyed[unitName] = {}
                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Name"]         = unitName
                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Coalition"]    = unitCoalition
                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Type"]         = unitType
                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["x"]            = unitPosition.x
                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["y"]            = unitPosition.y
                DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Dead"]         = true               
                
              -- Réécriture table
                Saving_Ground_Unit_Destroyed = IntegratedserializeWithCycles( DCSGW_TABLE_Destroyed_Name, DCSGW_TABLE_STATIC_Ground_destroyed )
                writemission( Saving_Ground_Unit_Destroyed, DCSGW_File_Saving_Ground_Destroyed ) 
                
                env.info( "Nouvelle unité Static register : "..unitName.. " Type = "..unitType)           
          
          for x = 1, nbr_Units_init_in_Group  do
            if TableGroundUnits[GroupCreatedName]["Units"][x]["Name"] == unitName then 
               
               TableGroundUnits[GroupCreatedName]["Units"][x]["Life"] = -1
                        
            end    
          end
          
        if nbr_Units_in_Group <= 0 then
          env.info( "Toutes les unités du groupe "..GroupCreatedName.." sont détruites")
          TableGroundUnits[GroupCreatedName] = nil
          
          Saving_Ground_Group = IntegratedserializeWithCycles( TableNameCoalition, TableGroundUnits )
          writemission( Saving_Ground_Group, SaveFileCoalition )
        end
    end

end

function DCSGW_FNC_Static_Spawn ()

    for k,v in pairs( GroundGroupsDestroyed ) do
        local NameStatic        = GroundGroupsDestroyed[k]["Name"]
        local CoalitionStatic   = GroundGroupsDestroyed[k]["Coalition"]
        local PositionXStatic   = GroundGroupsDestroyed[k]["x"]
        local PositionYStatic   = GroundGroupsDestroyed[k]["y"]
        local HeadingStatic     = math.random(0,360)
        local TypeStatic        = GroundGroupsDestroyed[k]["Type"]
        local CountryStatic     = nil
        
          if CoalitionStatic == 2 then 
              CountryStatic = 80
          elseif CoalitionStatic == 1 then 
              CountryStatic = 81
          end  
        
        
        
        local staticObj = {
            ["heading"] = HeadingStatic,
--            ["groupId"] = 3,
            ["shape_name"] = NameStatic,
            ["type"] = TypeStatic,
--            ["unitId"] = 3,
--            ["rate"] = 100,
            ["name"] = NameStatic,
--            ["category"] = "Fortifications",
            ["y"] = PositionYStatic,
            ["x"] = PositionXStatic,
            ["dead"] = true,
          }
          
          coalition.addStaticObject(CountryStatic, staticObj)
        
        staticObj = {}
            -- register in table pour prochaines Saves
                DCSGW_TABLE_STATIC_Ground_destroyed[k] = {}
                DCSGW_TABLE_STATIC_Ground_destroyed[k]["Name"]         = NameStatic
                DCSGW_TABLE_STATIC_Ground_destroyed[k]["Coalition"]    = CoalitionStatic
                DCSGW_TABLE_STATIC_Ground_destroyed[k]["Type"]         = TypeStatic
                DCSGW_TABLE_STATIC_Ground_destroyed[k]["x"]            = PositionXStatic
                DCSGW_TABLE_STATIC_Ground_destroyed[k]["y"]            = PositionYStatic
                DCSGW_TABLE_STATIC_Ground_destroyed[k]["Dead"]         = true               
        
        
        
--        local groupData = {
--                      ["visible"] = false,
--                      ["lateActivation"] = false,
--                      ["tasks"] = {},
--                      ["uncontrollable"] = false,
--                      ["task"] = "Ground Nothing",
--                      ["taskSelected"] = true,
--                      ["route"] = {},
--                      ["hidden"] = false,
--                      ["units"] = {},
--                      ["y"] = PositionYStatic,
--                      ["x"] = PositionXStatic,
--                      ["name"] = NameStatic,
--                      ["start_time"] = 0,
--                      ["dead"] = true,
--                    } -- end of [1]
--                    
--                        groupData["units"][1] = {} 
--                        groupData["units"][1]["type"]     = TypeStatic
--                        groupData["units"][1]["y"]        = PositionYStatic
--                        groupData["units"][1]["x"]        = PositionXStatic
--                        groupData["units"][1]["name"]     = NameStatic
--                        groupData["units"][1]["heading"]  = HeadingStatic
--                        
--                coalition.addStaticObject(CountryStatic, groupData)
----                coalition.addGroup(CountryStatic, StaticObject.Category.STATIC, groupData)
--                groupData = {}
      end
end


--------------------------------------------------------------------------------------------------------
-- RUN Spawning units registered in file
--------------------------------------------------------------------------------------------------------
  -- Gestion GROUND ACCOUNTS
  -----------------------------------------------------------  

  DCSGW_FNC_Ground_Accounts_init ()

  SCHEDULER_GroupsAccountUpdate = SCHEDULER:New( nil, 
    function ()  
          
          Saving_Ground_Accounts = IntegratedserializeWithCycles( DCSGW_TABLE_Ground_Accounts_Name, DCSGW_TABLE_Ground_Accounts )
          writemission( Saving_Ground_Accounts, DCSGW_File_Saving_Ground_Accounts ) 
          
    end, {}, 5, 10 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
) -- End Scheduler
  
    -- Gestion GROUND DESTROYED
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Ground_Destroyed ) then
    -- Ouverture du fichier de sauvegarde.
    dofile(DCSGW_File_Saving_Ground_Destroyed)
    DCSGW_FNC_Static_Spawn ( GroundGroupsDestroyed )
      -- "GroundGroupsDestroyed"
    env.info( "Le fichier de sauvegarde DESTROYED Ground Units : "..DCSGW_File_Saving_Ground_Destroyed.." est en cours de chargement" )
  else 
    env.info( "Le fichier de sauvegarde DESTROYED Ground Units : "..DCSGW_File_Saving_Ground_Destroyed.." n'éxiste pas, un nouveau sera créé lors de l'apparition de nouvelles unités ground détruites sur carte" )
  end
  
  
  
  -- Gestion GROUND BLUE
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Ground_BLUE ) then
    -- Ouverture du fichier de sauvegarde.
    dofile(DCSGW_File_Saving_Ground_BLUE)
    
    DCSGW_File_Saving_Ground = GroundGroupsBlue
    
    DCSGW_FNC_SPAWN_Ground_Groups ( DCSGW_File_Saving_Ground ) 
    
    env.info( "Le fichier de sauvegarde BLUE: "..DCSGW_File_Saving_Ground_BLUE.." est en cours de chargement" )
  else 
    env.info( "Le fichier de sauvegarde BLUE: "..DCSGW_File_Saving_Ground_BLUE.." n'éxiste pas, un nouveau sera créé lors de l'apparition de nouvelles unités ground sur carte" )
  end
  -- Gestion GROUND RED
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Ground_RED ) then
    -- Ouverture du fichier de sauvegarde.
    dofile(DCSGW_File_Saving_Ground_RED)
    
    DCSGW_File_Saving_Ground = GroundGroupsRed
    
    DCSGW_FNC_SPAWN_Ground_Groups ( DCSGW_File_Saving_Ground ) 
    
    env.info( "Le fichier de sauvegarde RED: "..DCSGW_File_Saving_Ground_RED.." est en cours de chargement" )
  else 
    env.info( "Le fichier de sauvegarde RED : "..DCSGW_File_Saving_Ground_RED.." n'éxiste pas, un nouveau sera créé lors de l'apparition de nouvelles unités ground sur carte" )
  end

-- Saving Groups
--------------------------------------------------------------------------------------------------------
DCSGW_SET_GROUND_UNITS:ForEachGroup(
      function( GROUP )

        local GroupeName          = GROUP:GetName()             -- return string
        local GroupeCoalition     = GROUP:GetCoalition()        -- return DCS#Coalition.side (0,1,2)
        local GroupeCountry       = GROUP:GetCountry()          -- return DCS#country.id
        --local GroupeType        = Group:GetType()             -- return string
        local GroupeTypeName      = GROUP:GetTypeName()        -- return string
        local GroupePosition      = GROUP:GetVec2()             -- return Vec2 ( GroupePosition.x / GroupePosition.y )
        --local GroupePosition    = GROUP:GetVec3()             -- return Vec3 ( GroupePosition.x / GroupePosition.y / GroupePosition.z )
        local TableNameCoalition  = nil
        local SaveFileCoalition   = nil
        local TableGroundUnits    = nil 
          
          if GroupeCoalition == 2 then 
              TableNameCoalition  = DCSGW_TABLE_BLUE_Name
              TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
          elseif GroupeCoalition == 1 then 
              TableNameCoalition  = DCSGW_TABLE_RED_Name
              TableGroundUnits    = DCSGW_TABLE_RED_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
          end

        local GroupeUnits       = GROUP:GetUnits()            -- return Table
        
        local GroupeUnits_Count = #GroupeUnits
        
        TableGroundUnits[GroupeName] = {}
        TableGroundUnits[GroupeName]["Name"]             = GroupeName
        TableGroundUnits[GroupeName]["Coalition"]        = GroupeCoalition
        TableGroundUnits[GroupeName]["Country"]          = GroupeCountry
        TableGroundUnits[GroupeName]["Type"]             = GroupeTypeName
        TableGroundUnits[GroupeName]["Position"]         = {}
        TableGroundUnits[GroupeName]["Position"]["x"]    = GroupePosition.x                                                 
        TableGroundUnits[GroupeName]["Position"]["y"]    = GroupePosition.y
        TableGroundUnits[GroupeName]["Units"]            = {}
        TableGroundUnits[GroupeName]["DCSGW_TASK"]       = {}
          
        for i = 1, GroupeUnits_Count do
          local Unit          = GROUP:GetUnit( i )
          local UnitPosition  = Unit:GetVec2()
                    
          TableGroundUnits[GroupeName]["Units"][i] = {}
          TableGroundUnits[GroupeName]["Units"][i]["Name"]     = Unit:GetName()
          TableGroundUnits[GroupeName]["Units"][i]["Type"]     = Unit:GetTypeName()
          TableGroundUnits[GroupeName]["Units"][i]["x"]        = UnitPosition.x
          TableGroundUnits[GroupeName]["Units"][i]["y"]        = UnitPosition.y
          TableGroundUnits[GroupeName]["Units"][i]["Heading"]  = Unit:GetHeading()
          TableGroundUnits[GroupeName]["Units"][i]["Life"]     = 1
        end

        Saving_Ground_Group = IntegratedserializeWithCycles( TableNameCoalition, TableGroundUnits )
        writemission( Saving_Ground_Group, SaveFileCoalition )
        
      end
      )

-- Routine d'Update des groupes
--------------------------------------------------------------------------------------------------------
SCHEDULER_countGroupsBlue = SCHEDULER:New( nil, 
  function ()      
    DCSGW_SET_GROUND_UNITS:ForEachGroup(
          function( GROUP )
          
          if GROUP:IsAlive() then 
            local GroupeName          = GROUP:GetName()             -- return string
            local GroupeCoalition     = GROUP:GetCoalition()        -- return DCS#Coalition.side (0,1,2)
            local GroupeCountry       = GROUP:GetCountry()          -- return DCS#country.id
            local GroupePosition      = GROUP:GetVec2()             -- return Vec2 ( GroupePosition.x / GroupePosition.y )
            local GroupeUnits         = GROUP:GetUnits()            -- return Table
            
            local GroupeUnits_Count = #GroupeUnits
            
            local TableNameCoalition  = nil
            local SaveFileCoalition   = nil
            local TableGroundUnits    = nil 
          
            if GroupeCoalition == 2 then 
                TableNameCoalition    = DCSGW_TABLE_BLUE_Name
                TableGroundUnits      = DCSGW_TABLE_BLUE_Ground
                SaveFileCoalition     = DCSGW_File_Saving_Ground_BLUE
            elseif GroupeCoalition == 1 then 
                TableNameCoalition    = DCSGW_TABLE_RED_Name
                TableGroundUnits      = DCSGW_TABLE_RED_Ground
                SaveFileCoalition     = DCSGW_File_Saving_Ground_RED
            end
            
            -- Si le groupe est vivant / existant, on update uniquement la positon groupe
            TableGroundUnits[GroupeName]["Position"]["x"]    = GroupePosition.x                                                 
            TableGroundUnits[GroupeName]["Position"]["y"]    = GroupePosition.y
          
            for i = 1, GroupeUnits_Count do
                local Unit            = GROUP:GetUnit( i )
                local UnitPosition    = Unit:GetVec2()
                local UnitLife        = TableGroundUnits[GroupeName]["Units"][i]["Life"]
                
                -- si l'unité est vivante, on update uniquement sa position et son heading
                if UnitLife > 0 then
                  TableGroundUnits[GroupeName]["Units"][i]["x"]        = UnitPosition.x
                  TableGroundUnits[GroupeName]["Units"][i]["y"]        = UnitPosition.y
                  TableGroundUnits[GroupeName]["Units"][i]["Heading"]  = Unit:GetHeading()
                end
            end
          
            -- On écrit le file concerné par l'unité
            Saving_Ground_Group = IntegratedserializeWithCycles( TableNameCoalition, TableGroundUnits )
            writemission( Saving_Ground_Group, SaveFileCoalition )
          
            env.info( "Group updated : "..GroupeName )
           
          else
            env.info( "Group : "..GROUP:GetName().." n'existe plus" )
            
          end
          end
          ) -- End forEachGroup
          
  end, {}, DCSGW_Start_Ground_Saving_time, DCSGW_Interval_Ground_Saving_time -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
) -- End Scheduler




