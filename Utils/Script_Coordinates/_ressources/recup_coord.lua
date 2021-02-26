
TABLE_Coordinates = {}
fichier_sauvegarde_Coords 	= "Coords.lua"



--=================================================================================
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
			
			table.insert ( TABLE_Coordinates , { ["name"] = text, ["coalition"] = coalition, ["X"] = coord.x,["Y"] = coord.y, ["Z"] = coord.z } )
			
			table.save(	TABLE_Coordinates	, fichier_sauvegarde_Coords )
end



