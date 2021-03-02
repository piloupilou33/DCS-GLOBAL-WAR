env.info( "DCSGW -- GROUND SAVING ---------------------------------- Loading..." )
--------------------------------------------------------------------------------------------------------

-- Registering des groupes au lancement mission (si pas d'existant)
--------------------------------------------------------------------------------------------------------
DCSGW_SET_GROUND_UNITS:ForEachGroup(
      function( GROUP )

        local GroupeName        = GROUP:GetName()             -- return string
        local GroupeCoalition   = GROUP:GetCoalition()        -- return DCS#Coalition.side (0,1,2)
        local GroupeCountry     = GROUP:GetCountry()          -- return DCS#country.id
        --local GroupeType        = Group:GetType()             -- return string
        local GroupeTypeName    = GROUP:GetTypeName()        -- return string
        local GroupePosition    = GROUP:GetVec2()             -- return Vec2 ( GroupePosition.x / GroupePosition.y )
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
            local GroupeName        = GROUP:GetName()             -- return string
            local GroupeCoalition   = GROUP:GetCoalition()        -- return DCS#Coalition.side (0,1,2)
            local GroupeCountry     = GROUP:GetCountry()          -- return DCS#country.id
            local GroupePosition    = GROUP:GetVec2()             -- return Vec2 ( GroupePosition.x / GroupePosition.y )
            local GroupeUnits       = GROUP:GetUnits()            -- return Table
            
            local GroupeUnits_Count = #GroupeUnits
            
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
            
            -- Si le groupe est vivant / existant, on update uniquement la positon groupe
            TableGroundUnits[GroupeName]["Position"]["x"]    = GroupePosition.x                                                 
            TableGroundUnits[GroupeName]["Position"]["y"]    = GroupePosition.y
          
            for i = 1, GroupeUnits_Count do
                local Unit          = GROUP:GetUnit( i )
                local UnitPosition  = Unit:GetVec2()
                local UnitLife      = TableGroundUnits[GroupeName]["Units"][i]["Life"]
                
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
          
  end, {}, 10, DCSGW_Interval_Ground_Saving_time -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
) -- End Scheduler


--------------------------------------------------------------------------------------------------------
env.info( "DCSGW -- GROUND SAVING ---------------------------------- Loaded ---" )