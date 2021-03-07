function COORDINATE:ToStringMGRS( Settings ) --R2.1 Fixes issue #424.
	local MGRS_Accuracy = Settings and Settings.MGRS_Accuracy or _SETTINGS.MGRS_Accuracy
	local lat, lon = coord.LOtoLL( self:GetVec3() )
	local MGRS = coord.LLtoMGRS( lat, lon )
	return "MGRS " .. UTILS.tostringMGRS( MGRS, MGRS_Accuracy )
end
-- acc- the accuracy of each easting/northing.  0, 1, 2, 3, 4, or 5.
UTILS.tostringMGRS = function(MGRS, acc) --R2.1

  if acc == 0 then
    return MGRS.UTMZone .. ' ' .. MGRS.MGRSDigraph
  else

    -- Test if Easting/Northing have less than 4 digits.
    --MGRS.Easting=123    -- should be 00123
    --MGRS.Northing=5432  -- should be 05432
    
    -- Truncate rather than round MGRS grid!
    local Easting=tostring(MGRS.Easting)
    local Northing=tostring(MGRS.Northing)
    
    -- Count number of missing digits. Easting/Northing should have 5 digits. However, it is passed as a number. Therefore, any leading zeros would not be displayed by lua.
    local nE=5-string.len(Easting) 
    local nN=5-string.len(Northing)
    
    -- Get leading zeros (if any).
    for i=1,nE do Easting="0"..Easting end
    for i=1,nN do Northing="0"..Northing end
    
    -- Return MGRS string.
    return string.format("%s %s %s %s", MGRS.UTMZone, MGRS.MGRSDigraph, string.sub(Easting, 1, acc), string.sub(Northing, 1, acc))
  end
  
end

function Split(str,sep)
if sep == nil then
    words = {}
    for word in str:gmatch("%w+") do table.insert(words, word) end
    return words
end
	return {str:match((str:gsub("[^"..sep.."]*"..sep, "([^"..sep.."]*)"..sep)))} -- BUG!! doesnt return last value
end

-- function Split(s, delimiter)
    -- result = {};
    -- for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        -- table.insert(result, match);
    -- end
    -- return result;
-- end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

GRID_SYRIA = { 	{"XG" , "YG" , "BB" , "CB", "DB", "EB"},
				{"XF" , "YF" , "BA" , "CA", "DA", "EA"},
				{"XE" , "YE" , "BV" , "CV", "DV", "EV"},
				{"XD" , "YD" , "BU" , "CU", "DU", "EU"},
				{"XC" , "YC" , "BT" , "CT", "DT", "ET"},
				{"XB" , "YB" , "BS" , "CS", "DS", "ES"},
				{"XA" , "YA" , "BR" , "CR", "DR", "ER"},				
			}
			
GRID_State = { 	["XG"] = 0 ,["YG"] = 0 ,["BB"] = 0 ,["CB"] = 0 ,["DB"] = 0 ,["EB"] = 0 ,
				["XF"] = 0 ,["YF"] = 0 ,["BA"] = 0 ,["CA"] = 0 ,["DA"] = 0 ,["EA"] = 0 ,
				["XE"] = 0 ,["YE"] = 0 ,["BV"] = 0 ,["CV"] = 0 ,["DV"] = 0 ,["EV"] = 0 ,
				["XD"] = 0 ,["YD"] = 0 ,["BU"] = 0 ,["CU"] = 0 ,["DU"] = 0 ,["EU"] = 0 ,
				["XC"] = 0 ,["YC"] = 0 ,["BT"] = 0 ,["CT"] = 0 ,["DT"] = 0 ,["ET"] = 0 ,
				["XB"] = 0 ,["YB"] = 0 ,["BS"] = 0 ,["CS"] = 0 ,["DS"] = 0 ,["ES"] = 0 ,
				["XA"] = 0 ,["YA"] = 0 ,["BR"] = 0 ,["CR"] = 0 ,["DR"] = 0 ,["ER"] = 0 ,
			}
			
			
			

function DCSGW_FNC_Load_GRID_Status ()

end

function DCSGW_FNC_Save_GRID_Status ()

end

function DCSGW_FNC_Check_GRID_Status ( GRID_NB )

	local States	=	{}
	local grid		= GRID_NB
	local Lign 		= nil 
	local Col		= nil
	local table_temp = {}
	
	for Lign = 1 , #GRID_SYRIA do 
		for Col = 1 , #GRID_SYRIA[Lign] do 
			if GRID_SYRIA[Lign][Col] == GRID_NB then
				state_N 	= GRID_SYRIA[Lign-1][Col]
				state_NE	= GRID_SYRIA[Lign-1][Col+1]	
				state_E		= GRID_SYRIA[Lign][Col+1]
				state_SE	= GRID_SYRIA[Lign+1][Col+1]
				state_S		= GRID_SYRIA[Lign+1][Col]
				state_SW	= GRID_SYRIA[Lign+1][Col-1]
				state_W		= GRID_SYRIA[Lign][Col-1]
				state_NW	= GRID_SYRIA[Lign-1][Col-1]
				table_temp 	= { state_N, state_NE, state_E, state_SE, state_S, state_SW, state_W, state_NW }
				
				for i = 1, #table_temp do
					if table_temp[i] ~= nil then 		
						table.insert (States, GRID_State[table_temp[i]])
					end				
				end				
			end
		end
	end
	
	return States
	
end 

function DCSGW_FNC_Detection_GRID_units ( )

	GRID_SET_UNITS = SET_UNIT:New():FilterStart()
	
	GRID_SET_UNITS:ForEachUnit(
			function ( Unit )
			
				local unit_Pos_MGRS	= Unit:GetCoordinate():ToStringMGRS(1)
				local extractdata = Split( unit_Pos_MGRS, " ")
					
					-- 	MGRS 37S BU 35787 78220
					--	  1	  2	  3	  4	    5
					-- 	MGRS 37S BU 3 7
					--	  1	  2	  3	4 5
					
					-- for i,j in ipairs( extractdata ) do
						-- print( i,j )
					-- end
				dataReturn = string.format("%s %s %s", extractdata[3], extractdata[4], extractdata[5])
				-- dataReturn = extractdata[3] .. extractdata[4] .. extractdata[5]
				 
			end
	)

end




