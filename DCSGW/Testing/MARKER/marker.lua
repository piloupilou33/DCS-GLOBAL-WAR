--=================================================================================
--=================================================================================
--
-- MARKER SYSTEM FOR MISSION DCSGW
--
--=================================================================================
--=================================================================================


-- Functions à créer
--
---- GLOBAL ------------------------------
--  -create ?   [ desc = ..       ] [process = ]

---- GESTION GROUPE ----------------------
--  -select     [ desc = Selectionner les unités dans un périmètre donné  ] [process = ]
--  -group      [ desc = Grouper les unités dans un périmètre donné       ] [process = ]
--  -ungroup    [ desc = Degrouper les unités d'un groupe                 ] [process = ]

---- TASKING -----------------------------
--  -move       [ desc = Grouper les unités dans un périmètre donné       ] [process = ]
--  -attack     [ desc = ..       ] [process = ]

---- UTILS -------------------------------
--  -coord      [ desc = donner des indications coordonnées à un point    ] [process = ]


-- for testing only
------------------------------------------
--abrams  = SPAWN:New("M-1 Abrams")
--T90     = SPAWN:New("T-90")
--f18     = SPAWN:New("FA-18C_hornet")
--su27    = SPAWN:New("Su-27")


---------------------------------------------
-- Function Spawn unit
---------------------------------------------
function SpawnRequest(text, coord)
  local Spawn = nil
    if text:find("abrams") then
      Spawn = abrams
    elseif text:find("T-90") then
      Spawn = T90  
    elseif text:find("f18") then
      Spawn = f18_blue    
    elseif text:find("su27") then
      Spawn = f18_blue  
    end
  Spawn:SpawnFromVec3(coord)
end
---------------------------------------------
-- Function destruction units
---------------------------------------------
function DestroyRequest(text, coord)
    local destroyZoneName     = string.format("destroy %d", destroyZoneCount)
    local zoneRadiusToDestroy = ZONE_RADIUS:New(destroyZoneName, coord:GetVec2(), 1000)
      destroyZoneCount = destroyZoneCount + 1
      trigger.action.outText("UNIT(S) on your MAP MARKER succesfully DESTROYED.", 10)
    local function destroyUnit(unit)
        unit:Destroy()
        return true
    end
    zoneRadiusToDestroy:SearchZone( destroyUnit , Object.Category.UNIT)
end
---------------------------------------------
-- Function selection groupes
---------------------------------------------
  zone_select = 0
  function Select_Group(text, coord)
      local text    = text 
      local coord   = coord
      local selected_Units = {}
      local Params = DCSGW_FNC_Treatment_marker( text, coord )
      
      local ZoneName     = string.format("SelectZone %d", zone_select)
      local zoneRadiusToSelect = ZONE_RADIUS:New( ZoneName, coord:GetVec2(), 1000)
        zone_select = zone_select + 1
  
     local function fnc_selected_units(unit)
     
      local group = unit:GetGroup()
      
          table.insert(group , selected_Units)
          trigger.action.outText("UNIT(S) "..group:GetName().." in table.", 10)
          return true
      end
  
      zoneRadiusToSelect:SearchZone( fnc_selected_units , Object.Category.UNIT)
      
  end
---------------------------------------------


-- FUNCTIONS
--------------------------------------------------------------
function DCSGW_FNC_Treatment_marker( text, coord )

    local coordonnees_recup  = coord
    local text_recup         = text
    local Params = {}
    --  Examples catching values
    -- [1] catching type :  -value    
    -- [2] param 1 : value = ?  
    -- [3] param 2 : value = ?
    -- [x] param x ...

      for param in (text_recup .. "="):gmatch("([^=]*)=") do 
        table.insert(Params, param) 
      end
      
      -- exemple For value numeraires : 
      -- local Alt     = tonumber(Params[2])
      -- local Azimut  = tonumber(Params[3])
  return Params
end

function DCSGW_FNC_Coordinates_Mark_display( text,coord )
    if text:find("") then 
    local coord_MARKER_MGRS   =   coord:ToStringMGRS( coord , 2 )
    local coord_MARKER_LLDMS  =   coord:ToStringLLDMS( coord , 2 )
    local coord_MARKER_LLDDM  =   coord:ToStringLLDDM( coord , 2 )
  
    coord:MarkToAll( "- "..coord_MARKER_MGRS.."\n- "..coord_MARKER_LLDMS.."\n-"..coord_MARKER_LLDDM)
  
    MESSAGE:New("Marker created for coordinates : "..   
          "\n\n"..coord_MARKER_MGRS..
          "\n"..coord_MARKER_LLDMS..
          "\n"..coord_MARKER_LLDDM
          ,15,"Tips "):ToAll()
    end

end



function DCSGW_FNC_Marker_Removed( Event )

  if Event.text~=nil and Event.text:lower():find("-") then 
         local text = Event.text
         local vec3 = {z=Event.pos.z, x=Event.pos.x}
         local coord = COORDINATE:NewFromVec3(vec3)

        if Event.text:find("-create") then
            env.info("Marker : Create unit at position." ,showMessageBox)
--            SpawnRequest(text, coord)
            DCSGW_FNC_Spawn_From_Marker (text, coord)
          elseif Event.text:lower():find("-debug") then
            env.info("Marker : no event associated",showMessageBox)
          elseif Event.text:lower():find("-destroy") then
            env.info("Marker : Destroy units in perimeter",showMessageBox)
            DestroyRequest(text, coord)
          elseif Event.text:lower():find("-select") then
            Select_Group(text, coord)
            env.info("Marker : Selection Group",showMessageBox)
          elseif Event.text:lower():find("-item2") then
            env.info("Marker : no event associated",showMessageBox)
          elseif Event.text:lower():find("-item3") then
            env.info("Marker : no event associated",showMessageBox)
          elseif Event.text:lower():find("-coord") then
            env.info("Marker : Create marker in position with text indications",showMessageBox)
            DCSGW_FNC_Coordinates_Mark_display(text, coord)
        end
    end
end


-- DECLARE EVENT
--------------------------------------------------------------
SupportHandler = EVENTHANDLER:New()
function SupportHandler:onEvent(Event)
    if Event.id == world.event.S_EVENT_MARK_ADDED then
    elseif Event.id == world.event.S_EVENT_MARK_CHANGE then
    elseif Event.id == world.event.S_EVENT_MARK_REMOVED then
        DCSGW_FNC_Marker_Removed(Event)
    end
end
world.addEventHandler(SupportHandler)
