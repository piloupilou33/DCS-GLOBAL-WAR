--=================================================================================
-- Function CSV Recup coords
--=================================================================================

-- PARAMETERS 
--=================================================================================
TABLE_Coordinates = {}
THEATRE = env.mission.theatre
CSV_fileName = "CoordCSVformat"
fichier_sauvegarde_Coords 	= "Save_"..THEATRE.."_"..CSV_fileName ..".csv"


-- DECLARE NEW EVENT
--=================================================================================
SupportHandler = EVENTHANDLER:New()

function SupportHandler:onEvent(Event)

	if Event.id == world.event.S_EVENT_MARK_REMOVED then
        markRemoved(Event)
    end
end	
	

function markRemoved(Event)

	if Event.text~=nil then

		 local text			= Event.text
         local vec3 		= { z=Event.pos.z, x=Event.pos.x, y=Event.pos.y }
         local coord 		= COORDINATE:NewFromVec3(vec3)
		 local coalition 	= Event.coalition
		COORDINATES_MARKER_DISPLAY(text, coord, coalition)
	end

end

world.addEventHandler(SupportHandler)


-- FUNCTIONS
--=================================================================================
function CSVwrite(path, data, sep)
    sep = sep or ','
    local file,err = assert(io.open(path, "w"))
  if err then return err end
    for i=1,#data do
        for j=1,#data[i] do
            if j>1 then file:write(sep) end
            file:write(data[i][j])
        end
        file:write('\n')
    end
    file:close()
end

function CSV_Init_file ()
  local CSV_entetes = {"Marker text", "Marker coalition", "Coordinate X", "Coordinate Y", "Coordinate Z", "Coordinate MGRS", "Coordinate LLDMS", "Coordinate LLDDM"}
  table.insert(TABLE_Coordinates, CSV_entetes)
  CSVwrite( fichier_sauvegarde_Coords, TABLE_Coordinates )
end


function COORDINATES_MARKER_DISPLAY(text, coord, coalition)
	 
			local text 		= text 
			local coalition = coalition
			local coord_MARKER_MGRS 	= 	coord:ToStringMGRS	( coord , 2 )
			local coord_MARKER_LLDMS	= 	coord:ToStringLLDMS	( coord , 2 )
			local coord_MARKER_LLDDM	= 	coord:ToStringLLDDM	( coord , 2 )
	
			coord:MarkToAll( "- "..coord_MARKER_MGRS.."\n- "..coord_MARKER_LLDMS.."\n-"..coord_MARKER_LLDDM)
	
			MESSAGE:New("Marker created for coordinates : "..
						"\n"..text..
						"\n\n"..coord_MARKER_MGRS..
						"\n"..coord_MARKER_LLDMS..
						"\n"..coord_MARKER_LLDDM
						,15,"Tips "):ToAll()
			
--			table.insert ( TABLE_Coordinates , { ["name"] = text, ["coalition"] = coalition, ["X"] = coord.x,["Y"] = coord.y, ["Z"] = coord.z } )
--			
--			table.save(	TABLE_Coordinates	, fichier_sauvegarde_Coords )
      table.insert(TABLE_Coordinates, {text, coalition, coord.x, coord.y, coord.z, coord_MARKER_MGRS, coord_MARKER_LLDMS, coord_MARKER_LLDDM})
      CSVwrite( fichier_sauvegarde_Coords, TABLE_Coordinates )

end

-- RUNS
--=================================================================================
CSV_Init_file ()


