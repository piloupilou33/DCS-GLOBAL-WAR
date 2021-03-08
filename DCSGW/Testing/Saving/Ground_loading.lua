env.info( "DCSGW -- GROUND LOADING ---------------------------------- Loading..." )
--------------------------------------------------------------------------------------------------------
  -- 0: AIRPLANE    
  -- 1: HELICOPTER  
  -- 2: GROUND_UNIT
  -- 3: SHIP  
  -- 4: STRUCTURE 
  
  -- 0: neutral
  -- 1: red
  -- 2: blue
--------------------------------------------------------------------------------------------------------

-- Parameters dans Defines
--------------------------------------------------------------------------------------------------------
DCSGW_Start_Ground_Saving_time        = 10  -- in seconds : Départ de la routine de saving après x secondes
DCSGW_Interval_Ground_Saving_time     = 5   -- in seconds : Le Saving des units se fera toutes les x secondes

DCSGW_File_Saving_Ground_BLUE         = path_scripts.."Testing\\Saving\\Saves\\Ground_Blue.lua"
DCSGW_File_Saving_Ground_RED          = path_scripts.."Testing\\Saving\\Saves\\Ground_Red.lua"
DCSGW_File_Saving_Ground_Destroyed    = path_scripts.."Testing\\Saving\\Saves\\Ground_Destroyed.lua"

DCSGW_TABLE_BLUE_Ground               = {}  -- empty table
DCSGW_TABLE_RED_Ground                = {}  -- empty table
DCSGW_TABLE_STATIC_Ground_destroyed   = {}  -- empty table

DCSGW_TABLE_BLUE_Name                 = "GroundGroupsBlue"        -- Table BLUE du file de saving
DCSGW_TABLE_RED_Name                  = "GroundGroupsRed"         -- Table RED du file de saving
DCSGW_TABLE_Destroyed_Name            = "GroundGroupsDestroyed"   -- Table DESTROYED du file de saving

DCSGW_SET_GROUND_UNITS        = SET_GROUP:New():FilterCategories("ground"):FilterStart()


function DCSGW_SET_GROUND_UNITS:OnAfterAdded(From, Event, To, ObjectName, Object)
  env.info("Name ADDED : "..ObjectName)
end

-- Register Function SPAWN GROUP
--------------------------------------------------------------------------------------------------------
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
    coalition.addGroup( GroupeCountry, 2, groupData )
   
   
   -- LANCEMENT EVENT pour le Group Créé
   --------------------------------------------------------------------------------------------------------
    local GroupCreated = GROUP:FindByName( DCSGW_File_Saving_Ground[k]["Name"] )
    
    GroupCreated:HandleEvent( EVENTS.Dead )
  
    function  GroupCreated:OnEventDead( EventData )
        local GroupCreatedName          = GroupCreated:GetName()
        local GroupCreated_Compo        = GroupCreated:GetUnits()
        local nbr_Units_in_Group        = #GroupCreated_Compo - 1
        local nbr_Units_init_in_Group   = GroupCreated:GetInitialSize() - 1
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
  -- Empty groupData pour passer au suivant
    groupData = {}
  end
end

-- Run Spawning units registered in file
--------------------------------------------------------------------------------------------------------
  
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

  -- Gestion GROUND DESTROYED
  -----------------------------------------------------------
  if file_exists( DCSGW_File_Saving_Ground_Destroyed ) then
    -- Ouverture du fichier de sauvegarde.
    dofile(DCSGW_File_Saving_Ground_Destroyed)
    
      -- "GroundGroupsDestroyed"
        
    env.info( "Le fichier de sauvegarde DESTROYED Ground Units : "..DCSGW_File_Saving_Ground_Destroyed.." est en cours de chargement" )
  else 
    env.info( "Le fichier de sauvegarde DESTROYED Ground Units : "..DCSGW_File_Saving_Ground_Destroyed.." n'éxiste pas, un nouveau sera créé lors de l'apparition de nouvelles unités ground détruites sur carte" )
  end

--------------------------------------------------------------------------------------------------------
env.info( "DCSGW -- GROUND LOADING ---------------------------------- Loaded ---" )