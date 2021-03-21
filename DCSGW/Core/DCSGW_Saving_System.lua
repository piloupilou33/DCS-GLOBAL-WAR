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

DCSGW_File_Saving_Ground_BLUE         = DCSGW_Saving_Folder_Ground.."Ground_Blue.lua"
DCSGW_File_Saving_Ground_RED          = DCSGW_Saving_Folder_Ground.."Ground_Red.lua"
DCSGW_File_Saving_Ground_Destroyed    = DCSGW_Saving_Folder_Static.."Ground_Destroyed.lua"
DCSGW_File_Saving_Scenery_Destroyed   = DCSGW_Saving_Folder_Static.."Scenery_Destroyed.lua"

DCSGW_TABLE_BLUE_Ground               = {}  -- empty table
DCSGW_TABLE_RED_Ground                = {}  -- empty table

DCSGW_TABLE_BLUE_Ground_Name          = "GroundGroupsBlue"        -- Table BLUE du file de saving
DCSGW_TABLE_RED_Ground_Name           = "GroundGroupsRed"         -- Table RED du file de saving
DCSGW_TABLE_Destroyed_Ground_Name     = "GroundGroupsDestroyed"   -- Table DESTROYED du file de saving
DCSGW_TABLE_Scenery_Name              = "SceneryDestroyed"        -- Table SCENERY du file de saving

DCSGW_SET_GROUND_UNITS                = SET_GROUP:New():FilterCategories("ground"):FilterStart()

DCSGW_SAVING_Loaded = false
-- Register Functions
--------------------------------------------------------------------------------------------------------

function DCSGW_SET_GROUND_UNITS:OnAfterAdded(From, Event, To, ObjectName, Object)
        local RegisteredGroup     = Object                          -- Catch Object de l'event
        local GroupeName          = RegisteredGroup:GetName()       -- return string
        local GroupeCoalition     = RegisteredGroup:GetCoalition()  -- return DCS#Coalition.side (0,1,2)
        local GroupeCountry       = RegisteredGroup:GetCountry()    -- return DCS#country.id
        local GroupePosition      = RegisteredGroup:GetVec2()       -- return Vec2 ( GroupePosition.x / GroupePosition.y )
        local TableNameCoalition  = nil
        local SaveFileCoalition   = nil
        local TableGroundUnits    = nil 
         
          if GroupeCoalition == 2 then 
              TableNameCoalition  = DCSGW_TABLE_BLUE_Ground_Name
              TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
          elseif GroupeCoalition == 1 then 
              TableNameCoalition  = DCSGW_TABLE_RED_Ground_Name
              TableGroundUnits    = DCSGW_TABLE_RED_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
          end

        local GroupeUnits       = RegisteredGroup:GetUnits()    -- return Table
        local GroupeUnits_Count = #GroupeUnits
        
        TableGroundUnits[GroupeName] = {}
        TableGroundUnits[GroupeName]["Name"]             = GroupeName
        TableGroundUnits[GroupeName]["Coalition"]        = GroupeCoalition
        TableGroundUnits[GroupeName]["Country"]          = GroupeCountry
        TableGroundUnits[GroupeName]["Position"]         = {}
        TableGroundUnits[GroupeName]["Position"]["x"]    = GroupePosition.x                                                 
        TableGroundUnits[GroupeName]["Position"]["y"]    = GroupePosition.y
        TableGroundUnits[GroupeName]["Units"]            = {}
        TableGroundUnits[GroupeName]["DCSGW_TASK"]       = {}
          
        for z = 1, GroupeUnits_Count do
          local Unit          = RegisteredGroup:GetUnit( z )
          local UnitType      = Unit:GetTypeName()
          local UnitPosition  = Unit:GetVec2()
          
          local cost          = 0
          local maintenance   = 0
          local bonuskill     = 0
          
          for k,v in pairs( CSV_Prices_Units_db ) do
            if UnitType == CSV_Prices_Units_db[k][1] then
              cost        = tonumber( CSV_Prices_Units_db[k][10] )
              maintenance = tonumber( CSV_Prices_Units_db[k][11] )
              bonuskill   = tonumber( CSV_Prices_Units_db[k][12] )
            end
          end   
        
          TableGroundUnits[GroupeName]["Units"][z] = {}
          TableGroundUnits[GroupeName]["Units"][z]["Name"]      = Unit:GetName()
          TableGroundUnits[GroupeName]["Units"][z]["Type"]      = UnitType
          TableGroundUnits[GroupeName]["Units"][z]["x"]         = UnitPosition.x
          TableGroundUnits[GroupeName]["Units"][z]["y"]         = UnitPosition.y
          TableGroundUnits[GroupeName]["Units"][z]["Heading"]   = Unit:GetHeading()
          TableGroundUnits[GroupeName]["Units"][z]["Life"]      = 1
          TableGroundUnits[GroupeName]["Units"][z]["Cost"]      = cost
          TableGroundUnits[GroupeName]["Units"][z]["Maint"]     = maintenance
          TableGroundUnits[GroupeName]["Units"][z]["BonusKill"] = bonuskill
          
        end
            
    env.info("DCSGW Saving System => New Ground Group Registered : "..ObjectName)
