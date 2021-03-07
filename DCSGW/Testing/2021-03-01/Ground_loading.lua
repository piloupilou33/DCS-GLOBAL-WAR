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

DCSGW_File_Saving_Ground_BLUE   = path_scripts.."__Testing\\Saves\\Ground_Blue.lua"
DCSGW_File_Saving_Ground_RED    = path_scripts.."__Testing\\Saves\\Ground_Red.lua"

DCSGW_TABLE_BLUE_Ground   = {}  -- empty table
DCSGW_TABLE_RED_Ground    = {}  -- empty table


-- Run Spawning units registered in file
--------------------------------------------------------------------------------------------------------
if file_exists( DCSGW_File_Saving_Ground_BLUE ) then
  -- Ouverture du fichier de sauvegarde.
  dofile(DCSGW_File_Saving_Ground_BLUE)
  
  for k,v in pairs( GroundGroupsBlue ) do
  
      env.info( "Value K : "..k )
      
      local GroupeCountry     = GroundGroupsBlue[k]["Country"]
      local GroupeCoalition   = GroundGroupsBlue[k]["Coalition"]
      
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
              ["y"] = GroundGroupsBlue[k]["Position"]["y"],
              ["x"] = GroundGroupsBlue[k]["Position"]["x"],
              ["name"] = GroundGroupsBlue[k]["Name"],
              ["start_time"] = 0,
            } -- end of [1]

        -- Ajout des Units du GROUP
           y = 0
        
          for x = 1, #GroundGroupsBlue[k]["Units"] do
            
            local UnitType        = GroundGroupsBlue[k]["Units"][x]["Type"]
            local UnitPositionX   = GroundGroupsBlue[k]["Units"][x]["x"]
            local UnitPositionY   = GroundGroupsBlue[k]["Units"][x]["y"]
            local UnitName        = GroundGroupsBlue[k]["Units"][x]["Name"]
            local UnitHeading     = GroundGroupsBlue[k]["Units"][x]["Heading"]
          
            if GroundGroupsBlue[k]["Units"][x]["Life"] == 1 then
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
    local GroupCreated = GROUP:FindByName( GroundGroupsBlue[k]["Name"] )
    
    GroupCreated:HandleEvent( EVENTS.Dead )
  
    function  GroupCreated:OnEventDead( EventData )
        local GroupCreatedName          = GroupCreated:GetName()
        local GroupCreated_Compo        = GroupCreated:GetUnits()
        local nbr_Units_in_Group        = #GroupCreated_Compo - 1
        local nbr_Units_init_in_Group   = GroupCreated:GetInitialSize() - 1
        local unitName                  = EventData.IniUnitName
          
          env.info( "L'unité : "..unitName.." est détruite, il reste "..nbr_Units_in_Group.." unités dans le groupe "..GroupCreatedName)
          
          for x = 1, nbr_Units_init_in_Group  do
            if DCSGW_TABLE_BLUE_Ground[GroupCreatedName]["Units"][x]["Name"] == unitName then 
               DCSGW_TABLE_BLUE_Ground[GroupCreatedName]["Units"][x]["Life"] = -1
            end    
          end
          
        if nbr_Units_in_Group <= 0 then
          env.info( "Toutes les unités du groupe "..GroupCreatedName.." sont détruites")
          DCSGW_TABLE_BLUE_Ground[GroupCreatedName] = nil
          
          Saving_Ground_Group = IntegratedserializeWithCycles( "GroundGroupsBlue", DCSGW_TABLE_BLUE_Ground )
          writemission( Saving_Ground_Group, DCSGW_File_Saving_Ground_BLUE )
          
        end
        
    end
  
  -- Empty groupData pour passer au suivant
  groupData = {}
 
  end

else 
  
  env.info( "Le fichier de sauvegarde : "..DCSGW_File_Saving_Ground_BLUE.." n'éxiste pas, un nouveau sera créé lors de l'apparition de nouvelles unités ground sur carte" )

end

--------------------------------------------------------------------------------------------------------
env.info( "DCSGW -- GROUND LOADING ---------------------------------- Loaded ---" )