end

function DCSGW_FNC_SPAWN_Ground_Groups ( DCSGW_File_Saving_Ground )

  for k,v in pairs( DCSGW_File_Saving_Ground ) do
        local GroupeCoalition   = DCSGW_File_Saving_Ground[k]["Coalition"]
        local TableNameCoalition  = nil
        local SaveFileCoalition   = nil
        local TableGroundUnits    = nil 
        local GroupeCountry     = DCSGW_File_Saving_Ground[k]["Country"]
        local GroupeCoalition   = DCSGW_File_Saving_Ground[k]["Coalition"]      
          
          if GroupeCoalition == 2 then 
              TableNameCoalition  = DCSGW_TABLE_BLUE_Ground_Name
              TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
          elseif GroupeCoalition == 1 then 
              TableNameCoalition  = DCSGW_TABLE_RED_Ground_Name
              TableGroundUnits    = DCSGW_TABLE_RED_Ground
              SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
          end  

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
            
            -- Si l'unité est morte (-1) on incrémente pour ne faire spawn que les vivantes.
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
      groupData = {}
  end
end

function DCSGW_FNC_Event_Ground_Dead ( GroupEventDead )

    function  GroupEventDead:OnEventDead( EventData )
      if EventData.IniUnit and EventData.IniCategory == Unit.Category.GROUND_UNIT then  -- Si unit existe bien et si c'est bien une unité uniquement ground
            local GroupCreatedName          = EventData.IniGroupName
            local WrapperGroup              = EventData.IniGroup
            
            local GroupCreated_Compo        = WrapperGroup:GetUnits()
            local nbr_Units_init_in_Group   = WrapperGroup:GetInitialSize()
            local nbr_Units_in_Group        = #GroupCreated_Compo - 1
            env.info( GroupCreatedName.." Nb Initial : "..nbr_Units_init_in_Group.." Restant : "..nbr_Units_in_Group)
            local unitName                  = EventData.IniUnitName
            local unit                      = EventData.IniUnit
            local unitCoalition             = EventData.IniCoalition
            local unitPosition              = unit:GetVec2()
            local unitType                  = EventData.IniTypeName
  
            if unitCoalition == 2 then 
                TableNameCoalition  = DCSGW_TABLE_BLUE_Ground_Name
                TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
                SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
            elseif unitCoalition == 1 then 
                TableNameCoalition  = DCSGW_TABLE_RED_Ground_Name
                TableGroundUnits    = DCSGW_TABLE_RED_Ground
                SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
            end                      
            --Inscription à la Table Destroyed
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName] = {}
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Name"]         = unitName
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Coalition"]    = unitCoalition
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Type"]         = unitType
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["x"]            = unitPosition.x
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["y"]            = unitPosition.y
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Dead"]         = true               
            DCSGW_TABLE_STATIC_Ground_destroyed[unitName]["Turn_event"]   = DSWGW_CONFIG["Turn"]
            -- Réécriture table
            Saving_Ground_Unit_Destroyed = IntegratedserializeWithCycles( DCSGW_TABLE_Destroyed_Ground_Name, DCSGW_TABLE_STATIC_Ground_destroyed )
            writemission( Saving_Ground_Unit_Destroyed, DCSGW_File_Saving_Ground_Destroyed ) 
            
            env.info( "DCSGW Saving System => Nouvelle unité Static register : "..unitName.. " Type = "..unitType)           
            
            for x = 1, nbr_Units_init_in_Group  do
              if TableGroundUnits[GroupCreatedName]["Units"][x]["Name"] == unitName then TableGroundUnits[GroupCreatedName]["Units"][x]["Life"] = -1 end
            end
            
            if nbr_Units_in_Group == 0 then
              env.info( "DCSGW Saving System => Toutes les unités du groupe "..GroupCreatedName.." sont détruites")
              TableGroundUnits[GroupCreatedName] = nil
              
              Saving_Ground_Group = IntegratedserializeWithCycles( TableNameCoalition, TableGroundUnits )
              writemission( Saving_Ground_Group, SaveFileCoalition )
            end
        end
    end
end

function DCSGW_FNC_Event_Scenery_Dead ()

  function  SceneryEventDead:OnEventDead( EventData )
    if EventData.IniUnit and EventData.IniObjectCategory==Object.Category.SCENERY then
      local Position_scenery  = EventData.IniUnit:GetVec3()
      local initiator_scenery = EventData.initiator.id_
      DCSGW_TABLE_Scenery[initiator_scenery] = {}
      DCSGW_TABLE_Scenery[initiator_scenery]["x"] = Position_scenery.x
      DCSGW_TABLE_Scenery[initiator_scenery]["y"] = Position_scenery.y
      DCSGW_TABLE_Scenery[initiator_scenery]["z"] = Position_scenery.z
      DCSGW_TABLE_Scenery[initiator_scenery]["Turn_event"] = DSWGW_CONFIG["Turn"]
      
      Saving_scenery_Destroyed = IntegratedserializeWithCycles( DCSGW_TABLE_Scenery_Name, DCSGW_TABLE_Scenery )
      writemission( Saving_scenery_Destroyed, DCSGW_File_Saving_Scenery_Destroyed ) 
      env.info( "DCSGW Saving System => Update & Save Scenery file : OK" )
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
          ["shape_name"] = NameStatic,
          ["type"] = TypeStatic,
          ["name"] = NameStatic,
          ["y"] = PositionYStatic,
          ["x"] = PositionXStatic,
          ["dead"] = true,
        }
    
      coalition.addStaticObject(CountryStatic, staticObj)
      staticObj = {}
    end
end

function DCSGW_FNC_Scenery_Exploz ()
  for k,v in pairs( SceneryDestroyed ) do
  
  local turn_current = DSWGW_CONFIG["Turn"]
  local turn_event_scenery = SceneryDestroyed[k].Turn_event
  local turn_suppr_scenery = turn_event_scenery + DCSGW_LifeTime_Scenery_Destroyed
    
    if turn_current >= turn_suppr_scenery  then
      SceneryDestroyed[k] = nil
    else  
      local vec3 = COORDINATE:New(SceneryDestroyed[k].x, SceneryDestroyed[k].y, SceneryDestroyed[k].z)
      vec3:Explosion(1000)
    end
  end
  DCSGW_TABLE_Scenery  = SceneryDestroyed
  
  Saving_scenery_Destroyed = IntegratedserializeWithCycles( DCSGW_TABLE_Scenery_Name, DCSGW_TABLE_Scenery )
  writemission( Saving_scenery_Destroyed, DCSGW_File_Saving_Scenery_Destroyed ) 
end

--------------------------------------------------------------------------------------------------------
-- RUN Spawning units registered in file
--------------------------------------------------------------------------------------------------------

  -----------------------------------------------------------
  -- Gestion SCENERY DESTROYED
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Scenery_Destroyed ) then
    dofile(DCSGW_File_Saving_Scenery_Destroyed)
    DCSGW_FNC_Scenery_Exploz ()
    env.info( "DCSGW Saving System => file DESTROYED Scenery en cours de chargement : "..DCSGW_File_Saving_Scenery_Destroyed )
  else
    DCSGW_TABLE_Scenery  = {}  -- empty table
    env.info( "DCSGW Saving System => file DESTROYED Scenery not found, un nouveau fichier sera disponible : "..DCSGW_File_Saving_Scenery_Destroyed )
  end
  -----------------------------------------------------------
  -- Gestion GROUND DESTROYED
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Ground_Destroyed ) then
    -- Ouverture du fichier de sauvegarde.
    dofile(DCSGW_File_Saving_Ground_Destroyed)
    DCSGW_TABLE_STATIC_Ground_destroyed = GroundGroupsDestroyed
    DCSGW_FNC_Static_Spawn ()

    env.info( "DCSGW Saving System => file DESTROYED Ground en cours de chargement : "..DCSGW_File_Saving_Ground_Destroyed )
  else
    DCSGW_TABLE_STATIC_Ground_destroyed = {}
    env.info( "DCSGW Saving System => file DESTROYED Ground not found, un nouveau fichier sera disponible : "..DCSGW_File_Saving_Ground_Destroyed )
  end
  -----------------------------------------------------------
  -- Gestion GROUND BLUE
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Ground_BLUE ) then
    -- Ouverture du fichier de sauvegarde.
    dofile(DCSGW_File_Saving_Ground_BLUE)
    DCSGW_File_Saving_Ground = GroundGroupsBlue
    DCSGW_FNC_SPAWN_Ground_Groups ( DCSGW_File_Saving_Ground )
    env.info( "DCSGW Saving System => file BLUE Ground en cours de chargement : "..DCSGW_File_Saving_Ground_BLUE )
  else
    env.info( "DCSGW Saving System => file BLUE Ground not found, un nouveau fichier sera disponible : "..DCSGW_File_Saving_Ground_BLUE )
  end
  -----------------------------------------------------------
  -- Gestion GROUND RED
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Ground_RED ) then
    -- Ouverture du fichier de sauvegarde.
    dofile(DCSGW_File_Saving_Ground_RED)
    DCSGW_File_Saving_Ground = GroundGroupsRed
    DCSGW_FNC_SPAWN_Ground_Groups ( DCSGW_File_Saving_Ground )
    env.info( "DCSGW Saving System => file RED  Ground en cours de chargement : "..DCSGW_File_Saving_Ground_RED )
  else
    env.info( "DCSGW Saving System => file RED  Ground not found, un nouveau fichier sera disponible : "..DCSGW_File_Saving_Ground_RED )
  end

--------------------------------------------------------------------------------------------------------
-- EVENT DEAD
--------------------------------------------------------------------------------------------------------

-- Decalage de 3 min du lancement de l'Event pour éviter les redondances
SCHEDULER:New( nil, function ()
    SceneryEventDead = EVENTHANDLER:New()
    SceneryEventDead:HandleEvent( EVENTS.Dead )
    DCSGW_FNC_Event_Scenery_Dead()
    env.info("DCSGW Saving System => Scheduler Dead Scenery Event - Activated")
end, {}, 60*3 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
) -- End Scheduler

SCHEDULER:New( nil, function ()
    GroupEventDead = EVENTHANDLER:New()
    GroupEventDead:HandleEvent( EVENTS.Dead )
    DCSGW_FNC_Event_Ground_Dead ( GroupEventDead )
    env.info("DCSGW Saving System => Scheduler Dead Ground Event - Activated")
end, {}, 10 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
) -- End Scheduler

--------------------------------------------------------------------------------------------------------
-- Saving Groups - Register all group on ma and/or update
--------------------------------------------------------------------------------------------------------
DCSGW_SET_GROUND_UNITS:ForEachGroup(
  function( GROUP )
  
    local GroupeName          = GROUP:GetName()       -- return string
    local GroupeCoalition     = GROUP:GetCoalition()  -- return DCS#Coalition.side (0,1,2)
    local GroupeCountry       = GROUP:GetCountry()    -- return DCS#country.id
    local GroupeTypeName      = GROUP:GetTypeName()   -- return string
    local GroupePosition      = GROUP:GetVec2()       -- return Vec2 ( GroupePosition.x / GroupePosition.y )
    local GroupeUnits         = GROUP:GetUnits()      -- return Table
    local GroupeUnits_Count   = #GroupeUnits
    local TableNameCoalition  = nil
    local SaveFileCoalition   = nil
    local TableGroundUnits    = nil

    if GroupeCoalition == 2 then
      TableNameCoalition  = DCSGW_TABLE_BLUE_Ground_Name
      TableGroundUnits    = DCSGW_TABLE_BLUE_Ground
      SaveFileCoalition   = DCSGW_File_Saving_Ground_BLUE
    elseif GroupeCoalition == 1 then
      TableNameCoalition  = DCSGW_TABLE_RED_Ground_Name
      TableGroundUnits    = DCSGW_TABLE_RED_Ground
      SaveFileCoalition   = DCSGW_File_Saving_Ground_RED
    end

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
    
    -- Save de la table
    Saving_Ground_Group = IntegratedserializeWithCycles( TableNameCoalition, TableGroundUnits )
    writemission( Saving_Ground_Group, SaveFileCoalition )

  end
  )

--------------------------------------------------------------------------------------------------------
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
                TableGroundUnits      = DCSGW_TABLE_BLUE_Ground
            elseif GroupeCoalition == 1 then
                TableGroundUnits      = DCSGW_TABLE_RED_Ground
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
          else
            env.info( "DCSGW Saving System => Group : "..GROUP:GetName().." n'existe plus" )
          end
       end
          ) -- End forEachGroup
          
            -- On écrit le file concerné par l'unité (BLUE)
            Saving_Ground_Group_BLUE = IntegratedserializeWithCycles( DCSGW_TABLE_BLUE_Ground_Name, DCSGW_TABLE_BLUE_Ground )
            writemission( Saving_Ground_Group_BLUE, DCSGW_File_Saving_Ground_BLUE )
            env.info( "Save Ground Units BLUE file : Updated" )
            -- On écrit le file concerné par l'unité (RED)
            Saving_Ground_Group_RED = IntegratedserializeWithCycles( DCSGW_TABLE_RED_Ground_Name, DCSGW_TABLE_RED_Ground )
            writemission( Saving_Ground_Group_RED, DCSGW_File_Saving_Ground_RED )
            env.info( "Save Ground Units RED file : Updated" )
            
  end, {}, DCSGW_Start_Ground_Saving_time, DCSGW_Interval_Ground_Saving_time -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
) -- End Scheduler

DCSGW_SAVING_Loaded = true
--------------------------------------------------------------------------------------------------------
env.info("DCSGW - INFO : DCSGW_Saving_System.lua ==> LOADED")